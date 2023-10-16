#include "\gtom\basicDefines_A3.hpp"

class CfgPatches
{
    class GTOM_Ammo
    {
        name = "GTO Ammo";
        author = "LucyferHW";
        url = "";

        units[] = {};

        requiredAddons[] = {"GTOM_Main"};

        ammo[] = {
            "FlareBase",
            "F_40mm_White",
            "Flare_82mm_AMOS_White"};
    };
};

#include "configs\cfgAmmo.hpp"