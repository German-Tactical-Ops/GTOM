#include "\gtom\basicDefines_A3.hpp"
#include "\gtom\defines.hpp"
#include "\gtom\cfgPatches.hpp"

// todo: disable weight of ["earPlugs",, "Micro Dagre"]

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
};

#define MAG_2(a) a, a
#define MAG_3(a) a, a, a
#define MAG_4(a) a, a, a, a
#define MAG_5(a) a, a, a, a, a
#define MAG_6(a) a, a, a, a, a, a
#define MAG_7(a) a, a, a, a, a, a, a
#define MAG_8(a) a, a, a, a, a, a, a, a
#define MAG_9(a) a, a, a, a, a, a, a, a, a
#define MAG_10(a) a, a, a, a, a, a, a, a, a, a
#define MAG_11(a) a, a, a, a, a, a, a, a, a, a, a
#define MAG_12(a) a, a, a, a, a, a, a, a, a, a, a, a
#define MAG_15(a) a, a, a, a, a, a, a, a, a, a, a, a, a, a, a,
#define MAG_20(a) a, a, a, a, a, a, a, a, a, a, a, a, a, a, a, a, a, a, a, a

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

class CfgVehicles
{
    class B_RangeMaster_F;
    class GTO_Soldier_base : B_RangeMaster_F
    {
        author = "LucyferHW";                                               // The name of the author of the asset, which is displayed in the editor.
        scope = 2;                                                          // 2 = class is available in the editor; 1 = class is unavailable in the editor, but can be accessed via a macro; 0 = class is unavailable (and used for inheritance only).
        scopeCurator = 2;                                                   // 2 = class is available in Zeus; 0 = class is unavailable in Zeus.
        scopeArsenal = 2;                                                   // 2 = class is available in the Virtual Arsenal; 0 = class is unavailable in the Virtual Arsenal.
        identityTypes[] = {"LanguageENG_F", "Head_NATO", "G_NATO_default"}; // Identity Types are explained in the Headgear section of this guide.
        displayName = "GTO Soldier";                                        // The name of the soldier, which is displayed in the editor.

        // model = "\A3\Characters_F\Common\Suitpacks\suitpack_original_F.p3d";
        hiddenSelectionsTextures[] = {"gtom\objects\textures\GTO_Uniform\GTO_BaseUniform.paa"};

        camouflage = 1.5;  // How likely this character is spotted (smaller number = more stealthy).
        sensitivity = 2.5; // How likely this character spots enemies when controlled by AI.

        icon = "gtom\icons\Roles\Other_icon.paa";
        picture = "gtom\icons\Roles\Other_icon.paa";

        uniformClass = "GTO_BaseUniform"; // This links this soldier to a particular uniform. For the details, see below.
        backpack = "";                    // Which backpack the character is wearing.

        weapons[] = {};        // Which weapons the character has.
        respawnWeapons[] = {}; // Which weapons the character respawns with.

        Items[] = {MAG_15(ACE_packingBandage),
                   ACE_EarPlugs,
                   MAG_2(ACE_CableTie),
                   ACE_IR_Strobe_Item,
                   GTO_Beret_Black,
                   ACE_splint}; // Which items the character has.
        RespawnItems[] = {MAG_15(ACE_packingBandage),
                          ACE_EarPlugs,
                          MAG_2(ACE_CableTie),
                          ACE_IR_Strobe_Item,
                          GTO_Beret_Black,
                          ACE_splint}; // Which items the character respawns with.

        magazines[] = {ACE_Chemlight_HiGreen};        // What ammunition the character has.
        respawnMagazines[] = {ACE_Chemlight_HiGreen}; // What ammunition the character respawns with.

        linkedItems[] = {GTO_Beret_Black,
                         ItemMap,
                         ItemCompass,
                         ItemWatch,
                         TFAR_anprc152,
                         Rangefinder,
                         none}; // Which items the character has.

        respawnLinkedItems[] = {GTO_Beret_Black,
                                ItemMap,
                                ItemCompass,
                                ItemWatch,
                                TFAR_anprc152,
                                Rangefinder,
                                none}; // Which items the character respawns with.
    };

    class GTO_Soldier_SL : GTO_Soldier_base
    {
        displayName = "GTO SL";
        icon = "gtom\icons\Roles\SL_icon.paa";
        picture = "gtom\icons\Roles\SL_icon.paa";
    };

