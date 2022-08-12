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
		requiredAddons[] = {"A3_Functions_F", "ace_main", "ace_modules", "ace_interact_menu", "A3_Supplies_F_Orange_Ammoboxes", "cba_common", "cba_events"};
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
			}; //

			class initArsenal
			{
				description = "Creates a arsenal on the given object";
				recompile = 1;
			}; // [_box] call GTO_fnc_initArsenal

			class mainArsenal
			{
				description = "Returns arsenal item ARRAY";
				recompile = 1;
			}; //_itemArray = [] call GTO_fnc_mainArsenal

			// TODO: make possible to insert Loadout via CBA Settings
			class shareLoadouts
			{
				description = "Shares the basic loadout";
				postInit = 1;
				recompile = 1;
			}; //
		};

		class diary
		{
			file = "gto_mod\functions\diary";

			class addBasicDiary
			{
				postInit = 1;
				recompile = 1;
			}; // [] call GTO_fnc_addBasicDiary

			class myFunction4
			{
				// description = "Function description"; // You can write some words about your fonction
				// preInit = 1;						  // 1 to call the function upon mission start, before objects are initialized. Passed arguments are ["preInit"]
				// postInit = 1;						  // 1 to call the function upon mission start, after objects are initialized. Passed arguments are ["postInit"]
				// preStart = 1;						  // 1 to call the function upon game start, before title screen, but after all addons are loaded.
				// recompile = 1;						  // 1 to recompile the function upon mission start
				// headerType = -1;					  // Set function header type: -1 - no header; 0 - default header; 1 - system header.
			}; // [] call GTO_fnc_myFunction4
		};
