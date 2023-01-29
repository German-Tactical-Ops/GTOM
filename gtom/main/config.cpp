#include "\gtom\basicDefines_A3.hpp"


class CfgPatches
{
    class GTOM_Main
    {
        name = "GTO Main";
        author = "LucyferHW";
        url = "";

        units[] = {};

        requiredAddons[] = {
            // Arma3
            "A3_Data_F_Oldman_Loadorder",
            "A3_Data_F_Mod_Loadorder",

            // CBA
            "cba_common",
            "cba_main",
            "cba_main_a3",

            // ACE3
            "ace_common",
            "ace_main"};
    };
};

#include "configs\CfgEditorCategories.hpp"
#include "configs\CfgFunctions.hpp"