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

// ---------- Insignia ----------- //

[
	"GTO_InsigniaRankList_SL", // Internal setting name, should always contain a tag! This will be the global variable which takes the value of the setting.
	"EDITBOX", // setting type
	["Seagent List", ""], // Pretty name shown inside the ingame settings menu. Can be stringtable entry.
	["GTOM Rank", "Insignia List"], // Pretty name of the category where the setting can be found. Can be stringtable entry.
	[""], // data for this setting: [min, max, default, number of shown trailing decimals]
	true, // "_isGlobal" flag. set this to true to always have this setting synchronized between all clients in multiplayer
	{
		params["_value"];
	} // function that will be executed once on mission start and every time the setting is changed.
] call CBA_fnc_addSetting;

[
	"GTO_InsigniaRankList_FTL", // Internal setting name, should always contain a tag! This will be the global variable which takes the value of the setting.
	"EDITBOX", // setting type
	["SL List", ""], // Pretty name shown inside the ingame settings menu. Can be stringtable entry.
	["GTOM Rank", "Insignia List"], // Pretty name of the category where the setting can be found. Can be stringtable entry.
	[""], // data for this setting: [min, max, default, number of shown trailing decimals]
	true, // "_isGlobal" flag. set this to true to always have this setting synchronized between all clients in multiplayer
	{
		params["_value"];
	} // function that will be executed once on mission start and every time the setting is changed.
] call CBA_fnc_addSetting;

[
	"GTO_InsigniaRankList_Private", // Internal setting name, should always contain a tag! This will be the global variable which takes the value of the setting.
	"EDITBOX", // setting type
	["SL List", ""], // Pretty name shown inside the ingame settings menu. Can be stringtable entry.
	["GTOM Rank", "Insignia List"], // Pretty name of the category where the setting can be found. Can be stringtable entry.
	[""], // data for this setting: [min, max, default, number of shown trailing decimals]
	true, // "_isGlobal" flag. set this to true to always have this setting synchronized between all clients in multiplayer
	{
		params["_value"];
	} // function that will be executed once on mission start and every time the setting is changed.
] call CBA_fnc_addSetting;


// ---------- Player ----------- //

[
	"GTO_PlayerRankList_SL", // Internal setting name, should always contain a tag! This will be the global variable which takes the value of the setting.
	"EDITBOX", // setting type
	["SL List", ""], // Pretty name shown inside the ingame settings menu. Can be stringtable entry.
	["GTOM Rank", "Player List"], // Pretty name of the category where the setting can be found. Can be stringtable entry.
	[""], // data for this setting: [min, max, default, number of shown trailing decimals]
	true, // "_isGlobal" flag. set this to true to always have this setting synchronized between all clients in multiplayer
	{
		params["_value"];
	} // function that will be executed once on mission start and every time the setting is changed.
] call CBA_fnc_addSetting;

[
	"GTO_PlayerRankList_FTL", // Internal setting name, should always contain a tag! This will be the global variable which takes the value of the setting.
	"EDITBOX", // setting type
	["FTL List", ""], // Pretty name shown inside the ingame settings menu. Can be stringtable entry.
	["GTOM Rank", "Player List"], // Pretty name of the category where the setting can be found. Can be stringtable entry.
	[""], // data for this setting: [min, max, default, number of shown trailing decimals]
	true, // "_isGlobal" flag. set this to true to always have this setting synchronized between all clients in multiplayer
	{
		params["_value"];
	} // function that will be executed once on mission start and every time the setting is changed.
] call CBA_fnc_addSetting;

[
	"GTO_PlayerRankList_Private", // Internal setting name, should always contain a tag! This will be the global variable which takes the value of the setting.
	"EDITBOX", // setting type
	["Private List", ""], // Pretty name shown inside the ingame settings menu. Can be stringtable entry.
	["GTOM Rank", "Player List"], // Pretty name of the category where the setting can be found. Can be stringtable entry.
	[""], // data for this setting: [min, max, default, number of shown trailing decimals]
	true, // "_isGlobal" flag. set this to true to always have this setting synchronized between all clients in multiplayer
	{
		params["_value"];
	} // function that will be executed once on mission start and every time the setting is changed.
] call CBA_fnc_addSetting;