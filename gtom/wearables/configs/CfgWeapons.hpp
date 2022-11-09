class CfgWeapons
{
	class ItemCore;
	class HeadgearItem;
	class H_HelmetSpecB;
	
	// Base GTO HelmetSpec class to inherit
	
	class GTO_HelmetSpec_Medic_Base : H_HelmetSpecB
	{
		scope= 0;	
		author= "Wollkopf";
		picture= "gtom\wearables\icons\gto_medic_icon.paa";
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
		picture= "gtom\wearables\icons\gto_medic_icon.paa";
		model= "gtom\wearables\models\VSMHelmets\VSM_ops";
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
			uniformModel= "gtom\wearables\models\VSMHelmets\VSM_ops";
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
		picture= "gtom\wearables\icons\gto_medic_icon.paa";
		model= "gtom\wearables\models\VSMHelmets\VSM_ops_2";
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
			uniformModel= "gtom\wearables\models\VSMHelmets\VSM_ops_2";
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
		picture= "gtom\wearables\icons\gto_medic_icon.paa";
		model= "gtom\wearables\models\VSMHelmets\VSM_Mich";
		hiddenSelections[]=
		{
			"_helmBase",
			"_helmStraps",
			"_helmnvgBattery",
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
			uniformModel= "gtom\wearables\models\VSMHelmets\VSM_Mich";
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
		picture= "gtom\wearables\icons\gto_medic_icon.paa";
		model= "gtom\wearables\models\VSMHelmets\VSM_Mich_2";
		hiddenSelections[]=
		{
			"_helmBase",
			"_helmStraps"
		};
		hiddenSelectionsTextures[]=
		{
			"gtom\wearables\textures\VSMHelmetsMedic\mich2\mich2_base.paa",
			"gtom\wearables\textures\VSMHelmetsMedic\mich2\mich2_straps.paa",
		};
		class ItemInfo : HeadgearItem
		{
			mass= 15;
			allowedSlots[]= {901,605};
			uniformModel= "gtom\wearables\models\VSMHelmets\VSM_Mich_2";
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
};