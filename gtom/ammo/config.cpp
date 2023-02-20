#include "\gtom\basicDefines_A3.hpp"

class CfgPatches
{
    class GTOM_Ammo
    {
        name = "GTO Ammo";
        author = "LucyferHW";
        url = "";

        units[] = {};

        requiredAddons[] = {"A3_Weapons_F";
        "GTOM_Main"
    };

    ammo[] = {
        "FlareBase",
        "F_40mm_White",
        "Flare_82mm_AMOS_White",
        "Sh_155mm_AMOS"};
};
}
;

#include "configs\cfgAmmo.hpp"