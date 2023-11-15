scriptName "fn_cbaArsenal";
/*
	Author: LucyferHW
	
	Description:
	Describe your function
*/
private _gto_Arsenal = ".GTOM Arsenal";
private _gto_Equipment = ".GTOM Primary EQ";
private _gto_Loadout = ".GTOM Loadout";
private _gto_DefaultLoadout = ".GTOM Default Loadout";
private _gto_Item = ".GTOM Secondary EQ";

private _gto_Basic = "00. Basic";
private _gto_Lead = "01. Lead";
private _gto_Support = "02. Support";
private _gto_Weapon = "03. Weapon";
private _gto_Special = "04. Special";
private _gto_Vehicle = "05. Vehicle";
private _gto_Other = "10. Other";

[
	"GTO_AllRolesAvailable", // Internal setting name, should always contain a tag! This will be the global variable which takes the value of the setting.
	"CHECKBOX", // setting type
	["All roles available"], // Pretty name shown inside the ingame settings menu. Can be stringtable entry.
	[_gto_Arsenal], // Pretty name of the category where the setting can be found. Can be stringtable entry.
	[false, true, false], // data for this setting: [min, max, default, number of shown trailing decimals]
	true, // "_isGlobal" flag. set this to true to always have this setting synchronized between all clients in multiplayer
	{
		params["_value"];
	} // function that will be executed once on mission start and every time the setting is changed.
] call CBA_fnc_addSetting;

GTO_RoleList_Template = {
	params["_className", "_visibleName", "_category"];
	[
		"GTO_Primary_" + _className, // Internal setting name, should always contain a tag! This will be the global variable which takes the value of the setting.
		"EDITBOX", // setting type
		["Equipment " + _visibleName, "Array of classnames"], // Pretty name shown inside the ingame settings menu. Can be stringtable entry.
		[_gto_Equipment, _category], // Pretty name of the category where the setting can be found. Can be stringtable entry.
		["[]"], // data for this setting: [min, max, default, number of shown trailing decimals]
		true, // "_isGlobal" flag. set this to true to always have this setting synchronized between all clients in multiplayer
		{
			params["_value"];
		} // function that will be executed once on mission start and every time the setting is changed.
	] call CBA_fnc_addSetting;

	[
		"GTO_Secondary_" + _className, // Internal setting name, should always contain a tag! This will be the global variable which takes the value of the setting.
		"EDITBOX", // setting type
		["Items " + _visibleName, "Array of classnames"], // Pretty name shown inside the ingame settings menu. Can be stringtable entry.
		[_gto_Item, _category], // Pretty name of the category where the setting can be found. Can be stringtable entry.
		["[]"], // data for this setting: [min, max, default, number of shown trailing decimals]
		true, // "_isGlobal" flag. set this to true to always have this setting synchronized between all clients in multiplayer
		{
			params["_value"];
		} // function that will be executed once on mission start and every time the setting is changed.
	] call CBA_fnc_addSetting;
};

["basic", "Basic", _gto_Basic] call GTO_RoleList_Template;
["basicWeapon", "Basic Weapon", _gto_Basic] call GTO_RoleList_Template;
["basicAttachments", "Basic Attachments", _gto_Basic] call GTO_RoleList_Template;

["sl", "SL [B, BW, BA]", _gto_Lead] call GTO_RoleList_Template;
["ftl", "FTL [+]", _gto_Lead] call GTO_RoleList_Template;

["ammoCarrier", "Ammo Carrier [B, BW, BA]", _gto_Support] call GTO_RoleList_Template;
["afr", "AFR [+]", _gto_Support] call GTO_RoleList_Template;
["medic", "Medic [B, BW, BA]", _gto_Support] call GTO_RoleList_Template;
["doctor", "Doctor [B, BW, BA]", _gto_Support] call GTO_RoleList_Template;

