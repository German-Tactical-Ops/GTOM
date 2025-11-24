scriptName "fn_arsenal_USA";
/*
	Author: LucyferHW
	
	Description:
	Describe your function
*/

params ["_role"];

private _basic_equipment = ["rhsusf_acc_eotech_xps3","rhsusf_acc_su230","rhsusf_acc_su230a","rhsusf_acc_g33_xps3","rhsusf_acc_g33_T1","rhsusf_acc_EOTECH","rhsusf_acc_anpeq15side","rhsusf_acc_anpeq15side_bk","rhsusf_acc_anpeq15_bk","rhs_acc_m4_urgi_d_bcm","rhs_acc_m4_urgi_d","rhsusf_100Rnd_556x45_soft_pouch_coyote","rhsusf_100Rnd_556x45_mixed_soft_pouch_coyote","rhs_mag_30Rnd_556x45_M855A1_PMAG","1Rnd_HE_Grenade_shell","TPW_G3_G3_FS_FM_UNIFORM_MCAMF","TPW_G3_G3_FS_MX_UNIFORM_MCAMF","TPW_G3_G3_RS_FM_UNIFORM_MCAMF","TPW_G3_G3_RS_MX_UNIFORM_MCAMF","TPW_L9_G3_FS_FM_UNIFORM_MCAMF","TPW_L9_G3_FS_MX_UNIFORM_MCAMF","TPW_L9_G3_RS_FM_UNIFORM_MCAMF","TPW_L9_G3_RS_MX_UNIFORM_MCAMF","TPW_PCU_G3_FS_FM_UNIFORM_MCAMF","TPW_PCU_G3_FS_MX_UNIFORM_MCAMF","rhs_googles_black","rhs_googles_clear","G_Shades_Black","rhsusf_oakley_goggles_blk","rhsusf_oakley_goggles_clr","G_Squares_Tinted","G_Squares","G_Spectacles_Tinted","rhsusf_shemagh2_tan","rhsusf_shemagh_tan","rhsusf_shemagh2_gogg_tan","rhsusf_shemagh_gogg_tan","G_Bandanna_khk","G_Bandanna_tan","G_Bandanna_blk","SmokeShell","ACE_M84","ACE_salineIV","ACE_salineIV_250","ACE_salineIV_500","ACE_WaterBottle","rhs_weap_m4_urgi_kac","rhs_acc_mk18_urgi_d","rhs_acc_mk18_urgi_d_bcm","rhsusf_weap_glock17g4","rhsusf_mag_17Rnd_9x19_JHP","rhsusf_acc_T1_high","optic_Arco_blk_F","optic_Arco","optic_Arco_arid_F","optic_Arco_AK_arid_F","optic_Arco_AK_blk_F","G_Bandanna_shades","G_Bandanna_sport","optic_DMS","optic_DMS_weathered_F","rhs_mag_20Rnd_SCAR_762x51_m61_ap","rhsusf_100Rnd_762x51_m62_tracer","G_Aviator","rhsusf_acc_anpeq15_wmx","3DMA_WD_AVS_Rifleman_v1","3DMA_WD_AVS_Rifleman_v2","3DMA_WD_AVS_Rifleman_v3","3DMA_WD_AVS_Rifleman_v4","ACE_SpareBarrel","3DMA_WD_Opscore_V2","3DMA_WD_Opscore_V1","3DMA_WD_Opscore_V4","3DMA_WD_Opscore_V3","3DMA_WD_Opscore_V5","ACE_10Rnd_127x99_AMAX_Mag","rhsusf_20Rnd_762x51_SR25_m993_Mag","HandGrenade"];

