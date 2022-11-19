class XtdGearModels {

#define CAMOTYPEM() \
class camoType \
{ \
	label = "U. Camo selection";\
    values[] = {"alpine", "aor1", "aor2", "dts", "m81", "multicam", "multicam_arid", "multicam_black", "multicam_tropic", "ocp", "oga","oga_grey","oga_od","projecthonor","scorpion","apex"};\
	alwaysSelectable = 0;\
    changeingame = 1;\
    changedelay = 5;\
	class alpine{label = "Alpine"; image = "gtom\extendedArsenal\textures\camoFragments\camo_alpine.paa";};\
	class aor1{label = "AOR1"; image = "gtom\extendedArsenal\textures\camoFragments\camo_aor1.paa";};\
	class aor2{label = "AOR2"; image = "gtom\extendedArsenal\textures\camoFragments\camo_aor2.paa";};\
	class dts{label = "Tiger"; image = "gtom\extendedArsenal\textures\camoFragments\camo_dts.paa";};\
	class m81{label = "M81"; image = "gtom\extendedArsenal\textures\camoFragments\camo_m81.paa";};\
	class multicam{label = "MC"; image = "gtom\extendedArsenal\textures\camoFragments\camo_multicam.paa";};\
	class multicam_arid{label = "MC arid"; image = "gtom\extendedArsenal\textures\camoFragments\camo_multicam_arid.paa";};\
	class multicam_black{label = "MC black"; image = "gtom\extendedArsenal\textures\camoFragments\camo_multicam_black.paa";};\
	class multicam_tropic{label = "MC tropic"; image = "gtom\extendedArsenal\textures\camoFragments\camo_multicam_tropic.paa";};\
	class ocp{label = "OCP"; image = "gtom\extendedArsenal\textures\camoFragments\camo_ocp.paa";};\
	class oga{label = "OGA"; image = "gtom\extendedArsenal\textures\camoFragments\camo_oga.paa";};\
	class oga_grey{label = "OGA grey"; image = "gtom\extendedArsenal\textures\camoFragments\camo_oga_grey.paa";};\
	class oga_od{label = "OGA od"; image = "gtom\extendedArsenal\textures\camoFragments\camo_oga_od.paa";};\
	class projecthonor{label = "Projecthonor"; image = "gtom\extendedArsenal\textures\camoFragments\camo_projecthonor.paa";};\
	class scorpion{label = "Scorpion"; image = "gtom\extendedArsenal\textures\camoFragments\camo_scorpion.paa";};\
    class apex{label = "Apex"; image = "gtom\extendedArsenal\textures\camoFragments\camo_multicam_tropic.paa";};\
};

#define ROLLEDSLEEVESM() \
class rolledSleeves \
{\
    label = "Rolled Sleeves";\
    values[] = {"rolledSleevesFalse", "rolledSleevesTrue"};\
    alwaysSelectable = 0;\
    changeingame = 1;\
    changedelay = 1;\
    class rolledSleevesFalse\
    {label = "not Rolled";};\
    class rolledSleevesTrue\
    {label = "Rolled";};\
};
	class CamoBase;
    class CfgVehicles
    {
        class GTO_Medic_Carryall
        {
            label = "Carryall Medic";
            author = "LucyferHW";
            options[] = {"camoType"};
            
            CAMOTYPEM();
        };

        class GTO_Compact
        {
            label = "Compact";
            author = "LucyferHW";
            options[] = {"camoType"};

            CAMOTYPEM();
        };

        class GTO_Kitbag
        {
            label = "Kitbag";
            author = "LucyferHW";
            options[] = {"camoType"};

            CAMOTYPEM();
        };

        class GTO_Carryall
        {
            label = "Carryall";
            author = "LucyferHW";
            options[] = {"camoType"};

            CAMOTYPEM();
        };
    };

    class CfgWeapons
    {
        class GTO_Uniform_BDU
        {
            label = "BDU";
            author = "LucyferHW";
            options[] = {"camoType"};
            
            CAMOTYPEM();
        };

        class GTO_Uniform_CG3
        {
            label = "CG3";
            author = "LucyferHW";
            options[] = {"camoType", "rolledSleeves"};
            
            CAMOTYPEM();

            ROLLEDSLEEVESM();
        };

        class GTO_Uniform_MCU
        {
            label = "MCU";
            author = "LucyferHW";
            options[] = {"camoType", "rolledSleeves"};
            
            CAMOTYPEM();

            ROLLEDSLEEVESM();
        };
    };
};

/*label = "none";
                    //description = ""; // displayed as tooltip
                    // image = "xxx"; Background image in Arsenal
                    // icon = "xxx"; If can changeingame, action icon in ACE menu
                    // actionlabel = "xxx"; If can changeingame, action label in ACE menu
                    // itemingame = "xxx"; If can changeingame, requires this item to be present in inventory. Item will be removed from inventory (added back if an other value is choosen)
                    // changedelay = (inherited by default); If can changeingame, wait delay before change is effective
                    // faction[] = {"BLU_F", "BLU_T_F", "BLU_W_F"}; // shows this value only for selected factions, identified by their A3 code (optional)