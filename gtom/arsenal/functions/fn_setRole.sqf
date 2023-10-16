scriptName "fn_setRole";
/*
	Author: LucyferHW
	
	Description:
	Describe your function
	
	Example: [] call GTO_fnc_shareBasicLoadouts;
*/

params ["_role", "_arsenalType", "_target"];

// reset player stats
ACE_player setVariable ["ace_medical_medicClass", 0, true];
ACE_player setUnitTrait ["medic", false];

ACE_player setVariable ["ACE_IsEngineer", 0, true];
ACE_player setUnitTrait ["engineer", false];

ACE_player setUnitTrait ["explosiveSpecialist", false];


// set player stats
switch (_role) do
{
	case "admin":
	{
		ACE_player setVariable ["ace_medical_medicClass", 2, true];
		ACE_player setUnitTrait ["medic", true];
	};

	case "ldoctor":
	{
		ACE_player setVariable ["ace_medical_medicClass", 2, true];
		ACE_player setUnitTrait ["medic", true];
	};

	case "doctor":
	{
		ACE_player setVariable ["ace_medical_medicClass", 2, true];
		ACE_player setUnitTrait ["medic", true];
	};

	case "medic":
	{
		ACE_player setVariable ["ace_medical_medicClass", 1, true];
		ACE_player setUnitTrait ["medic", true];
	};

	case "pionier":
	{
		ACE_player setVariable ["ACE_IsEngineer", 2, true];
		ACE_player setUnitTrait ["engineer", true];
	};

	case "pilot":
	{
		ACE_player setVariable ["ACE_IsEngineer", 1, true];
		ACE_player setUnitTrait ["engineer", true];
	};

	case "crewman":
	{
		ACE_player setVariable ["ACE_IsEngineer", 1, true];
		ACE_player setUnitTrait ["engineer", true];
	};

	case "sapper":
	{
		ACE_player setUnitTrait ["explosiveSpecialist", true];
	};

	default
	{
		ACE_player setVariable ["ace_medical_medicClass", 0, true];
		ACE_player setUnitTrait ["medic", false];

		ACE_player setVariable ["ACE_IsEngineer", 0, true];
		ACE_player setUnitTrait ["engineer", false];

		ACE_player setUnitTrait ["explosiveSpecialist", false];
	};
};

// player Arsenal
[_target, _role] call GTO_fnc_setArsenal;

systemChat format ["You are now: %1 (%2)", _role, _arsenalType];

// Remove current stuff
removeAllWeapons ACE_player;
removeAllItems ACE_player;
removeAllAssignedItems ACE_player;
removeUniform ACE_player;
removeVest ACE_player;
removeBackpack ACE_player;
removeHeadgear ACE_player;

[_arsenalType, _role] call GTO_fnc_loadDefault;