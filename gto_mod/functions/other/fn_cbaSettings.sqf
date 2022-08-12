scriptName "fn_cbaSettings";
/*
	Author: LucyferHW
	
	Description:
	Describe your function
	
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

/*[
	"GTO_ArsenalContent", // Internal setting name, should always contain a tag! This will be the global variable which takes the value of the setting.
	"LIST", // setting type
	"Arsenal", // Pretty name shown inside the ingame settings menu. Can be stringtable entry.
	"GTO Settings", // Pretty name of the category where the setting can be found. Can be stringtable entry.
	[[false, true], ["Custom", "Default"], 1], // data for this setting: [min, max, default, number of shown trailing decimals]
	_isGlobal, // "_isGlobal" flag. set this to true to always have this setting synchronized between all clients in multiplayer
	{
		params["_value"];

		_itemArray = [] call GTO_fnc_mainArsenal;
		if (_value) then {
			systemChat "Default";
		} else {
			systemChat "Custom";
		}
	} // function that will be executed once on mission start and every time the setting is changed.
] call CBA_fnc_addSetting;*/