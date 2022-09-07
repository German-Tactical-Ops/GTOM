#include "\gtom\basicDefines_A3.hpp"
#include "\gtom\defines.hpp"
#include "\gtom\cfgPatches.hpp"

// todo: disable weight of ["earPlugs",, "Micro Dagre"]
class XtdGearModels
{
    class CfgWeapons
    {
        class GTO_Beret_All
        {
            label = "[GTO] Beret";
            author = "LucyferHW";
            options[] = {"optionA"};
            class optionA
            {
                label = "Beret Color";
                values[] = {"black", "red", "orange", "yellow", "green", "blue", "violett", "pink", "white", "gray"};
                changeingame = 1;     // 1 if value can be changed in game via ACE menu
                alwaysSelectable = 1; // allows the selection of the values even if there isn't an item with a complete match of options available, falling back to a weak match with this single value (optional)
                changedelay = 0.5;      // If can changeingame, wait delay before change is effective (can be 0, 0.1, or more)
                // icon = "xxx"; If can changeingame, action group icon in ACE menu
                class black
                {
                    label = "Black";
                    description = "Soldier";
                    image = "gtom\objects\textures\Beret\color\BeretColor_Black.paa";
                };
                class red
                {
                    label = "Red";
                    description = "SL"; // displayed as tooltip
                    image = "gtom\objects\textures\Beret\color\BeretColor_Red.paa";
                    // icon = "xxx"; If can changeingame, action icon in ACE menu
                    // actionlabel = "xxx"; If can changeingame, action label in ACE menu
                    // itemingame = "xxx"; If can changeingame, requires this item to be present in inventory. Item will be removed from inventory (added back if an other value is choosen)
                    // changedelay = (inherited by default); If can changeingame, wait delay before change is effective
                    // faction[] = {"BLU_F", "BLU_T_F", "BLU_W_F"}; // shows this value only for selected factions, identified by their A3 code (optional)
                };
                class orange
                {
                    label = "Orange";
                    description = "not set";
                    image = "gtom\objects\textures\Beret\color\BeretColor_Orange.paa";
                };
                class yellow
                {
                    label = "Yellow";
                    description = "not set";
                    image = "gtom\objects\textures\Beret\color\BeretColor_Yellow.paa";
                };
                class green
                {
                    label = "Green";
                    description = "FTL";
                    image = "gtom\objects\textures\Beret\color\BeretColor_Green.paa";
                };
                class blue
                {
                    label = "Blue";
                    description = "Medic";
                    image = "gtom\objects\textures\Beret\color\BeretColor_Blue.paa";
                };
                class violett
                {
                    label = "Violett";
                    description = "Pilot";
                    image = "gtom\objects\textures\Beret\color\BeretColor_Violett.paa";
                };
                class pink
                {
                    label = "Pink";
                    description = "JTAC";
                    image = "gtom\objects\textures\Beret\color\BeretColor_Pink.paa";
                };
                class white
                {
                    label = "White";
                    description = "Zeus";
                    image = "gtom\objects\textures\Beret\color\BeretColor_White.paa";
                };
                class gray
                {
                    label = "Gray";
                    description = "Guest";
                    image = "gtom\objects\textures\Beret\color\BeretColor_Gray.paa";
                };
            };
        };
    };
};

class CfgWeapons
{
    class H_Beret_EAF_01_F;
    class HeadgearItem;

    // todo: make icons for berets
    // todo: medic patch

    class GTO_Beret_Empty : H_Beret_EAF_01_F
    {
        scope = 0;
        author = "LucyferHW";
        weight = 0;
        size = 0;
        DLC = "";
    };

    class GTO_Beret_Red : GTO_Beret_Empty
    {
        scope = 2;
        displayName = "[GTO] Beret (Red)";
        hiddenSelectionsTextures[] = {"gtom\objects\textures\Beret\export\GTO_Beret_Red.paa"};

        class XtdGearInfo
        {
            model = "GTO_Beret_All"; // class name in XtdGearModels >> CfgWeapons

            optionA = "red";
        };
    };

    class GTO_Beret_Orange : GTO_Beret_Empty
    {
        scope = 2;
        displayName = "[GTO] Beret (Orange)";
        hiddenSelectionsTextures[] = {"gtom\objects\textures\Beret\export\GTO_Beret_Orange.paa"};

