scriptName "fn_setRole";
/*
	Author: LucyferHW
	
	Description:
	Describe your function
	
	Example: [] call GTO_fnc_shareBasicLoadouts;
*/

params ["_role", "_arsenalType", "_target"];

// player Attributes
if (_role in ["medic", "doctor"]) then {
	ACE_player setVariable ["ace_medical_medicClass", [2, 1] select (_role == "medic"), true];
	ACE_player setUnitTrait ["medic", true];
} else {
	ACE_player setVariable ["ace_medical_medicClass", 0, true];
	ACE_player setUnitTrait ["medic", false];
};

if (_role in ["crewman", "pilot"]) then {
	ACE_player setVariable ["ACE_IsEngineer", [1, 2] select (_role == "engi"), true];
	ACE_player setUnitTrait ["engineer", true];
	ACE_player setUnitTrait ["explosiveSpecialist", true];
} else {
	ACE_player setVariable ["ACE_IsEngineer", 0, true];
	ACE_player setUnitTrait ["engineer", false];
	ACE_player setUnitTrait ["explosiveSpecialist", false];
};

if (_role in ["sapper"]) then {
	ACE_player setUnitTrait ["explosiveSpecialist", true];
} else {
	ACE_player setUnitTrait ["explosiveSpecialist", false];
};

if (_role == "pilot") then {
	ACE_player setVariable ["ACE_GForceCoef", 0.4, true];
} else {
	ACE_player setVariable ["ACE_GForceCoef", 1, true];
};

if (_role == "zeus") then {
//todo: add zeus permissions
};

if (_role == "admin") then {
//todo: add all things
};

// player Arsenal
[_target, _role] call GTO_fnc_setArsenal;

systemChat format ["Du bist nun: %1 (%2)", [_role] call GTO_fnc_getRoleName, _arsenalType];

// Remove current stuff
removeAllWeapons ACE_player;
removeAllItems ACE_player;
removeAllAssignedItems ACE_player;
removeUniform ACE_player;
removeVest ACE_player;
removeBackpack ACE_player;
removeHeadgear ACE_player;
removeGoggles ACE_player;

//todo: [] call FUNC(loadDefault);