private _medic_equipment = ["TPW_G3_G3_FS_FM_UNIFORM_MCAMF_arfr","TPW_G3_G3_FS_MX_UNIFORM_MCAMF_pmed","TPW_G3_G3_RS_FM_UNIFORM_MCAMF_arfr","TPW_G3_G3_RS_FM_UNIFORM_MCAMF_pmed","TPW_G3_G3_RS_MX_UNIFORM_MCAMF_arfr","TPW_G3_G3_RS_MX_UNIFORM_MCAMF_pmed","TPW_L9_G3_FS_FM_UNIFORM_MCAMF_arfr","TPW_L9_G3_FS_FM_UNIFORM_MCAMF_pmed","TPW_L9_G3_FS_MX_UNIFORM_MCAMF_arfr","TPW_L9_G3_RS_FM_UNIFORM_MCAMF_arfr","TPW_L9_G3_RS_FM_UNIFORM_MCAMF_pmed","TPW_L9_G3_RS_MX_UNIFORM_MCAMF_arfr","TPW_L9_G3_RS_MX_UNIFORM_MCAMF_pmed","TPW_L9_G3_FS_MX_UNIFORM_MCAMF_pmed","TPW_PCU_G3_FS_FM_UNIFORM_MCAMF_arfr","TPW_PCU_G3_FS_FM_UNIFORM_MCAMF_pmed","TPW_PCU_G3_FS_MX_UNIFORM_MCAMF_arfr","TPW_PCU_G3_FS_MX_UNIFORM_MCAMF_pmed","TPW_G3_G3_FS_FM_UNIFORM_MCAMF_pmed","TPW_G3_G3_FS_MX_UNIFORM_MCAMF_arfr","ACE_fieldDressing","ACE_packingBandage","ACE_elasticBandage","ACE_quikclot","ACE_bloodIV","ACE_bloodIV_500","ACE_bloodIV_250","ACE_bodyBag","ACE_bodyBag_blue","ACE_bodyBag_white","ACE_morphine","ACE_plasmaIV","ACE_plasmaIV_250","ACE_plasmaIV_500","ACE_salineIV","ACE_salineIV_250","ACE_salineIV_500","ACE_splint","ACE_tourniquet","ACE_painkillers","ACE_epinephrine","ACE_adenosine"];

private _gto_equipment = ["GTO_Beret_Black", "GTO_Beret_Blue", "GTO_Beret_Gray", "GTO_Beret_Green", "GTO_Beret_Orange", "GTO_Beret_Pink", "GTO_Beret_Red", "GTO_Beret_Violett", "GTO_Beret_White", "GTO_Beret_Yellow"];

