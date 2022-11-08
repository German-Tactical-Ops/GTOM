class XtdGearModels {

	class CamoBase;
    class CfgVehicles
    {
        class GTO_Carryall
        {
            label = "Carryall Backpack";
            author = "LucyferHW";
            options[] = {"camo", "role"};
            class camo // coventional name
            {
				label = "Camo selection";
                values[] = {"alpine", "aor1", "aor2", "dts", "m81", "multicam", "multicam_arid", "multicam_black", "multicam_tropic", "ocp", "oga","oga_grey","oga_od","projecthonor","scorpion"};
				changeingame = 1;
				alwaysSelectable = 1;
				changedelay = 5;
				
				class alpine{label = "alpine"; image = "gtom\extendedArsenal\textures\camoFragments\camo_alpine.paa";};
				class aor1{label = "aor1"; image = "gtom\extendedArsenal\textures\camoFragments\camo_aor1.paa";};
				class aor2{label = "aor2"; image = "gtom\extendedArsenal\textures\camoFragments\camo_aor2.paa";};
				class dts{label = "dts"; image = "gtom\extendedArsenal\textures\camoFragments\camo_dts.paa";};
				class m81{label = "m81"; image = "gtom\extendedArsenal\textures\camoFragments\camo_m81.paa";};
				class multicam{label = "multicam"; image = "gtom\extendedArsenal\textures\camoFragments\camo_multicam.paa";};
				class multicam_arid{label = "multicam_arid"; image = "gtom\extendedArsenal\textures\camoFragments\camo_multicam_arid.paa";};
				class multicam_black{label = "multicam_black"; image = "gtom\extendedArsenal\textures\camoFragments\camo_multicam_black.paa";};
				class multicam_tropic{label = "multicam_tropic"; image = "gtom\extendedArsenal\textures\camoFragments\camo_multicam_tropic.paa";};
				class ocp{label = "ocp"; image = "gtom\extendedArsenal\textures\camoFragments\camo_ocp.paa";};
				class oga{label = "oga"; image = "gtom\extendedArsenal\textures\camoFragments\camo_oga.paa";};
				class oga_grey{label = "oga_grey"; image = "gtom\extendedArsenal\textures\camoFragments\camo_oga_grey.paa";};
				class oga_od{label = "oga_od"; image = "gtom\extendedArsenal\textures\camoFragments\camo_oga_od.paa";};
				class projecthonor{label = "projecthonor"; image = "gtom\extendedArsenal\textures\camoFragments\camo_projecthonor.paa";};
				class scorpion{label = "scorpion"; image = "gtom\extendedArsenal\textures\camoFragments\camo_scorpion.paa";};

            };
            class role
            {
                label = "Role selection";
                values[] = {"none", "medic"};
                changeingame = 0;     // 1 if value can be changed in game via ACE menu
                alwaysSelectable = 1; // allows the selection of the values even if there isn't an item with a complete match of options available, falling back to a weak match with this single value (optional)
                // changedelay = 2; If can changeingame, wait delay before change is effective (can be 0, 0.1, or more)
                // icon = "gtom\extendedArsenal\textures\camoFragments\camo_alpine.paa"; If can changeingame, action group icon in ACE menu
                class none
                {
                    label = "none";
                    //description = ""; // displayed as tooltip
                    // image = "xxx"; Background image in Arsenal
                    // icon = "xxx"; If can changeingame, action icon in ACE menu
                    // actionlabel = "xxx"; If can changeingame, action label in ACE menu
                    // itemingame = "xxx"; If can changeingame, requires this item to be present in inventory. Item will be removed from inventory (added back if an other value is choosen)
                    // changedelay = (inherited by default); If can changeingame, wait delay before change is effective
                    // faction[] = {"BLU_F", "BLU_T_F", "BLU_W_F"}; // shows this value only for selected factions, identified by their A3 code (optional)
                };
                class medic
                {
                    label = "Medic";
					//image = "gtom\extendedArsenal\textures\icons\Medic.paa";
                }; //todo: add picture
            };
        };
    };
};