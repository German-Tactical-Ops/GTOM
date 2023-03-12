scriptName "fn_cbaSettingsRanksystem";
/*
	Author: LucyferHW
	
	Description:
	Runs on start.
	
	Parameter(s):
	#0 OBJECT - Description
*/

[
	"GTO_OverrideMedicPatch", // Internal setting name, should always contain a tag! This will be the global variable which takes the value of the setting.
	"CHECKBOX", // setting type
	["Override Medic Patch", ""], // Pretty name shown inside the ingame settings menu. Can be stringtable entry.
	["GTOM Rank", "Main"], // Pretty name of the category where the setting can be found. Can be stringtable entry.
	[false, true, false], // data for this setting: [min, max, default, number of shown trailing decimals]
	false, // "_isGlobal" flag. set this to true to always have this setting synchronized between all clients in multiplayer
	{
		params["_value"];
	} // function that will be executed once on mission start and every time the setting is changed.
] call CBA_fnc_addSetting;

[
	"GTO_InsigniaColorVersion", // Internal setting name, should always contain a tag! This will be the global variable which takes the value of the setting.
	"Slider", // setting type
	["Insignia Color Version", ""], // Pretty name shown inside the ingame settings menu. Can be stringtable entry.
	["GTOM Rank", "Main"], // Pretty name of the category where the setting can be found. Can be stringtable entry.
	[1, 3, 1, 0], // data for this setting: [min, max, default, number of shown trailing decimals]
	true, // "_isGlobal" flag. set this to true to always have this setting synchronized between all clients in multiplayer
	{
		params["_value"];
	} // function that will be executed once on mission start and every time the setting is changed.
] call CBA_fnc_addSetting;

// ---------- Insignia -----------//

GTO_InsigniaRankList_Template = {
	params["_className", "_visibleName"];
	private _classNameFull = "GTO_InsigniaRankList_" + _className;
	[
		_classNameFull, // Internal setting name, should always contain a tag! This will be the global variable which takes the value of the setting.
		"EDITBOX", // setting type
		[_visibleName, "Array of Insignia class names. min 1, max 3"], // Pretty name shown inside the ingame settings menu. Can be stringtable entry.
		["GTOM Rank", "Insignia List"], // Pretty name of the category where the setting can be found. Can be stringtable entry.
		[], // data for this setting: [min, max, default, number of shown trailing decimals]
		true, // "_isGlobal" flag. set this to true to always have this setting synchronized between all clients in multiplayer
		{
			params["_value"];
		} // function that will be executed once on mission start and every time the setting is changed.
	] call CBA_fnc_addSetting;
};

["OF2", "OF-2 (CPT)"] call GTO_InsigniaRankList_Template;
["OF1", "OF-1 (1LT)"] call GTO_InsigniaRankList_Template;
["OF1_2", "OF-1-2 (2LT)"] call GTO_InsigniaRankList_Template;

["OR9", "OR-9 (SGM)"] call GTO_InsigniaRankList_Template;
["OR8", "OR-8 (1SG)"] call GTO_InsigniaRankList_Template;
["OR8_2", "OR-8-2 (MSG)"] call GTO_InsigniaRankList_Template;
["OR7", "OR-7 (SFC)"] call GTO_InsigniaRankList_Template;
["OR6", "OR-6 (SSG)"] call GTO_InsigniaRankList_Template;
["OR5", "OR-5 (SGT)"] call GTO_InsigniaRankList_Template;

["OR4", "OR-4 (CPL)"] call GTO_InsigniaRankList_Template;
["OR4_2", "OR-4-2 (SPC)"] call GTO_InsigniaRankList_Template;

["OR3", "OR-3 (PFC)"] call GTO_InsigniaRankList_Template;
["OR2", "OR-2 (PV2)"] call GTO_InsigniaRankList_Template;

["guestplus", "Guest+"] call GTO_InsigniaRankList_Template;
["guest", "Guest"] call GTO_InsigniaRankList_Template;


// ---------- player -----------// 

GTO_PlayerRankList_Template = {
	params["_className", "_visibleName"];
	private _classNameFull = "GTO_PlayerRankList_" + _className;
	[
		_classNameFull, // Internal setting name, should always contain a tag! This will be the global variable which takes the value of the setting.
		"EDITBOX", // setting type
		[_visibleName, "Array of Player SteamIDs"], // Pretty name shown inside the ingame settings menu. Can be stringtable entry.
		["GTOM Rank", "Player List"], // Pretty name of the category where the setting can be found. Can be stringtable entry.
		[], // data for this setting: [min, max, default, number of shown trailing decimals]
		true, // "_isGlobal" flag. set this to true to always have this setting synchronized between all clients in multiplayer
		{
			params["_value"];
		} // function that will be executed once on mission start and every time the setting is changed.
	] call CBA_fnc_addSetting;
};

["OF2", "OF-2 (CPT)"] call GTO_PlayerRankList_Template;
["OF1", "OF-1 (1LT)"] call GTO_PlayerRankList_Template;
["OF1_2", "OF-1-2 (2LT)"] call GTO_PlayerRankList_Template;

["OR9", "OR-9 (SGM)"] call GTO_PlayerRankList_Template;
["OR8", "OR-8 (1SG)"] call GTO_PlayerRankList_Template;
["OR8_2", "OR-8-2 (MSG)"] call GTO_PlayerRankList_Template;
["OR7", "OR-7 (SFC)"] call GTO_PlayerRankList_Template;
["OR6", "OR-6 (SSG)"] call GTO_PlayerRankList_Template;
["OR5", "OR-5 (SGT)"] call GTO_PlayerRankList_Template;

["OR4", "OR-4 (CPL)"] call GTO_PlayerRankList_Template;
["OR4_2", "OR-4-2 (SPC)"] call GTO_PlayerRankList_Template;

["OR3", "OR-3 (PFC)"] call GTO_PlayerRankList_Template;
["OR2", "OR-2 (PV2)"] call GTO_PlayerRankList_Template;