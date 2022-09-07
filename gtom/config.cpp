#include "basicDefines_A3.hpp"
#include "defines.hpp"
#include "cfgPatches.hpp"

class XtdGearModels
{
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
                values[] = {"ocamo", "oucamo", "mcamo", "khk", "cbr", "oli", "ghex", "green", "taiga", "wdl", "eaf"};
                // all values already exists, no need to create subentries
            };
            class role
            {
                label = "Role selection";
                values[] = {"none", "medic"};
                changeingame = 0;     // 1 if value can be changed in game via ACE menu
                alwaysSelectable = 0; // allows the selection of the values even if there isn't an item with a complete match of options available, falling back to a weak match with this single value (optional)
                // changedelay = 2; If can changeingame, wait delay before change is effective (can be 0, 0.1, or more)
                // icon = "xxx"; If can changeingame, action group icon in ACE menu
                class none
                {
                    label = "none";
                    description = "Value 1 for option A"; // displayed as tooltip
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
                };
            };
        };
    };
};

class XtdGearInfos
{
    class CfgVehicles
    {
        class B_Carryall_ocamo // exact class name in CfgWeapons (case sensitive !)
        {
            model = "GTO_Carryall"; // class name in XtdGearModels >> CfgWeapons
            camo = "ocamo";
            role = "none";
        };

        class B_Carryall_oucamo // exact class name in CfgWeapons (case sensitive !)
        {
            model = "GTO_Carryall"; // class name in XtdGearModels >> CfgWeapons
            camo = "oucamo";
            role = "none";
        };

        class B_Carryall_mcamo // exact class name in CfgWeapons (case sensitive !)
        {
            model = "GTO_Carryall"; // class name in XtdGearModels >> CfgWeapons
            camo = "mcamo";
            role = "none";
        };

        class B_Carryall_khk // exact class name in CfgWeapons (case sensitive !)
        {
            model = "GTO_Carryall"; // class name in XtdGearModels >> CfgWeapons
            camo = "khk";
            role = "none";
        };

        class B_Carryall_cbr // exact class name in CfgWeapons (case sensitive !)
        {
            model = "GTO_Carryall"; // class name in XtdGearModels >> CfgWeapons
            camo = "cbr";
            role = "none";
        };

        class GTO_Medic_Carryall_cbr // exact class name in CfgWeapons (case sensitive !)
        {
            model = "GTO_Carryall"; // class name in XtdGearModels >> CfgWeapons
            camo = "cbr";
            role = "medic";
        };

        class B_Carryall_oli // exact class name in CfgWeapons (case sensitive !)
        {
            model = "GTO_Carryall"; // class name in XtdGearModels >> CfgWeapons
            camo = "oli";
            role = "none";
        };

        class GTO_Medic_Carryall_oli // exact class name in CfgWeapons (case sensitive !)
        {
            model = "GTO_Carryall"; // class name in XtdGearModels >> CfgWeapons
            camo = "oli";
            role = "medic";
        };

        class B_Carryall_ghex_F // exact class name in CfgWeapons (case sensitive !)
        {
            model = "GTO_Carryall"; // class name in XtdGearModels >> CfgWeapons
            camo = "ghex";
            role = "none";
        };

        class B_Carryall_green_F // exact class name in CfgWeapons (case sensitive !)
        {
            model = "GTO_Carryall"; // class name in XtdGearModels >> CfgWeapons
            camo = "green";
            role = "none";
        };

        class B_Carryall_taiga_F // exact class name in CfgWeapons (case sensitive !)
        {
            model = "GTO_Carryall"; // class name in XtdGearModels >> CfgWeapons
            camo = "taiga";
            role = "none";
        };

        class B_Carryall_wdl_F // exact class name in CfgWeapons (case sensitive !)
        {
            model = "GTO_Carryall"; // class name in XtdGearModels >> CfgWeapons
            camo = "wdl";
            role = "none";
        };

        class B_Carryall_eaf_F // exact class name in CfgWeapons (case sensitive !)
        {
            model = "GTO_Carryall"; // class name in XtdGearModels >> CfgWeapons
            camo = "eaf";
            role = "none";
        };
        // ...
    };
};