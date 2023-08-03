#include "\gtom\basicDefines_A3.hpp"


class CfgPatches
{
    class GTOM_RankSystem
    {
        name = "GTO Rank System";
        author = "LucyferHW";
        url = "";

        units[] = {};

        requiredAddons[] = {"cba_common", "cba_events", "GTOM_Main","GTOM_Insignia"};
    };
};

// Configs
#include "configs\CfgVehicles.hpp"
#include "configs\CfgFunctions.hpp"
#include "configs\CfgWeapons.hpp"

class Extended_PreInit_EventHandlers {
    class GTO_cbaRankSystemSettings {
        init = "call compile preprocessFileLineNumbers 'gtom\ranksystem\functions\fn_cbaSettingsRanksystem.sqf'";
    };
};
