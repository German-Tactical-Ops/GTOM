scriptName "fn_placeRalypoint";
/*
	Author: LucyferHW
	
	Description:
	Describe your function
	
	Parameter(s):
	#0 OBJECT - player

	Example: [player] call GTO_fnc_placeRalypoint
*/

params ["_player"];



_player removeItem "ace_marker_flags_blue";
// Flag_US_F
// GTO_MarkerFlag

_spawnedObjects = [[_player, "BOTTOM"], "GTO_MarkerFlag", 1, [0, 2, 0], 0, {
	0
}, true] call BIS_fnc_spawnObjects;
respawnFlag = _spawnedObjects select 0;
respawnPlace = [west, respawnFlag, "Respawn"] call BIS_fnc_addRespawnPosition;
[respawnFlag] call GTO_fnc_initArsenal;

_action = ["PickupRallypoint", "Pickup Rallypoint", "", {
	deleteVehicle respawnFlag;
	respawnPlace call BIS_fnc_removeRespawnPosition;
	player addItem "ace_marker_flags_blue";
}, {
	true
}] call ace_interact_menu_fnc_createAction;
[respawnFlag, 0, ["ACE_MainActions"], _action] call ace_interact_menu_fnc_addActionToObject;

/*
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