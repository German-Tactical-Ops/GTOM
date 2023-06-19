scriptName "fn_cbaArsenal";
/*
	Author: LucyferHW
	
	Description:
	Describe your function
*/

[
	"GTO_AllRolesAvaible", // Internal setting name, should always contain a tag! This will be the global variable which takes the value of the setting.
	"CHECKBOX", // setting type
	["All roles avaible"], // Pretty name shown inside the ingame settings menu. Can be stringtable entry.
	["GTOM Arsenal"], // Pretty name of the category where the setting can be found. Can be stringtable entry.
	[false, true, false], // data for this setting: [min, max, default, number of shown trailing decimals]
	true, // "_isGlobal" flag. set this to true to always have this setting synchronized between all clients in multiplayer
	{
		params["_value"];
	} // function that will be executed once on mission start and every time the setting is changed.
] call CBA_fnc_addSetting;

// ---------- player ----------// 

GTO_RoleList_Template = {
	params["_className", "_visibleName", "_category"];
	[
		"GTO_RoleEquipment_" + _className, // Internal setting name, should always contain a tag! This will be the global variable which takes the value of the setting.
		"EDITBOX", // setting type
		["Equipment " + _visibleName, "Array of equipment for a role (no Items)"], // Pretty name shown inside the ingame settings menu. Can be stringtable entry.
		["GTOM Equipment", _category], // Pretty name of the category where the setting can be found. Can be stringtable entry.
		["[]"], // data for this setting: [min, max, default, number of shown trailing decimals]
		true, // "_isGlobal" flag. set this to true to always have this setting synchronized between all clients in multiplayer
		{
			params["_value"];
			systemChat format ["Initialised GTO_RoleEquipment_%1", _className];
		} // function that will be executed once on mission start and every time the setting is changed.
	] call CBA_fnc_addSetting;

	[
		"GTO_RoleItems_" + _className, // Internal setting name, should always contain a tag! This will be the global variable which takes the value of the setting.
		"EDITBOX", // setting type
		["Items " + _visibleName, "Array of items"], // Pretty name shown inside the ingame settings menu. Can be stringtable entry.
		["GTOM Items", _category], // Pretty name of the category where the setting can be found. Can be stringtable entry.
		["[]"], // data for this setting: [min, max, default, number of shown trailing decimals]
		true, // "_isGlobal" flag. set this to true to always have this setting synchronized between all clients in multiplayer
		{
			params["_value"];
			systemChat format ["Initialised GTO_RoleItems_%1", _className];
		} // function that will be executed once on mission start and every time the setting is changed.
	] call CBA_fnc_addSetting;
};

["basic", "Basic", "0. Basic"] call GTO_RoleList_Template;

["sl", "SL", "1. Lead"] call GTO_RoleList_Template;

["medic", "Medic", "2. Support"] call GTO_RoleList_Template;
["ammoCarrier", "Ammo Carrier", "2. Support"] call GTO_RoleList_Template;

["weaponSpecialist", "Weapon Specialist", "3. Weapon"] call GTO_RoleList_Template;
["mg", "MG", "3. Weapon"] call GTO_RoleList_Template;
["grenadier", "Grenadier", "3. Weapon"] call GTO_RoleList_Template;
["at", "AT", "3. Weapon"] call GTO_RoleList_Template;

["sniper", "Sniper", "4. Special"] call GTO_RoleList_Template;
["spotter", "Spotter", "4. Special"] call GTO_RoleList_Template;
["sapper", "Sapper", "4. Special"] call GTO_RoleList_Template;
["engineer", "Engineer", "4. Special"] call GTO_RoleList_Template;

["pilot", "Pilot", "5. Vehicle"] call GTO_RoleList_Template;
["crewman", "Crewman", "5. Vehicle"] call GTO_RoleList_Template;

// todo: make default loadout slots


// Soft Force for Default loadout
// ["kat_circulation_bloodgroup", _bloodType] call CBA_settings_fnc_set;