scriptName "fn_placeRalypoint";
/*
	Author: LucyferHW
	
	Description:
	Describe your function
	
	Parameter(s):
	#0 OBJECT - Description
	
	Returns:
	Nothing
*/

params ["_player"];

_player removeItem "ace_marker_flags_blue";

_spawnedObjects = [[_player, "BOTTOM"], "Flag_US_F", 1, [0, 2, 0], 0, {0}, true] call BIS_fnc_spawnObjects;
_flag = _spawnedObjects select 0;
_respawn = [west, _flag, "Respawn"] call BIS_fnc_addRespawnPosition;


_action = ["Grap", "Grap", "", {hint "ace"}, {true}] call ace_interact_menu_fnc_createAction;
[_flag, 0, ["ACE_MainActions"], _action] call ace_interact_menu_fnc_addActionToObject;

_flag addAction [ "Pickup Rallypoint", {
	params [ "_target", "_caller", "_id", "_args" ];

	_flag = _args select 0;
	_respawn = _args select 1;


	deleteVehicle _flag;
	_respawn call BIS_fnc_removeRespawnPosition;
	_caller addItem "ace_marker_flags_blue";
},
[_flag, _respawn],
1,
true,
true,
"",
"",
-1,
false,
""
];