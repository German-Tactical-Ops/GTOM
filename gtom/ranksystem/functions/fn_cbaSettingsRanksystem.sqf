scriptName "fn_cbaSettingsRanksystem";
/*
	Author: LucyferHW
	
	Description:
	Runs on start.
	
	Parameter(s):
	#0 OBJECT - Description
*/

[
	"GTO_RankList_SL", // Internal setting name, should always contain a tag! This will be the global variable which takes the value of the setting.
	"EDITBOX", // setting type
	["SL List", ""], // Pretty name shown inside the ingame settings menu. Can be stringtable entry.
	["GTOM Config", "Rank"], // Pretty name of the category where the setting can be found. Can be stringtable entry.
	[""], // data for this setting: [min, max, default, number of shown trailing decimals]
	true, // "_isGlobal" flag. set this to true to always have this setting synchronized between all clients in multiplayer
	{
		params["_value"];
	} // function that will be executed once on mission start and every time the setting is changed.
] call CBA_fnc_addSetting;

[
	"GTO_RankList_FTL", // Internal setting name, should always contain a tag! This will be the global variable which takes the value of the setting.
	"EDITBOX", // setting type
	["FTL List", ""], // Pretty name shown inside the ingame settings menu. Can be stringtable entry.
	["GTOM Config", "Rank"], // Pretty name of the category where the setting can be found. Can be stringtable entry.
	[""], // data for this setting: [min, max, default, number of shown trailing decimals]
	true, // "_isGlobal" flag. set this to true to always have this setting synchronized between all clients in multiplayer
	{
		params["_value"];
	} // function that will be executed once on mission start and every time the setting is changed.
] call CBA_fnc_addSetting;

[
	"GTO_RankList_Private", // Internal setting name, should always contain a tag! This will be the global variable which takes the value of the setting.
	"EDITBOX", // setting type
	["Private List", ""], // Pretty name shown inside the ingame settings menu. Can be stringtable entry.
	["GTOM Config", "Rank"], // Pretty name of the category where the setting can be found. Can be stringtable entry.
	[""], // data for this setting: [min, max, default, number of shown trailing decimals]
	true, // "_isGlobal" flag. set this to true to always have this setting synchronized between all clients in multiplayer
	{
		params["_value"];
	} // function that will be executed once on mission start and every time the setting is changed.
] call CBA_fnc_addSetting;