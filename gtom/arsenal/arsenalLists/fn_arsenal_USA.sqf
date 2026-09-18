scriptName "fn_arsenal_USA";
/*
	Author: LucyferHW
	
	Description:
	Describe your function
*/

params ["_role"];

private _basic_equipment = ["rhsusf_acc_eotech_xps3","rhsusf_acc_su230","rhsusf_acc_su230a","rhsusf_acc_g33_xps3","rhsusf_acc_g33_T1","rhsusf_acc_EOTECH","rhsusf_acc_anpeq15side","rhsusf_acc_anpeq15side_bk","rhsusf_acc_anpeq15_bk","rhs_acc_m4_urgi_d_bcm","rhs_acc_m4_urgi_d","rhsusf_100Rnd_556x45_soft_pouch_coyote","rhsusf_100Rnd_556x45_mixed_soft_pouch_coyote","rhs_mag_30Rnd_556x45_M855A1_PMAG","1Rnd_HE_Grenade_shell","TPW_G3_G3_FS_FM_UNIFORM_MCAMF","TPW_G3_G3_FS_MX_UNIFORM_MCAMF","TPW_G3_G3_RS_FM_UNIFORM_MCAMF","TPW_G3_G3_RS_MX_UNIFORM_MCAMF","TPW_L9_G3_FS_FM_UNIFORM_MCAMF","TPW_L9_G3_FS_MX_UNIFORM_MCAMF","TPW_L9_G3_RS_FM_UNIFORM_MCAMF","TPW_L9_G3_RS_MX_UNIFORM_MCAMF","TPW_PCU_G3_FS_FM_UNIFORM_MCAMF","TPW_PCU_G3_FS_MX_UNIFORM_MCAMF","rhs_googles_black","rhs_googles_clear","G_Shades_Black","rhsusf_oakley_goggles_blk","rhsusf_oakley_goggles_clr","G_Squares_Tinted","G_Squares","G_Spectacles_Tinted","rhsusf_shemagh2_tan","rhsusf_shemagh_tan","rhsusf_shemagh2_gogg_tan","rhsusf_shemagh_gogg_tan","G_Bandanna_khk","G_Bandanna_tan","G_Bandanna_blk","SmokeShell","ACE_M84","ACE_salineIV","ACE_salineIV_250","ACE_salineIV_500","ACE_WaterBottle","rhs_weap_m4_urgi_kac","rhs_acc_mk18_urgi_d","rhs_acc_mk18_urgi_d_bcm","rhsusf_weap_glock17g4","rhsusf_mag_17Rnd_9x19_JHP","rhsusf_acc_T1_high","optic_Arco_blk_F","optic_Arco","optic_Arco_arid_F","optic_Arco_AK_arid_F","optic_Arco_AK_blk_F","G_Bandanna_shades","G_Bandanna_sport","optic_DMS","optic_DMS_weathered_F","rhs_mag_20Rnd_SCAR_762x51_m61_ap","rhsusf_100Rnd_762x51_m62_tracer","G_Aviator","rhsusf_acc_anpeq15_wmx","3DMA_WD_AVS_Rifleman_v1","3DMA_WD_AVS_Rifleman_v2","3DMA_WD_AVS_Rifleman_v3","3DMA_WD_AVS_Rifleman_v4","ACE_SpareBarrel","3DMA_WD_Opscore_V2","3DMA_WD_Opscore_V1","3DMA_WD_Opscore_V4","3DMA_WD_Opscore_V3","3DMA_WD_Opscore_V5","ACE_10Rnd_127x99_AMAX_Mag","rhsusf_20Rnd_762x51_SR25_m993_Mag","HandGrenade","rhs_weap_m72a7"];

