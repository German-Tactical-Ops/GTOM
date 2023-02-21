scriptName "fn_setRank";
/*
	Author: LucyferHW
	
	Description:
	Runs on start.
	
	Parameter(s):
	#0 OBJECT - Description
*/

private _medicState = player getVariable ["ace_medical_medicClass", 0];

if (_medicState > 0 && !GTO_OverrideMedicPatch) exitWith {
	hint format ["Player: %1 \nInsignia: Medic", name player];

	[player, "IDAP"] call BIS_fnc_setUnitInsignia;

	[10] spawn GTO_fnc_sleepClearHint;
};

GTO_SetPlayerRankInsignia = {
	params["_playerList", "_insignia"];

	private _state = false;

	if (getPlayerUID player in _playerList) exitWith {

		private _oneInsignia = parseSimpleArray _insignia select (GTO_InsigniaColorVersion - 1);

		hint format ["Player: %1 \nInsignia: %2", name player, _oneInsignia];

		[player, _oneInsignia] call BIS_fnc_setUnitInsignia;
		[10] spawn GTO_fnc_sleepClearHint;

		_state = true;

		_state;
	};
};

if ([GTO_PlayerRankList_OF2, GTO_InsigniaRankList_OF2] call GTO_SetPlayerRankInsignia) exitWith {};
if ([GTO_PlayerRankList_OF1, GTO_InsigniaRankList_OF1] call GTO_SetPlayerRankInsignia) exitWith {};
if ([GTO_PlayerRankList_OF1_2, GTO_InsigniaRankList_OF1_2] call GTO_SetPlayerRankInsignia) exitWith {};



//hint format ["%1 is not on rank list.\n Set guest rank.", name player];

private _oneInsignia = parseSimpleArray GTO_InsigniaRankList_guest select (GTO_InsigniaColorVersion - 1);

hint format ["Player: %1 \nInsignia: %2", name player, _oneInsignia];

[player, _oneInsignia] call BIS_fnc_setUnitInsignia;
[10] spawn GTO_fnc_sleepClearHint;