        class XtdGearInfo
        {
            model = "GTO_Beret_All"; // class name in XtdGearModels >> CfgWeapons
            optionA = "orange";
        };
    };

    class GTO_Beret_Yellow : GTO_Beret_Empty
    {
        scope = 2;
        displayName = "[GTO] Beret (Yellow)";
        hiddenSelectionsTextures[] = {"gtom\objects\textures\Beret\export\GTO_Beret_Yellow.paa"};

        class XtdGearInfo
        {
            model = "GTO_Beret_All"; // class name in XtdGearModels >> CfgWeapons
            optionA = "yellow";
        };
    };

    class GTO_Beret_Green : GTO_Beret_Empty
    {
        scope = 2;
        displayName = "[GTO] Beret (Green)";
        hiddenSelectionsTextures[] = {"gtom\objects\textures\Beret\export\GTO_Beret_Green.paa"};

        class XtdGearInfo
        {
            model = "GTO_Beret_All"; // class name in XtdGearModels >> CfgWeapons
            optionA = "green";
        };
    };

    class GTO_Beret_Blue : GTO_Beret_Empty
    {
        scope = 2;
        displayName = "[GTO] Beret (Blue)";
        hiddenSelectionsTextures[] = {"gtom\objects\textures\Beret\export\GTO_Beret_Blue.paa"};

        class XtdGearInfo
        {
            model = "GTO_Beret_All"; // class name in XtdGearModels >> CfgWeapons
            optionA = "blue";
        };
    };

    class GTO_Beret_Violett : GTO_Beret_Empty
    {
        scope = 2;
        displayName = "[GTO] Beret (Violett)";
        hiddenSelectionsTextures[] = {"gtom\objects\textures\Beret\export\GTO_Beret_Violett.paa"};

        class XtdGearInfo
        {
            model = "GTO_Beret_All"; // class name in XtdGearModels >> CfgWeapons
            optionA = "violett";
        };
    };

    class GTO_Beret_Pink : GTO_Beret_Empty
    {
        scope = 2;
        displayName = "[GTO] Beret (Pink)";
        hiddenSelectionsTextures[] = {"gtom\objects\textures\Beret\export\GTO_Beret_Pink.paa"};

        class XtdGearInfo
        {
            model = "GTO_Beret_All"; // class name in XtdGearModels >> CfgWeapons
            optionA = "pink";
        };
    };

    class GTO_Beret_White : GTO_Beret_Empty
    {
        scope = 2;
        displayName = "[GTO] Beret (White)";
        hiddenSelectionsTextures[] = {"gtom\objects\textures\Beret\export\GTO_Beret_White.paa"};

        class XtdGearInfo
        {
            model = "GTO_Beret_All"; // class name in XtdGearModels >> CfgWeapons
            optionA = "white";
        };
    };

    class GTO_Beret_Gray : GTO_Beret_Empty
    {
        scope = 2;
        displayName = "[GTO] Beret (Gray)";
        hiddenSelectionsTextures[] = {"gtom\objects\textures\Beret\export\GTO_Beret_Gray.paa"};

        class XtdGearInfo
        {
            model = "GTO_Beret_All"; // class name in XtdGearModels >> CfgWeapons
            optionA = "gray";
        };
    };

    class GTO_Beret_Black : GTO_Beret_Empty
    {
        scope = 2;
        displayName = "[GTO] Beret (Black)";
        hiddenSelectionsTextures[] = {"gtom\objects\textures\Beret\export\GTO_Beret_Black.paa"};

        class XtdGearInfo
        {
            model = "GTO_Beret_All"; // class name in XtdGearModels >> CfgWeapons
            optionA = "black";
        };
    };

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
    // B_Soldier_F
    class B_Soldier_base_F;                   // For inheritance to work, the base class has to be defined.
    class GTO_Soldier_base : B_Soldier_base_F // Define of a new class, which parameters are inherited from B_Soldier_base_F, with exception of those defined below.
    {
        author = "LucyferHW";                                               // The name of the author of the asset, which is displayed in the editor.
        scope = 2;                                                          // 2 = class is available in the editor; 1 = class is unavailable in the editor, but can be accessed via a macro; 0 = class is unavailable (and used for inheritance only).
        scopeCurator = 2;                                                   // 2 = class is available in Zeus; 0 = class is unavailable in Zeus.
        scopeArsenal = 2;                                                   // 2 = class is available in the Virtual Arsenal; 0 = class is unavailable in the Virtual Arsenal.
        identityTypes[] = {"LanguageENG_F", "Head_NATO", "G_NATO_default"}; // Identity Types are explained in the Headgear section of this guide.
        displayName = "GTO Soldier";                                        // The name of the soldier, which is displayed in the editor.
        camouflage = 1.5;                                                   // How likely this character is spotted (smaller number = more stealthy).
        sensitivity = 2.5;                                                  // How likely this character spots enemies when controlled by AI.

