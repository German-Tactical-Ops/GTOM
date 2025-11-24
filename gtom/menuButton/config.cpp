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
        picture = "gtom\images\logo\MainMenu_1.paa";
        action = "connectToServer ['46.4.37.180', 2302, 'asdf0987']";
        actionText = "Join Main Server";
        condition = "true";
    };

    class JoinServerGTOBritain
    {
        text = "Britain";
        picture = "gtom\images\logo\MainMenu_2.paa";
        action = "connectToServer ['46.4.37.180', 2312, 'asdf0987']";
        actionText = "Join Britain Server";
        condition = "false";
    };

    class JoinServerGTOFunOp
    {
        text = "FunOp";
        picture = "gtom\images\logo\Arma3-factionlogo-wsion.paa";
        action = "connectToServer ['46.4.37.180', 2322, 'asdf0987']";
        actionText = "Join FunOp Server";
        condition = "true";
    };

    class JoinServerGTORanger
    {
        text = "Ranger";
        picture = "gtom\images\logo\MainMenu_3.paa";
        action = "connectToServer ['46.4.37.180', 2332, 'RangersLeadTheWay']";
        actionText = "Join Ranger Server";
        condition = "true";
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