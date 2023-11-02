class CfgVehicles {

	#define MAG_XX(a, b)  \
	    class _xx_##a     \
	    {                 \
	        magazine = a; \
	        count = b;    \
	    };
	#define WEAP_XX(a, b) \
	    class _xx_##a     \
	    {                 \
	        weapon = a;   \
	        count = b;    \
	    };
	#define ITEM_XX(a, b) \
	    class _xx_##a     \
	    {                 \
	        name = a;     \
	        count = b;    \
	    };

	

	class Box_IDAP_Uniforms_F;

    class GTO_Box_Base : Box_IDAP_Uniforms_F
    {
        displayName = "[GTO] Base Box (Empty)";
        author = "LucyferHW";
        hiddenSelectionsTextures[] = {"gtom\boxes\textures\PlasticCase\uniforms_box_idap_co.paa", "gtom\boxes\textures\PlasticCase\uniforms_box_idap_CA_GTO.paa"};

		editorCategory = "Categorie_GTO";
        editorSubcategory = "Categorie_GTO_Boxes";

        class TransportMagazines
        {
        };

        class TransportItems
        {
        };
    };

/*     class GTO_Box_Ammo : GTO_Box_Base
    {
        displayName = "[GTO] Ammo Box";

        class TransportMagazines
        {
			MAG_XX(exampleMag, 3);

        };
    }; */

    class GTO_Box_Explosives : GTO_Box_Base
    {
        displayName = "[GTO] Explosives Box";

        class TransportMagazines
        {
			MAG_XX(APERSMineDispenser_Mag, 20);
			MAG_XX(DemoCharge_Remote_Mag, 20);
			MAG_XX(ATMine_Range_Mag, 20);
			MAG_XX(SatchelCharge_Remote_Mag, 20);
			MAG_XX(ClaymoreDirectionalMine_Remote_Mag, 20);
			MAG_XX(APERSBoundingMine_Range_Mag, 20);
			MAG_XX(SLAMDirectionalMine_Wire_Mag, 20);
			MAG_XX(TrainingMine_Mag, 20);
			MAG_XX(ACE_FlareTripMine_Mag, 20);
			MAG_XX(APERSMine_Range_Mag, 20);
        };
    };

	class GTO_Box_Grenades : GTO_Box_Base
    {
        displayName = "[GTO] Grenades Box";
		
        class TransportMagazines
        {
			MAG_XX(1Rnd_HE_Grenade_shell, 20);
			MAG_XX(3Rnd_HE_Grenade_shell, 20);
			MAG_XX(1Rnd_Smoke_Grenade_shell, 20);
			MAG_XX(1Rnd_SmokeGreen_Grenade_shell, 20);
			MAG_XX(1Rnd_SmokeRed_Grenade_shell, 20);
			MAG_XX(1Rnd_SmokeYellow_Grenade_shell, 20);
			MAG_XX(1Rnd_SmokePurple_Grenade_shell, 20);
			MAG_XX(1Rnd_SmokeBlue_Grenade_shell, 20);
			MAG_XX(1Rnd_SmokeOrange_Grenade_shell, 20);
			MAG_XX(HandGrenade, 20);
			MAG_XX(MiniGrenade, 20);
			MAG_XX(SmokeShell, 20);
			MAG_XX(SmokeShellRed, 20);
			MAG_XX(SmokeShellGreen, 20);
			MAG_XX(SmokeShellYellow, 20);
			MAG_XX(SmokeShellPurple, 20);
			MAG_XX(SmokeShellBlue, 20);
			MAG_XX(SmokeShellOrange, 20);
			MAG_XX(UGL_FlareWhite_F, 20);
			MAG_XX(UGL_FlareGreen_F, 20);
			MAG_XX(B_IR_Grenade, 20);
			MAG_XX(ACE_HandFlare_White, 20);
			MAG_XX(ACE_HandFlare_Green, 20);
			MAG_XX(ACE_M84, 20);
			MAG_XX(ACE_HuntIR_M203, 20);

        };
        class TransportItems
        {
        };
    };

    class GTO_Equipment_Box : GTO_Box_Base
    {
        displayName = "[GTO] Equipment Box";
        class TransportMagazines
        {
        };
        class TransportItems
        {

            ITEM_XX(ACE_EarPlugs, 5);
            ITEM_XX(ACE_CableTie, 10);

            ITEM_XX(rhsusf_acc_rotex5_grey, 10);

            ITEM_XX(USP_PVS31, 10);

            ITEM_XX(ACE_Humanitarian_Ration, 10);
            ITEM_XX(ACE_WaterBottle, 10);

            ITEM_XX(ToolKit, 1);
        };
    };

	class GTO_Box_NVG : GTO_Box_Base
    {
        displayName = "[GTO] NVG Box";

        class TransportItems
        {

            ITEM_XX(A3_GPNVG18_BLK_F, 10);
            ITEM_XX(A3_GPNVG18_F, 10);
        };
    };

	class GTO_Box_MapCompasRadio : GTO_Box_Base
    {
        displayName = "[GTO] Map/Compas/Radio Box";

        class TransportItems
        {
			ITEM_XX(ItemMap, 20);
			ITEM_XX(ItemCompass, 20);
			ITEM_XX(TFAR_rf7800str, 20);
			ITEM_XX(ItemWatch, 20);
			ITEM_XX(TFAR_microdagr, 20);
			ITEM_XX(ACE_Altimeter, 20);
			ITEM_XX(ItemGPS, 20);
			ITEM_XX(ItemAndroid, 20);
			ITEM_XX(ItemMicroDAGR, 20);
			ITEM_XX(ACE_microDAGR, 20);
        };
    };

	class GTO_Box_BasicItems : GTO_Box_Base
    {
        displayName = "[GTO] basic Items Box";

        class TransportItems
        { 
			ITEM_XX(Attachable_Helistretcher, 20); 
			ITEM_XX(ACE_CableTie, 20); 
			ITEM_XX(ACE_Canteen, 20); 
			ITEM_XX(ACE_Chemlight_Shield, 20); 
			ITEM_XX(ACE_EarPlugs, 20); 
			ITEM_XX(ACE_EntrenchingTool, 20); 
			ITEM_XX(ACE_Flashlight_MX991, 20); 
			ITEM_XX(WBK_HeadLampItem, 20); 
			ITEM_XX(ItemcTabHCam, 20); 
			ITEM_XX(ACE_IR_Strobe_Item, 20); 
			ITEM_XX(ACE_MapTools, 20); 
			ITEM_XX(ACE_RangeCard, 20); 
			ITEM_XX(ACE_SpareBarrel_Item, 20); 
			ITEM_XX(ACE_UAVBattery, 20); 
			ITEM_XX(ACE_WaterBottle, 20); 
			ITEM_XX(B_Parachute, 20);
        };
    };

    class GTO_Box_Medic : GTO_Box_Base
    {
        displayName = "[GTO] Medic Box";
        class TransportMagazines
        {
        };
        class TransportItems
        {
            ITEM_XX(ACE_packingBandage, 20);
			ITEM_XX(ACE_quikclot, 20);
			ITEM_XX(ACE_splint, 20);
			ITEM_XX(ACE_tourniquet, 20);
			ITEM_XX(kat_IV_16, 20);
			ITEM_XX(ACE_adenosine, 20);
			ITEM_XX(kat_AED, 20);
			ITEM_XX(ACE_bodyBag, 20);
			ITEM_XX(ACE_epinephrine, 20);
			ITEM_XX(kat_IO_FAST, 20);
			ITEM_XX(ACE_morphine, 20);
			ITEM_XX(kat_naloxone, 20);
			ITEM_XX(ACE_plasmaIV, 20);
			ITEM_XX(ACE_plasmaIV_250, 20);
			ITEM_XX(ACE_plasmaIV_500, 20);
			ITEM_XX(kat_Pulseoximeter, 20);
			ITEM_XX(ACE_salineIV, 20);
			ITEM_XX(ACE_salineIV_250, 20);
			ITEM_XX(ACE_salineIV_500, 20);
			ITEM_XX(kat_stethoscope, 20);
			ITEM_XX(kat_TXA, 20);
			ITEM_XX(kat_bloodIV_O_N, 20);
			ITEM_XX(kat_bloodIV_A_N, 20);
			ITEM_XX(kat_bloodIV_AB_N, 20);
			ITEM_XX(kat_bloodIV_B_N, 20);
			ITEM_XX(ACE_elasticBandage, 20);
			ITEM_XX(kat_accuvac, 20);
			ITEM_XX(kat_aatKit, 20);
			ITEM_XX(kat_X_AED, 20);
			ITEM_XX(kat_atropine, 20);
			ITEM_XX(kat_amiodarone, 20);
			ITEM_XX(kat_crossPanel, 20);
			ITEM_XX(kat_chestSeal, 20);
			ITEM_XX(KAT_Empty_bloodIV_250, 20);
			ITEM_XX(KAT_Empty_bloodIV_500, 20);
			ITEM_XX(kat_guedel, 20);
			ITEM_XX(kat_larynx, 20);
			ITEM_XX(kat_lidocaine, 20);
			ITEM_XX(kat_phenylephrine, 20);
			ITEM_XX(ACE_personalAidKit, 20);
			ITEM_XX(ACE_surgicalKit, 20);
			ITEM_XX(kat_CarbonateItem, 20);
			ITEM_XX(kat_bloodIV_O_N_250, 20);
			ITEM_XX(kat_bloodIV_A_N_250, 20);
			ITEM_XX(kat_bloodIV_AB_N_250, 20);
			ITEM_XX(kat_bloodIV_B_N_250, 20);
			ITEM_XX(kat_bloodIV_O_N_500, 20);
			ITEM_XX(kat_bloodIV_A_N_500, 20);
			ITEM_XX(kat_bloodIV_AB_N_500, 20);
			ITEM_XX(kat_bloodIV_B_N_500, 20);
			ITEM_XX(kat_plate, 20);
			ITEM_XX(kat_clamp, 20);
			ITEM_XX(kat_vacuum, 20);
			ITEM_XX(kat_EACA, 20);
			ITEM_XX(kat_etomidate, 20);
			ITEM_XX(kat_fentanyl, 20);
			ITEM_XX(kat_flumazenil, 20);
			ITEM_XX(kat_ketamine, 20);
			ITEM_XX(kat_lorazepam, 20);
			ITEM_XX(kat_nalbuphine, 20);
			ITEM_XX(kat_nitroglycerin, 20);
			ITEM_XX(kat_norepinephrine, 20);
			ITEM_XX(kat_PainkillerItem, 20);
			ITEM_XX(kat_retractor, 20);
			ITEM_XX(kat_scalpel, 20);
        };
    };

};