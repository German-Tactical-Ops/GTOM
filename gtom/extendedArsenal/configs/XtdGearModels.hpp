class XtdGearModels {
//todo: make a input field -> Backpack and Uniform have the same text //todo: test if this is working
#define CAMOTYPEM(DNAME) \
class camoType \
{ \
	label = "##DNAME## Camo";\
    values[] = {"alpine", "aor1", "aor2", "dts", "m81", "multicam", "multicam_arid", "multicam_black", "multicam_tropic", "ocp", "oga","oga_grey","oga_od","projecthonor","scorpion","apex"};\
	alwaysSelectable = 0;\
    changeingame = 1;\
    changedelay = 3;\
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

#define ROLLEDSLEEVESM(SELECTABLE) \
class rolledSleeves \
{\
    label = "Rolled Sleeves";\
    values[] = {"rolledSleevesFalse", "rolledSleevesTrue"};\
    alwaysSelectable = ##SELECTABLE##;\
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
            
            CAMOTYPEM(Backpack);
        };

        class GTO_Compact
        {
            label = "Compact";
            author = "LucyferHW";
            options[] = {"camoType"};

            CAMOTYPEM(Backpack);
        };

        class GTO_Kitbag
        {
            label = "Kitbag";
            author = "LucyferHW";
            options[] = {"camoType"};

            CAMOTYPEM(Backpack);
        };

        class GTO_Carryall
        {
            label = "Carryall";
            author = "LucyferHW";
            options[] = {"camoType"};

            CAMOTYPEM(Backpack);
        };
    };

    class CfgWeapons
    {
        class GTO_Uniform_BDU
        {
            label = "BDU";
            author = "LucyferHW";
            options[] = {"camoType"};
            
            CAMOTYPEM(Uniform);
        };

        class GTO_Uniform_CG3
        {
            label = "CG3";
            author = "LucyferHW";
            options[] = {"camoType", "rolledSleeves"};
            
            CAMOTYPEM(Uniform);

            ROLLEDSLEEVESM(0);
        };

        class GTO_Uniform_MCU
        {
            label = "MCU";
            author = "LucyferHW";
            options[] = {"camoType", "rolledSleeves"};
            
            CAMOTYPEM(Uniform);

            ROLLEDSLEEVESM(0);
        };

        class GTO_Uniform_Wetsuit
        {
            label = "Wetsuit";
            author = "LucyferHW";
            options[] = {"wetsuit"};
            
            class wetsuit
            {
                label = "Wetsuit";
                values[] = {"wetsuitTrue","wetsuitFalse"};
                alwaysSelectable = 0;
                changeingame = 1;
                changedelay = 5;
                class wetsuitTrue
                {label = "Wetsuit";};
                class wetsuitFalse
                {label = "not Wetsuit";};
            };            
        };

        class GTO_Vest_Rebreather
        {
            label = "Rebreather";
            author = "LucyferHW";
            options[] = {"rebreather"};
            
            class rebreather
            {
                label = "Rebreather";
                values[] = {"rebreatherTrue","rebreatherFalse"};
                alwaysSelectable = 0;
                changeingame = 1;
                changedelay = 5;
                class rebreatherTrue
                {label = "Rebreather";};
                class rebreatherFalse
                {label = "not Rebreather";};
            };            
        };

        class GTO_Beret_All
        {
            label = "[GTO] Beret";
            author = "LucyferHW";
            options[] = {"optionA"};
            class optionA
            {
                label = "Beret Color";
                values[] = {"black", "red", "orange", "yellow", "green", "blue", "violett", "pink", "white", "gray"};
                changeingame = 1;
                alwaysSelectable = 1;
                changedelay = 0.5;

                class black
                {
                    label = "Black";
                    description = "Soldier";
                    image = "gtom\objects\textures\Beret\color\BeretColor_Black.paa";
                };
                class red
                {
                    label = "Red";
                    description = "SL";
                    image = "gtom\objects\textures\Beret\color\BeretColor_Red.paa";
                };
                class orange
                {
                    label = "Orange";
                    description = "Clan Leader";
                    image = "gtom\objects\textures\Beret\color\BeretColor_Orange.paa";
                };
                class yellow
                {
                    label = "Yellow";
                    description = "Tank Crew";
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


/*label = "none";
                    //description = ""; // displayed as tooltip
                    // image = "xxx"; Background image in Arsenal
                    // icon = "xxx"; If can changeingame, action icon in ACE menu
                    // actionlabel = "xxx"; If can changeingame, action label in ACE menu
                    // itemingame = "xxx"; If can changeingame, requires this item to be present in inventory. Item will be removed from inventory (added back if an other value is choosen)
                    // changedelay = (inherited by default); If can changeingame, wait delay before change is effective
                    // faction[] = {"BLU_F", "BLU_T_F", "BLU_W_F"}; // shows this value only for selected factions, identified by their A3 code (optional)