private _medic_equipment = ["TPW_G3_G3_FS_FM_UNIFORM_MCAMF_arfr","TPW_G3_G3_FS_MX_UNIFORM_MCAMF_pmed","TPW_G3_G3_RS_FM_UNIFORM_MCAMF_arfr","TPW_G3_G3_RS_FM_UNIFORM_MCAMF_pmed","TPW_G3_G3_RS_MX_UNIFORM_MCAMF_arfr","TPW_G3_G3_RS_MX_UNIFORM_MCAMF_pmed","TPW_L9_G3_FS_FM_UNIFORM_MCAMF_arfr","TPW_L9_G3_FS_FM_UNIFORM_MCAMF_pmed","TPW_L9_G3_FS_MX_UNIFORM_MCAMF_arfr","TPW_L9_G3_RS_FM_UNIFORM_MCAMF_arfr","TPW_L9_G3_RS_FM_UNIFORM_MCAMF_pmed","TPW_L9_G3_RS_MX_UNIFORM_MCAMF_arfr","TPW_L9_G3_RS_MX_UNIFORM_MCAMF_pmed","TPW_L9_G3_FS_MX_UNIFORM_MCAMF_pmed","TPW_PCU_G3_FS_FM_UNIFORM_MCAMF_arfr","TPW_PCU_G3_FS_FM_UNIFORM_MCAMF_pmed","TPW_PCU_G3_FS_MX_UNIFORM_MCAMF_arfr","TPW_PCU_G3_FS_MX_UNIFORM_MCAMF_pmed","TPW_G3_G3_FS_FM_UNIFORM_MCAMF_pmed","TPW_G3_G3_FS_MX_UNIFORM_MCAMF_arfr","TPW_G3_G3_FS_MX_UNIFORM_MCAMA_arfr","TPW_G3_G3_FS_FM_UNIFORM_MCAMA_arfr","TPW_G3_G3_RS_FM_UNIFORM_MCAMA_arfr","TPW_G3_G3_RS_MX_UNIFORM_MCAMA_arfr","TPW_L9_G3_FS_FM_UNIFORM_MCAMA_arfr","TPW_L9_G3_FS_MX_UNIFORM_MCAMA_arfr","TPW_L9_G3_RS_FM_UNIFORM_MCAMA_arfr","TPW_L9_G3_RS_MX_UNIFORM_MCAMA_arfr","TPW_PCU_G3_FS_FM_UNIFORM_MCAMA_arfr","TPW_PCU_G3_FS_MX_UNIFORM_MCAMA_arfr","TPW_G3_G3_FS_FM_UNIFORM_MCAMA_pmed","TPW_G3_G3_FS_MX_UNIFORM_MCAMA_pmed","TPW_G3_G3_RS_FM_UNIFORM_MCAMA_pmed","TPW_G3_G3_RS_MX_UNIFORM_MCAMA_pmed","TPW_L9_G3_FS_MX_UNIFORM_MCAMA_pmed","TPW_L9_G3_FS_FM_UNIFORM_MCAMA_pmed","TPW_L9_G3_RS_FM_UNIFORM_MCAMA_pmed","TPW_L9_G3_RS_MX_UNIFORM_MCAMA_pmed","TPW_PCU_G3_FS_FM_UNIFORM_MCAMA_pmed","TPW_PCU_G3_FS_MX_UNIFORM_MCAMA_pmed"];
private _gto_equipment = ["GTO_Beret_Black", "GTO_Beret_Blue", "GTO_Beret_Gray", "GTO_Beret_Green", "GTO_Beret_Orange", "GTO_Beret_Pink", "GTO_Beret_Red", "GTO_Beret_Violett", "GTO_Beret_White", "GTO_Beret_Yellow"];

// --------------------------------------------------

private _soldierBase = _basic_equipment;
// --------------------------------------------------

private _items = [];

// #################################################################
// LAYOUTS
// Ab hier sind items nur noch für die bestimmten Rollen
// #################################################################

/*
- Lead:
	- PL
	- SL? (es gab keine Datei)
	- PMED
- Base:
	- Rifleman
	- Grenadier
	- Marksman
	- LMG
	- MMG
	- LAT
	- HAT
- Special:
	- Squad Medic (Bravo)
	- Junior Medic (Charlie)
	- EOD
	- Sniper
	- Spotter
- Airstack:
	- JTAC
	- Heli Pilot
	- Jet Pilot
*/

