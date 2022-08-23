#include "basicDefines_A3.hpp"

class CfgPatches
{
	class GTOM
	{
		// Meta information for editor
		name = "GTO Mod";
		author = "LucyferHW";
		url = "";

		// Required addons, used for setting load order.
		// When any of the addons is missing, pop-up warning will appear when launching the game.
		requiredAddons[] = {"A3_Functions_F", "ace_main", "ace_modules", "ace_interact_menu", "A3_Supplies_F_Orange_Ammoboxes", "cba_common", "cba_events"};
		// List of objects (CfgVehicles classes) contained in the addon. Important also for Zeus content (units and groups) unlocking.
		units[] = {};
		// List of weapons (CfgWeapons classes) contained in the addon.
		weapons[] = {};
	};
};

//todo: add Field Manual

class CfgHints
{
	class InfantryMovement
	{
		// Topic title (displayed only in topic listbox in Field Manual)
		displayName = "Infantry Controls";
		class SteppingOver
		{
			// Hint title, filled by arguments from 'arguments' param
			displayName = "Stepping over obstacles";
			// Optional hint subtitle, filled by arguments from 'arguments' param
			displayNameShort = "Stepping over obstacles";
			// Structured text, filled by arguments from 'arguments' param
			description = "Press %11 to step over low obstacle. Your %13 is %14";
			// Optional structured text, filled by arguments from 'arguments' param (first argument is %11, see notes below), grey color of text
			tip = "The free look represents turning the head sideways and up or down.";
			arguments[] = {
				{{"getOver"}}, // Double nested array means assigned key (will be specially formatted)
				{"name"}, // Nested array means element (specially formatted part of text)
				"name player" // Simple string will be simply compiled and called, String can also link to localization database in case it starts by str_
			};
			// Optional image
			image = "\path\image_ca.paa";
			// optional parameter for not showing of image in context hint in mission (default false))
			noImage = false;
			// -1 Creates no log in player diary, 0 Creates diary log ( default when not provided )
			// if a dlc's appID Number is used ( see [[getDLCs]] ) and the user does not have the required dlc installed then the advHint will be replaced with
			// configfile >> "CfgHints" >> "DlcMessage" >> "Dlc#"; where # is this properties ( dlc appID ) number
			dlc = -1;

			class SteppingOver_subHint
			{
				// Sub-hint title, filled by arguments from 'arguments' param
				displayName = "Stepping over obstacles";
				// Optional sub-hint subtitle, filled by arguments from 'arguments' param
				displayNameShort = "Stepping over obstacles";
				// Structured text, filled by arguments from 'arguments' param
				description = "Press %11 to step over low obstacle. Your %13 is %14";
				// Optional structured text, filled by arguments from 'arguments' param (first argument is %11, see notes below), grey color of text
				tip = "The free look represents turning the head sideways and up or down.";
				arguments[] = {
					{{"getOver"}}, // Double nested array means assigned key (will be specially formatted)
					{"name"}, // Nested array means element (specially formatted part of text)
					"name player" // Simple string will be simply compiled and called, String can also link to localization database in case it starts by str_
				};
				// Optional image
				image = "\path\image_ca.paa";
				// optional parameter for not showing of image in context hint in mission (default false))
				noImage = false;
				// -1 Creates no log in player diary, 0 Creates diary log ( default when not provided )
				// if a dlc's appID Number is used ( see [[getDLCs]] ) and the user does not have the required dlc installed then the advHint will be replaced with
				// configfile >> "CfgHints" >> "DlcMessage" >> "Dlc#"; where # is this properties ( dlc appID ) number
				dlc = -1;
			};
		};
	};
};

// class CfgUnitInsignia
//{//
//
//	class insignia_gto
//	{
//		displayName = "GTO - Main";
//		author = "LucyferHW";
//		texture = "GTO_Insignia\icon\gto_unit_logo.paa";
//		textureVehicle = "GTO_Insignia\icon\gto_unit_logo.paa";
//	};
//
// };