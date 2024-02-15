#include "\gtom\basicDefines_A3.hpp"

class CfgPatches
{
    class GTOM_MenuButton
    {
        name = "GTOM MenuButton";
        author = "LucyferHW";
        url = "";

        units[] = {"JoinServerGTO"};

        requiredAddons[] = {"A3_Ui_F","GTOM_Main"};
    };
};

class CfgMainMenuSpotlight
{

    class JoinServerGTOMain
    {
        text = "Main Server";
        picture = "gtom\logo\gto_unit_logo.paa";
        action = "connectToServer ['46.4.37.180', 2302, 'asdf0987']";
        actionText = "Join Main Server";
        condition = "true";
    };

    class JoinServerGTOStarWars
    {
        text = "Star Wars";
        picture = "gtom\logo\gto_unit_logo.paa";
        action = "connectToServer ['46.4.37.180', 2322, 'asdf0987']"; //46.4.37.180:2322
        actionText = "Join StarWars Server";
        condition = "false";
    };

    class JoinServerGTOSideOP
    {
        text = "Side Op Server";
        picture = "gtom\logo\gto_unit_logo.paa";
        action = "connectToServer ['46.4.37.180', 2312, 'asdf0987']";
        actionText = "Join Side Op Server";
        condition = "false";
    };

    delete ApexProtocol;
    delete BootCamp;
    delete EastWind;
    delete Orange_CampaignGerman;
    delete Orange_Showcase_IDAP;
    delete Orange_Showcase_LoW;
    delete Showcase_TankDestroyers;
    class Tacops_Campaign_01 { condition = "false";}; // Can´t be deleted
    delete Tacops_Campaign_02;
    delete Tacops_Campaign_03;
    delete Tanks_Campaign_01;
    delete gm_campaign_01;
    delete Contact_Campaign;
    delete OldMan;
    delete SP_FD14;
    delete Orange_Campaign;
    delete AoW_Showcase_AOW;
    delete AoW_Showcase_Future;
};

/*
Server name: [GTO] German Tactical Ops
Address: 5.83.170.148:21000
Server version: 210149954
Required game version: 2.10.0


/*Server name: Fallschirmjägerregiment 42 Offizieller Gameserver
Address: 185.240.242.109:2302
Server version: 210149799
Required game version: 2.10.0
*/