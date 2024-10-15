#include "\gtom\basicDefines_A3.hpp"


class CfgPatches
{
    class GTOM_Template
    {
        name = "GTO Objects";
        author = "LucyferHW";
        url = "";

        units[] = {"GTO_MarkerFlag", "GTO_Banner"};

        requiredAddons[] = {"A3_Weapons_F","GTOM_Main"};
    };
};

#include "configs\CfgVehicles.hpp"
#include "configs\CfgFunctions.hpp"
#include "configs\CfgWeapons.hpp"