_items append (switch (_role) do
{
	case "pl":
	{
		_soldierBase+
["MCC_M4A1_556_URGI","MCC_RC2_556_FDE","MCC_AR_PEQ15_M300C_Tail_FDE_IRL","optic_Arco_blk_F","MCC_PMAG_556_FDE_556_30_M855A1","rhsusf_weap_glock17g4","acc_flashlight_pistol","rhsusf_mag_17Rnd_9x19_JHP","TPW_G3_G3_FS_FM_UNIFORM_MCAMF","ACE_EarPlugs","ACE_tourniquet","ACE_Flashlight_XL50","ACE_CableTie","ACE_IR_Strobe_Item","ACE_MapTools","ACM_PressureBandage","ACM_ChestSeal","ACM_Paracetamol","ACM_EmergencyTraumaDressing","3DMA_WD_AVS_PLLEAD","ACE_HuntIR_monitor","ItemcTab","MCC_PMAG_556_FDE_556_30_M855A1","ACE_M14","ACE_salineIV_500","ItemAndroid","rhsusf_mag_17Rnd_9x19_JHP","tfw_ilbe_blade_mc","tfw_rf3080Item","SmokeShellBlue","SmokeShellGreen","ACE_M84","HandGrenade","SmokeShell","3DMA_WD_Opscore_V5","G_Squares_Tinted","Rangefinder","ItemMap","ItemGPS","TFAR_anprc152","ItemCompass","ACE_Altimeter","3DMA_WD_ANPVS31_v2"]
	};

	case "sl":
	{
		_soldierBase+
["MCC_M4A1_556_URGI","MCC_RC2_556_FDE","MCC_AR_PEQ15_M300C_Tail_FDE_IRL","rhsusf_acc_su230_3d","MCC_PMAG_556_FDE_556_30_M855A1","rhsusf_weap_glock17g4","acc_flashlight_pistol","rhsusf_mag_17Rnd_9x19_JHP","TPW_G3_G3_FS_FM_UNIFORM_MCAMF","ACE_EarPlugs","ACE_tourniquet","ACE_Flashlight_XL50","ACE_CableTie","ACE_IR_Strobe_Item","ACE_MapTools","ACM_PressureBandage","ACM_ChestSeal","ACM_Paracetamol","ACM_EmergencyTraumaDressing","3DMA_WD_AVS_SL","SmokeShell","HandGrenade","MCC_PMAG_556_FDE_556_30_M855A1","ACE_M84","SmokeShellBlue","SmokeShellGreen","ACE_salineIV_500","ItemAndroid","rhsusf_mag_17Rnd_9x19_JHP","tfw_ilbe_blade_mc","MCC_PMAG_556_FDE_556_30_M855A1","rhsusf_mag_17Rnd_9x19_JHP","3DMA_WD_Opscore_V5","rhs_googles_black","Rangefinder","ItemMap","ItemGPS","TFAR_anprc152","ItemCompass","ACE_Altimeter","3DMA_WD_ANPVS31_v2"]
	};

	case "pmed":
	{
		_soldierBase+
		_medic_equipment+
["MCC_M4A1_556_URGI","MCC_RC2_556_FDE","MCC_AR_PEQ15_M300C_Tail_FDE_IRL","rhsusf_acc_su230_3d","MCC_PMAG_556_FDE_556_30_M855A1","rhsusf_weap_glock17g4","acc_flashlight_pistol","rhsusf_mag_17Rnd_9x19_JHP","TPW_G3_G3_FS_FM_UNIFORM_MCAMF_pmed","ACE_EarPlugs","ACE_tourniquet","ACE_Flashlight_XL50","ACE_CableTie","ACE_IR_Strobe_Item","ACM_PressureBandage","ACM_ChestSeal","ACM_Paracetamol","ACM_EmergencyTraumaDressing","3DMA_WD_AVS_Medic","SmokeShell","HandGrenade","ACE_M84","MCC_PMAG_556_FDE_556_30_M855A1","ACE_salineIV_500","ItemAndroid","rhsusf_mag_17Rnd_9x19_JHP","GTO_Carryall_Medic_multicam","ACE_packingBandage","ACE_quikclot","ACE_elasticBandage","ACE_epinephrine","ACE_adenosine","ACE_morphine","ACE_tourniquet","ACE_splint","ACE_salineIV","ACE_salineIV_500","ACE_salineIV_250","ACE_plasmaIV_500","ACE_plasmaIV","ACE_surgicalKit","ACE_bodyBag","ACE_bodyBag_blue","ACE_bodyBag_white","ACE_painkillers","3DMA_WD_Opscore_V5","rhs_googles_black","Rangefinder","ItemMap","ItemGPS","TFAR_anprc152","ItemCompass","ACE_Altimeter","3DMA_WD_ANPVS31_v2"]
	};

	case "rifleman":
	{
		_soldierBase+
["MCC_M4A1_556_URGI","MCC_RC2_556_FDE","MCC_AR_PEQ15_M300C_Tail_FDE_IRL","rhsusf_acc_su230","MCC_PMAG_556_FDE_556_30_M855A1","rhsusf_weap_glock17g4","acc_flashlight_pistol","rhsusf_mag_17Rnd_9x19_JHP","TPW_G3_G3_FS_FM_UNIFORM_MCAMF","ACE_EarPlugs","ACE_tourniquet","ACE_Flashlight_XL50","ACE_CableTie","ACE_IR_Strobe_Item","ItemAndroid","ACM_PressureBandage","ACM_FieldBloodTransfusionKit_500","ACM_ChestSeal","rhsusf_mag_17Rnd_9x19_JHP","ACM_Paracetamol","3DMA_WD_AVS_Rifleman_v4","SmokeShell","HandGrenade","ACE_M84","MCC_PMAG_556_FDE_556_30_M855A1","3DMA_WD_Opscore_V2","rhs_googles_black","Rangefinder","ItemMap","ItemGPS","TFAR_anprc152","ItemCompass","ACE_Altimeter","3DMA_WD_ANPVS31_v2"]
	};

	case "ammoCarrier":
	{
		_soldierBase+
        ["MCC_M4A1_556_URGI","MCC_RC2_556_FDE","MCC_AR_PEQ15_M300C_Tail_FDE_IRL","rhsusf_acc_su230_3d","MCC_PMAG_556_FDE_556_30_M855A1","rhsusf_weap_glock17g4","acc_flashlight_pistol","rhsusf_mag_17Rnd_9x19_JHP","TPW_G3_G3_FS_FM_UNIFORM_MCAMF","ACE_EarPlugs","ACE_tourniquet","ACE_Flashlight_XL50","ACE_CableTie","ACE_IR_Strobe_Item","ACM_PressureBandage","ACM_ChestSeal","ACM_Paracetamol","ACM_EmergencyTraumaDressing","3DMA_WD_AVS_Rifleman_v3","SmokeShell","HandGrenade","MCC_PMAG_556_FDE_556_30_M855A1","ACE_M84","ACE_salineIV_500","ItemAndroid","rhsusf_mag_17Rnd_9x19_JHP","USP_REEBOW_3DAP_MC","3DMA_WD_Opscore_V2","rhs_googles_black","Rangefinder","ItemMap","ItemGPS","TFAR_anprc152","ItemCompass","ACE_Altimeter","3DMA_WD_ANPVS31_v2"]
	};

	case "grenadier":
	{
		_soldierBase+
["MCC_M4A1_556_URGI","MCC_RC2_556_FDE","MCC_AR_PEQ15_M300C_Tail_FDE_IRL","rhsusf_acc_su230_3d","MCC_PMAG_556_FDE_556_30_M855A1","rhs_weap_M320","1Rnd_HE_Grenade_shell","TPW_G3_G3_FS_FM_UNIFORM_MCAMF","ACE_EarPlugs","ACE_tourniquet","ACE_Flashlight_XL50","ACE_CableTie","ACE_IR_Strobe_Item","ACM_PressureBandage","ACM_ChestSeal","ACM_Paracetamol","ACM_EmergencyTraumaDressing","3DMA_WD_AVS_Grenadier","SmokeShell","HandGrenade","MCC_PMAG_556_FDE_556_30_M855A1","ACE_M84","ACE_salineIV_500","ItemAndroid","USP_DELTA_BAG_MC","1Rnd_HE_Grenade_shell","ACE_40mm_Flare_ir","1Rnd_Smoke_Grenade_shell","1Rnd_SmokeRed_Grenade_shell","3DMA_WD_Opscore_V2","rhs_googles_black","Rangefinder","ItemMap","ItemGPS","TFAR_anprc152","ItemCompass","ACE_Altimeter","3DMA_WD_ANPVS31_v2"]
	};

	case "marksman":
	{
		_soldierBase+
["rhs_weap_SCARH_FDE_LB","rhsgref_sdn6_suppressor","rhsusf_acc_anpeq15_wmx","rhsusf_acc_su230a_c","rhs_mag_20Rnd_SCAR_762x51_m61_ap","rhsusf_acc_grip1","rhsusf_weap_glock17g4","acc_flashlight_pistol","rhsusf_mag_17Rnd_9x19_JHP","TPW_G3_G3_FS_FM_UNIFORM_MCAMF","ACE_tourniquet","ACE_Flashlight_XL50","ACE_CableTie","ACE_IR_Strobe_Item","ACM_PressureBandage","ACM_ChestSeal","ACE_EarPlugs","ACM_EmergencyTraumaDressing","ACM_Paracetamol","3DMA_WD_AVS_Rifleman_v3","ItemAndroid","SmokeShell","HandGrenade","ACE_M84","rhsusf_mag_17Rnd_9x19_JHP","rhs_mag_20Rnd_SCAR_762x51_m61_ap","USP_TACTICAL_PACK_PO7","rhs_mag_20Rnd_SCAR_762x51_m61_ap","3DMA_WD_Opscore_V2","rhs_googles_black","Rangefinder","ItemMap","ItemGPS","TFAR_anprc152","ItemCompass","ACE_Altimeter","3DMA_WD_ANPVS31_v2"]
	};

	case "lmg":
	{
		_soldierBase+
["rhs_weap_m249_light_S_vfg2","rhsusf_acc_anpeq15side","rhsusf_acc_su230_3d","rhsusf_200Rnd_556x45_mixed_soft_pouch_coyote","rhsusf_acc_grip4_bipod","rhsusf_weap_glock17g4","acc_flashlight_pistol","rhsusf_mag_17Rnd_9x19_JHP","TPW_G3_G3_FS_FM_UNIFORM_MCAMF","ACE_EarPlugs","ACE_tourniquet","ACE_Flashlight_XL50","ACE_CableTie","ACE_IR_Strobe_Item","ACM_PressureBandage","ACM_ChestSeal","ACM_EmergencyTraumaDressing","ACM_Paracetamol","3DMA_WD_AVS_Saw","ItemAndroid","SmokeShell","HandGrenade","ACE_M84","rhsusf_200Rnd_556x45_mixed_soft_pouch_coyote","rhsusf_mag_17Rnd_9x19_JHP","USP_ZIPON_PACK_CPC_MC","rhsusf_200Rnd_556x45_mixed_soft_pouch_coyote","3DMA_WD_Opscore_V4","rhs_googles_black","Rangefinder","ItemMap","ItemGPS","TFAR_anprc152","ItemCompass","ACE_Altimeter","3DMA_WD_ANPVS31_v2"]
	};

	case "mmg":
	{
		_soldierBase+
["rhs_weap_m240G","rhsusf_acc_su230a_3d","rhsusf_100Rnd_762x51_m62_tracer","rhsusf_weap_glock17g4","acc_flashlight_pistol","rhsusf_mag_17Rnd_9x19_JHP","TPW_G3_G3_FS_FM_UNIFORM_MCAMF","ACE_EarPlugs","ACE_tourniquet","ACE_Flashlight_XL50","ACE_CableTie","ACE_IR_Strobe_Item","ACM_PressureBandage","ACM_ChestSeal","ACM_EmergencyTraumaDressing","ACM_Paracetamol","3DMA_WD_AVS_Saw","ACE_WaterBottle","ItemAndroid","SmokeShell","HandGrenade","rhsusf_100Rnd_762x51_m62_tracer","rhsusf_mag_17Rnd_9x19_JHP","USP_ZIPON_PACK_CPC_MC","rhsusf_100Rnd_762x51_m62_tracer","ACE_SpareBarrel","3DMA_WD_Opscore_V4","rhs_googles_black","Rangefinder","ItemMap","ItemGPS","TFAR_anprc152","ItemCompass","ACE_Altimeter","3DMA_WD_ANPVS31_v2"]
	};

	case "lat":
	{
		_soldierBase
	};

	case "hat":
	{
		_soldierBase+
["MCC_M4A1_556_URGI","MCC_RC2_556_FDE","MCC_AR_PEQ15_M300C_Tail_FDE_IRL","rhsusf_acc_su230_3d","MCC_PMAG_556_FDE_556_30_M855A1","launch_MRAWS_green_rail_F","MRAWS_HEAT55_F","rhsusf_weap_glock17g4","acc_flashlight_pistol","rhsusf_mag_17Rnd_9x19_JHP","TPW_G3_G3_FS_FM_UNIFORM_MCAMF","ACE_EarPlugs","ACE_tourniquet","ACE_Flashlight_XL50","ACE_CableTie","ACE_IR_Strobe_Item","ACM_PressureBandage","ACM_ChestSeal","ACM_Paracetamol","ACM_EmergencyTraumaDressing","3DMA_WD_AVS_Rifleman_v1","SmokeShell","HandGrenade","MCC_PMAG_556_FDE_556_30_M855A1","ACE_salineIV_500","ItemAndroid","rhsusf_mag_17Rnd_9x19_JHP","USP_DELTA_BAG_MC","MRAWS_HEAT55_F","MRAWS_HE_F","3DMA_WD_Opscore_V4","rhs_googles_black","Binocular","ItemMap","ItemGPS","TFAR_anprc152","ItemCompass","ACE_Altimeter","3DMA_WD_ANPVS31_v2"]
	};

	case "medic_bravo":
	{
		_soldierBase+
		_medic_equipment+
["MCC_M4A1_556_URGI","MCC_RC2_556_FDE","MCC_AR_PEQ15_M300C_Tail_FDE_IRL","rhsusf_acc_su230_3d","MCC_PMAG_556_FDE_556_30_M855A1","rhsusf_weap_glock17g4","acc_flashlight_pistol","rhsusf_mag_17Rnd_9x19_JHP","TPW_G3_G3_FS_FM_UNIFORM_MCAMF_arfr","ACE_EarPlugs","ACE_tourniquet","ACE_Flashlight_XL50","ACE_CableTie","ACE_IR_Strobe_Item","ACM_PressureBandage","ACM_ChestSeal","ACM_Paracetamol","ACM_EmergencyTraumaDressing","3DMA_WD_AVS_Medic","SmokeShell","HandGrenade","MCC_PMAG_556_FDE_556_30_M855A1","ACE_M84","ACE_salineIV_500","ItemAndroid","rhsusf_mag_17Rnd_9x19_JHP","USP_REEBOW_3DAP_ACC3_MC","ACE_packingBandage","ACE_quikclot","ACE_epinephrine","ACE_morphine","ACE_tourniquet","ACE_salineIV","ACE_salineIV_500","ACE_salineIV_250","ACE_bodyBag","3DMA_WD_Opscore_V2","rhs_googles_black","Rangefinder","ItemMap","TFAR_anprc152","ItemCompass","ACE_Altimeter","3DMA_WD_ANPVS31_v2"]
	};

	case "medic_charlie":
	{
		_soldierBase+
		_medic_equipment+
["MCC_M4A1_556_URGI","MCC_RC2_556_FDE","MCC_AR_PEQ15_M300C_Tail_FDE_IRL","rhsusf_acc_su230_3d","MCC_PMAG_556_FDE_556_30_M855A1","rhsusf_weap_glock17g4","acc_flashlight_pistol","rhsusf_mag_17Rnd_9x19_JHP","TPW_G3_G3_FS_FM_UNIFORM_MCAMF_arfr","ACE_EarPlugs","ACE_tourniquet","ACE_Flashlight_XL50","ACE_CableTie","ACE_IR_Strobe_Item","ACM_PressureBandage","ACM_ChestSeal","ACM_Paracetamol","ACM_EmergencyTraumaDressing","3DMA_WD_AVS_Medic","SmokeShell","HandGrenade","ACE_M84","MCC_PMAG_556_FDE_556_30_M855A1","ACE_salineIV_500","ItemAndroid","rhsusf_mag_17Rnd_9x19_JHP","B_Carryall_cbr","ACE_packingBandage","ACE_quikclot","ACE_elasticBandage","ACE_epinephrine","ACE_adenosine","ACE_morphine","ACE_tourniquet","ACE_splint","ACE_salineIV","ACE_salineIV_500","ACE_surgicalKit","ACE_plasmaIV","ACE_plasmaIV_500","ACE_salineIV_250","ACE_painkillers","3DMA_WD_Opscore_V5","rhs_googles_black","Rangefinder","ItemMap","ItemGPS","TFAR_anprc152","ItemCompass","ACE_Altimeter","3DMA_WD_ANPVS31_v2"]
	};

	case "eod":
	{
		_soldierBase+
["MCC_M4A1_556_URGI","MCC_RC2_556_FDE","MCC_AR_PEQ15_M300C_Tail_FDE_IRL","rhsusf_acc_su230_3d","MCC_PMAG_556_FDE_556_30_M855A1","rhsusf_weap_glock17g4","acc_flashlight_pistol","rhsusf_mag_17Rnd_9x19_JHP","TPW_G3_G3_FS_FM_UNIFORM_MCAMF","ACE_EarPlugs","ACE_tourniquet","ACE_Flashlight_XL50","ACE_CableTie","ACE_IR_Strobe_Item","ACM_PressureBandage","ACM_ChestSeal","ACM_Paracetamol","ACM_EmergencyTraumaDressing","3DMA_WD_AVS_Rifleman_v2","SmokeShell","HandGrenade","ACE_M84","MCC_PMAG_556_FDE_556_30_M855A1","ACE_salineIV_500","ItemAndroid","rhsusf_mag_17Rnd_9x19_JHP","USP_REEBOW_3DAP_ACC1_MC","ACE_wirecutter","ACE_DefusalKit","ACE_M26_Clacker","MineDetector","DemoCharge_Remote_Mag","SLAMDirectionalMine_Wire_Mag","3DMA_WD_Opscore_V2","rhs_googles_black","Binocular","ItemMap","TFAR_anprc152","ItemCompass","ACE_Altimeter","3DMA_WD_ANPVS31_v2"]
	};

	case "sniper":
	{
		_soldierBase+
["rhs_weap_M107_w","rhsusf_acc_premier_mrds","ACE_10Rnd_127x99_AMAX_Mag","rhsusf_weap_glock17g4","acc_flashlight_pistol","rhsusf_mag_17Rnd_9x19_JHP","TPW_G3_G3_FS_FM_UNIFORM_MCAMF","ACE_EarPlugs","ACE_tourniquet","ACE_Flashlight_XL50","ACE_CableTie","ACE_IR_Strobe_Item","ACM_PressureBandage","ACM_ChestSeal","ACM_EmergencyTraumaDressing","ACM_Paracetamol","3DMA_WD_AVS_SNOT","ACE_ATragMX","ACE_Kestrel4500","ACE_MapTools","ACE_microDAGR","ACE_RangeCard","ACE_DAGR","ItemAndroid","SmokeShell","HandGrenade","ACE_10Rnd_127x99_AMAX_Mag","USP_PACK_HYDRATION","ACE_Tripod","ACE_salineIV_500","rhsusf_mag_17Rnd_9x19_JHP","3DMA_WD_Opscore_V4","rhs_googles_black","Rangefinder","ItemMap","ItemGPS","TFAR_anprc152","ItemCompass","ACE_Altimeter","3DMA_WD_ANPVS31_v2"]
	};

	case "spotter":
	{
		_soldierBase+
["rhs_weap_sr25_ec","rhsusf_acc_aac_scarh_silencer","rhsusf_acc_anpeq15side_bk","optic_DMS","rhsusf_20Rnd_762x51_SR25_m993_Mag","rhsusf_acc_harris_bipod","rhsusf_weap_glock17g4","acc_flashlight_pistol","rhsusf_mag_17Rnd_9x19_JHP","TPW_G3_G3_FS_FM_UNIFORM_MCAMF","ACE_EarPlugs","ACE_tourniquet","ACE_Flashlight_XL50","ACE_CableTie","ACE_IR_Strobe_Item","ACM_PressureBandage","ACM_ChestSeal","ACM_EmergencyTraumaDressing","ACM_Paracetamol","3DMA_WD_AVS_SNOT","ACE_MapTools","ACE_microDAGR","ACE_RangeCard","ACE_Kestrel4500","ACE_ATragMX","ACE_DAGR","ItemAndroid","SmokeShell","HandGrenade","rhsusf_20Rnd_762x51_SR25_m993_Mag","acex_intelitems_notepad","USP_ZIPON_PACK_CPC_AT_MC","tfw_rf3080Item","ACE_SpottingScope","ACE_Tripod","rhsusf_20Rnd_762x51_SR25_m993_Mag","ACE_10Rnd_127x99_AMAX_Mag","rhsusf_mag_17Rnd_9x19_JHP","3DMA_WD_Opscore_V4","rhs_googles_black","Rangefinder","ItemMap","ItemGPS","TFAR_anprc152","ItemCompass","ACE_Altimeter","3DMA_WD_ANPVS31_v2"]
	};

	case "jtac":
	{
		_soldierBase+
["MCC_M4A1_556_URGI","MCC_RC2_556_FDE","MCC_AR_PEQ15_M300C_Tail_FDE_IRL","rhsusf_acc_su230_3d","MCC_PMAG_556_FDE_556_30_M855A1","rhs_weap_M320","1Rnd_SmokeRed_Grenade_shell","TPW_G3_G3_FS_FM_UNIFORM_MCAMF","ACE_EarPlugs","ACE_tourniquet","ACE_Flashlight_XL50","ACE_CableTie","ACE_IR_Strobe_Item","ACE_MapTools","ACE_microDAGR","ACE_PlottingBoard","acex_intelitems_notepad","ACM_PressureBandage","ACM_ChestSeal","ACM_Paracetamol","ACM_EmergencyTraumaDressing","3DMA_WD_AVS_JTAC","SmokeShell","HandGrenade","MCC_PMAG_556_FDE_556_30_M855A1","ACE_M84","ACE_salineIV_500","ItemAndroid","tfw_ilbe_whip_mc","tfw_rf3080Item","uh60_jvmf_tablet","B_IR_Grenade","SmokeShellBlue","SmokeShellGreen","SmokeShellPurple","ACE_Chemlight_IR","UGL_FlareRed_F","UGL_FlareYellow_F","UGL_FlareGreen_F","1Rnd_SmokeRed_Grenade_shell","1Rnd_SmokePurple_Grenade_shell","3DMA_WD_Opscore_V2","rhs_googles_black","Laserdesignator","Laserbatteries","ItemMap","ItemGPS","TFAR_anprc152","ItemCompass","ACE_Altimeter","3DMA_WD_ANPVS31_v2"]
	};

	case "heli_pilot":
	{
		_soldierBase+
["rhs_weap_m4a1_carryhandle","rhsusf_acc_anpeq15_top","rhsusf_acc_eotech_xps3","rhs_mag_30Rnd_556x45_M855A1_Stanag","TPW_L9_L9_FS_FM_UNIFORM_MCAMF","ACE_EarPlugs","ACE_tourniquet","ACE_Flashlight_XL50","ACE_IR_Strobe_Item","ACE_CableTie","ACE_microDAGR","ACM_PressureBandage","ACM_FieldBloodTransfusionKit_500","ACM_ChestSeal","ACM_Paracetamol","V_TacVest_oli","rhs_mag_30Rnd_556x45_M855A1_Stanag","B_IR_Grenade","HandGrenade","SmokeShellGreen","SmokeShell","B_LegStrapBag_coyote_F","ToolKit","rhsusf_hgu56p_visor_mask_Empire_black","Binocular","ItemMap","ItemGPS","TFAR_anprc152","ItemCompass","ACE_Altimeter","ACE_NVG_Wide_Black_WP"]
	};

	case "jet_pilot":
	{
		_soldierBase+
["rhsusf_weap_glock17g4","rhsusf_mag_17Rnd_9x19_JHP","U_B_PilotCoveralls","ACE_EarPlugs","ACM_PressureBandage","ACE_tourniquet","ACE_Flashlight_XL50","ACE_CableTie","ItemAndroid","ACE_IR_Strobe_Item","ACM_FieldBloodTransfusionKit_500","ACM_ChestSeal","ACM_Paracetamol","rhsusf_mag_17Rnd_9x19_JHP","SmokeShellBlue","SmokeShellGreen","SmokeShell","H_PilotHelmetFighter_B","ItemMap","ItemGPS","TFAR_anprc152","ItemCompass","ACE_Altimeter"]
	};

	default {
		hint "Schwerer Fehler #100"
	};
});

_items arrayIntersect _items