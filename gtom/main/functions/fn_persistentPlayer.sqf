scriptName "fn_persistentPlayer";
/*
	Author: LucyferHW
	
	Description:
	Runs on start.
*/

GTO_fnc_loadClientData = {
	params ["_loadout", "_positionASL", "_dir"];
	waitUntil {
		!isNull player
	};
	player setUnitLoadout _loadout;
	player setDir _dir;
	player setPosASL _positionASL;

	systemChat "Please check your role permissions after reconnect. (Medic, Sapper, Engi)";

	// todo: add unit trait sync (medic, sl, ...)
};

if (isServer) then {
	profileNamespace setVariable ["GTO_disconnectedLoadouts", nil];  // only for resetting the variable on server. Important if not previously a hashmap !

	addMissionEventHandler ["HandleDisconnect",
		{
			params ["_body", "_id", "_uid", "_name"];
			if (!isNull _body) then {
				private _loadout = getUnitLoadout _body;
				private _position = getPos _body;
				private _direction = getDir _body;
				       // todo: 
				if(isNil {
					profileNamespace getVariable "GTO_disconnectedLoadouts"
				}) then {
					profileNamespace setVariable ["GTO_disconnectedLoadouts", createHashMapFromArray [[_uid, [_loadout, _position, _direction]]]];
				} else {
					(profileNamespace getVariable "GTO_disconnectedLoadouts") set [_uid, [_loadout, _position, _direction]];
				};
				diag_log [_uid, (profileNamespace getVariable "GTO_disconnectedLoadouts")];
			};
			false
		}
	];

	addMissionEventHandler ["PlayerConnected",
		{
			params ["_id", "_uid", "_name", "_jip", "_owner"];
			if (_jip) then {
				private _clientData = profileNamespace getVariable ["GTO_disconnectedLoadouts", []];
				if (_clientData isEqualTo []) exitWith {};
				private _value = _clientData get _uid;
				diag_log ["<<<<<after connect>>>>", _value, _this];
				[_value, GTO_fnc_loadClientData] remoteExec ["spawn", _owner];
			};
		}
	];
};