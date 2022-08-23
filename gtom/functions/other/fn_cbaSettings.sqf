scriptName "fn_cbaSettings";
/*
	Author: LucyferHW
	
	Description:
	Runs on start.
	
	Parameter(s):
	#0 OBJECT - Description
*/

[
	"GTO_ViewDistance", // Internal setting name, should always contain a tag! This will be the global variable which takes the value of the setting.
	"SLIDER", // setting type
	"View Distance", // Pretty name shown inside the ingame settings menu. Can be stringtable entry.
	"GTO Settings", // Pretty name of the category where the setting can be found. Can be stringtable entry.
	[100, 12000, 5000, 0], // data for this setting: [min, max, default, number of shown trailing decimals]
	nil, // "_isGlobal" flag. set this to true to always have this setting synchronized between all clients in multiplayer
	{
		params["_value"];
		setViewDistance _value;
	} // function that will be executed once on mission start and every time the setting is changed.
] call CBA_fnc_addSetting;

[
	"GTO_SetRank", // Internal setting name, should always contain a tag! This will be the global variable which takes the value of the setting.
	"CHECKBOX", // setting type
	"Set Rank", // Pretty name shown inside the ingame settings menu. Can be stringtable entry.
	"GTO Settings", // Pretty name of the category where the setting can be found. Can be stringtable entry.
	[false, true, false], // data for this setting: [min, max, default, number of shown trailing decimals]
	nil, // "_isGlobal" flag. set this to true to always have this setting synchronized between all clients in multiplayer
	{
		params["_value"];
		[player] call GTO_fnc_setPlayerRank;
	} // function that will be executed once on mission start and every time the setting is changed.
] call CBA_fnc_addSetting;

[
	"GTO_ShareLoadout", // Internal setting name, should always contain a tag! This will be the global variable which takes the value of the setting.
	"EDITBOX", // setting type
	"Share Loadout", // Pretty name shown inside the ingame settings menu. Can be stringtable entry.
	"GTO Settings", // Pretty name of the category where the setting can be found. Can be stringtable entry.
	[""], // data for this setting: [min, max, default, number of shown trailing decimals]
	1, // "_isGlobal" flag. set this to true to always have this setting synchronized between all clients in multiplayer
	{
		params["_value"];
		if (_value!="") then {
			[_value] call ace_arsenal_fnc_addDefaultLoadout;
			systemChat "Loading Loadout from CBA settings."
		} else {
			systemChat "No Loadout set.";
		}
	} // function that will be executed once on mission start and every time the setting is changed.
] call CBA_fnc_addSetting;