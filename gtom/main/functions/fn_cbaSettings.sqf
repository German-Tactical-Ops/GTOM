scriptName "fn_cbaSettings";
/*
	Author: LucyferHW
	
	Description:
	Runs on start.
	
	Parameter(s):
	#0 OBJECT - Description
*/

[
	"GTO_SetRank", // Internal setting name, should always contain a tag! This will be the global variable which takes the value of the setting.
	"CHECKBOX", // setting type
	["Set Rank", "set the GTO player rank"], // Pretty name shown inside the ingame settings menu. Can be stringtable entry.
	["GTOM Settings", "Main"], // Pretty name of the category where the setting can be found. Can be stringtable entry.
	[false, true, false], // data for this setting: [min, max, default, number of shown trailing decimals]
	true, // "_isGlobal" flag. set this to true to always have this setting synchronized between all clients in multiplayer
	{
		params["_value"];
		if (_value) then {
			[player] call GTO_fnc_setPlayerRank;
		}
	} // function that will be executed once on mission start and every time the setting is changed.
] call CBA_fnc_addSetting;

[
	"GTO_InitFortify", // Internal setting name, should always contain a tag! This will be the global variable which takes the value of the setting.
	"CHECKBOX", // setting type
	["initialize Fortify", "initializes a basic fortify sytem"], // Pretty name shown inside the ingame settings menu. Can be stringtable entry.
	["GTOM Settings", "Main"], // Pretty name of the category where the setting can be found. Can be stringtable entry.
	[false, true, false], // data for this setting: [min, max, default, number of shown trailing decimals]
	true, // "_isGlobal" flag. set this to true to always have this setting synchronized between all clients in multiplayer
	{
		params["_value"];
		if (_value) then {
			[] call GTO_fnc_initFortify;
		};
	}, true // function that will be executed once on mission start and every time the setting is changed.
] call CBA_fnc_addSetting;

[
	"GTO_persistentPlayer", // Internal setting name, should always contain a tag! This will be the global variable which takes the value of the setting.
	"CHECKBOX", // setting type
	["Persistent player", "When the player disconnects and connect again he spawns at the same spot and has the same loadout."], // Pretty name shown inside the ingame settings menu. Can be stringtable entry.
	["GTOM Settings", "Main"], // Pretty name of the category where the setting can be found. Can be stringtable entry.
	[false, true, false], // data for this setting: [min, max, default, number of shown trailing decimals]
	true, // "_isGlobal" flag. set this to true to always have this setting synchronized between all clients in multiplayer
	{
		params["_value"];
		if (_value) then {
			[] call GTO_fnc_persistentPlayer;
		};
	}, true // function that will be executed once on mission start and every time the setting is changed.
] call CBA_fnc_addSetting;

[
	"GTO_SetPlayerRecoilCoefficient", // Internal setting name, should always contain a tag! This will be the global variable which takes the value of the setting.
	"SLIDER", // setting type
	["Recoil Coefficient", "Set player recoil coefficient"], // Pretty name shown inside the ingame settings menu. Can be stringtable entry.
	["GTOM Settings", "Main"], // Pretty name of the category where the setting can be found. Can be stringtable entry.
	[0, 2, 1, 1], // data for this setting: [min, max, default, number of shown trailing decimals]
	true, // "_isGlobal" flag. set this to true to always have this setting synchronized between all clients in multiplayer
	{
		params["_value"];
		player setUnitRecoilCoefficient _value;
	} // function that will be executed once on mission start and every time the setting is changed.
] call CBA_fnc_addSetting;

[
	"GTO_addBasicDiary", // Internal setting name, should always contain a tag! This will be the global variable which takes the value of the setting.
	"CHECKBOX", // setting type
	["Add GTO Tutorial Diary", "adds GTO guides as a diary"], // Pretty name shown inside the ingame settings menu. Can be stringtable entry.
	["GTOM Settings", "Misc"], // Pretty name of the category where the setting can be found. Can be stringtable entry.
	[false, true, false], // data for this setting: [min, max, default, number of shown trailing decimals]
	false, // "_isGlobal" flag. set this to true to always have this setting synchronized between all clients in multiplayer
	{
		params["_value"];
		if (_value) then {
			[] call GTO_fnc_addBasicDiary;
		}
	} // function that will be executed once on mission start and every time the setting is changed.
] call CBA_fnc_addSetting;

[
	"GTO_createMedicalCategory", // Internal setting name, should always contain a tag! This will be the global variable which takes the value of the setting.
	"CHECKBOX", // setting type
	["Medicine Category", "creates a medicine category in the arsenal"], // Pretty name shown inside the ingame settings menu. Can be stringtable entry.
	["GTOM Settings", "Arsenal"], // Pretty name of the category where the setting can be found. Can be stringtable entry.
	[false, true, false], // data for this setting: [min, max, default, number of shown trailing decimals]
	false, // "_isGlobal" flag. set this to true to always have this setting synchronized between all clients in multiplayer
	{
		params["_value"];
		if (_value) then {
			[] call GTO_fnc_setMedicationCategorie;
		}
	} // function that will be executed once on mission start and every time the setting is changed.
] call CBA_fnc_addSetting;

[
	"GTO_addDynamicGroupsMenu", // Internal setting name, should always contain a tag! This will be the global variable which takes the value of the setting.
	"CHECKBOX", // setting type
	["Add Dynamic Groups", ""], // Pretty name shown inside the ingame settings menu. Can be stringtable entry.
	["GTOM Settings", "Main"], // Pretty name of the category where the setting can be found. Can be stringtable entry.
	[false, true, false], // data for this setting: [min, max, default, number of shown trailing decimals]
	true, // "_isGlobal" flag. set this to true to always have this setting synchronized between all clients in multiplayer
	{
		params["_value"];

		if (_value) then {
			if (isServer) then {
				["Initialize", [true]] call BIS_fnc_dynamicGroups;
				systemChat "Server Initialised Dynamic Groups Menu";
			};

			if (hasInterface) then {
				["InitializePlayer", [player, true]] call BIS_fnc_dynamicGroups;
				systemChat "Player Initialised Dynamic Groups Menu";
			};
		};
	}, true // function that will be executed once on mission start and every time the setting is changed.
] call CBA_fnc_addSetting;

[
	"GTO_PromoteFTL", // Internal setting name, should always contain a tag! This will be the global variable which takes the value of the setting.
	"CHECKBOX", // setting type
	["Promote to FTL", "Adds the possibility to promote a player to FTL with ACE Interaction."], // Pretty name shown inside the ingame settings menu. Can be stringtable entry.
	["GTOM Settings", "Main"], // Pretty name of the category where the setting can be found. Can be stringtable entry.
	[false, true, false], // data for this setting: [min, max, default, number of shown trailing decimals]
	true, // "_isGlobal" flag. set this to true to always have this setting synchronized between all clients in multiplayer
	{
		params["_value"];

		if (_value) then {
			_action = ["PromoteFTL", "Promote to FTL", "", {
				_target addItem "TFAR_anprc152";
				_target assignItem "TFAR_anprc152";
			}, {
				20 <= ([player] call GTO_fnc_getRankNumber)
			}, {}, [], [0, 0, 0], 100] call ace_interact_menu_fnc_createAction; //parameters
			[player, 0, ["ACE_MainActions"], _action] call ace_interact_menu_fnc_addActionToObject;

			systemChat "Initialised PromoteFTL System";
		};
	} // function that will be executed once on mission start and every time the setting is changed.
] call CBA_fnc_addSetting;