        icon = "gtom\icons\Roles\Other_icon.paa";
        picture = "gtom\icons\Roles\Other_icon.paa";

        uniformClass = "U_B_GEN_Soldier_F"; // This links this soldier to a particular uniform. For the details, see below.
        backpack = "";                      // Which backpack the character is wearing.

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

    /*  canDeactivateMines = true;
        engineer = true;
        attendant = 1;
        */

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

    // TODO: make other boxes
    class Box_IDAP_Uniforms_F;
    class GTO_Supply_Box : Box_IDAP_Uniforms_F
    {
        displayName = "[GTO] Supply Box";
        author = "LucyferHW";
        hiddenSelectionsTextures[] = {"gtom\objects\textures\PlasticCase\uniforms_box_idap_co.paa", "gtom\objects\textures\PlasticCase\uniforms_box_idap_CA_GTO.paa"};
        class TransportMagazines
        {
            // MAG_XX(100Rnd_65x39_caseless_mag_Tracer,2);
            // MAX_XX(130Rnd_338_Mag,2);
        };
        class TransportItems
        {

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

    class GTO_Medic_Box : Box_IDAP_Uniforms_F
    {
        displayName = "[GTO] Medic Box";
        author = "LucyferHW";
        hiddenSelectionsTextures[] = {"gtom\objects\textures\PlasticCase\uniforms_box_idap_co.paa", "gtom\objects\textures\PlasticCase\uniforms_box_idap_CA_GTO.paa"};
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
            ITEM_XX(ACE_personalAidKit, 1);
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
        };
    };

    // --- Ammo Box ---

    class B_Carryall_Base;

    class C_IDAP_supplyCrate_F;
    class GTO_Arsenal : C_IDAP_supplyCrate_F
    {
        scopeCurator = 2;
        displayName = "[GTO] Arsenal (only object)";
        author = "LucyferHW";
    };

    class GTO_Medic_Carryall_oli : B_Carryall_Base
    {
        scopeCurator = 2;
        displayName = "Carryall B. Medic (Olive)";
        author = "LucyferHW";
        hiddenSelectionsTextures[] = {"gtom\objects\textures\MedicBackpack\backpack_tortila_oli_co.paa"};
        maximumLoad = 400;

        /*         class XtdGearInfo
                {
                    model = "GTO_Carryall"; // class name in XtdGearModels >> CfgWeapons
                    camo = "oli";
                    role = "medic";
                }; */
    };

    class GTO_Medic_Carryall_cbr : B_Carryall_Base
    {
        scopeCurator = 2;
        displayName = "Carryall B. Medic (Coyote)";
        author = "LucyferHW";
        hiddenSelectionsTextures[] = {"gtom\objects\textures\MedicBackpack\backpack_tortila_cbr_co.paa"};
        maximumLoad = 400;

        /* class XtdGearInfo
        {
            model = "GTO_Carryall"; // class name in XtdGearModels >> CfgWeapons
            camo = "cbr";
            role = "medic";
        }; */
    };

    class FlagMarker_01_F;
    class GTO_MarkerFlag : FlagMarker_01_F
    {
        scopeCurator = 2;
        displayName = "[GTO] Marker Flag";
        author = "LucyferHW";
        hiddenSelectionsTextures[] = {"gtom\logo\gto_unit_logo_2x1.paa"};
    }

    class Banner_01_F;
    class GTO_Banner : Banner_01_F
    {
        scopeCurator = 2;
        //["A3_Structures_F_Mil_Flags"]e
        displayName = "[GTO] Banner";
        author = "LucyferHW";
        hiddenSelectionsTextures[] = {"gtom\logo\gto_unit_logo_2x1.paa"};
    }

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