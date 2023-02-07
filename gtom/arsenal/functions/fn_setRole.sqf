scriptName "fn_setRole";
/*
	Author: LucyferHW
	
	Description:
	Describe your function
	
	Example: [] call GTO_fnc_shareBasicLoadouts;
*/

params ["_role", "_arsenalType", "_target"];

if (_role == "admin") then {
	ACE_player setVariable ["ace_medical_medicClass", 2, true];
	ACE_player setUnitTrait ["medic", true];

	ACE_player setVariable ["ACE_IsEngineer", 2, true];
	ACE_player setUnitTrait ["engineer", true];

	ACE_player setUnitTrait ["explosiveSpecialist", true];
} else {
	ACE_player setVariable ["ace_medical_medicClass", 0, true];
	ACE_player setUnitTrait ["medic", false];

	ACE_player setVariable ["ACE_IsEngineer", 0, true];
	ACE_player setUnitTrait ["engineer", false];

	ACE_player setUnitTrait ["explosiveSpecialist", false];

	ACE_player setVariable ["ace_medical_medicClass", 0, true];
};

// player Attributes

if (_role in ["medic", "doctor", "ldoctor"]) then {
	if (_role in ["doctor", "ldoctor"]) then {
		ACE_player setVariable ["ace_medical_medicClass", 2, true];
		ACE_player setUnitTrait ["medic", true];
	} else {
		ACE_player setVariable ["ace_medical_medicClass", 1, true];
		ACE_player setUnitTrait ["medic", true];
	};
} else {
	ACE_player setVariable ["ace_medical_medicClass", 0, true];
	ACE_player setUnitTrait ["medic", false];
};

if (_role in ["crewman", "pilot", "enginier"]) then {
	if (_role in ["enginier"]) then {
		ACE_player setVariable ["ACE_IsEngineer", 2, true];
		ACE_player setUnitTrait ["engineer", true];
	} else {
		ACE_player setVariable ["ACE_IsEngineer", 1, true];
		ACE_player setUnitTrait ["engineer", true];
	};
} else {
	ACE_player setVariable ["ACE_IsEngineer", 0, true];
	ACE_player setUnitTrait ["engineer", false];
};

if (_role == "sapper") then {
	ACE_player setUnitTrait ["explosiveSpecialist", true];
} else {
	ACE_player setUnitTrait ["explosiveSpecialist", false];
};

if (_role == "zeus") then {} else {};

// player Arsenal
[_target, _role] call GTO_fnc_setArsenal;

systemChat format ["You are now: %1 (%2)", [_role] call GTO_fnc_getRoleName, _arsenalType];

// Remove current stuff
removeAllWeapons ACE_player;
removeAllItems ACE_player;
removeAllAssignedItems ACE_player;
removeUniform ACE_player;
removeVest ACE_player;
removeBackpack ACE_player;
removeHeadgear ACE_player;

// ACE_player setUnitLoadout [[[], [], [], ["GTO_BaseUniform", []], [], [], "GTO_Beret_Black", "", ["Binocular", "", "", "", [], [], ""], ["ItemMap", "ItemGPS", "TFAR_rf7800str", "ItemCompass", "TFAR_microdagr", ""]], true];

[_arsenalType, _role] call GTO_fnc_loadDefault;