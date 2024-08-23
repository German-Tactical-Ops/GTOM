scriptName "fn_cbaSettings";

private _gto_Settings = ".GTOM Settings";

[
	"GTO_InitFortify", // Internal setting name, should always contain a tag! This will be the global variable which takes the value of the setting.
	"CHECKBOX", // setting type
	["initialize Fortify", "initializes a basic fortify sytem"], // Pretty name shown inside the ingame settings menu. Can be stringtable entry.
	[_gto_Settings, "Main"], // Pretty name of the category where the setting can be found. Can be stringtable entry.
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
	[_gto_Settings, "Main"], // Pretty name of the category where the setting can be found. Can be stringtable entry.
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
	"GTO_UniformFix", // Internal setting name, should always contain a tag! This will be the global variable which takes the value of the setting.
	"CHECKBOX", // setting type
	["Uniform Fix", "A system that fixes the buggy uniforms."], // Pretty name shown inside the ingame settings menu. Can be stringtable entry.
	[_gto_Settings, "Main"], // Pretty name of the category where the setting can be found. Can be stringtable entry.
	[false, true, false], // data for this setting: [min, max, default, number of shown trailing decimals]
	true, // "_isGlobal" flag. set this to true to always have this setting synchronized between all clients in multiplayer
	{
		params["_value"];
		if (_value) then {
			"" remoteExec ["GTO_fnc_uniformFix", 0];
		};
	}, true // function that will be executed once on mission start and every time the setting is changed.
] call CBA_fnc_addSetting;

[
	"GTO_SetPlayerRecoilCoefficient", // Internal setting name, should always contain a tag! This will be the global variable which takes the value of the setting.
	"SLIDER", // setting type
	["Recoil Coefficient", "Set player recoil coefficient"], // Pretty name shown inside the ingame settings menu. Can be stringtable entry.
	[_gto_Settings, "Main"], // Pretty name of the category where the setting can be found. Can be stringtable entry.
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
	[_gto_Settings, "Misc"], // Pretty name of the category where the setting can be found. Can be stringtable entry.
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
	[_gto_Settings, "Arsenal"], // Pretty name of the category where the setting can be found. Can be stringtable entry.
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
	[_gto_Settings, "Main"], // Pretty name of the category where the setting can be found. Can be stringtable entry.
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