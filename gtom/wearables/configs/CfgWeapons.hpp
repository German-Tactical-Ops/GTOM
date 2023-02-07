class CfgWeapons
{
	class H_Beret_02;

    // todo: make icons for berets
    // todo: medic patch

    class GTO_Beret_Empty : H_Beret_02
    {
        scope = 0;
        author = "LucyferHW";
        weight = 0;
        size = 0;
    };

    class GTO_Beret_Red : GTO_Beret_Empty
    {
        scope = 2;
        displayName = "[GTO] Beret (Red)";
        hiddenSelectionsTextures[] = {"gtom\wearables\textures\Beret\export\GTO_Beret_Red.paa"};

        class XtdGearInfo
        {
            model = "GTO_Beret_All"; // class name in XtdGearModels >> CfgWeapons

            color = "red";
        };
    };

    class GTO_Beret_Orange : GTO_Beret_Empty
    {
        scope = 2;
        displayName = "[GTO] Beret (Orange)";
        hiddenSelectionsTextures[] = {"gtom\wearables\textures\Beret\export\GTO_Beret_Orange.paa"};

        class XtdGearInfo
        {
            model = "GTO_Beret_All"; // class name in XtdGearModels >> CfgWeapons
            color = "orange";
        };
    };

    class GTO_Beret_Yellow : GTO_Beret_Empty
    {
        scope = 2;
        displayName = "[GTO] Beret (Yellow)";
        hiddenSelectionsTextures[] = {"gtom\wearables\textures\Beret\export\GTO_Beret_Yellow.paa"};

        class XtdGearInfo
        {
            model = "GTO_Beret_All"; // class name in XtdGearModels >> CfgWeapons
            color = "yellow";
        };
    };

    class GTO_Beret_Green : GTO_Beret_Empty
    {
        scope = 2;
        displayName = "[GTO] Beret (Green)";
        hiddenSelectionsTextures[] = {"gtom\wearables\textures\Beret\export\GTO_Beret_Green.paa"};

        class XtdGearInfo
        {
            model = "GTO_Beret_All"; // class name in XtdGearModels >> CfgWeapons
            color = "green";
        };
    };

    class GTO_Beret_Blue : GTO_Beret_Empty
    {
        scope = 2;
        displayName = "[GTO] Beret (Blue)";
        hiddenSelectionsTextures[] = {"gtom\wearables\textures\Beret\export\GTO_Beret_Blue.paa"};

        class XtdGearInfo
        {
            model = "GTO_Beret_All"; // class name in XtdGearModels >> CfgWeapons
            color = "blue";
        };
    };

    class GTO_Beret_Violett : GTO_Beret_Empty
    {
        scope = 2;
        displayName = "[GTO] Beret (Violett)";
        hiddenSelectionsTextures[] = {"gtom\wearables\textures\Beret\export\GTO_Beret_Violett.paa"};

        class XtdGearInfo
        {
            model = "GTO_Beret_All"; // class name in XtdGearModels >> CfgWeapons
            color = "violett";
        };
    };

    class GTO_Beret_Pink : GTO_Beret_Empty
    {
        scope = 2;
        displayName = "[GTO] Beret (Pink)";
        hiddenSelectionsTextures[] = {"gtom\wearables\textures\Beret\export\GTO_Beret_Pink.paa"};

        class XtdGearInfo
        {
            model = "GTO_Beret_All"; // class name in XtdGearModels >> CfgWeapons
            color = "pink";
        };
    };

    class GTO_Beret_White : GTO_Beret_Empty
    {
        scope = 2;
        displayName = "[GTO] Beret (White)";
        hiddenSelectionsTextures[] = {"gtom\wearables\textures\Beret\export\GTO_Beret_White.paa"};

        class XtdGearInfo
        {
            model = "GTO_Beret_All"; // class name in XtdGearModels >> CfgWeapons
            color = "white";
        };
    };

    class GTO_Beret_Gray : GTO_Beret_Empty
    {
        scope = 2;
        displayName = "[GTO] Beret (Gray)";
        hiddenSelectionsTextures[] = {"gtom\wearables\textures\Beret\export\GTO_Beret_Gray.paa"};

        class XtdGearInfo
        {
            model = "GTO_Beret_All"; // class name in XtdGearModels >> CfgWeapons
            color = "gray";
        };
    };

    class GTO_Beret_Black : GTO_Beret_Empty
    {
        scope = 2;
        displayName = "[GTO] Beret (Black)";
        hiddenSelectionsTextures[] = {"gtom\wearables\textures\Beret\export\GTO_Beret_Black.paa"};

        class XtdGearInfo
        {
            model = "GTO_Beret_All"; // class name in XtdGearModels >> CfgWeapons
            color = "black";
        };
    };

	class ItemCore;
	class HeadgearItem;
	class H_HelmetSpecB;
	
	// Base GTO HelmetSpec class to inherit
	
	class GTO_HelmetSpec_Medic_Base : H_HelmetSpecB
	{
		scope= 0;	
		author= "Wollkopf";
		picture= "\gtom\wearables\icons\gto_medic_icon";
	};

	class GTO_HelmetSpec_Medic_Black : GTO_HelmetSpec_Medic_Base
	{
		scope= 2;
		scopeCurator= 2;
		scopeArsena= 2;
        displayName= "Enhanced Combat Helmet (Medic)";
        hiddenSelectionsTextures[]= {"gtom\wearables\textures\VanillaHelmetsMedic\HelmetSpec_Medic_black.paa"};
	};

	class GTO_Opscore_Medic : ItemCore
	{
		scope= 2;
		scopeCurator= 2;
		scopeArsenal= 2;
		weaponPoolAvailable= 1;
		ace_hearing_protection=0.75;
        ace_hearing_lowerVolume= 0;
		displayName= "[VSM] Opscore (Medic)";
		picture= "\gtom\wearables\icons\gto_medic_icon";
		model= "\gtom\wearables\models\VSMHelmets\VSM_ops";
		hiddenSelections[]=
		{
			"_helmBase",
			"_helmGear",
			"_nvgWeight",
			"_Peltor"
		};
		hiddenSelectionsTextures[]=
		{
			"gtom\wearables\textures\VSMHelmetsMedic\ops\ops_base.paa",
			"gtom\wearables\textures\VSMHelmetsMedic\ops\ops_gear.paa",
			"gtom\wearables\textures\VSMHelmetsMedic\ops\ops_nvg.paa",
			"gtom\wearables\textures\VSMHelmetsMedic\ops\ops_peltor.paa"
		};
		class ItemInfo : HeadgearItem
		{
			mass= 15;
			allowedSlots[]= {901,605};
			uniformModel= "\gtom\wearables\models\VSMHelmets\VSM_ops";
			modelSides[]= {3,1};
			hiddenSelections[]=
			{
				"_helmBase",
				"_helmGear",
				"_nvgWeight",
				"_Peltor"
			};
			class HitpointsProtectionInfo
			{
				class Head
				{
					hitpointName= "HitHead";
					armor= 6;
					passThrough= 0.5;
				};
			};
		};
	};

	class GTO_Opscore2_Medic : ItemCore
	{
		scope= 2;
		scopeCurator= 2;
		scopeArsenal= 2;
		weaponPoolAvailable= 1;
		ace_hearing_protection= 0.75;
        ace_hearing_lowerVolume= 0;
		displayName= "[VSM] Opscore 2 (Medic)";
		picture= "\gtom\wearables\icons\gto_medic_icon";
		model= "\gtom\wearables\models\VSMHelmets\VSM_ops_2";
		hiddenSelections[]=
		{
			"_helmBase",
			"_helmStrobe",
			"_nvgBattery",
			"_Peltor"
		};
		hiddenSelectionsTextures[]=
		{
			"gtom\wearables\textures\VSMHelmetsMedic\ops2\ops2_base.paa",
			"gtom\wearables\textures\VSMHelmetsMedic\ops2\ops2_strobe.paa",
			"gtom\wearables\textures\VSMHelmetsMedic\ops2\ops2_nvg.paa",
			"gtom\wearables\textures\VSMHelmetsMedic\ops2\ops2_peltor.paa"
		};
		class ItemInfo : HeadgearItem
		{
			mass= 15;
			allowedSlots[]= {901,605};
			uniformModel= "\gtom\wearables\models\VSMHelmets\VSM_ops_2";
			modelSides[]= {3,1};
			hiddenSelections[]=
			{
				"_helmBase",
				"_helmStrobe",
				"_nvgBattery",
				"_Peltor"
			};
			class HitpointsProtectionInfo
			{
				class Head
				{
					hitpointName= "HitHead";
					armor= 6;
					passThrough= 0.5;
				};
			};
		};
	};

	class GTO_Mich_Medic : ItemCore
	{
		scope= 2;
		scopeCurator= 2;
		scopeArsenal= 2;
		weaponPoolAvailable= 1;
		ace_hearing_protection= 0.75;
        ace_hearing_lowerVolume= 0;
		displayName= "[VSM] MICH 2000 (Medic)";
		picture= "\gtom\wearables\icons\gto_medic_icon";
		model= "\gtom\wearables\models\VSMHelmets\VSM_Mich";
		hiddenSelections[]=
		{
			"_helmBase",
			"_helmStraps",
			"_helmNvgBattery",
			"_surefire2"
		};
		hiddenSelectionsTextures[]=
		{
			"gtom\wearables\textures\VSMHelmetsMedic\mich\mich_base.paa",
			"gtom\wearables\textures\VSMHelmetsMedic\mich\mich_straps.paa",
			"gtom\wearables\textures\VSMHelmetsMedic\mich\mich_nvg.paa",
			"gtom\wearables\textures\VSMHelmetsMedic\mich\mich_surefire.paa"
		};
		class ItemInfo : HeadgearItem
		{
			mass= 15;
			allowedSlots[]= {901,605};
			uniformModel= "\gtom\wearables\models\VSMHelmets\VSM_Mich";
			modelSides[]= {3,1};
			hiddenSelections[]=
			{
				"_helmBase",
				"_helmStraps",
				"_helmnvgBattery",
				"_surefire2"
			};
			class HitpointsProtectionInfo
			{
				class Head
				{
					hitpointName= "HitHead";
					armor= 6;
					passThrough= 0.5;
				};
			};
		};
	};
	
	class GTO_Mich2_Medic : ItemCore
	{
		scope= 2;
		scopeCurator= 2;
		scopeArsenal= 2;
		weaponPoolAvailable= 1;
		ace_hearing_protection= 0.75;
        ace_hearing_lowerVolume= 0;
		displayName= "[VSM] MICH 2 2000 (Medic)";
		picture= "\gtom\wearables\icons\gto_medic_icon";
		model= "\gtom\wearables\models\VSMHelmets\VSM_Mich_2";
		hiddenSelections[]=
		{
			"_helmBase",
			"_helmStraps"
		};
		hiddenSelectionsTextures[]=
		{
			"gtom\wearables\textures\VSMHelmetsMedic\mich2\mich2_base.paa",
			"gtom\wearables\textures\VSMHelmetsMedic\mich2\mich2_straps.paa"
		};
		class ItemInfo : HeadgearItem
		{
			mass= 15;
			allowedSlots[]= {901,605};
			uniformModel= "\gtom\wearables\models\VSMHelmets\VSM_Mich_2";
			modelSides[]= {3,1};
			hiddenSelections[]=
			{
				"_helmBase",
				"_helmStraps"
			};
			class HitpointsProtectionInfo
			{
				class Head
				{
					hitpointName= "HitHead";
					armor= 6;
					passThrough= 0.5;
				};
			};
		};
	};

	class Uniform_Base;
	class UniformItem;

	class U_B_Wetsuit : Uniform_Base
	{
		class ItemInfo : UniformItem
		{
			containerClass = "Supply70";
		};
	};

	class Vest_Camo_Base;
	class VestItem;

	class V_RebreatherB : Vest_Camo_Base 
	{
		class ItemInfo : VestItem
		{
			containerClass = "Supply40";
		};
	};

	class V_Pocketed_black_F : Vest_Camo_Base 
	{
		class ItemInfo : VestItem
		{
			containerClass = "Supply40";
		};
	};
};