#include "basicDefines_A3.hpp"
#include "cfgPatches.hpp"
#include "mod.cpp"
// new line

class cfgFunctions
{
	class A3_samples
	{
		tag = "BIS"; // Custom tag name
		class vehicles
		{
			file = "gto_mod\vehicles"; // function will be loaded from this folder.
			class quadbike
			{
			}; // [this, "black"] call BIS_fnc_quadbike;
		};
	};
	class GTO // project or person tag
	{
		class arsenal // This represent a group of function
		{
			file = "gto_mod\arsenal"; // Where my functions are

			class setCategorie
			{
				description = "Makes a medical categorie in the arsenal";
				postInit = 1;
				recompile = 1;
			}; // [] call GTO_fnc_setCategorie

			class initArsenal
			{
				description = "Creates a arsenal on the given object";
				recompile = 1;
			}; // [] call GTO_fnc_initArsenal
		};

		class diary
		{
			file = "gto_mod\diary";

			class myFunction3
			{
			}; // [] call GTO_fnc_myFunction3

			class myFunction4
			{
			}; // [] call GTO_fnc_myFunction4

			class myFunction5 // [] call GTO_fnc_myFunction5
			{
				description = "Function description"; // You can write some words about your fonction
				preInit = 1;						  // 1 to call the function upon mission start, before objects are initialized. Passed arguments are ["preInit"]
				postInit = 1;						  // 1 to call the function upon mission start, after objects are initialized. Passed arguments are ["postInit"]
				preStart = 1;						  // 1 to call the function upon game start, before title screen, but after all addons are loaded.
				recompile = 1;						  // 1 to recompile the function upon mission start
				ext = ".fsm";						  // Set file type, can be ".sqf" or ".fsm" (meaning scripted FSM). Default is ".sqf".
				headerType = -1;					  // Set function header type: -1 - no header; 0 - default header; 1 - system header.
			};
		};

		class respawn
		{
			file = "gto_mod\respawn";

			class placeRalypoint
			{
				recompile = 1;
			};
		};
	};
};

class CfgVehicles
{
	class Man;
	class CAManBase : Man
	{
		class ACE_SelfActions
		{
			class ACE_Equipment
			{
				class placeRalypoint
				{
					displayName = "Place Rallypoint";
					condition = "'ace_marker_flags_blue' in (items _player)";
					exceptions[] = {};
					statement = "[_player] call GTO_fnc_placeRalypoint";
					icon = "";
				};
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