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

class CfgVehicles {

	class B_RangeMaster_F;
    class GTO_Soldier_base : B_RangeMaster_F
    {
        author = "LucyferHW";                                               // The name of the author of the asset, which is displayed in the editor.
        scope = 2;                                                          // 2 = class is available in the editor; 1 = class is unavailable in the editor, but can be accessed via a macro; 0 = class is unavailable (and used for inheritance only).
        scopeCurator = 2;                                                   // 2 = class is available in Zeus; 0 = class is unavailable in Zeus.
        scopeArsenal = 2;                                                   // 2 = class is available in the Virtual Arsenal; 0 = class is unavailable in the Virtual Arsenal.
        //identityTypes[] = {"LanguageENG_F", "Head_NATO", "G_NATO_default"}; // Identity Types are explained in the Headgear section of this guide.
        displayName = "GTO Soldier";                                        // The name of the soldier, which is displayed in the editor.

        // model = "\A3\Characters_F\Common\Suitpacks\suitpack_original_F.p3d";
        hiddenSelectionsTextures[] = {"gtom\uniform\textures\GTO_Uniform\GTO_BaseUniform.paa"};

        //camouflage = 1;  // How likely this character is spotted (smaller number = more stealthy).
        //sensitivity = 1; // How likely this character spots enemies when controlled by AI.

        //icon = "gtom\icons\Roles\Other_icon.paa";
        picture = "";

        uniformClass = "GTO_BaseUniform"; // This links this soldier to a particular uniform. For the details, see below.
        backpack = "";                    // Which backpack the character is wearing.

        weapons[] = {};        // Which weapons the character has.
        respawnWeapons[] = {}; // Which weapons the character respawns with.

        Items[] = {GTO_Beret_Black}; // Which items the character has.
        RespawnItems[] = {GTO_Beret_Black}; // Which items the character respawns with.

        magazines[] = {};        // What ammunition the character has.
        respawnMagazines[] = {}; // What ammunition the character respawns with.

        linkedItems[] = {GTO_Beret_Black,
                         ItemMap,
                         ItemCompass,
                         ItemWatch,
                         none}; // Which items the character has.

        respawnLinkedItems[] = {GTO_Beret_Black,
                         ItemMap,
                         ItemCompass,
                         ItemWatch,
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
};