#include "\gtom\basicDefines_A3.hpp"
#include "\gtom\cfgPatches.hpp"

class CfgWeapons
{
    class ACE_ItemCore;
    class CBA_MiscItem_ItemInfo;

    class ACE_bodyBag : ACE_ItemCore
    {
        class ItemInfo : CBA_MiscItem_ItemInfo
        {
            mass = 0;
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
    /*     class C_IDAP_supplyCrate_F;
        class GTO_Arsenal : C_IDAP_supplyCrate_F
        {
            scopeCurator = 2;
            displayName = "[GTO] Arsenal (only object)";
            author = "LucyferHW";
        }; */

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

    /* class Man;
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
    }; */
};