#include "\gtom\basicDefines_A3.hpp"
#include "\gtom\defines.hpp"

class CfgPatches
{
    class GTOM_Arsenal
    {
        name = "GTO Arsenal";
        author = "LucyferHW";
        url = "";

        units[] = {
            "GTO_arsenal_usa","GTO_arsenal_usa_noElectronics"};

        requiredAddons[] = {"GTOM_Main"};
    };
};

// Configs

//#include "configs\Cfg3DEN.hpp"
//#include "configs\ExtendedEventHandlers.hpp"

#include "configs\CfgVehicles.hpp"
#include "configs\CfgFunctions.hpp"

// todo: make function that returns full arsenal list