class CfgWeapons {

	class FirstAidKit;
	class Medikit;

	class GTO_FirstAidKit : FirstAidKit
	{
		displayName = "GTO FirstAidKit";
		descriptionShort = "";
		author = "LucyferHW";
		scope= 2;
		scopeCurator= 2;
		scopeArsena= 2;
		//picture = "\A3\characters_f\Data\UI\icon_V_BandollierB_CA.paa";
	};

	class GTO_Medikit : Medikit
	{
		displayName = "GTO Medikit";
		descriptionShort = "Enables the treatment of any wounds.<br/>Multiple uses<br/>Used by: Medic";
		author = "LucyferHW";
		scope= 2;
		scopeCurator= 2;
		scopeArsena= 2;
		//picture = "\A3\characters_f\Data\UI\icon_V_BandollierB_CA.paa";
	};

	class ACE_ItemCore;
    class CBA_MiscItem_ItemInfo;

	class ACE_bodyBag : ACE_ItemCore
    {
        class ItemInfo : CBA_MiscItem_ItemInfo
        {
            mass = 2.25;
        }
    }

	class ACE_bloodIV : ACE_ItemCore
    {
        class ItemInfo : CBA_MiscItem_ItemInfo
        {
            mass = 5;
        }
    }

    class ACE_bloodIV_500 : ACE_bloodIV
    {
        class ItemInfo : CBA_MiscItem_ItemInfo
        {
            mass = 2.5;
        }
    }

    class ACE_bloodIV_250 : ACE_bloodIV
    {
        class ItemInfo : CBA_MiscItem_ItemInfo
        {
            mass = 1.2;
        }
    }

    class vtx_stretcher_item : ACE_ItemCore
    {
        class ItemInfo : CBA_MiscItem_ItemInfo
        {
            mass = 50;
        }
    };
};