    class GTO_Soldier_FTL : GTO_Soldier_base
    {
        displayName = "GTO FTL";
        icon = "gtom\icons\Roles\Other_icon.paa";
        picture = "gtom\icons\Roles\Other_icon.paa";
    };

    class GTO_Soldier_ExpSp : GTO_Soldier_base
    {
        displayName = "GTO Explosiv Specialist";
        icon = "gtom\icons\Roles\ExpSp_icon.paa";
        picture = "gtom\icons\Roles\ExpSp_icon.paa";

        canDeactivateMines = true;
    };

    class GTO_Soldier_Med : GTO_Soldier_base
    {
        displayName = "GTO Medic";
        icon = "gtom\icons\Roles\Med_icon.paa";
        picture = "gtom\icons\Roles\Med_icon.paa";

        attendant = 1;
    };

    class GTO_Soldier_Eng : GTO_Soldier_base
    {
        displayName = "GTO Engineer";
        icon = "gtom\icons\Roles\Eng_icon.paa";
        picture = "gtom\icons\Roles\Eng_icon.paa";

        engineer = true;
    };

    class GTO_Soldier_AT : GTO_Soldier_base
    {
        displayName = "GTO AT";
        icon = "gtom\icons\Roles\AT_icon.paa";
        picture = "gtom\icons\Roles\AT_icon.paa";
    };

    class GTO_Soldier_LMG : GTO_Soldier_base
    {
        displayName = "GTO LMG";
        icon = "gtom\icons\Roles\LMG_icon.paa";
        picture = "gtom\icons\Roles\LMG_icon.paa";
    };

    class GTO_Soldier_MMG : GTO_Soldier_base
    {
        displayName = "GTO MMG";
        icon = "gtom\icons\Roles\MMG_icon.paa";
        picture = "gtom\icons\Roles\MMG_icon.paa";
    };

    class GTO_Soldier_Marksman : GTO_Soldier_base
    {
        displayName = "GTO Marksman";
        icon = "gtom\icons\Roles\Marksman_icon.paa";
        picture = "gtom\icons\Roles\Marksman_icon.paa";
    };

    class GTO_Soldier_Rifleman : GTO_Soldier_base
    {
        displayName = "GTO Rifleman";
        icon = "gtom\icons\Roles\Rifleman_icon.paa";
        picture = "gtom\icons\Roles\Rifleman_icon.paa";
    };

    class GTO_Soldier_Grenadier : GTO_Soldier_base
    {
        displayName = "GTO Grenadier";
        icon = "gtom\icons\Roles\Grenadier_icon.paa";
        picture = "gtom\icons\Roles\Grenadier_icon.paa";
    };

    class GTO_Soldier_LC : GTO_Soldier_base
    {
        displayName = "GTO Lead Crewman";
        icon = "gtom\icons\Roles\LC_icon.paa";
        picture = "gtom\icons\Roles\LC_icon.paa";
    };

    class GTO_Soldier_Crewman : GTO_Soldier_base
    {
        displayName = "GTO Crewman";
        icon = "gtom\icons\Roles\Crewman_icon.paa";
        picture = "gtom\icons\Roles\Crewman_icon.paa";
    };

    class GTO_Soldier_Pilot : GTO_Soldier_base
    {
        displayName = "GTO Pilot";
        icon = "gtom\icons\Roles\Pilot_icon.paa";
        picture = "gtom\icons\Roles\Pilot_icon.paa";
    };

    /*     class C_IDAP_supplyCrate_F;
        class GTO_Arsenal : C_IDAP_supplyCrate_F
        {
            scopeCurator = 2;
            displayName = "[GTO] Arsenal (only object)";
            author = "LucyferHW";
        }; */

    class B_Carryall_Base;
    class B_Carryall_cbr;
    class B_Carryall_oli;

    /*     class GTO_Medic_Carryall_oli : B_Carryall_oli
        {
            scopeCurator = 2;
            displayName = "Carryall B. Medic (Olive)";
            author = "LucyferHW";
            hiddenSelectionsTextures[] = {"gtom\objects\textures\MedicBackpack\backpack_tortila_oli_co.paa"};
            maximumLoad = 400;
        };

        class GTO_Medic_Carryall_cbr : B_Carryall_cbr
        {
            scopeCurator = 2;
            displayName = "Carryall B. Medic (Coyote)";
            author = "LucyferHW";
            hiddenSelectionsTextures[] = {"gtom\objects\textures\MedicBackpack\backpack_tortila_cbr_co.paa"};
            maximumLoad = 400;
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