//TODO: add teleport function for Hebotes
		class other
		{
			file = "gto_mod\functions\other";

			class setPlayerRank
			{
				description = "Creates a arsenal on the given object";
				recompile = 1;
			}; // [_player] call GTO_fnc_setPlayerRank

			class cbaSettings
			{
				preInit = 1;
				preStart = 1;
				recompile = 1;
			}; //
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

#define MAG_XX(a, b)  \
	class _xx_##a     \
	{                 \
		magazine = a; \
		count = b;    \
	};
#define WEAP_XX(a, b) \
	class _xx_##a     \
	{                 \
		weapon = a;   \
		count = b;    \
	};
#define ITEM_XX(a, b) \
	class _xx_##a     \
	{                 \
		name = a;     \
		count = b;    \
	};
//todo: make barrets
//todo: disable weight of ["earPlugs", "barret", "Micro Dagre"]
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

	// TODO: make other boxes
	class Box_IDAP_Uniforms_F;
	class GTO_Supply_Box : Box_IDAP_Uniforms_F
	{
		displayName = "[GTO] Supply Box";
		author = "LucyferHW";
		hiddenSelectionsTextures[] = {"gto_mod\textures\PlasticCase\uniforms_box_idap_co.paa", "gto_mod\textures\PlasticCase\uniforms_box_idap_CA_GTO.paa"};
		class TransportMagazines
		{
			// MAG_XX(100Rnd_65x39_caseless_mag_Tracer,2);
			// MAX_XX(130Rnd_338_Mag,2);
		};
		class TransportItems
		{
			ITEM_XX(kat_Painkiller, 3);
			ITEM_XX(kat_Carbonate, 1);
			ITEM_XX(kat_IV_16, 10);
			ITEM_XX(kat_aatKit, 5);
			ITEM_XX(kat_accuvac, 1);
			ITEM_XX(ACE_adenosine, 10);
			ITEM_XX(kat_X_AED, 1);
			ITEM_XX(kat_amiodarone, 5);
			ITEM_XX(ACE_ATNAA, 10);
			ITEM_XX(kat_atropine, 10);
			ITEM_XX(kat_AED, 1);
			ITEM_XX(Attachable_Helistretcher, 1);
			ITEM_XX(ACE_elasticBandage, 30);
			ITEM_XX(ACE_packingBandage, 30);
			ITEM_XX(ACE_quikclot, 30);
			ITEM_XX(kat_crossPanel, 1);
			ITEM_XX(ACE_bodyBag, 10);
			ITEM_XX(kat_chestSeal, 5);
			ITEM_XX(ACE_epinephrine, 10);
			ITEM_XX(kat_IO_FAST, 10);
			ITEM_XX(KAT_Empty_bloodIV_250, 5);
			ITEM_XX(KAT_Empty_bloodIV_500, 5);
			ITEM_XX(kat_guedel, 10);
			ITEM_XX(kat_larynx, 10);
			ITEM_XX(kat_lidocaine, 10);
			ITEM_XX(ACE_morphine, 10);
			ITEM_XX(kat_naloxone, 5);
			ITEM_XX(kat_nitroglycerin, 10);
			ITEM_XX(kat_norepinephrine, 10);
			// ITEM_XX(ACE_personalAidKit,1);
			ITEM_XX(kat_phenylephrine, 10);
			ITEM_XX(ACE_plasmaIV, 10);
			ITEM_XX(ACE_plasmaIV_250, 10);
			ITEM_XX(ACE_plasmaIV_500, 10);
			ITEM_XX(kat_Pulseoximeter, 10);
			ITEM_XX(ACE_salineIV, 10);
			ITEM_XX(ACE_salineIV_250, 10);
			ITEM_XX(ACE_salineIV_500, 10);
			ITEM_XX(ACE_splint, 10);
			ITEM_XX(kat_stethoscope, 3);
			ITEM_XX(ACE_surgicalKit, 1);
			ITEM_XX(kat_TXA, 10);
			ITEM_XX(ACE_tourniquet, 20);
			ITEM_XX(ACE_IR_Strobe_Item, 3);
			ITEM_XX(ACE_CableTie, 5);
			ITEM_XX(ACE_EntrenchingTool, 1);
			ITEM_XX(SmokeShell, 10);
			ITEM_XX(SmokeShellRed, 5);
			ITEM_XX(SmokeShellGreen, 5);
			ITEM_XX(SmokeShellBlue, 5);
			ITEM_XX(HandGrenade, 10);
			ITEM_XX(MiniGrenade, 5);
			ITEM_XX(USP_PVS31, 1);
			ITEM_XX(WBK_HeadLampItem, 5);
			ITEM_XX(ItemcTabHCam, 5);
			ITEM_XX(ACE_Humanitarian_Ration, 10);
			ITEM_XX(ACE_WaterBottle, 10);
			ITEM_XX(ToolKit, 1);
			ITEM_XX(ACE_SpareBarrel_Item, 2);
		};
	};

	class C_IDAP_supplyCrate_F;
	class GTO_Arsenal : C_IDAP_supplyCrate_F
	{
		displayName = "[GTO] Supply Box";
		author = "LucyferHW";
	};

	class B_Carryall_oli;
	class GTO_Medic_Carryall_oli : B_Carryall_oli
	{
		displayName = "Carryall B. Medic (Olive)";
		author = "LucyferHW";
		hiddenSelectionsTextures[] = {"gto_mod\textures\MedicBackpack\backpack_tortila_oli_co.paa"};
		maximumLoad = 400;
	};

	class B_Carryall_cbr;
	class GTO_Medic_Carryall_cbr : B_Carryall_cbr
	{
		displayName = "Carryall B. Medic (Coyote)";
		author = "LucyferHW";
		hiddenSelectionsTextures[] = {"gto_mod\textures\MedicBackpack\backpack_tortila_cbr_co.paa"};
		maximumLoad = 400;
	};

	class FlagMarker_01_F;
	class GTO_MarkerFlag : FlagMarker_01_F
	{
		displayName = "[GTO] Marker Flag";
		author = "LucyferHW";
		hiddenSelectionsTextures[] = {"gto_mod\logo\gto_unit_logo_2x1.paa"};
	}

	class Banner_01_F;
	class GTO_Banner : Banner_01_F
	{
		//["A3_Structures_F_Mil_Flags"]e
		displayName = "[GTO] Banner";
		author = "LucyferHW";
		hiddenSelectionsTextures[] = {"gto_mod\logo\gto_unit_logo_2x1.paa"};
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