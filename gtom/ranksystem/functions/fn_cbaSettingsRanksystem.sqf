scriptName "fn_cbaSettingsRanksystem";
/*
	Author: LucyferHW
	
	Description:
	Runs on start.
*/

[
	"GTO_ExtractRank", // Internal setting name, should always contain a tag! This will be the global variable which takes the value of the setting.
	"CHECKBOX", // setting type
	["Extract Rank", ""], // Pretty name shown inside the ingame settings menu. Can be stringtable entry.
	[".GTOM Rank", "Main"], // Pretty name of the category where the setting can be found. Can be stringtable entry.
	[false, true, false], // data for this setting: [min, max, default, number of shown trailing decimals]
	true, // "_isGlobal" flag. set this to true to always have this setting synchronized between all clients in multiplayer
	{
		params["_value"];
	} // function that will be executed once on mission start and every time the setting is changed.
] call CBA_fnc_addSetting;

[
	"GTO_OverrideMedicPatch", // Internal setting name, should always contain a tag! This will be the global variable which takes the value of the setting.
	"CHECKBOX", // setting type
	["Override Medic Patch", ""], // Pretty name shown inside the ingame settings menu. Can be stringtable entry.
	[".GTOM Rank", "Main"], // Pretty name of the category where the setting can be found. Can be stringtable entry.
	[false, true, false], // data for this setting: [min, max, default, number of shown trailing decimals]
	false, // "_isGlobal" flag. set this to true to always have this setting synchronized between all clients in multiplayer
	{
		params["_value"];
	} // function that will be executed once on mission start and every time the setting is changed.
] call CBA_fnc_addSetting;

// ---------- player -----------// 

GTO_PlayerRankList_Template = {
	params["_className", "_visibleName"];
	private _classNameFull = "GTO_PlayerRankList_" + _className;
	[
		_classNameFull, // Internal setting name, should always contain a tag! This will be the global variable which takes the value of the setting.
		"EDITBOX", // setting type
		[_visibleName, "Array of Player SteamIDs"], // Pretty name shown inside the ingame settings menu. Can be stringtable entry.
		[".GTOM Rank", "Player List"], // Pretty name of the category where the setting can be found. Can be stringtable entry.
		[], // data for this setting: [min, max, default, number of shown trailing decimals]
		true, // "_isGlobal" flag. set this to true to always have this setting synchronized between all clients in multiplayer
		{
			params["_value"];
		} // function that will be executed once on mission start and every time the setting is changed.
	] call CBA_fnc_addSetting;
};

["CPT", "CPT"] call GTO_PlayerRankList_Template;
["LT", "LT"] call GTO_PlayerRankList_Template;

["SSG", "SSG"] call GTO_PlayerRankList_Template;
["SGT", "SGT"] call GTO_PlayerRankList_Template;

["CPL", "CPL"] call GTO_PlayerRankList_Template;
["SPC", "SPC"] call GTO_PlayerRankList_Template;

["PFC", "PFC"] call GTO_PlayerRankList_Template;
["PV", "PV"] call GTO_PlayerRankList_Template;

["VG", "Veteran Gast"] call GTO_PlayerRankList_Template;
["G", "Gast"] call GTO_PlayerRankList_Template;