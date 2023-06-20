#include "\gtom\basicDefines_A3.hpp"

class CfgPatches
{
    class GTOM_Arsenal
    {
        name = "GTO Arsenal";
        author = "LucyferHW";
        url = "";

        units[] = {
            "GTO_arsenal_usa", "GTO_arsenal_usa_noElectronics"};

        requiredAddons[] = {"cba_common","GTOM_Main"};
    };
};

#include "configs\CfgVehicles.hpp"
#include "configs\CfgFunctions.hpp"

// todo: make function that returns full arsenal list

class Extended_PreInit_EventHandlers
{
    class GTO_cbaArsenalSettings
    {
        init = "call compile preprocessFileLineNumbers 'gtom\arsenal\functions\fn_cbaArsenal.sqf'";
    };
};