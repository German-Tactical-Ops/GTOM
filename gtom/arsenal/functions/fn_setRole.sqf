scriptName "fn_setRole";
/*
	Author: LucyferHW
	
	Description:
	Describe your function
	
	Example: [] call GTO_fnc_shareBasicLoadouts;
*/

params ["_role", "_arsenalType", "_target"];

private _playerID = getPlayerUID ACE_player;
private _isZeus = false;

// reset player stats
ACE_player setVariable ["ace_medical_medicClass", 0, true];
ACE_player setUnitTrait ["medic", false];

ACE_player setVariable ["ACE_IsEngineer", 0, true];
ACE_player setUnitTrait ["engineer", false];

ACE_player setUnitTrait ["explosiveSpecialist", false];

switch (_role) do {
	case "zeus":{
		if (!_isZeus) then {
			publicVariable _playerID;
			"ModuleCurator_F" createUnit [position ACE_player, group ACE_player, _playerID = this];
			ACE_player assignCurator _playerID;
		};
		_isZeus = true;
	};

	default
	{
		if (_isZeus) then {
			unassignCurator _playerID;
		};
	};
};

// set player stats
switch (_role) do
{
	case "admin":
	{
		ACE_player setVariable ["ace_medical_medicClass", 2, true];
		ACE_player setUnitTrait ["medic", true];
	};

	case "zeus":
	{};

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

systemChat format ["You are now: %1 (%2)", [_role] call GTO_fnc_getRoleName, _arsenalType];

// Remove current stuff
removeAllWeapons ACE_player;
removeAllItems ACE_player;
removeAllAssignedItems ACE_player;
removeUniform ACE_player;
removeVest ACE_player;
removeBackpack ACE_player;
removeHeadgear ACE_player;

[_arsenalType, _role] call GTO_fnc_loadDefault;

_blacklistItems = [] call GTO_fnc_blacklistItems;
{ 
 ACE_player unassignItem _x; 
 ACE_player removeItem _x; 
} forEach _blacklistItems;

/* ACE_player unassignItem "ItemGPS";
ACE_player removeItem "ItemGPS";
ACE_player unassignItem "B_UavTerminal";
ACE_player removeItem "B_UavTerminal";

ACE_player removeItem "ACE_DAGR";
ACE_player removeItem "ItemAndroid";
ACE_player removeItem "ACE_HuntIR_monitor";
ACE_player removeItem "ACE_Kestrel4500";
ACE_player removeItem "ItemMicroDAGR";
ACE_player removeItem "ACE_microDAGR";
ACE_player removeItem "ItemcTab"; */