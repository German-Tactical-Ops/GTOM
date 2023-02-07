#include "\gtom\basicDefines_A3.hpp"

class CfgPatches
{
    class GTOM_Uniform
    {
        name = "GTO Uniform";
        author = "LucyferHW";
        url = "";

        units[] = {"GTO_Base_Uniform","GTO_Soldier_Pilot","GTO_Soldier_Crewman","GTO_Soldier_LC","GTO_Soldier_Grenadier","GTO_Soldier_Rifleman","GTO_Soldier_Marksman","GTO_Soldier_MMG","GTO_Soldier_LMG","GTO_Soldier_AT","GTO_Soldier_Eng","GTO_Soldier_Med","GTO_Soldier_ExpSp","GTO_Soldier_FTL","GTO_Soldier_SL"};

        requiredAddons[] = {"GTOM_Main"};
    };
};

#include "configs\CfgWeapons.hpp"
#include "configs\CfgVehicles.hpp"