private _googles = ["VSM_balaclava_Black_Skull", "VSM_balaclava_Black", "VSM_balaclava_olive_Skull", "VSM_balaclava_olive", "VSM_balaclava_TAN_Skull", "VSM_balaclava_tan", "VSM_Balaclava_black_glasses", "VSM_Balaclava_OD_glasses", "VSM_Balaclava_tan_glasses", "VSM_Balaclava_black_Goggles", "VSM_Balaclava_OD_Goggles", "VSM_Balaclava_tan_Goggles", "VSM_Balaclava_black_Peltor", "VSM_Balaclava_OD_Peltor", "VSM_Balaclava_tan_Peltor", "VSM_Balaclava_black_Peltor_glasses", "VSM_Balaclava_OD_Peltor_glasses", "VSM_Balaclava_tan_Peltor_glasses", "VSM_Balaclava_black_Peltor_Goggles", "VSM_Balaclava_OD_Peltor_Goggles", "VSM_Balaclava_tan_Peltor_Goggles", "VSM_balaclava2_Black", "VSM_Balaclava2_black_glasses", "VSM_Balaclava2_OD_glasses", "VSM_Balaclava2_tan_glasses", "VSM_Balaclava2_black_Goggles", "VSM_Balaclava2_OD_Goggles", "VSM_Balaclava2_tan_Goggles", "VSM_Balaclava2_black_Peltor", "VSM_Balaclava2_OD_Peltor", "VSM_Balaclava2_tan_Peltor", "VSM_Balaclava2_black_Peltor_glasses", "VSM_Balaclava2_OD_Peltor_glasses", "VSM_Balaclava2_tan_Peltor_glasses", "VSM_Balaclava2_black_Peltor_Goggles", "VSM_Balaclava2_OD_Peltor_Goggles", "VSM_Balaclava2_tan_Peltor_Goggles", "VSM_beard_hair", "VSM_beard_2", "VSM_beard_2_hair", "VSM_beard_3", "VSM_beard_3_hair", "VSM_FaceMask_black", "VSM_FaceMask_Ghost", "VSM_FaceMask_Ghost_olive", "VSM_FaceMask_Ghost_tan", "VSM_FaceMask_olive", "VSM_FaceMask_tan", "VSM_Facemask_black_glasses", "VSM_Facemask_OD_glasses", "VSM_Facemask_tan_glasses", "VSM_Facemask_black_Goggles", "VSM_Facemask_OD_Goggles", "VSM_Facemask_tan_Goggles", "VSM_Facemask_black_Peltor", "VSM_Facemask_OD_Peltor", "VSM_Facemask_tan_Peltor", "VSM_Facemask_black_Peltor_glasses", "VSM_Facemask_OD_Peltor_glasses", "VSM_Facemask_tan_Peltor_glasses", "VSM_Facemask_black_Peltor_Goggles", "VSM_Facemask_OD_Peltor_Goggles", "VSM_Facemask_tan_Peltor_Goggles", "VSM_Goggles", "VSM_Peltor_AOR1_glasses", "VSM_Peltor_coyote_glasses", "VSM_Peltor_m81_glasses", "VSM_Peltor_OCP_glasses", "VSM_Peltor_OD_glasses", "VSM_Shemagh_OD", "VSM_Shemagh_tan", "VSM_Shemagh_Balaclava_OD", "VSM_Shemagh_Balaclava_tan", "VSM_Shemagh_Balaclava_OD_Glasses", "VSM_Shemagh_Balaclava_tan_Glasses", "VSM_Shemagh_Balaclava_OD_Goggles", "VSM_Shemagh_Balaclava_tan_Goggles", "VSM_Shemagh_Balaclava_OD_Peltor", "VSM_Shemagh_Balaclava_tan_Peltor", "VSM_Shemagh_Balaclava_OD_Peltor_Glasses", "VSM_Shemagh_Balaclava_tan_Peltor_Glasses", "VSM_Shemagh_Balaclava_OD_Peltor_Goggles", "VSM_Shemagh_Balaclava_tan_Peltor_Goggles", "VSM_Shemagh_Balaclava2_OD", "VSM_Shemagh_Balaclava2_tan", "VSM_Shemagh_Balaclava2_OD_Glasses", "VSM_Shemagh_Balaclava2_tan_Glasses", "VSM_Shemagh_Balaclava2_OD_Goggles", "VSM_Shemagh_Balaclava2_tan_Goggles", "VSM_Shemagh_Balaclava2_OD_Peltor", "VSM_Shemagh_Balaclava2_tan_Peltor", "VSM_Shemagh_Balaclava2_OD_Peltor_Glasses", "VSM_Shemagh_Balaclava2_tan_Peltor_Glasses", "VSM_Shemagh_Balaclava2_OD_Peltor_Goggles", "VSM_Shemagh_Balaclava2_tan_Peltor_Goggles", "VSM_Shemagh_Facemask_OD", "VSM_Shemagh_Facemask_tan", "VSM_Shemagh_Facemask_OD_Glasses", "VSM_Shemagh_Facemask_tan_Glasses", "VSM_Shemagh_Facemask_OD_Goggles", "VSM_Shemagh_Facemask_tan_Goggles", "VSM_Shemagh_Facemask_OD_Peltor", "VSM_Shemagh_Facemask_tan_Peltor", "VSM_Shemagh_Facemask_OD_Peltor_Glasses", "VSM_Shemagh_Facemask_tan_Peltor_Glasses", "VSM_Shemagh_Facemask_OD_Peltor_Goggles", "VSM_Shemagh_Facemask_tan_Peltor_Goggles", "VSM_Shemagh_glasses_OD", "VSM_Shemagh_glasses_tan", "VSM_Shemagh_goggles_od", "VSM_Shemagh_goggles_tan", "VSM_SkiMask_Black", "G_AirPurifyingRespirator_02_black_F", "G_AirPurifyingRespirator_02_olive_F", "G_AirPurifyingRespirator_02_sand_F", "G_AirPurifyingRespirator_01_F", "G_Aviator", "rhs_googles_black", "rhs_googles_clear", "rhs_googles_orange", "rhs_googles_yellow", "rhs_ess_black", "G_Bandanna_aviator", "G_Bandanna_beast", "G_Bandanna_blk", "G_Bandanna_khk", "G_Bandanna_oli", "G_Bandanna_shades", "G_Bandanna_sport", "G_Bandanna_tan", "immersion_cigs_cigar0", "murshun_cigs_cig0", "G_Combat", "G_Combat_Goggles_tna_F", "G_Diving", "G_I_Diving", "G_O_Diving", "G_B_Diving", "G_Lady_Blue", "immersion_pops_pop0", "G_Lowprofile", "None", "G_RegulatorMask_F", "G_EyeProtectors_F", "G_EyeProtectors_Earpiece_F", "G_Shades_Black", "G_Shades_Blue", "G_Shades_Green", "G_Shades_Red", "rhsusf_shemagh_grn", "rhsusf_shemagh2_grn", "rhsusf_shemagh_od", "rhsusf_shemagh2_od", "rhsusf_shemagh_tan", "rhsusf_shemagh2_tan", "rhsusf_shemagh_white", "rhsusf_shemagh2_white", "rhsusf_shemagh_gogg_grn", "rhsusf_shemagh2_gogg_grn", "rhsusf_shemagh_gogg_od", "rhsusf_shemagh2_gogg_od", "rhsusf_shemagh_gogg_tan", "rhsusf_shemagh2_gogg_tan", "rhsusf_shemagh_gogg_white", "rhsusf_shemagh2_gogg_white", "rhsusf_oakley_goggles_blk", "rhsusf_oakley_goggles_clr", "rhsusf_oakley_goggles_ylw", "G_Spectacles", "G_Sport_Red", "G_Sport_Blackyellow", "G_Sport_BlackWhite", "G_Sport_Checkered", "G_Sport_Blackred", "G_Sport_Greenblack", "G_Squares_Tinted", "G_Squares", "G_Balaclava_TI_blk_F", "G_Balaclava_TI_G_blk_F", "G_Balaclava_TI_tna_F", "G_Balaclava_TI_G_tna_F", "G_Tactical_Clear", "G_Tactical_Black", "G_Spectacles_Tinted", "G_Goggles_VR", "G_WirelessEarpiece_F"];

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
		_soldierBase
	};

	case "sl":
	{
		_soldierBase
	};

	case "pmed":
	{
		_soldierBase+
		_medic_equipment
	};

	case "rifleman":
	{
		_soldierBase
	};

	case "grenadier":
	{
		_soldierBase
	};

	case "marksman":
	{
		_soldierBase
	};

	case "lmg":
	{
		_soldierBase
	};

	case "mmg":
	{
		_soldierBase
	};

	case "lat":
	{
		_soldierBase
	};

	case "hat":
	{
		_soldierBase
	};

	case "medic_bravo":
	{
		_soldierBase+
		_medic_equipment
	};

	case "medic_charlie":
	{
		_soldierBase+
		_medic_equipment
	};

	case "eod":
	{
		_soldierBase
	};

	case "sniper":
	{
		_soldierBase
	};

	case "spotter":
	{
		_soldierBase
	};

	case "jtac":
	{
		_soldierBase
	};

	case "heli_pilot":
	{
		_soldierBase
	};

	case "jet_pilot":
	{
		_soldierBase
	};

	default {
		hint "Schwerer Fehler #100"
	};
});

_items arrayIntersect _items