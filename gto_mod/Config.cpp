#include "basicDefines_A3.hpp"

class CfgPatches
{
	class GTOMod
	{
		// Meta information for editor
		name = "GTO Mod";
		author = "LucyferHW";
		url = "";

		// Required addons, used for setting load order.
		// When any of the addons is missing, pop-up warning will appear when launching the game.
		requiredAddons[] = {"A3_Functions_F", "ace_main", "ace_modules", "ace_interact_menu", "A3_Supplies_F_Orange_Ammoboxes"};
		// List of objects (CfgVehicles classes) contained in the addon. Important also for Zeus content (units and groups) unlocking.
		units[] = {};
		// List of weapons (CfgWeapons classes) contained in the addon.
		weapons[] = {};
	};
};

class cfgFunctions
{
	class A3_samples
	{
		tag = "BIS"; // Custom tag name
		class vehicles
		{
			file = "gto_mod\functions\vehicles"; // function will be loaded from this folder.
			class quadbike
			{
			}; // [this, "black"] call BIS_fnc_quadbike;
		};
	};
	class GTO // project or person tag
	{
		class arsenal // This represent a group of function
		{
			file = "gto_mod\functions\arsenal"; // Where my functions are

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
			file = "gto_mod\functions\diary";

			class myFunction3
			{
			}; // [] call GTO_fnc_myFunction3

			class myFunction4
			{
				//description = "Function description"; // You can write some words about your fonction
				//preInit = 1;						  // 1 to call the function upon mission start, before objects are initialized. Passed arguments are ["preInit"]
				//postInit = 1;						  // 1 to call the function upon mission start, after objects are initialized. Passed arguments are ["postInit"]
				//preStart = 1;						  // 1 to call the function upon game start, before title screen, but after all addons are loaded.
				//recompile = 1;						  // 1 to recompile the function upon mission start
				//headerType = -1;					  // Set function header type: -1 - no header; 0 - default header; 1 - system header.
			}; // [] call GTO_fnc_myFunction4
		};

		class respawn
		{
			file = "gto_mod\functions\respawn";

			class placeRalypoint
			{
				recompile = 1;
			};
		};
	};
};


#define MAG_XX(a,b) class _xx_##a {magazine = a; count = b;}
#define WEAP_XX(a,b) class _xx_##a {weapon = a; count = b;}
#define ITEM_XX(a,b) class _xx_##a {name = a; count = b;}

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

	class Land_PlasticCase_01_large_gray_F;
	class GTO_Supply_Box : Land_PlasticCase_01_large_gray_F
	{



		displayName = "[GTO] Supply Box";
		author = "LucyferHW";
		hiddenSelectionsTextures[] = {"\gto_mod\textures\PlasticCase\PlasticCase_01_gray_GTO.paa"};
		class TransportMagazines
		{
			//class specialMagazin {magazine = 100Rnd_65x39_caseless_mag; count = 4;};
			MAG_XX(100Rnd_65x39_caseless_mag,4);
			//MAG_XX(100Rnd_65x39_caseless_mag_Tracer,2);
			//MAX_XX(130Rnd_338_Mag,2);
		};
		class TransportItems
		{
			//ITEM_XX(optic_tws_mg,1);
			//ITEM_XX(bipod_01_F_snd,1);
			//ITEM_XX(muzzle_snds_338_sand,1);
			//ITEM_XX(muzzle_snds_H_SW,1);
		};
	}
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