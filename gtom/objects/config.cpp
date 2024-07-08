#include "\gtom\basicDefines_A3.hpp"

class CfgPatches
{
	class GTOM_old
	{
		// Meta information for editor
		name = "GTO Mod old";
		author = "LucyferHW";
		url = "";

		requiredAddons[] = {"A3_Functions_F", "A3_Weapons_F","A3_Modules_F","ace_main", "ace_modules", "ace_interact_menu","cba_common", "cba_events","aceax_gearinfo","ace_medical_treatment"};
		// List of objects (CfgVehicles classes) contained in the addon. Important also for Zeus content (units and groups) unlocking.
		units[] = {"GTO_MarkerFlag", "GTO_Banner"};
		// List of weapons (CfgWeapons classes) contained in the addon.
		weapons[] = {};
	};
};

class CfgWeapons
{
    class ACE_ItemCore;
    class CBA_MiscItem_ItemInfo;

    class ACE_bodyBag : ACE_ItemCore
    {
        class ItemInfo : CBA_MiscItem_ItemInfo
        {
            mass = 2.25;
        }
    }

    class ACE_Fortify : ACE_ItemCore
    {
        class ItemInfo : CBA_MiscItem_ItemInfo
        {
            mass = 15;
        }
    }

    class ACE_bloodIV : ACE_ItemCore
    {
        class ItemInfo : CBA_MiscItem_ItemInfo
        {
            mass = 5;
        }
    }

    class ACE_bloodIV_500 : ACE_bloodIV
    {
        class ItemInfo : CBA_MiscItem_ItemInfo
        {
            mass = 2.5;
        }
    }

    class ACE_bloodIV_250 : ACE_bloodIV
    {
        class ItemInfo : CBA_MiscItem_ItemInfo
        {
            mass = 1.2;
        }
    }

    class vtx_stretcher_item : ACE_ItemCore
    {
        class ItemInfo : CBA_MiscItem_ItemInfo
        {
            mass = 50;
        }
    };
};

class CfgVehicles
{
    class FlagMarker_01_F;
    class GTO_MarkerFlag : FlagMarker_01_F
    {
        scopeCurator = 2;
        displayName = "[GTO] Marker Flag";
        author = "LucyferHW";
        hiddenSelectionsTextures[] = {"gtom\logo\gto_unit_logo_2x1.paa"};
    };

    class Banner_01_F;
    class GTO_Banner : Banner_01_F
    {
        scopeCurator = 2;
        //["A3_Structures_F_Mil_Flags"]e
        displayName = "[GTO] Banner";
        author = "LucyferHW";
        hiddenSelectionsTextures[] = {"gtom\logo\gto_unit_logo_2x1.paa"};
    };
};