["weaponSpecialist", "Weapon Specialist [B, -, BA]", _gto_Weapon] call GTO_RoleList_Template;
["mg", "MG [B, -, BA]", _gto_Weapon] call GTO_RoleList_Template;
["grenadier", "Grenadier [B, -, BA]", _gto_Weapon] call GTO_RoleList_Template;
["at", "AT [B, BW, BA]", _gto_Weapon] call GTO_RoleList_Template;

["marksman", "Marksman [B, -, -]", _gto_Special] call GTO_RoleList_Template;
["sniper", "Sniper [B, -, -]", _gto_Special] call GTO_RoleList_Template;
["sapper", "Sapper [B, BW, BA]", _gto_Special] call GTO_RoleList_Template;
["engineer", "Engineer [B, BW, BA]", _gto_Special] call GTO_RoleList_Template;

["pilot", "Pilot [B, BW, BA]", _gto_Vehicle] call GTO_RoleList_Template;
["crewman", "Crewman [B, BW, BA]", _gto_Vehicle] call GTO_RoleList_Template;

["goggles", "Goggles", _gto_Other] call GTO_RoleList_Template;


// ["kat_circulation_bloodgroup", _bloodType] call CBA_settings_fnc_set;

GTO_DefaultLoadout_Template = {
	params["_className", "_visibleName", "_category"];
	[
		"GTO_DefaultLoadout_" + _className, // Internal setting name, should always contain a tag! This will be the global variable which takes the value of the setting.
		"EDITBOX", // setting type
		["Default Loadout " + _visibleName, ""], // Pretty name shown inside the ingame settings menu. Can be stringtable entry.
		[_gto_DefaultLoadout, _category], // Pretty name of the category where the setting can be found. Can be stringtable entry.
		["[]"], // data for this setting: [min, max, default, number of shown trailing decimals]
		true, // "_isGlobal" flag. set this to true to always have this setting synchronized between all clients in multiplayer
		{
			params["_value"];
		} // function that will be executed once on mission start and every time the setting is changed.
	] call CBA_fnc_addSetting;

/* 	[
		"GTO_Loadout_" + _className, // Internal setting name, should always contain a tag! This will be the global variable which takes the value of the setting.
		"EDITBOX", // setting type
		["Loadout " + _visibleName, ""], // Pretty name shown inside the ingame settings menu. Can be stringtable entry.
		[_gto_Loadout, _category], // Pretty name of the category where the setting can be found. Can be stringtable entry.
		["[]"], // data for this setting: [min, max, default, number of shown trailing decimals]
		false, // "_isGlobal" flag. set this to true to always have this setting synchronized between all clients in multiplayer
		{
			params["_value"];
		} // function that will be executed once on mission start and every time the setting is changed.
	] call CBA_fnc_addSetting; */
};

["sl", "SL", _gto_Lead] call GTO_DefaultLoadout_Template;

["doctor", "Doctor", _gto_Support] call GTO_DefaultLoadout_Template;
["medic", "Medic", _gto_Support] call GTO_DefaultLoadout_Template;
["ammoCarrier", "Ammo Carrier", _gto_Support] call GTO_DefaultLoadout_Template;

["weaponSpecialist", "Weapon Specialist", _gto_Weapon] call GTO_DefaultLoadout_Template;
["mg", "MG", _gto_Weapon] call GTO_DefaultLoadout_Template;
["grenadier", "Grenadier", _gto_Weapon] call GTO_DefaultLoadout_Template;
["at", "AT", _gto_Weapon] call GTO_DefaultLoadout_Template;

["marksman", "Marksman", _gto_Special] call GTO_DefaultLoadout_Template;
["sniper", "Sniper", _gto_Special] call GTO_DefaultLoadout_Template;
["sapper", "Sapper", _gto_Special] call GTO_DefaultLoadout_Template;
["engineer", "Engineer", _gto_Special] call GTO_DefaultLoadout_Template;

["pilot", "Pilot", _gto_Vehicle] call GTO_DefaultLoadout_Template;
["crewman", "Crewman", _gto_Vehicle] call GTO_DefaultLoadout_Template;