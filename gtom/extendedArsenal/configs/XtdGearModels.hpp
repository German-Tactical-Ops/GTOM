class XtdGearModels {

	class CamoBase;
    class CfgVehicles
    {
        class GTO_Carryall
        {
            label = "Carryall Backpack";
            author = "LucyferHW";
            options[] = {"camoType"};
            class camoType
            {
				label = "B. Camo selection";
                values[] = {"alpine", "aor1", "aor2", "dts", "m81", "multicam", "multicam_arid", "multicam_black", "multicam_tropic", "ocp", "oga","oga_grey","oga_od","projecthonor","scorpion"};
				changeingame = 1;
				alwaysSelectable = 1;
				changedelay = 5;
				
				class alpine{label = "alpine"; image = "gtom\extendedArsenal\textures\camoFragments\camo_alpine.paa";};
				class aor1{label = "AOR1"; image = "gtom\extendedArsenal\textures\camoFragments\camo_aor1.paa";};
				class aor2{label = "AOR2"; image = "gtom\extendedArsenal\textures\camoFragments\camo_aor2.paa";};
				class dts{label = "Tiger"; image = "gtom\extendedArsenal\textures\camoFragments\camo_dts.paa";};
				class m81{label = "M81"; image = "gtom\extendedArsenal\textures\camoFragments\camo_m81.paa";};
				class multicam{label = "MC"; image = "gtom\extendedArsenal\textures\camoFragments\camo_multicam.paa";};
				class multicam_arid{label = "MC arid"; image = "gtom\extendedArsenal\textures\camoFragments\camo_multicam_arid.paa";};
				class multicam_black{label = "MC black"; image = "gtom\extendedArsenal\textures\camoFragments\camo_multicam_black.paa";};
				class multicam_tropic{label = "MC tropic"; image = "gtom\extendedArsenal\textures\camoFragments\camo_multicam_tropic.paa";};
				class ocp{label = "OCP"; image = "gtom\extendedArsenal\textures\camoFragments\camo_ocp.paa";};
				class oga{label = "OGA"; image = "gtom\extendedArsenal\textures\camoFragments\camo_oga.paa";};
				class oga_grey{label = "OGA grey"; image = "gtom\extendedArsenal\textures\camoFragments\camo_oga_grey.paa";};
				class oga_od{label = "OGA od"; image = "gtom\extendedArsenal\textures\camoFragments\camo_oga_od.paa";};
				class projecthonor{label = "projecthonor"; image = "gtom\extendedArsenal\textures\camoFragments\camo_projecthonor.paa";};
				class scorpion{label = "scorpion"; image = "gtom\extendedArsenal\textures\camoFragments\camo_scorpion.paa";};

            };
        };
    };

    class CfgWeapons
    {
        class GTO_Uniform
        {
            label = "Uniform";
            author = "LucyferHW";
            options[] = {"style", "camoType", "rolledSleeves"};
            
            class style
            {
                label = "Style selection";
                values[] = {"cg3", "mcu", "bdu"};
                alwaysSelectable = 0;
                changeingame = 0;
                changedelay = 5;
                
                class cg3 {label = "Crey G3";};
                class mcu {label = "Massif C. U.";};
                class bdu {label = "Battle D. U.";};

            };
            class camoType
            {
				label = "U. Camo selection";
                values[] = {"alpine", "aor1", "aor2", "dts", "m81", "multicam", "multicam_arid", "multicam_black", "multicam_tropic", "ocp", "oga","oga_grey","oga_od","projecthonor","scorpion","apex"};
				alwaysSelectable = 0;
                changeingame = 1;
                changedelay = 5;
				
				class alpine{label = "alpine"; image = "gtom\extendedArsenal\textures\camoFragments\camo_alpine.paa";};
				class aor1{label = "AOR1"; image = "gtom\extendedArsenal\textures\camoFragments\camo_aor1.paa";};
				class aor2{label = "AOR2"; image = "gtom\extendedArsenal\textures\camoFragments\camo_aor2.paa";};
				class dts{label = "Tiger"; image = "gtom\extendedArsenal\textures\camoFragments\camo_dts.paa";};
				class m81{label = "M81"; image = "gtom\extendedArsenal\textures\camoFragments\camo_m81.paa";};
				class multicam{label = "MC"; image = "gtom\extendedArsenal\textures\camoFragments\camo_multicam.paa";};
				class multicam_arid{label = "MC arid"; image = "gtom\extendedArsenal\textures\camoFragments\camo_multicam_arid.paa";};
				class multicam_black{label = "MC black"; image = "gtom\extendedArsenal\textures\camoFragments\camo_multicam_black.paa";};
				class multicam_tropic{label = "MC tropic"; image = "gtom\extendedArsenal\textures\camoFragments\camo_multicam_tropic.paa";};
				class ocp{label = "OCP"; image = "gtom\extendedArsenal\textures\camoFragments\camo_ocp.paa";};
				class oga{label = "OGA"; image = "gtom\extendedArsenal\textures\camoFragments\camo_oga.paa";};
				class oga_grey{label = "OGA grey"; image = "gtom\extendedArsenal\textures\camoFragments\camo_oga_grey.paa";};
				class oga_od{label = "OGA od"; image = "gtom\extendedArsenal\textures\camoFragments\camo_oga_od.paa";};
				class projecthonor{label = "projecthonor"; image = "gtom\extendedArsenal\textures\camoFragments\camo_projecthonor.paa";};
				class scorpion{label = "scorpion"; image = "gtom\extendedArsenal\textures\camoFragments\camo_scorpion.paa";};
                class apex{label = "Apex"; image = "gtom\extendedArsenal\textures\camoFragments\camo_multicam_tropic.paa";};
            };
            class rolledSleeves
            {
                label = "Rolled Sleeves";
                values[] = {"rolledSleevesFalse", "rolledSleevesTrue"};
                alwaysSelectable = 0;
                changeingame = 1;
                changedelay = 1;

                class rolledSleevesFalse
                {label = "not Rolled";};

                class rolledSleevesTrue
                {label = "Rolled";};
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