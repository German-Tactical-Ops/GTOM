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
	"GTOM Settings", // Pretty name of the category where the setting can be found. Can be stringtable entry.
	[100, 12000, 3000, 0], // data for this setting: [min, max, default, number of shown trailing decimals]
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
	"GTOM Settings", // Pretty name of the category where the setting can be found. Can be stringtable entry.
	[false, true, false], // data for this setting: [min, max, default, number of shown trailing decimals]
	true, // "_isGlobal" flag. set this to true to always have this setting synchronized between all clients in multiplayer
	{
		params["_value"];
		if (_value) then {
			[player] call GTO_fnc_setPlayerRank;
		}
	} // function that will be executed once on mission start and every time the setting is changed.
] call CBA_fnc_addSetting;

//todo: add second option with building points param
[
	"GTO_InitFortify", // Internal setting name, should always contain a tag! This will be the global variable which takes the value of the setting.
	"CHECKBOX", // setting type
	"Init Fortify", // Pretty name shown inside the ingame settings menu. Can be stringtable entry.
	"GTOM Settings", // Pretty name of the category where the setting can be found. Can be stringtable entry.
	[false, true, false], // data for this setting: [min, max, default, number of shown trailing decimals]
	true, // "_isGlobal" flag. set this to true to always have this setting synchronized between all clients in multiplayer
	{
		params["_value"];
		if (_value) then {
			[] call GTO_fnc_initFortify;
		}
	}, true // function that will be executed once on mission start and every time the setting is changed.
] call CBA_fnc_addSetting;