scriptName "fn_arsenal_USA";
/*
	Author: LucyferHW
	
	Description:
	Describe your function
*/

params ["_role"];

private _gto_main = ["GTO_Beret_Black", "GTO_Beret_Blue", "GTO_Beret_Gray", "GTO_Beret_Green", "GTO_Beret_Orange", "GTO_Beret_Pink", "GTO_Beret_Red", "GTO_Beret_Violett", "GTO_Beret_White", "GTO_Beret_Yellow", "GTO_BaseUniform", "KNB_Notebook","Black_Black_Camo","U_B_Wetsuit","V_RebreatherB","G_Diving","G_B_Diving","V_Pocketed_black_F"];

private _weapon_mp = ["SMG_01_F", "rhsusf_weap_MP7A2_aor1", "rhsusf_weap_MP7A2_desert", "rhsusf_weap_MP7A2_winter", "rhsusf_weap_MP7A2", "SMG_05_F", "SMG_02_F"];

private _ammo_mp = ["30Rnd_45ACP_Mag_SMG_01", "30Rnd_45ACP_Mag_SMG_01_Tracer_Green", "30Rnd_45ACP_Mag_SMG_01_Tracer_Red", "30Rnd_45ACP_Mag_SMG_01_Tracer_Yellow", "rhsusf_mag_40Rnd_46x30_FMJ", "rhsusf_mag_40Rnd_46x30_JHP", "rhsusf_mag_40Rnd_46x30_AP", "30Rnd_9x21_Mag_SMG_02", "30Rnd_9x21_Mag_SMG_02_Tracer_Red", "30Rnd_9x21_Mag_SMG_02_Tracer_Yellow", "30Rnd_9x21_Mag_SMG_02_Tracer_Green", "30Rnd_9x21_Mag", "30Rnd_9x21_Red_Mag", "30Rnd_9x21_Yellow_Mag", "30Rnd_9x21_Green_Mag"];

private _weapon_light = ["rhs_weap_m4a1_carryhandle", "rhs_weap_m16a4"];

private _ammo_light = ["rhs_mag_30Rnd_556x45_M855A1_PMAG", "rhs_mag_30Rnd_556x45_M855A1_PMAG_Tracer_Red"];

private _weapon_medium = ["rhs_weap_m4a1_carryhandle", "rhs_weap_m4a1_blockII_bk", "rhs_weap_m4a1_blockII_d", "rhs_weap_m4a1_blockII_wd", "rhs_weap_hk416d10", "rhs_weap_hk416d145", "rhs_weap_hk416d145_d", "rhs_weap_hk416d145_wd", "arifle_SPAR_01_blk_F", "arifle_SPAR_01_khk_F", "arifle_SPAR_01_snd_F", "rhs_weap_m16a4", "rhs_weap_m27iar", "rhs_weap_mk18_bk", "rhs_weap_mk18_d", "rhs_weap_mk18_wd"];

private _ammo_medium = ["rhs_mag_20Rnd_556x45_M193_Stanag", "rhs_mag_20Rnd_556x45_M196_Stanag_Tracer_Red", "rhs_mag_20Rnd_556x45_M193_2MAG_Stanag", "rhs_mag_20Rnd_556x45_M196_2MAG_Stanag_Tracer_Red", "rhs_mag_30Rnd_556x45_M855A1_PMAG", "rhs_mag_30Rnd_556x45_M855A1_PMAG_Tracer_Red", "rhs_mag_30Rnd_556x45_M855A1_PMAG_Tan", "rhs_mag_30Rnd_556x45_M855A1_PMAG_Tan_Tracer_Red", "rhs_mag_30Rnd_556x45_M855A1_Stanag", "rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red", "ACE_30Rnd_556x45_Stanag_Mk262_mag"];

private _weapon_heavy = ["arifle_ARX_blk_F", "arifle_ARX_ghex_F", "arifle_ARX_hex_F", "arifle_MSBS65_F", "arifle_MSBS65_black_F", "arifle_MSBS65_camo_F", "arifle_MSBS65_sand_F", "arifle_MSBS65_Mark_F", "arifle_MSBS65_Mark_black_F", "arifle_MSBS65_Mark_camo_F", "arifle_MSBS65_Mark_sand_F", "arifle_MSBS65_UBS_F", "arifle_MSBS65_UBS_black_F", "arifle_MSBS65_UBS_camo_F", "arifle_MSBS65_UBS_sand_F", "rhs_weap_mk17_CQC", "rhs_weap_mk17_LB", "rhs_weap_mk17_STD"];

private _ammo_heavy = ["30Rnd_65x39_caseless_green", "30Rnd_65x39_caseless_green_mag_Tracer", "ACE_30Rnd_65x39_caseless_green_mag_Tracer_Dim", "10Rnd_50BW_Mag_F", "30Rnd_65x39_caseless_msbs_mag", "30Rnd_65x39_caseless_msbs_mag_Tracer", "ACE_30Rnd_65_Creedmor_msbs_mag", "ACE_30Rnd_65x47_Scenar_msbs_mag", "6Rnd_12Gauge_Pellets", "6Rnd_12Gauge_Slug", "ACE_6Rnd_12Gauge_Pellets_No0_Buck", "ACE_6Rnd_12Gauge_Pellets_No1_Buck", "ACE_6Rnd_12Gauge_Pellets_No2_Buck", "ACE_6Rnd_12Gauge_Pellets_No3_Buck", "ACE_6Rnd_12Gauge_Pellets_No4_Buck", "ACE_6Rnd_12Gauge_Pellets_No4_Bird", "rhs_mag_20Rnd_SCAR_762x51_m80_ball", "rhs_mag_20Rnd_SCAR_762x51_m61_ap", "rhs_mag_20Rnd_SCAR_762x51_m62_tracer", "rhs_mag_20Rnd_SCAR_762x51_m80a1_epr", "rhs_mag_20Rnd_SCAR_762x51_m118_special", "rhs_mag_20Rnd_SCAR_762x51_mk316_special", "rhs_mag_fold_stock"];

private _weapon_dmr = ["arifle_SPAR_03_blk_F", "arifle_SPAR_03_khk_F", "arifle_SPAR_03_snd_F", "srifle_DMR_06_camo_F", "srifle_DMR_06_hunter_F", "rhs_weap_m14_d", "rhs_weap_m14_fiberglass", "srifle_DMR_06_olive_F", "rhs_weap_m14_rail", "rhs_weap_m14_rail_d", "rhs_weap_m14_rail_fiberglass", "rhs_weap_m14_rail_wd", "rhs_weap_m14_ris", "rhs_weap_m14_ris_d", "rhs_weap_m14_ris_fiberglass", "rhs_weap_m14_ris_wd", "rhs_weap_m14_wd", "rhs_weap_m14ebrri", "srifle_DMR_05_blk_F", "srifle_DMR_05_hex_F", "srifle_DMR_05_tan_f", "rhs_weap_m24sws", "rhs_weap_m24sws_d", "rhs_weap_m24sws_wd", "srifle_DMR_02_F", "srifle_DMR_02_camo_F", "srifle_DMR_02_sniper_F", "srifle_DMR_03_F", "srifle_DMR_03_multicam_F", "srifle_DMR_03_khaki_F", "srifle_DMR_03_tan_F", "srifle_DMR_03_woodland_F", "rhs_weap_m14_socom", "rhs_weap_m14_socom_rail", "rhs_weap_sr25", "rhs_weap_sr25_d", "rhs_weap_sr25_ec", "rhs_weap_sr25_ec_d", "rhs_weap_sr25_ec_wd", "rhs_weap_sr25_wd"];

private _ammo_dmr = ["20Rnd_762x51_Mag", "ACE_20Rnd_762x51_Mag_Tracer", "ACE_20Rnd_762x51_Mag_Tracer_Dim", "ACE_20Rnd_762x51_Mag_SD", "ACE_10Rnd_762x51_Mag_Tracer", "ACE_10Rnd_762x51_Mag_Tracer_Dim", "ACE_10Rnd_762x51_Mag_SD", "ACE_10Rnd_762x51_M118LR_Mag", "ACE_10Rnd_762x51_Mk316_Mod_0_Mag", "ACE_10Rnd_762x51_Mk319_Mod_0_Mag", "ACE_10Rnd_762x51_M993_AP_Mag", "ACE_20Rnd_762x51_M118LR_Mag", "ACE_20Rnd_762x51_Mk316_Mod_0_Mag", "ACE_20Rnd_762x51_Mk319_Mod_0_Mag", "ACE_20Rnd_762x51_M993_AP_Mag", "10Rnd_Mk14_762x51_Mag", "rhsusf_20Rnd_762x51_m118_special_Mag", "rhsusf_20Rnd_762x51_m993_Mag", "rhsusf_20Rnd_762x51_m80_Mag", "rhsusf_20Rnd_762x51_m62_Mag", "10Rnd_93x64_DMR_05_Mag", "rhsusf_5Rnd_762x51_m118_special_Mag", "rhsusf_5Rnd_762x51_m993_Mag", "rhsusf_5Rnd_762x51_m62_Mag", "10Rnd_338_Mag", "ACE_10Rnd_338_300gr_HPBT_Mag", "ACE_10Rnd_338_API526_Mag", "ACE_20Rnd_762x67_Mk248_Mod_0_Mag", "ACE_20Rnd_762x67_Mk248_Mod_1_Mag", "ACE_20Rnd_762x67_Berger_Hybrid_OTM_Mag", "ACE_10Rnd_762x67_Mk248_Mod_0_Mag", "ACE_10Rnd_762x67_Mk248_Mod_1_Mag", "ACE_10Rnd_762x67_Berger_Hybrid_OTM_Mag", "rhs_10rnd_9x39mm_SP5", "rhs_10rnd_9x39mm_SP6", "rhs_20rnd_9x39mm_SP5", "rhs_20rnd_9x39mm_SP6", "rhsusf_20Rnd_762x51_SR25_m118_special_Mag", "rhsusf_20Rnd_762x51_SR25_mk316_special_Mag", "rhsusf_20Rnd_762x51_SR25_m993_Mag", "rhsusf_20Rnd_762x51_SR25_m62_Mag"];

private _weapon_sniper = ["rhs_weap_XM2010", "rhs_weap_XM2010_wd", "rhs_weap_XM2010_d", "rhs_weap_XM2010_sa", "rhs_weap_m40a5", "rhs_weap_m40a5_d", "rhs_weap_m40a5_wd", "rhs_weap_M107", "rhs_weap_M107_d", "rhs_weap_M107_w"];

private _ammo_sniper = ["rhsusf_5Rnd_300winmag_xm2010", "rhsusf_5Rnd_762x51_AICS_m118_special_Mag", "rhsusf_5Rnd_762x51_AICS_m993_Mag", "rhsusf_5Rnd_762x51_AICS_m62_Mag", "rhsusf_10Rnd_762x51_m118_special_Mag", "rhsusf_10Rnd_762x51_m993_Mag", "rhsusf_10Rnd_762x51_m62_Mag", "rhsusf_5Rnd_762x51_m118_special_Mag", "rhsusf_5Rnd_762x51_m993_Mag", "rhsusf_5Rnd_762x51_m62_Mag", "rhsusf_mag_10Rnd_STD_50BMG_M33", "rhsusf_mag_10Rnd_STD_50BMG_mk211", "ACE_10Rnd_127x99_Mag", "ACE_10Rnd_127x99_API_Mag", "ACE_10Rnd_127x99_AMAX_Mag"];

private _weapon_grenadier = ["arifle_SPAR_01_GL_blk_F", "arifle_SPAR_01_GL_khk_F", "arifle_SPAR_01_GL_snd_F", "rhs_weap_m32", "rhs_weap_hk416d10_m320", "rhs_weap_hk416d145_m320", "rhs_weap_m4_m320", "rhs_weap_m4a1_m320", "rhs_weap_mk18_m320", "rhs_weap_m16a4_carryhandle_M203", "rhs_weap_m4_carryhandle_m203", "rhs_weap_m4_carryhandle_m203S", "rhs_weap_m4_m203", "rhs_weap_m4_m203S", "rhs_weap_m4a1_carryhandle_m203", "rhs_weap_m4a1_carryhandle_m203S", "rhs_weap_m4a1_blockII_M203_bk", "rhs_weap_m4a1_blockII_M203_d", "rhs_weap_m4a1_blockII_M203", "rhs_weap_m4a1_blockII_M203_wd", "rhs_weap_m4a1_m203s_d", "rhs_weap_m4a1_m203", "rhs_weap_m4a1_m203s", "rhs_weap_m4a1_m203s_wd"];

private _ammo_grenadier = ["30Rnd_556x45_Stanag", "30Rnd_556x45_Stanag_green", "30Rnd_556x45_Stanag_red", "30Rnd_556x45_Stanag_Tracer_Red", "30Rnd_556x45_Stanag_Tracer_Green", "30Rnd_556x45_Stanag_Tracer_Yellow", "30Rnd_556x45_Stanag_Sand", "30Rnd_556x45_Stanag_Sand_green", "30Rnd_556x45_Stanag_Sand_red", "30Rnd_556x45_Stanag_Sand_Tracer_Red", "30Rnd_556x45_Stanag_Sand_Tracer_Green", "30Rnd_556x45_Stanag_Sand_Tracer_Yellow", "rhs_mag_20Rnd_556x45_M193_Stanag", "rhs_mag_20Rnd_556x45_M196_Stanag_Tracer_Red", "rhs_mag_20Rnd_556x45_M200_Stanag", "rhs_mag_20Rnd_556x45_M855_Stanag", "rhs_mag_20Rnd_556x45_M855A1_Stanag", "rhs_mag_20Rnd_556x45_Mk262_Stanag", "rhs_mag_20Rnd_556x45_M193_2MAG_Stanag", "rhs_mag_20Rnd_556x45_M196_2MAG_Stanag_Tracer_Red", "rhs_mag_30Rnd_556x45_M855_Stanag", "rhs_mag_30Rnd_556x45_M855_Stanag_Pull", "rhs_mag_30Rnd_556x45_M855_Stanag_Ranger", "rhs_mag_30Rnd_556x45_M855_Stanag_Tracer_Red", "rhs_mag_30Rnd_556x45_M855_Stanag_Pull_Tracer_Red", "rhs_mag_30Rnd_556x45_M855_Stanag_Ranger_Tracer_Red", "rhs_mag_30Rnd_556x45_M855_Stanag_Tracer_Green", "rhs_mag_30Rnd_556x45_M855_Stanag_Tracer_Yellow", "rhs_mag_30Rnd_556x45_M855_Stanag_Tracer_Orange", "rhs_mag_30Rnd_556x45_M855A1_Stanag", "rhs_mag_30Rnd_556x45_M855A1_Stanag_Pull", "rhs_mag_30Rnd_556x45_M855A1_Stanag_Ranger", "rhs_mag_30Rnd_556x45_M855A1_Stanag_No_Tracer", "rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red", "rhs_mag_30Rnd_556x45_M855A1_Stanag_Pull_Tracer_Red", "rhs_mag_30Rnd_556x45_M855A1_Stanag_Ranger_Tracer_Red", "rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Green", "rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Yellow", "rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Orange", "rhs_mag_30Rnd_556x45_Mk318_Stanag", "rhs_mag_30Rnd_556x45_Mk318_Stanag_Pull", "rhs_mag_30Rnd_556x45_Mk318_Stanag_Ranger", "rhs_mag_30Rnd_556x45_Mk262_Stanag", "rhs_mag_30Rnd_556x45_Mk262_Stanag_Pull", "rhs_mag_30Rnd_556x45_Mk262_Stanag_Ranger", "rhs_mag_30Rnd_556x45_M193_Stanag", "rhs_mag_30Rnd_556x45_M196_Stanag_Tracer_Red", "rhs_mag_30Rnd_556x45_M200_Stanag", "rhs_mag_30Rnd_556x45_M855A1_EPM", "rhs_mag_30Rnd_556x45_M855A1_EPM_Tracer_Red", "rhs_mag_30Rnd_556x45_M855A1_EPM_Pull", "rhs_mag_30Rnd_556x45_M855A1_EPM_Pull_Tracer_Red", "rhs_mag_30Rnd_556x45_M855A1_EPM_Ranger", "rhs_mag_30Rnd_556x45_M855A1_EPM_Ranger_Tracer_Red", "rhs_mag_30Rnd_556x45_Mk318_SCAR", "rhs_mag_30Rnd_556x45_Mk318_SCAR_Pull", "rhs_mag_30Rnd_556x45_Mk318_SCAR_Ranger", "rhs_mag_30Rnd_556x45_M855A1_PMAG", "rhs_mag_30Rnd_556x45_M855A1_PMAG_Tracer_Red", "rhs_mag_30Rnd_556x45_M855_PMAG", "rhs_mag_30Rnd_556x45_M855_PMAG_Tracer_Red", "rhs_mag_30Rnd_556x45_Mk318_PMAG", "rhs_mag_30Rnd_556x45_Mk262_PMAG", "rhs_mag_30Rnd_556x45_M855A1_PMAG_Tan", "rhs_mag_30Rnd_556x45_M855A1_PMAG_Tan_Tracer_Red", "rhs_mag_30Rnd_556x45_M855_PMAG_Tan", "rhs_mag_30Rnd_556x45_M855_PMAG_Tan_Tracer_Red", "rhs_mag_30Rnd_556x45_Mk318_PMAG_Tan", "rhs_mag_30Rnd_556x45_Mk262_PMAG_Tan", "ACE_30Rnd_556x45_Stanag_M995_AP_mag", "ACE_30Rnd_556x45_Stanag_Mk262_mag", "ACE_30Rnd_556x45_Stanag_Mk318_mag", "ACE_30Rnd_556x45_Stanag_Tracer_Dim", "1Rnd_HE_Grenade_shell", "UGL_FlareWhite_F", "UGL_FlareGreen_F", "UGL_FlareRed_F", "UGL_FlareYellow_F", "UGL_FlareCIR_F", "1Rnd_Smoke_Grenade_shell", "1Rnd_SmokeRed_Grenade_shell", "1Rnd_SmokeGreen_Grenade_shell", "1Rnd_SmokeYellow_Grenade_shell", "1Rnd_SmokePurple_Grenade_shell", "1Rnd_SmokeBlue_Grenade_shell", "1Rnd_SmokeOrange_Grenade_shell", "ACE_HuntIR_M203", "rhs_mag_M433_HEDP", "rhs_mag_M397_HET", "rhs_mag_m576", "rhs_mag_m4009", "rhs_mag_M583A1_white", "rhs_mag_M585_white", "rhs_mag_m661_green", "rhs_mag_m662_red", "rhs_mag_M585_white_cluster", "rhs_mag_M663_green_cluster", "rhs_mag_M664_red_cluster", "rhs_mag_m713_Red", "rhs_mag_m714_White", "rhs_mag_m715_Green", "rhs_mag_m716_yellow", "rhs_mag_M781_Practice", "ACE_40mm_Flare_white", "ACE_40mm_Flare_red", "ACE_40mm_Flare_green", "ACE_40mm_Flare_ir", "rhsusf_mag_6Rnd_M441_HE", "rhsusf_mag_6Rnd_M433_HEDP", "rhsusf_mag_6Rnd_M397_HET", "rhsusf_mag_6Rnd_M576_Buckshot", "rhsusf_mag_6Rnd_m4009", "rhsusf_mag_6Rnd_M583A1_white", "rhsusf_mag_6Rnd_m661_green", "rhsusf_mag_6Rnd_m662_red", "rhsusf_mag_6Rnd_M713_red", "rhsusf_mag_6Rnd_M714_white", "rhsusf_mag_6Rnd_M715_green", "rhsusf_mag_6Rnd_M716_yellow", "rhsusf_mag_6Rnd_M781_Practice", "rhsusf_mag_6Rnd_M585_white", "rhs_mag_M441_HE"];

private _weapon_sapper = ["sgun_HunterShotgun_01_F", "sgun_HunterShotgun_01_sawedoff_F", "rhs_weap_M590_8RD", "rhs_weap_M590_5RD"];

private _ammo_sapper = ["2Rnd_12Gauge_Pellets", "2Rnd_12Gauge_Slug", "ACE_2Rnd_12Gauge_Pellets_No0_Buck", "ACE_2Rnd_12Gauge_Pellets_No1_Buck", "ACE_2Rnd_12Gauge_Pellets_No2_Buck", "ACE_2Rnd_12Gauge_Pellets_No3_Buck", "ACE_2Rnd_12Gauge_Pellets_No4_Buck", "ACE_2Rnd_12Gauge_Pellets_No4_Bird", "rhsusf_8Rnd_00Buck", "rhsusf_8Rnd_doomsday_Buck", "rhsusf_8Rnd_Slug", "rhsusf_8Rnd_HE", "rhsusf_8Rnd_FRAG", "rhsusf_5Rnd_00Buck", "rhsusf_5Rnd_Slug", "rhsusf_5Rnd_HE", "rhsusf_5Rnd_FRAG", "rhsusf_5Rnd_doomsday_Buck", "rhs_mag_fakeMuzzle1"];

private _weapon_mg = ["MMG_02_black_F", "MMG_02_camo_F", "MMG_02_sand_F", "LMG_Mk200_F", "LMG_Mk200_black_F", "MMG_01_tan_F", "MMG_01_hex_F", "rhs_weap_m240B", "rhs_weap_m240G", "rhs_weap_m249", "rhs_weap_m249_pip", "rhs_weap_m249_light_L", "rhs_weap_m249_pip_L_para", "rhs_weap_m249_pip_L", "rhs_weap_m249_pip_ris", "rhs_weap_m249_light_S", "rhs_weap_m249_pip_S_para", "rhs_weap_m249_pip_S"];

private _ammo_mg = ["rhsusf_mag_6Rnd_M585_white", "200Rnd_65x39_cased_Box", "200Rnd_65x39_cased_Box_Tracer", "200Rnd_65x39_cased_Box_Red", "200Rnd_65x39_cased_Box_Tracer_Red", "ACE_200Rnd_65x39_cased_Box_Tracer_Dim", "150Rnd_93x64_Mag", "rhsusf_100Rnd_762x51", "rhsusf_100Rnd_762x51_m61_ap", "rhsusf_100Rnd_762x51_m62_tracer", "rhsusf_100Rnd_762x51_m80a1epr", "rhsusf_100Rnd_762x51_m82_blank", "rhsusf_50Rnd_762x51", "rhsusf_50Rnd_762x51_m61_ap", "rhsusf_50Rnd_762x51_m62_tracer", "rhsusf_50Rnd_762x51_m80a1epr", "rhsusf_50Rnd_762x51_m82_blank", "rhsusf_50Rnd_762x51_m993", "rhsusf_100Rnd_762x51_m993", "150Rnd_762x51_Box", "150Rnd_762x51_Box_Tracer", "rhsusf_200Rnd_556x45_box", "rhsusf_200rnd_556x45_mixed_box", "rhsusf_200rnd_556x45_M855_box", "rhsusf_200rnd_556x45_M855_mixed_box", "rhs_mag_30Rnd_556x45_M855_Stanag_Tracer_Green", "rhs_mag_30Rnd_556x45_M855_Stanag_Tracer_Yellow", "rhs_mag_30Rnd_556x45_M855_Stanag_Tracer_Orange", "rhs_mag_30Rnd_556x45_M855A1_Stanag_No_Tracer", "rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Green", "rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Yellow", "rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Orange", "200Rnd_556x45_Box_F", "200Rnd_556x45_Box_Red_F", "200Rnd_556x45_Box_Tracer_F", "200Rnd_556x45_Box_Tracer_Red_F", "rhsusf_200Rnd_556x45_soft_pouch", "rhsusf_200Rnd_556x45_mixed_soft_pouch", "rhsusf_200Rnd_556x45_soft_pouch_ucp", "rhsusf_200Rnd_556x45_mixed_soft_pouch_ucp", "rhsusf_200Rnd_556x45_soft_pouch_coyote", "rhsusf_200Rnd_556x45_mixed_soft_pouch_coyote", "rhsusf_200Rnd_556x45_M855_soft_pouch", "rhsusf_200Rnd_556x45_M855_mixed_soft_pouch", "rhsusf_200Rnd_556x45_M855_soft_pouch_ucp", "rhsusf_200Rnd_556x45_M855_mixed_soft_pouch_ucp", "rhsusf_200Rnd_556x45_M855_soft_pouch_coyote", "rhsusf_200Rnd_556x45_M855_mixed_soft_pouch_coyote", "rhsusf_100Rnd_556x45_soft_pouch", "rhsusf_100Rnd_556x45_mixed_soft_pouch", "rhsusf_100Rnd_556x45_soft_pouch_ucp", "rhsusf_100Rnd_556x45_mixed_soft_pouch_ucp", "rhsusf_100Rnd_556x45_soft_pouch_coyote", "rhsusf_100Rnd_556x45_mixed_soft_pouch_coyote", "rhsusf_100Rnd_556x45_M855_soft_pouch", "rhsusf_100Rnd_556x45_M855_mixed_soft_pouch", "rhsusf_100Rnd_556x45_M855_soft_pouch_ucp", "rhsusf_100Rnd_556x45_M855_mixed_soft_pouch_ucp", "rhsusf_100Rnd_556x45_M855_soft_pouch_coyote", "rhsusf_100Rnd_556x45_M855_mixed_soft_pouch_coyote", "rhsusf_100Rnd_556x45_M995_soft_pouch", "rhsusf_100Rnd_556x45_M995_soft_pouch_ucp", "rhsusf_100Rnd_556x45_M995_soft_pouch_coyote", "rhsusf_100Rnd_556x45_M200_soft_pouch", "rhsusf_100Rnd_556x45_M200_soft_pouch_ucp", "rhsusf_100Rnd_556x45_M200_soft_pouch_coyote", "130Rnd_338_Mag"];

private _weapon_pistoles = ["rhsusf_weap_glock17g4", "rhsusf_weap_m9", "ACE_Flashlight_Maglite_ML300L", "hgun_Pistol_heavy_01_F", "hgun_Pistol_heavy_01_green_F", "hgun_P07_F", "hgun_P07_blk_F", "hgun_P07_khk_F", "rhs_weap_tr8", "hgun_Pistol_Signal_F", "hgun_Pistol_heavy_02_F"];

private _ammo_pistoles = ["rhsusf_mag_17Rnd_9x19_JHP", "rhsusf_mag_17Rnd_9x19_FMJ", "rhsusf_mag_15Rnd_9x19_JHP", "rhsusf_mag_15Rnd_9x19_FMJ", "11Rnd_45ACP_Mag", "16Rnd_9x21_Mag", "16Rnd_9x21_red_Mag", "16Rnd_9x21_green_Mag", "16Rnd_9x21_yellow_Mag", "30Rnd_9x21_Mag", "30Rnd_9x21_Red_Mag", "30Rnd_9x21_Yellow_Mag", "30Rnd_9x21_Green_Mag", "6Rnd_GreenSignal_F", "6Rnd_RedSignal_F", "6Rnd_45ACP_Cylinder"];

// --------------------------------------------------

private _HAT_Pack = ["rhs_weap_fgm148", "rhs_weap_fim92", "rhs_weap_maaws", "launch_MRAWS_green_rail_F", "launch_MRAWS_olive_rail_F", "launch_MRAWS_sand_rail_F", "launch_MRAWS_green_F", "launch_MRAWS_olive_F", "launch_MRAWS_sand_F", "rhs_weap_smaw_green", "launch_NLAW_F", "rhs_fgm148_magazine_AT", "Titan_AA", "rhs_fim92_mag", "rhs_mag_maaws_HEAT", "rhs_mag_maaws_HEDP", "rhs_mag_maaws_HE", "MRAWS_HEAT_F", "MRAWS_HE_F", "MRAWS_HEAT55_F", "rhs_mag_smaw_HEAA", "rhs_mag_smaw_HEDP", "rhs_mag_smaw_SR", "rhs_optic_maaws", "rhs_weap_optic_smaw"];

// --------------------------------------------------

private _scope_main = ["rhsusf_acc_anpvs27", "optic_Yorris", "ACE_optic_Arco_2D", "optic_Arco_arid_F", "optic_Arco_blk_F", "optic_Arco_lush_F", "ACE_optic_Arco_PIP", "optic_Arco", "optic_Arco_AK_arid_F", "optic_Arco_AK_blk_F", "optic_Arco_AK_lush_F", "optic_Holosight_arid_F", "optic_Holosight_blk_F", "optic_Holosight_khk_F", "optic_Holosight_lush_F", "optic_Holosight", "optic_Holosight_smg_blk_F", "optic_Holosight_smg_khk_F", "optic_Holosight_smg", "optic_MRCO", "ACE_optic_MRCO_2D", "rhsusf_acc_ELCAN", "optic_ACO_grn", "optic_Aco", "optic_ACO_grn_smg", "optic_Aco_smg", "rhsusf_acc_ELCAN_ard", "rhsusf_acc_ACOG", "rhsusf_acc_ACOG2", "rhsusf_acc_ACOG_anpvs27", "optic_Hamr", "ACE_optic_Hamr_2D", "optic_Hamr_khk_F", "ACE_optic_Hamr_PIP", "rhsusf_acc_M2A1", "rhsusf_acc_eotech_552", "rhsusf_acc_eotech_552_d", "rhsusf_acc_eotech_552_wd", "rhsusf_acc_compm4", "optic_MRD", "optic_MRD_black", "rhs_acc_nita", "optic_ERCO_blk_F", "optic_ERCO_khk_F", "optic_ERCO_snd_F", "rhsusf_acc_su230a", "rhsusf_acc_su230a_c", "rhsusf_acc_su230a_mrds", "rhsusf_acc_su230a_mrds_c", "rhsusf_acc_ACOG_d", "rhsusf_acc_ACOG_wd", "rhsusf_acc_ACOG_RMR", "rhsusf_acc_eotech_xps3", "rhsusf_acc_su230", "rhsusf_acc_su230_c", "rhsusf_acc_su230_mrds", "rhsusf_acc_su230_mrds_c"];

private _scope_sniper = ["rhsusf_acc_nxs_5522x56_md_sun", "rhsusf_acc_nxs_5522x56_md", "rhsusf_acc_nxs_3515x50f1_md_sun", "rhsusf_acc_nxs_3515x50f1_h58_sun", "rhsusf_acc_nxs_3515x50f1_md", "rhsusf_acc_nxs_3515x50f1_h58", "rhsusf_acc_nxs_3515x50_md", "ACE_optic_LRPS_PIP", "optic_LRPS_tna_F", "optic_LRPS_ghex_F", "ACE_optic_LRPS_2D", "optic_LRPS", "optic_Nightstalker", "ACE_optic_SOS_PIP", "optic_SOS_khk_F", "ACE_optic_SOS_2D", "optic_SOS", "rhsusf_acc_LEUPOLDMK4_2_mrds", "rhsusf_acc_LEUPOLDMK4_2_d", "rhsusf_acc_LEUPOLDMK4_wd", "rhsusf_acc_LEUPOLDMK4_d", "rhsusf_acc_LEUPOLDMK4", "rhsusf_acc_premier_mrds", "rhsusf_acc_premier", "rhsusf_acc_premier_anpvs27", "rhsusf_acc_premier_low", "rhsusf_acc_M8541_wd", "rhsusf_acc_M8541_mrds", "rhsusf_acc_LEUPOLDMK4_2", "rhsusf_acc_M8541_low_wd", "rhsusf_acc_M8541_low_d", "rhsusf_acc_M8541_low", "rhsusf_acc_M8541_d", "rhsusf_acc_M8541", "optic_KHS_tan", "optic_KHS_old", "optic_KHS_hex", "optic_KHS_blk", "optic_AMS_snd", "optic_AMS_khk", "optic_AMS", "optic_NVS"];

// --------------------------------------------------

private _railAttachments_main = ["rhsusf_acc_anpeq15side", "rhsusf_acc_anpeq15_top", "rhsusf_acc_anpeq15_wmx", "rhsusf_acc_anpeq15_wmx_light", "rhsusf_acc_anpeq15side_bk", "rhsusf_acc_anpeq15_bk_top", "rhsusf_acc_anpeq15_bk", "rhsusf_acc_anpeq15_bk_light", "rhsusf_acc_anpeq16a", "rhsusf_acc_anpeq16a_light", "rhsusf_acc_anpeq16a_top", "rhsusf_acc_anpeq16a_light_top", "rhsusf_acc_M952V", "acc_flashlight_pistol", "acc_esd_01_flashlight", "acc_flashlight_smg_01", "acc_flashlight", "rhsusf_acc_wmx", "rhsusf_acc_wmx_bk"];

// --------------------------------------------------

private _muzzleAttachments_main = ["rhs_acc_6p9_suppressor", "rhsusf_acc_aac_762sd_silencer", "rhsusf_acc_aac_762sdn6_silencer", "rhsusf_acc_aac_scarh_silencer", "rhsusf_acc_ARDEC_M240", "rhs_acc_dtk1l", "ACE_muzzle_mzls_338", "ACE_muzzle_mzls_smg_01", "ACE_muzzle_mzls_L", "ACE_muzzle_mzls_H", "ACE_muzzle_mzls_B", "ACE_muzzle_mzls_smg_02", "ACE_muzzle_mzls_93mmg", "rhsusf_acc_aac_m14dcqd_silencer", "rhsusf_acc_aac_m14dcqd_silencer_d", "rhsusf_acc_aac_m14dcqd_silencer_wd", "rhsusf_acc_m14_flashsuppresor", "rhsusf_acc_m24_muzzlehider_black", "rhsusf_acc_m24_muzzlehider_d", "rhsusf_acc_m24_muzzlehider_wd", "rhsusf_acc_m24_silencer_black", "rhsusf_acc_m24_silencer_d", "rhsusf_acc_m24_silencer_wd", "rhsusf_acc_nt4_black", "rhsusf_acc_nt4_tan", "rhsusf_acc_rotex5_grey", "rhsusf_acc_rotex5_tan", "rhsusf_acc_rotex_mp7_aor1", "rhsusf_acc_rotex_mp7", "rhsusf_acc_rotex_mp7_desert", "rhsusf_acc_rotex_mp7_winter", "muzzle_antenna_02_f", "muzzle_antenna_03_f", "muzzle_antenna_01_f", "muzzle_snds_338_black", "muzzle_snds_338_green", "muzzle_snds_338_sand", "muzzle_snds_acp", "muzzle_snds_M", "muzzle_snds_m_khk_F", "muzzle_snds_m_snd_F", "muzzle_snds_570", "muzzle_snds_H", "muzzle_snds_H_khk_F", "muzzle_snds_H_snd_F", "muzzle_snds_B", "muzzle_snds_B_arid_F", "muzzle_snds_B_khk_F", "muzzle_snds_B_lush_F", "muzzle_snds_B_snd_F", "muzzle_snds_L", "muzzle_snds_93mmg", "muzzle_snds_93mmg_tan", "muzzle_snds_H_MG_blk_F", "muzzle_snds_H_MG", "muzzle_snds_H_MG_khk_F", "rhsusf_acc_SR25S", "rhsusf_acc_SR25S_d", "rhsusf_acc_SR25S_wd", "muzzle_snds_58_blk_F", "muzzle_snds_58_ghex_F", "muzzle_snds_58_hex_F", "muzzle_snds_65_TI_blk_F", "muzzle_snds_65_TI_ghex_F", "muzzle_snds_65_TI_hex_F", "rhsusf_acc_M2010S", "rhsusf_acc_M2010S_d", "rhsusf_acc_M2010S_sa", "rhsusf_acc_M2010S_wd"];

// --------------------------------------------------

private _bipod_main = ["rhsusf_acc_grip2", "rhsusf_acc_grip2_tan", "rhsusf_acc_grip2_wd", "rhsusf_acc_grip1", "rhsusf_acc_rvg_blk", "rhsusf_acc_rvg_de", "rhsusf_acc_tdstubby_tan", "rhsusf_acc_grip3", "rhsusf_acc_grip3_tan", "rhsusf_acc_tdstubby_blk"];

private _bipod_mg = ["rhsusf_acc_harris_bipod", "bipod_02_F_arid", "bipod_03_F_blk", "bipod_02_F_blk", "bipod_01_F_blk", "bipod_02_F_hex", "bipod_02_F_lush", "bipod_01_F_khk", "bipod_01_F_mtp", "bipod_03_F_oli", "bipod_01_F_snd", "bipod_02_F_tan", "rhsusf_acc_kac_grip_saw_bipod", "rhsusf_acc_saw_bipod", "rhsusf_acc_grip4", "rhsusf_acc_grip4_bipod", "rhsusf_acc_saw_lw_bipod"];

private _bipod_sniper = ["rhsusf_acc_harris_bipod", "bipod_02_F_arid", "bipod_03_F_blk", "bipod_02_F_blk", "bipod_01_F_blk", "bipod_02_F_hex", "bipod_02_F_lush", "bipod_01_F_khk", "bipod_01_F_mtp", "bipod_03_F_oli", "bipod_01_F_snd", "bipod_02_F_tan", "dzn_tripod_rifle", "dzn_tripod_rifle_od", "dzn_tripod_rifle_tan"];

// --------------------------------------------------

private _helmet_main = ["VSM_BackwardsHat_Peltor_black", "VSM_BackwardsHat_Peltor_CMMG", "VSM_BackwardsHat_Peltor_ION", "VSM_BackwardsHat_Peltor_OD", "VSM_BackwardsHat_Peltor_Sero", "VSM_BackwardsHat_Peltor_tan", "VSM_BackwardsHat_Peltor_US", "VSM_Beanie_Black", "VSM_Beanie_OD", "VSM_Beanie_tan", "VSM_Bowman", "VSM_Bowman_cap_Black", "VSM_Bowman_cap_Green", "VSM_Bowman_cap_Tan", "VSM_Bowman_cap_balaclava_Black", "VSM_Bowman_cap_balaclava_Olive", "VSM_Bowman_cap_balaclava_Tan", "Alpine_Cap", "VSM_AOR1_Cap", "AOR2_Cap", "Arid_Cap", "DTS_Cap", "VSM_M81_Cap", "VSM_Multicam_Cap", "VSM_MulticamTropic_Cap", "VSM_OCP_Cap", "VSM_ProjectHonor_Cap", "VSM_fasthelmet_alpinecover", "VSM_fasthelmet_coveraor1", "VSM_fasthelmet_black", "VSM_fast_helmet_covermcblack", "VSM_fasthelmet_covermulticam", "VSM_fasthelmet_OD", "VSM_fasthelmet_tan", "VSM_fast_helmet_covertropic", "VSM_fasthelmet_white", "VSM_highcutslick_black", "VSM_highcutslick_OD", "VSM_highcutslick_tan", "VSM_highcutslick_white", "VSM_Mich2000_AOR1", "VSM_Mich2000_M81", "VSM_Mich2000_MulticamTropic", "VSM_Mich2000_Multicam", "VSM_Mich2000_ocp", "VSM_Mich2000_CamoSprayOD", "VSM_Mich2000_OGA_OD", "VSM_Mich2000_OGA", "VSM_Mich2000_ProjectHonor", "VSM_Mich2000_CamoSprayTAN", "VSM_Mich2000_2_aor1", "VSM_Mich2000_2_M81", "VSM_Mich2000_2_MulticamTropic", "VSM_Mich2000_2_Multicam", "VSM_Mich2000_2_OCP", "VSM_Mich2000_2_CamoSprayOD", "VSM_Mich2000_2_OGA_OD", "VSM_Mich2000_2_OGA", "VSM_Mich2000_2_ProjectHonor", "VSM_Mich2000_2_CamoSprayTAN", "Alpine_Helmet_IA", "AOR2_Helmet_IA", "Arid_Helmet_IA", "DTS_Helmet_IA", "VSM_OGA_Helmet1", "VSM_OGA_OD_Helmet1", "VSM_OGA_Helmet2", "VSM_OGA_OD_Helmet2", "VSM_OPS", "Alpine_opscore", "VSM_OPS_aor1", "AOR2_opscore", "ARD_opscore", "VSM_Black_OPS", "VSM_M81_OPS", "BLK2_opscore", "VSM_OPS_multicam", "VSM_MulticamTropic_OPS", "VSM_OPS_ocp", "VSM_OD_spray_OPS", "VSM_OGA_OD_OPS", "VSM_oga_OPS", "VSM_ProjectHonor_OPS", "VSM_Tan_spray_OPS", "White_opscore", "VSM_OPS_2", "Alpine_opscore_2", "VSM_OPS_2_AOR1", "AOR2_opscore_2", "ARD_opscore_2", "VSM_Black_OPS_2", "VSM_M81_OPS_2", "BLK_opscore_2", "VSM_OPS_2_multicam", "VSM_MulticamTropic_OPS_2", "VSM_OPS_2_ocp", "VSM_OD_Spray_OPS_2", "VSM_OGA_OD_OPS_2", "VSM_oga_OPS_2", "VSM_ProjectHonor_OPS_2", "VSM_Tan_spray_OPS_2", "White_opscore_2", "VSM_Peltor_AOR1", "VSM_Peltor_Coyote", "VSM_Peltor_M81", "VSM_Peltor_OCP", "VSM_Peltor_OD", "H_HelmetSpecB", "H_HelmetSpecB_blk", "H_HelmetSpecB_paint2", "H_HelmetSpecB_paint1", "H_HelmetSpecB_sand", "H_HelmetSpecB_snakeskin", "H_HelmetB_Enh_tna_F", "H_HelmetSpecB_wdl", "H_HelmetB_light", "H_HelmetB_light_black", "H_HelmetB_light_desert", "H_HelmetB_light_grass", "H_HelmetB_light_sand", "H_HelmetB_light_snakeskin", "H_HelmetB_Light_tna_F", "H_HelmetB_light_wdl"];

private _helmet_medic = ["GTO_HelmetSpec_Medic_Black", "GTO_Opscore2_Medic", "GTO_Opscore_Medic", "GTO_Mich_Medic", "GTO_Mich2_Medic"];

private _helmet_sniper =["VSM_ProjectHonor_Boonie", "VSM_OCP_Boonie", "VSM_MulticamTropic_Boonie", "VSM_Multicam_Boonie", "VSM_M81_Boonie", "DTS_Boonie", "Arid_Boonie", "AOR2_Boonie", "VSM_AOR1_Boonie"];

// --------------------------------------------------

private _uniform_main = ["VSM_AOR1_BDU_Camo", "DTS_BDU_Camo", "VSM_M81_BDU_Camo", "VSM_Multicam_BDU_Camo", "VSM_MulticamTropic_BDU_Camo", "VSM_OCP_BDU_Camo", "VSM_ProjectHonor_BDU_Camo", "Alpine_Crye_Camo", "DTS_Crye_SS_Camo", "DTS_Crye_Camo", "VSM_AOR1_Crye_Camo", "AOR_2_Crye_Camo", "Arid_Crye_Camo", "VSM_M81_Crye_Camo", "black_Crye_Camo", "VSM_Multicam_Crye_Camo", "VSM_MulticamTropic_Crye_Camo", "VSM_OCP_Crye_Camo", "VSM_OGA_Crye_grey_Camo", "VSM_OGA_Crye_od_Camo", "VSM_OGA_Crye_Camo", "VSM_ProjectHonor_Crye_Camo", "VSM_Scorpion_Crye_Camo", "Alpine_Crye_SS_Camo", "VSM_AOR1_Crye_SS_Camo", "AOR_2_CryeSS_Camo", "Arid_Crye_SS_Camo", "VSM_M81_Crye_SS_Camo", "Black_Crye_SS_Camo", "VSM_Multicam_Crye_SS_Camo", "VSM_MulticamTropic_Crye_SS_Camo", "VSM_OCP_Crye_SS_Camo", "VSM_OGA_Crye_SS_grey_Camo", "VSM_OGA_Crye_SS_od_Camo", "VSM_OGA_Crye_SS_Camo", "VSM_ProjectHonor_Crye_SS_Camo", "VSM_Scorpion_Crye_SS_Camo", "Alpine_Massif_Camo", "VSM_AOR1_Camo", "AOR2_camo", "VSM_M81_Camo", "VSM_Multicam_Camo", "VSM_MulticamTropic_Camo", "VSM_OCP_Camo", "VSM_OGA_od_Camo", "VSM_OGA_Camo", "VSM_ProjectHonor_Camo", "DTS_Massif_Camo", "Alpine_Massif_Camo_SS", "VSM_AOR1_Camo_SS", "AOR2_SS_camo", "DTS_Massif_SS_Camo", "VSM_M81_Camo_SS", "VSM_Multicam_Camo_SS", "VSM_MulticamTropic_Camo_SS", "VSM_OCP_Camo_SS", "VSM_OGA_od_Camo_SS", "VSM_OGA_Camo_SS", "VSM_ProjectHonor_Camo_SS", "U_B_T_Soldier_F", "U_B_T_Soldier_SL_F"];

// --------------------------------------------------

private _vest_main = ["dr_Alpinefacp_op", "CarrierRig_Operator_Alpine", "dr_Alpinelbt_op", "dr_Alpinepar_op", "VSM_FAPC_Operator_AOR1", "VSM_CarrierRig_Operator_AOR1", "VSM_LBT6094_operator_AOR1", "VSM_RAV_operator_AOR1", "dr_AOR2facp_op", "CarrierRig_Operator_AOR2", "dr_AOR2lbt_op", "dr_AOR2par_op", "DTSfacp_op", "CarrierRig_Operator_DTS", "DTSlbt_op", "DTSpar_op", "LBT1961_Alpine", "LBT1961_AOR2", "LBT1961_Arid", "VSM_LBT1961_Black", "VSM_LBT1961_CB", "LBT1961_DTS", "VSM_LBT1961_GRN", "VSM_FAPC_Operator_M81", "VSM_CarrierRig_Operator_M81", "VSM_LBT6094_operator_M81", "VSM_RAV_operator_M81", "Alpine_MBSS_Green", "ARD_MBSS_Green", "VSM_MBSS_BLK", "VSM_MBSS_CB", "DTS_MBSS_Green", "VSM_MBSS_Green", "BLK_MBSS_Green", "VSM_MBSS_TAN", "Alpine_MBSS_PACA", "AOR2_MBSS_PACA", "ARD_MBSS_PACA", "VSM_MBSS_PACA_BLK", "VSM_MBSS_PACA_CB", "DTS_MBSS_PACA", "VSM_MBSS_PACA", "BLK_MBSS_PACA", "VSM_MBSS_PACA_TAN", "AOR2_MBSS_Green", "dr_ARDfacp_op", "CarrierRig_Operator_Arid", "dr_ARDlbt_op", "dr_ARDpar_op", "dr_BLKfacp_op", "dr_BLKlbt_op", "dr_BLKpar_op", "VSM_FAPC_Operator_Multicam", "VSM_CarrierRig_Operator_Multicam", "VSM_LBT6094_operator_Multicam", "VSM_RAV_operator_Multicam", "VSM_FAPC_Operator_MulticamTropic", "VSM_CarrierRig_Operator_multicamTropic", "VSM_LBT6094_operator_multicamTropic", "VSM_RAV_operator_MulticamTropic", "VSM_FAPC_Operator_OCP", "VSM_CarrierRig_Operator_OCP", "VSM_LBT6094_operator_OCP", "VSM_RAV_operator_OCP", "VSM_LBT1961_OGA_OD", "VSM_FAPC_Operator_OGA", "VSM_OGA_IOTV_2", "VSM_OGA_OD_IOTV_2", "VSM_OGA_IOTV_1", "VSM_OGA_OD_IOTV_1", "VSM_CarrierRig_Operator_OGA", "VSM_LBT6094_operator_OGA", "VSM_FAPC_Operator_OGA_OD", "VSM_CarrierRig_Operator_OGA_OD", "VSM_LBT6094_operator_OGA_OD", "VSM_RAV_operator_OGA_OD", "VSM_RAV_operator_OGA", "VSM_OGA_Vest_1", "VSM_OGA_OD_Vest_1", "VSM_OGA_Vest_2", "VSM_OGA_OD_Vest_2", "VSM_OGA_Vest_3", "VSM_OGA_OD_Vest_3", "VSM_FAPC_Operator_ProjectHonor", "VSM_CarrierRig_Operator_ProjectHonor", "VSM_LBT6094_operator_ProjectHonor", "VSM_RAV_operator_ProjectHonor", "V_PlateCarrier1_tna_F", "V_PlateCarrier2_tna_F"];

private _vest_light = ["cpc_light_coy", "cpc_lightbelt_coy", "cpc_light_mc", "cpc_lightbelt_mc", "cpc_light_rngr", "cpc_lightbelt_rngr", "lbt_light_aor1", "lbt_light_aor2", "lbt_light_coy", "lbt_light_mc", "lbt_light_od", "cpc_Fast_coy", "cpc_Fastbelt_coy", "cpc_Fast_mc", "cpc_Fastbelt_mc", "cpc_Fast_rngr", "cpc_Fastbelt_rngr", "lbt_fast_coy", "V_PlateCarrier1_tna_F", "V_PlateCarrier2_tna_F"];

private _vest_heavy = ["cpc_weapons_coy", "cpc_weaponsbelt_coy", "cpc_weapons_mc", "cpc_weaponsbelt_mc", "cpc_weapons_rngr", "cpc_weaponsbelt_rngr", "lbt_weapons_aor1", "lbt_weapons_aor2", "lbt_weapons_coy", "lbt_weapons_mc", "lbt_weapons_od", "dr_Alpinefacp_mg", "CarrierRig_Gunner_Alpine", "dr_Alpinelbt_mg", "dr_Alpinepar_mg", "VSM_FAPC_MG_AOR1", "VSM_CarrierRig_Gunner_AOR1", "VSM_LBT6094_MG_AOR1", "VSM_RAV_MG_AOR1", "dr_AOR2facp_mg", "CarrierRig_Gunner_AOR2", "dr_AOR2lbt_mg", "dr_AOR2par_mg", "DTSfacp_mg", "CarrierRig_Gunner_DTS", "DTSlbt_mg", "DTSpar_mg", "VSM_FAPC_MG_M81", "VSM_CarrierRig_Gunner_M81", "VSM_LBT6094_MG_M81", "VSM_RAV_MG_M81", "dr_ARDfacp_mg", "CarrierRig_Gunner_Arid", "dr_ARDlbt_mg", "dr_ARDpar_mg", "dr_BLKfacp_mg", "dr_BLKlbt_mg", "dr_BLKpar_mg", "VSM_FAPC_MG_Multicam", "VSM_CarrierRig_Gunner_Multicam", "VSM_LBT6094_MG_Multicam", "VSM_RAV_MG_Multicam", "VSM_FAPC_MG_MulticamTropic", "VSM_CarrierRig_Gunner_multicamTropic", "VSM_LBT6094_MG_multicamTropic", "VSM_RAV_MG_MulticamTropic", "VSM_FAPC_MG_OCP", "VSM_CarrierRig_Gunner_OCP", "VSM_LBT6094_MG_OCP", "VSM_RAV_MG_OCP", "VSM_FAPC_MG_OGA", "VSM_CarrierRig_Gunner_OGA", "VSM_LBT6094_MG_OGA", "VSM_FAPC_MG_OGA_OD", "VSM_CarrierRig_Gunner_OGA_OD", "VSM_LBT6094_MG_OGA_OD", "VSM_RAV_MG_OGA_OD", "VSM_RAV_MG_OGA", "VSM_FAPC_MG_ProjectHonor", "VSM_CarrierRig_Gunner_ProjectHonor", "VSM_LBT6094_MG_ProjectHonor", "VSM_RAV_MG_ProjectHonor", "V_PlateCarrierSpec_tna_F"];

private _vest_sl = ["lbt_operator_aor1", "lbt_operator_aor2", "lbt_operator_coy", "lbt_operator_mc", "lbt_operator_od", "dr_Alpinefacp_op", "CarrierRig_Operator_Alpine", "dr_Alpinelbt_op", "dr_Alpinepar_op", "VSM_FAPC_Operator_AOR1", "VSM_CarrierRig_Operator_AOR1", "VSM_LBT6094_operator_AOR1", "VSM_RAV_operator_AOR1", "dr_AOR2facp_op", "CarrierRig_Operator_AOR2", "dr_AOR2lbt_op", "dr_AOR2par_op", "DTSfacp_op", "CarrierRig_Operator_DTS", "DTSlbt_op", "DTSpar_op", "VSM_FAPC_Operator_M81", "VSM_CarrierRig_Operator_M81", "VSM_LBT6094_operator_M81", "VSM_RAV_operator_M81", "dr_ARDfacp_op", "CarrierRig_Operator_Arid", "dr_ARDlbt_op", "dr_ARDpar_op", "dr_BLKfacp_op", "dr_BLKlbt_op", "dr_BLKpar_op", "VSM_FAPC_Operator_Multicam", "VSM_CarrierRig_Operator_Multicam", "VSM_LBT6094_operator_Multicam", "VSM_RAV_operator_Multicam", "VSM_FAPC_Operator_MulticamTropic", "VSM_CarrierRig_Operator_multicamTropic", "VSM_LBT6094_operator_multicamTropic", "VSM_RAV_operator_MulticamTropic", "VSM_FAPC_Operator_OCP", "VSM_CarrierRig_Operator_OCP", "VSM_LBT6094_operator_OCP", "VSM_RAV_operator_OCP", "VSM_FAPC_Operator_OGA", "VSM_CarrierRig_Operator_OGA", "VSM_LBT6094_operator_OGA", "VSM_FAPC_Operator_OGA_OD", "VSM_CarrierRig_Operator_OGA_OD", "VSM_LBT6094_operator_OGA_OD", "VSM_RAV_operator_OGA_OD", "VSM_RAV_operator_OGA", "VSM_FAPC_Operator_ProjectHonor", "VSM_CarrierRig_Operator_ProjectHonor", "VSM_LBT6094_operator_ProjectHonor", "VSM_RAV_operator_ProjectHonor", "cpc_communications_coy", "cpc_communicationsbelt_coy", "cpc_communications_mc", "cpc_communicationsbelt_mc", "cpc_communications_rngr", "cpc_communicationsbelt_rngr", "lbt_comms_aor1", "lbt_comms_aor2", "lbt_comms_coy", "lbt_comms_mc", "lbt_comms_od", "V_PlateCarrier1_tna_F", "V_PlateCarrier2_tna_F"];

private _vest_ftl = ["lbt_operator_aor1", "lbt_operator_aor2", "lbt_operator_coy", "lbt_operator_mc", "lbt_operator_od", "dr_Alpinefacp_op", "CarrierRig_Operator_Alpine", "dr_Alpinelbt_op", "dr_Alpinepar_op", "VSM_FAPC_Operator_AOR1", "VSM_CarrierRig_Operator_AOR1", "VSM_LBT6094_operator_AOR1", "VSM_RAV_operator_AOR1", "dr_AOR2facp_op", "CarrierRig_Operator_AOR2", "dr_AOR2lbt_op", "dr_AOR2par_op", "DTSfacp_op", "CarrierRig_Operator_DTS", "DTSlbt_op", "DTSpar_op", "VSM_FAPC_Operator_M81", "VSM_CarrierRig_Operator_M81", "VSM_LBT6094_operator_M81", "VSM_RAV_operator_M81", "dr_ARDfacp_op", "CarrierRig_Operator_Arid", "dr_ARDlbt_op", "dr_ARDpar_op", "dr_BLKfacp_op", "dr_BLKlbt_op", "dr_BLKpar_op", "VSM_FAPC_Operator_Multicam", "VSM_CarrierRig_Operator_Multicam", "VSM_LBT6094_operator_Multicam", "VSM_RAV_operator_Multicam", "VSM_FAPC_Operator_MulticamTropic", "VSM_CarrierRig_Operator_multicamTropic", "VSM_LBT6094_operator_multicamTropic", "VSM_RAV_operator_MulticamTropic", "VSM_FAPC_Operator_OCP", "VSM_CarrierRig_Operator_OCP", "VSM_LBT6094_operator_OCP", "VSM_RAV_operator_OCP", "VSM_FAPC_Operator_OGA", "VSM_CarrierRig_Operator_OGA", "VSM_LBT6094_operator_OGA", "VSM_FAPC_Operator_OGA_OD", "VSM_CarrierRig_Operator_OGA_OD", "VSM_LBT6094_operator_OGA_OD", "VSM_RAV_operator_OGA_OD", "VSM_RAV_operator_OGA", "VSM_FAPC_Operator_ProjectHonor", "VSM_CarrierRig_Operator_ProjectHonor", "VSM_LBT6094_operator_ProjectHonor", "VSM_RAV_operator_ProjectHonor", "cpc_tl_coy", "cpc_tlbelt_coy", "cpc_tl_mc", "cpc_tlbelt_mc", "cpc_tl_rngr", "cpc_tlbelt_rngr", "lbt_tl_aor1", "lbt_tl_aor2", "lbt_tl_coy", "lbt_tl_mc", "lbt_tl_od", "V_PlateCarrier1_tna_F", "V_PlateCarrier2_tna_F"];

private _vest_medic = ["dr_Alpinelbt_op", "VSM_LBT6094_operator_AOR1", "dr_AOR2lbt_op", "DTSlbt_op", "VSM_LBT6094_operator_M81", "dr_ARDlbt_op", "dr_BLKlbt_op", "VSM_LBT6094_operator_Multicam", "VSM_LBT6094_operator_multicamTropic", "VSM_LBT6094_operator_OCP", "VSM_LBT6094_operator_OGA", "VSM_LBT6094_operator_OGA_OD", "VSM_LBT6094_operator_ProjectHonor", "dr_Alpinepar_op", "VSM_RAV_operator_AOR1", "dr_AOR2par_op", "DTSpar_op", "VSM_RAV_operator_M81", "dr_ARDpar_op", "dr_BLKpar_op", "VSM_RAV_operator_Multicam", "VSM_RAV_operator_MulticamTropic", "VSM_RAV_operator_OCP", "VSM_RAV_operator_OGA_OD", "VSM_RAV_operator_OGA", "VSM_RAV_operator_ProjectHonor", "V_TacVestIR_blk", "cpc_medical_coy", "cpc_medicalbelt_coy", "cpc_medical_mc", "cpc_medicalbelt_mc", "cpc_medical_rngr", "cpc_medicalbelt_rngr", "lbt_medical_aor1", "lbt_medical_aor2", "lbt_medical_coy", "lbt_medical_mc", "lbt_medical_od", "V_PlateCarrier1_tna_F", "V_PlateCarrier2_tna_F"];

private _vest_explosive = ["dr_Alpinefacp_br", "CarrierRig_Breacher_Alpine", "dr_Alpinelbt_br", "dr_Alpinepar_br", "VSM_FAPC_Breacher_AOR1", "VSM_CarrierRig_Breacher_AOR1", "VSM_LBT6094_breacher_AOR1", "VSM_RAV_Breacher_AOR1", "dr_AOR2facp_br", "CarrierRig_Breacher_AOR2", "dr_AOR2lbt_br", "dr_AOR2par_br", "DTSfacp_br", "CarrierRig_Breacher_DTS", "DTSlbt_br", "DTSpar_br", "VSM_FAPC_Breacher_M81", "VSM_CarrierRig_Breacher_M81", "VSM_LBT6094_breacher_M81", "VSM_RAV_Breacher_M81", "dr_ARDfacp_br", "CarrierRig_Breacher_Arid", "dr_ARDlbt_br", "dr_ARDpar_br", "dr_BLKfacp_br", "dr_BLKlbt_br", "dr_BLKpar_br", "VSM_FAPC_Breacher_Multicam", "VSM_CarrierRig_Breacher_Multicam", "VSM_LBT6094_breacher_Multicam", "VSM_RAV_Breacher_Multicam", "VSM_FAPC_Breacher_MulticamTropic", "VSM_CarrierRig_Breacher_multicamTropic", "VSM_LBT6094_breacher_multicamTropic", "VSM_RAV_Breacher_MulticamTropic", "VSM_FAPC_Breacher_OCP", "VSM_CarrierRig_Breacher_OCP", "VSM_LBT6094_breacher_OCP", "VSM_RAV_Breacher_OCP", "VSM_FAPC_Breacher_OGA", "VSM_CarrierRig_Breacher_OGA", "VSM_LBT6094_breacher_OGA", "VSM_FAPC_Breacher_OGA_OD", "VSM_CarrierRig_Breacher_OGA_OD", "VSM_LBT6094_breacher_OGA_OD", "VSM_RAV_Breacher_OGA_OD", "VSM_RAV_Breacher_OGA", "VSM_FAPC_Breacher_ProjectHonor", "VSM_CarrierRig_Breacher_ProjectHonor", "VSM_LBT6094_breacher_ProjectHonor", "VSM_RAV_Breacher_ProjectHonor", "V_PlateCarrierGL_tna_F", "V_PlateCarrierGL_mtp", "V_PlateCarrierGL_blk", "V_PlateCarrierGL_wdl", "V_PlateCarrierGL_rgr"];

// --------------------------------------------------

private _backpack_small = ["Alpine_Backpack_Compact", "VSM_AOR1_Backpack_Compact", "AOR2_Backpack_Compact", "DTS_Backpack_Compact", "VSM_M81_Backpack_Compact", "Arid_Backpack_Compact", "Black_Backpack_Compact", "VSM_Multicam_Backpack_Compact", "VSM_MulticamTropic_Backpack_Compact", "VSM_OCP_Backpack_Compact", "VSM_OGA_Backpack_Compact", "VSM_OGA_OD_Backpack_Compact", "VSM_ProjectHonor_Backpack_Compact"];

private _backpack_middle = ["Alpine_Backpack_kitbag", "VSM_AOR1_Backpack_Kitbag", "AOR2_Backpack_kitbag", "DTS_Backpack_kitbag", "VSM_M81_Backpack_Kitbag", "Arid_Backpack_kitbag", "Black_Backpack_kitbag", "VSM_Multicam_Backpack_Kitbag", "VSM_MulticamTropic_Backpack_Kitbag", "VSM_OCP_Backpack_Kitbag", "VSM_OGA_Backpack_Kitbag", "VSM_OGA_OD_Backpack_Kitbag", "VSM_ProjectHonor_Backpack_Kitbag"];

private _backpack_big = ["Alpine_Carryall", "VSM_AOR1_carryall", "AOR2_Carryall", "DTS_Carryall", "VSM_M81_carryall", "Arid_Carryall", "Black_Carryall", "VSM_Multicam_carryall", "VSM_MulticamTropic_carryall", "VSM_OCP_carryall", "VSM_OGA_carryall", "VSM_OGA_OD_carryall", "VSM_ProjectHonor_carryall"];

private _backpack_medic = ["GTO_Carryall_Medic_multicam_tropic", "GTO_Carryall_Medic_projecthonor", "GTO_Carryall_Medic_oga_od", "GTO_Carryall_Medic_oga", "GTO_Carryall_Medic_ocp", "GTO_Carryall_Medic_multicam", "GTO_Carryall_Medic_m81", "GTO_Carryall_Medic_dts", "GTO_Carryall_Medic_multicam_black", "GTO_Carryall_Medic_multicam_arid", "GTO_Carryall_Medic_aor2", "GTO_Carryall_Medic_aor1", "GTO_Carryall_Medic_alpine"];

private _backpack_radio = ["TFAR_anarc164","TFAR_anarc210","TFAR_anprc155","TFAR_anprc155_coyote","TFAR_rt1523g","TFAR_rt1523g_big","TFAR_rt1523g_big_bwmod","TFAR_rt1523g_big_bwmod_tropen","TFAR_rt1523g_big_rhs","TFAR_rt1523g_black","TFAR_rt1523g_bwmod","TFAR_rt1523g_fabric","TFAR_rt1523g_green","TFAR_rt1523g_rhs","TFAR_rt1523g_sage","TFAR_bussole","B_RadioBag_01_black_F","B_RadioBag_01_digi_F","B_RadioBag_01_eaf_F","B_RadioBag_01_ghex_F","B_RadioBag_01_hex_F","B_RadioBag_01_mtp_F","B_RadioBag_01_tropic_F","B_RadioBag_01_oucamo_F","B_RadioBag_01_wdl_F","tfw_ilbe_blade_alpine","tfw_ilbe_blade_arid","tfw_ilbe_blade_black","tfw_ilbe_blade_mc","tfw_ilbe_blade_gr","tfw_ilbe_blade_ocp","tfw_ilbe_DD_alpine","tfw_ilbe_DD_arid","tfw_ilbe_DD_black","tfw_ilbe_DD_gr","tfw_ilbe_DD_mc","tfw_ilbe_DD_ocp","tfw_ilbe_blade_wd2","tfw_ilbe_blade_mct","tfw_ilbe_DD_mct","tfw_ilbe_DD_wd2","tfw_ilbe_whip_alpine","tfw_ilbe_whip_arid","tfw_ilbe_whip_black","tfw_ilbe_whip_gr","tfw_ilbe_whip_mct","tfw_ilbe_whip_mc","tfw_ilbe_whip_ocp","tfw_ilbe_whip_wd2","tfw_rf3080Item","tfw_blade","tfw_whip","tfw_dd"];

// --------------------------------------------------

private _googles = ["VSM_balaclava_Black_Skull", "VSM_balaclava_Black", "VSM_balaclava_olive_Skull", "VSM_balaclava_olive", "VSM_balaclava_TAN_Skull", "VSM_balaclava_tan", "VSM_Balaclava_black_glasses", "VSM_Balaclava_OD_glasses", "VSM_Balaclava_tan_glasses", "VSM_Balaclava_black_Goggles", "VSM_Balaclava_OD_Goggles", "VSM_Balaclava_tan_Goggles", "VSM_Balaclava_black_Peltor", "VSM_Balaclava_OD_Peltor", "VSM_Balaclava_tan_Peltor", "VSM_Balaclava_black_Peltor_glasses", "VSM_Balaclava_OD_Peltor_glasses", "VSM_Balaclava_tan_Peltor_glasses", "VSM_Balaclava_black_Peltor_Goggles", "VSM_Balaclava_OD_Peltor_Goggles", "VSM_Balaclava_tan_Peltor_Goggles", "VSM_balaclava2_Black", "VSM_Balaclava2_black_glasses", "VSM_Balaclava2_OD_glasses", "VSM_Balaclava2_tan_glasses", "VSM_Balaclava2_black_Goggles", "VSM_Balaclava2_OD_Goggles", "VSM_Balaclava2_tan_Goggles", "VSM_Balaclava2_black_Peltor", "VSM_Balaclava2_OD_Peltor", "VSM_Balaclava2_tan_Peltor", "VSM_Balaclava2_black_Peltor_glasses", "VSM_Balaclava2_OD_Peltor_glasses", "VSM_Balaclava2_tan_Peltor_glasses", "VSM_Balaclava2_black_Peltor_Goggles", "VSM_Balaclava2_OD_Peltor_Goggles", "VSM_Balaclava2_tan_Peltor_Goggles", "VSM_beard_hair", "VSM_beard_2", "VSM_beard_2_hair", "VSM_beard_3", "VSM_beard_3_hair", "VSM_FaceMask_black", "VSM_FaceMask_Ghost", "VSM_FaceMask_Ghost_olive", "VSM_FaceMask_Ghost_tan", "VSM_FaceMask_olive", "VSM_FaceMask_tan", "VSM_Facemask_black_glasses", "VSM_Facemask_OD_glasses", "VSM_Facemask_tan_glasses", "VSM_Facemask_black_Goggles", "VSM_Facemask_OD_Goggles", "VSM_Facemask_tan_Goggles", "VSM_Facemask_black_Peltor", "VSM_Facemask_OD_Peltor", "VSM_Facemask_tan_Peltor", "VSM_Facemask_black_Peltor_glasses", "VSM_Facemask_OD_Peltor_glasses", "VSM_Facemask_tan_Peltor_glasses", "VSM_Facemask_black_Peltor_Goggles", "VSM_Facemask_OD_Peltor_Goggles", "VSM_Facemask_tan_Peltor_Goggles", "VSM_Goggles", "VSM_Peltor_AOR1_glasses", "VSM_Peltor_coyote_glasses", "VSM_Peltor_m81_glasses", "VSM_Peltor_OCP_glasses", "VSM_Peltor_OD_glasses", "VSM_Shemagh_OD", "VSM_Shemagh_tan", "VSM_Shemagh_Balaclava_OD", "VSM_Shemagh_Balaclava_tan", "VSM_Shemagh_Balaclava_OD_Glasses", "VSM_Shemagh_Balaclava_tan_Glasses", "VSM_Shemagh_Balaclava_OD_Goggles", "VSM_Shemagh_Balaclava_tan_Goggles", "VSM_Shemagh_Balaclava_OD_Peltor", "VSM_Shemagh_Balaclava_tan_Peltor", "VSM_Shemagh_Balaclava_OD_Peltor_Glasses", "VSM_Shemagh_Balaclava_tan_Peltor_Glasses", "VSM_Shemagh_Balaclava_OD_Peltor_Goggles", "VSM_Shemagh_Balaclava_tan_Peltor_Goggles", "VSM_Shemagh_Balaclava2_OD", "VSM_Shemagh_Balaclava2_tan", "VSM_Shemagh_Balaclava2_OD_Glasses", "VSM_Shemagh_Balaclava2_tan_Glasses", "VSM_Shemagh_Balaclava2_OD_Goggles", "VSM_Shemagh_Balaclava2_tan_Goggles", "VSM_Shemagh_Balaclava2_OD_Peltor", "VSM_Shemagh_Balaclava2_tan_Peltor", "VSM_Shemagh_Balaclava2_OD_Peltor_Glasses", "VSM_Shemagh_Balaclava2_tan_Peltor_Glasses", "VSM_Shemagh_Balaclava2_OD_Peltor_Goggles", "VSM_Shemagh_Balaclava2_tan_Peltor_Goggles", "VSM_Shemagh_Facemask_OD", "VSM_Shemagh_Facemask_tan", "VSM_Shemagh_Facemask_OD_Glasses", "VSM_Shemagh_Facemask_tan_Glasses", "VSM_Shemagh_Facemask_OD_Goggles", "VSM_Shemagh_Facemask_tan_Goggles", "VSM_Shemagh_Facemask_OD_Peltor", "VSM_Shemagh_Facemask_tan_Peltor", "VSM_Shemagh_Facemask_OD_Peltor_Glasses", "VSM_Shemagh_Facemask_tan_Peltor_Glasses", "VSM_Shemagh_Facemask_OD_Peltor_Goggles", "VSM_Shemagh_Facemask_tan_Peltor_Goggles", "VSM_Shemagh_glasses_OD", "VSM_Shemagh_glasses_tan", "VSM_Shemagh_goggles_od", "VSM_Shemagh_goggles_tan", "VSM_SkiMask_Black", "G_AirPurifyingRespirator_02_black_F", "G_AirPurifyingRespirator_02_olive_F", "G_AirPurifyingRespirator_02_sand_F", "G_AirPurifyingRespirator_01_F", "G_Aviator", "rhs_googles_black", "rhs_googles_clear", "rhs_googles_orange", "rhs_googles_yellow", "rhs_ess_black", "G_Bandanna_aviator", "G_Bandanna_beast", "G_Bandanna_blk", "G_Bandanna_khk", "G_Bandanna_oli", "G_Bandanna_shades", "G_Bandanna_sport", "G_Bandanna_tan", "immersion_cigs_cigar0", "murshun_cigs_cig0", "G_Combat", "G_Combat_Goggles_tna_F", "G_Diving", "G_I_Diving", "G_O_Diving", "G_B_Diving", "G_Lady_Blue", "immersion_pops_pop0", "G_Lowprofile", "None", "G_RegulatorMask_F", "G_EyeProtectors_F", "G_EyeProtectors_Earpiece_F", "G_Shades_Black", "G_Shades_Blue", "G_Shades_Green", "G_Shades_Red", "rhsusf_shemagh_grn", "rhsusf_shemagh2_grn", "rhsusf_shemagh_od", "rhsusf_shemagh2_od", "rhsusf_shemagh_tan", "rhsusf_shemagh2_tan", "rhsusf_shemagh_white", "rhsusf_shemagh2_white", "rhsusf_shemagh_gogg_grn", "rhsusf_shemagh2_gogg_grn", "rhsusf_shemagh_gogg_od", "rhsusf_shemagh2_gogg_od", "rhsusf_shemagh_gogg_tan", "rhsusf_shemagh2_gogg_tan", "rhsusf_shemagh_gogg_white", "rhsusf_shemagh2_gogg_white", "rhsusf_oakley_goggles_blk", "rhsusf_oakley_goggles_clr", "rhsusf_oakley_goggles_ylw", "G_Spectacles", "G_Sport_Red", "G_Sport_Blackyellow", "G_Sport_BlackWhite", "G_Sport_Checkered", "G_Sport_Blackred", "G_Sport_Greenblack", "G_Squares_Tinted", "G_Squares", "G_Balaclava_TI_blk_F", "G_Balaclava_TI_G_blk_F", "G_Balaclava_TI_tna_F", "G_Balaclava_TI_G_tna_F", "G_Tactical_Clear", "G_Tactical_Black", "G_Spectacles_Tinted", "G_Goggles_VR", "G_WirelessEarpiece_F"];

// --------------------------------------------------

private _nvg_main = ["A3_GPNVG18_BLK_F", "A3_GPNVG18_F"];

// --------------------------------------------------

private _binoculars_main = ["Rangefinder", "Binocular"];

private _binoculars_medium = ["Rangefinder", "ACE_VectorDay", "ACE_Vector", "ACE_Yardage450"];

private _binoculars_sniper = ["Rangefinder", "ACE_VectorDay", "ACE_Vector", "ACE_Yardage450", "ACE_MX2A"];

private _binoculars_sl = ["Rangefinder", "ACE_VectorDay", "ACE_Vector", "ACE_Yardage450", "ACE_MX2A", "Laserdesignator", "Laserdesignator_03", "Laserdesignator_01_khk_F", "Laserdesignator_02", "Laserdesignator_02_ghex_F","Laserbatteries"];

// --------------------------------------------------

private _mapCompasRadio = ["ItemMap", "ItemCompass", "TFAR_rf7800str", "ItemWatch", "TFAR_microdagr", "ACE_Altimeter", "ItemGPS"];

private _better_radio = ["TFAR_anprc152"];

// --------------------------------------------------

private _granades = ["ACE_M14", "ACE_Chemlight_HiBlue", "ACE_Chemlight_HiGreen", "ACE_Chemlight_HiRed", "ACE_Chemlight_HiWhite", "ACE_Chemlight_HiYellow", "ACE_Chemlight_UltraHiOrange", "ACE_CTS9", "B_IR_Grenade", "SmokeShellBlue", "SmokeShellGreen", "SmokeShellOrange", "SmokeShellPurple", "SmokeShellRed", "SmokeShellYellow", "HandGrenade", "rhs_mag_m69", "rhs_mag_m7a3_cs", "SmokeShell", "MiniGrenade", "ACE_M84"];

private _flares = ["UGL_FlareGreen_F", "UGL_FlareCIR_F", "UGL_FlareRed_F", "UGL_FlareWhite_F", "UGL_FlareYellow_F", "ACE_40mm_Flare_white", "ACE_40mm_Flare_green", "ACE_40mm_Flare_red", "ACE_40mm_Flare_ir"];

// --------------------------------------------------

private _explosives = ["ACE_Cellphone", "tsp_frameCharge_mag", "APERSMineDispenser_Mag", "tsp_popperCharge_mag", "tsp_popperCharge_auto_mag", "DemoCharge_Remote_Mag", "ATMine_Range_Mag", "SatchelCharge_Remote_Mag", "ClaymoreDirectionalMine_Remote_Mag", "APERSBoundingMine_Range_Mag", "SLAMDirectionalMine_Wire_Mag", "tsp_stickCharge_mag", "tsp_stickCharge_auto_mag", "TrainingMine_Mag", "ACE_FlareTripMine_Mag", "APERSMine_Range_Mag"];

// --------------------------------------------------

private _items_main = ["ACE_CableTie","ACE_Canteen","ACE_EarPlugs","ACE_EntrenchingTool","ACE_Flashlight_MX991","ItemAndroid","WBK_HeadLampItem","ItemcTabHCam","ACE_IR_Strobe_Item","ACE_Flashlight_XL50","ACE_MapTools","ItemMicroDAGR","ACE_microDAGR","ACE_SpareBarrel_Item","ACE_UAVBattery","ACE_WaterBottle","B_Parachute","kat_gasmaskFilter","vtx_stretcher_item"];

private _medic_light = ["ACE_packingBandage","ACE_quikclot","kat_Painkiller","kat_PainkillerItem","ACE_splint","ACE_tourniquet","ACE_plasmaIV","ACE_plasmaIV_250","ACE_plasmaIV_500","ACE_salineIV_500","ACE_salineIV_250","ACE_salineIV"];

private _medic_medium = ["ACE_packingBandage","ACE_quikclot","ACE_splint","ACE_tourniquet","kat_IV_16","ACE_adenosine","kat_AED","ACE_bodyBag","ACE_epinephrine","kat_IO_FAST","ACE_morphine","kat_naloxone","ACE_plasmaIV","ACE_plasmaIV_250","ACE_plasmaIV_500","kat_Pulseoximeter","ACE_salineIV","ACE_salineIV_250","ACE_salineIV_500","kat_stethoscope","kat_TXA","kat_bloodIV_O_N","kat_bloodIV_A_N","kat_bloodIV_AB_N","kat_bloodIV_B_N","ACE_elasticBandage","kat_aatKit","kat_atropine","kat_amiodarone","kat_crossPanel","kat_chestSeal","KAT_Empty_bloodIV_250","KAT_Empty_bloodIV_500","kat_guedel","kat_larynx","kat_lidocaine","kat_phenylephrine","ACE_surgicalKit","kat_Carbonate","kat_CarbonateItem","kat_bloodIV_O_N_250","kat_bloodIV_A_N_250","kat_bloodIV_AB_N_250","kat_bloodIV_B_N_250","kat_bloodIV_O_N_500","kat_bloodIV_A_N_500","kat_bloodIV_AB_N_500","kat_bloodIV_B_N_500","kat_plate","kat_clamp","kat_vacuum","kat_EACA","kat_etomidate","kat_fentanyl","kat_flumazenil","kat_ketamine","kat_lorazepam","kat_nalbuphine","kat_nitroglycerin","kat_norepinephrine","kat_Painkiller","kat_PainkillerItem","kat_retractor","kat_scalpel","kat_CaffeineItem","kat_ncdKit","kat_PervitinItem","kat_sealant"];

private _medic_heavy = ["ACE_packingBandage","ACE_quikclot","ACE_splint","ACE_tourniquet","kat_IV_16","ACE_adenosine","kat_AED","ACE_bodyBag","ACE_epinephrine","kat_IO_FAST","ACE_morphine","kat_naloxone","ACE_plasmaIV","ACE_plasmaIV_250","ACE_plasmaIV_500","kat_Pulseoximeter","ACE_salineIV","ACE_salineIV_250","ACE_salineIV_500","kat_stethoscope","kat_TXA","kat_bloodIV_O_N","kat_bloodIV_A_N","kat_bloodIV_AB_N","kat_bloodIV_B_N","ACE_elasticBandage","kat_accuvac","kat_aatKit","kat_X_AED","kat_atropine","kat_amiodarone","kat_crossPanel","kat_chestSeal","KAT_Empty_bloodIV_250","KAT_Empty_bloodIV_500","kat_guedel","kat_larynx","kat_lidocaine","kat_phenylephrine","ACE_personalAidKit","ACE_surgicalKit","kat_Carbonate","kat_CarbonateItem","kat_bloodIV_O_N_250","kat_bloodIV_A_N_250","kat_bloodIV_AB_N_250","kat_bloodIV_B_N_250","kat_bloodIV_O_N_500","kat_bloodIV_A_N_500","kat_bloodIV_AB_N_500","kat_bloodIV_B_N_500","kat_plate","kat_clamp","kat_vacuum","kat_EACA","kat_etomidate","kat_fentanyl","kat_flumazenil","kat_ketamine","kat_lorazepam","kat_nalbuphine","kat_nitroglycerin","kat_norepinephrine","kat_Painkiller","kat_PainkillerItem","kat_retractor","kat_scalpel","kat_CaffeineItem","kat_ncdKit","kat_PervitinItem","kat_sealant"];

private _items_sniper = ["ACE_ATragMX", "ACE_DAGR", "ACE_Kestrel4500", "ACE_RangeCard", "ACE_SpottingScope", "ACE_Tripod"];

private _items_engi = ["ToolKit"];

private _items_lead = ["ACE_SpraypaintBlack","ACE_SpraypaintBlue","ACE_SpraypaintGreen","ACE_SpraypaintRed"];

private _items_other = ["acex_intelitems_notepad"];

// --------------------------------------------------

private _items = [];

// #################################################################
// LAYOUTS
// Ab hier sind items nur noch für die bestimmten Rollen
// #################################################################

_items append (switch (_role) do
{
	case "sl":
	{
		_gto_main+
		_weapon_medium+
		_ammo_medium+
		["rhs_weap_M320"]+
		_weapon_pistoles+
		_ammo_pistoles+
		_scope_main+
		_railAttachments_main+
		_muzzleAttachments_main+
		_bipod_main+
		_helmet_main+
		_uniform_main+
		_vest_sl+
		_backpack_radio+
		_googles+
		_nvg_main+
		_binoculars_sl+
		_mapCompasRadio+
		_better_radio+
		_granades+
		_flares+
		_items_main+
		_medic_light+
		_items_lead+
		["ACE_HuntIR_M203","ACE_HuntIR_monitor"]+
		["B_UavTerminal", "ItemcTab", "ace_marker_flags_blue"]
	};

	case "ftl":
	{
		_gto_main+
		_weapon_medium+
		_ammo_medium+
		_weapon_pistoles+
		_ammo_pistoles+
		_scope_main+
		_railAttachments_main+
		_muzzleAttachments_main+
		_bipod_main+
		_helmet_main+
		_uniform_main+
		_vest_ftl+
		_backpack_middle+
		_googles+
		_nvg_main+
		_binoculars_main+
		_binoculars_sniper+
		_mapCompasRadio+
		_granades+
		_items_main+
		_medic_light+
		_better_radio+
		_items_lead
	};

	case "doctor":
	{
		_gto_main+
		_weapon_mp+
		_ammo_mp+
		_weapon_medium+
		_ammo_medium+
		_weapon_pistoles+
		_ammo_pistoles+
		_scope_main+
		_railAttachments_main+
		_muzzleAttachments_main+
		_bipod_main+
		_helmet_medic+
		_uniform_main+
		_vest_medic+
		_backpack_medic+
		_googles+
		_nvg_main+
		_binoculars_main+
		_mapCompasRadio+
		_granades+
		_items_main+
		_medic_heavy+
		["ChemicalDetector_01_watch_F"]
	};

	case "medic":
	{
		_gto_main+
		_weapon_medium+
		_ammo_medium+
		_weapon_pistoles+
		_ammo_pistoles+
		_scope_main+
		_railAttachments_main+
		_muzzleAttachments_main+
		_bipod_main+
		_helmet_medic+
		_uniform_main+
		_vest_medic+
		_backpack_medic+
		_googles+
		_nvg_main+
		_binoculars_main+
		_mapCompasRadio+
		_granades+
		_items_main+
		_medic_medium+
		["ChemicalDetector_01_watch_F"]
	};

	case "ammoCarrier":
	{
		_gto_main+
		_weapon_light+
		_ammo_light+
		_weapon_pistoles+
		_ammo_pistoles+
		_scope_main+
		_railAttachments_main+
		_muzzleAttachments_main+
		_bipod_main+
		_helmet_main+
		_uniform_main+
		_vest_heavy+
		_backpack_middle+
		_googles+
		_nvg_main+
		_binoculars_main+
		_mapCompasRadio+
		_granades+
		_items_main+
		_medic_light
	};

	case "lat":
	{
		_gto_main+
		_weapon_light+
		_ammo_light+
		_weapon_pistoles+
		_ammo_pistoles+
		_scope_main+
		_railAttachments_main+
		_muzzleAttachments_main+
		_bipod_main+
		_helmet_main+
		_uniform_main+
		_vest_heavy+
		_backpack_small+
		_googles+
		_nvg_main+
		_binoculars_main+
		_mapCompasRadio+
		_granades+
		_items_main+
		_medic_light+
		["rhs_weap_M136_hp", "rhs_weap_M136_hedp", "rhs_weap_M136", "rhs_weap_m72a7"]
	};

	case "weaponSpecialist":
	{
		_gto_main+
		_weapon_heavy+
		_ammo_heavy+
		_weapon_pistoles+
		_ammo_pistoles+
		_scope_main+
		_railAttachments_main+
		_muzzleAttachments_main+
		_bipod_main+
		_helmet_main+
		_uniform_main+
		_vest_heavy+
		_backpack_small+
		_googles+
		_nvg_main+
		_binoculars_main+
		_mapCompasRadio+
		_granades+
		_items_main+
		_medic_light
	};

	case "mg":
	{
		_gto_main+
		_weapon_mg+
		_ammo_mg+
		_weapon_pistoles+
		_ammo_pistoles+
		_scope_main+
		_railAttachments_main+
		_muzzleAttachments_main+
		_bipod_main+
		_bipod_mg+
		_helmet_main+
		_uniform_main+
		_vest_heavy+
		_backpack_small+
		_googles+
		_nvg_main+
		_binoculars_main+
		_mapCompasRadio+
		_granades+
		_items_main+
		_medic_light
	};

	case "grenadier":
	{
		_gto_main+
		_weapon_grenadier+
		_ammo_grenadier+
		_weapon_pistoles+
		_ammo_pistoles+
		_scope_main+
		_railAttachments_main+
		_muzzleAttachments_main+
		_bipod_main+
		_helmet_main+
		_uniform_main+
		_vest_heavy+
		_backpack_small+
		_googles+
		_nvg_main+
		_binoculars_main+
		_mapCompasRadio+
		_granades+
		_items_main+
		_medic_light
	};

	case "hat":
	{
		_gto_main+
		_weapon_medium+
		_ammo_medium+
		_weapon_pistoles+
		_ammo_pistoles+
		_HAT_Pack+
		_scope_main+
		_railAttachments_main+
		_muzzleAttachments_main+
		_bipod_main+
		_helmet_main+
		_uniform_main+
		_vest_heavy+
		_backpack_middle+
		_googles+
		_nvg_main+
		_binoculars_main+
		_mapCompasRadio+
		_granades+
		_items_main+
		_medic_light
	};

	case "marksman":
	{
		_gto_main+
		_weapon_dmr+
		_ammo_dmr+
		_weapon_pistoles+
		_ammo_pistoles+
		_scope_sniper+
		_railAttachments_main+
		_muzzleAttachments_main+
		_bipod_mg+
		_helmet_main+
		_uniform_main+
		_vest_light+
		_backpack_small+
		_googles+
		_nvg_main+
		_binoculars_sniper+
		_mapCompasRadio+
		_granades+
		_items_main+
		_medic_light+
		_better_radio
	};

	case "sniper":
	{
		_gto_main+
		_weapon_sniper+
		_ammo_sniper+
		_weapon_pistoles+
		_ammo_pistoles+
		_scope_sniper+
		_railAttachments_main+
		_muzzleAttachments_main+
		_bipod_sniper+
		_helmet_main+
		_helmet_sniper+
		_uniform_main+
		_vest_light+
		_backpack_small+
		_googles+
		_nvg_main+
		_binoculars_sniper+
		_mapCompasRadio+
		_granades+
		_items_main+
		_medic_light+
		_items_sniper+
		_better_radio
	};

	case "spotter":
	{
		_gto_main+
		_weapon_medium+
		_ammo_medium+
		_weapon_pistoles+
		_ammo_pistoles+
		_scope_main+
		_scope_sniper+
		_railAttachments_main+
		_muzzleAttachments_main+
		_bipod_main+
		_helmet_main+
		_helmet_sniper+
		_uniform_main+
		_vest_medium+
		_backpack_small+
		_googles+
		_nvg_main+
		_binoculars_main+
		_binoculars_sniper+
		_mapCompasRadio+
		_granades+
		_items_main+
		_medic_light+
		_items_sniper+
		_better_radio
	};

	case "sapper":
	{
		_gto_main+
		_weapon_medium+
		_ammo_medium+
		_weapon_pistoles+
		_ammo_pistoles+
		_weapon_sapper+
		_ammo_sapper+
		_scope_main+
		_railAttachments_main+
		_muzzleAttachments_main+
		_bipod_main+
		_helmet_main+
		_uniform_main+
		_vest_explosive+
		_backpack_middle+
		_googles+
		_nvg_main+
		_binoculars_main+
		_mapCompasRadio+
		_granades+
		_explosives+
		_items_main+
		_medic_light+
		["ACE_wirecutter","ACE_DefusalKit","ACE_M26_Clacker","ACE_Clacker","MineDetector","ACE_DeadManSwitch","tsp_lockpick","ACE_SpraypaintRed","ACE_Cellphone","ZDZ_EOD_Kit","ZDZ_BombBook_EOD_1","ZDZ_Tool_DSnips","ChemicalDetector_01_watch_F","ZDZ_IMS_1"]
	};

	case "pionier":
	{
		_gto_main+
		_weapon_medium+
		_ammo_medium+
		_weapon_pistoles+
		_ammo_pistoles+
		_scope_main+
		_railAttachments_main+
		_muzzleAttachments_main+
		_bipod_main+
		_helmet_main+
		_uniform_main+
		_vest_light+
		_backpack_small+
		_googles+
		_nvg_main+
		_binoculars_main+
		_mapCompasRadio+
		_granades+
		_items_main+
		_medic_light+
		["ACE_Fortify", "ACE_wirecutter", "ACE_Sandbag_empty"]
	};

	case "enginier":
	{
		_gto_main+
		_weapon_medium+
		_ammo_medium+
		_weapon_pistoles+
		_ammo_pistoles+
		_scope_main+
		_railAttachments_main+
		_muzzleAttachments_main+
		_bipod_main+
		_helmet_main+
		_uniform_main+
		_vest_light+
		_backpack_small+
		_googles+
		_nvg_main+
		_binoculars_main+
		_mapCompasRadio+
		_granades+
		_items_main+
		_medic_light+
		_items_engi
	};

	case "jtac":
	{
		_gto_main+
		_weapon_mp+
		_ammo_mp+
		["rhs_weap_M320"]+
		_weapon_medium+
		_ammo_medium+
		_weapon_pistoles+
		_ammo_pistoles+
		_scope_main+
		_railAttachments_main+
		_muzzleAttachments_main+
		_bipod_main+
		_helmet_main+
		_uniform_main+
		_vest_sl+
		_backpack_radio+
		_googles+
		_nvg_main+
		_binoculars_sl+
		_mapCompasRadio+
		_better_radio+
		_granades+
		_flares+
		_items_main+
		_medic_light+
		["B_UavTerminal", "ItemcTab", "1Rnd_SmokeBlue_Grenade_shell", "1Rnd_SmokeGreen_Grenade_shell", "1Rnd_SmokeOrange_Grenade_shell", "1Rnd_SmokePurple_Grenade_shell", "1Rnd_SmokeRed_Grenade_shell", "1Rnd_Smoke_Grenade_shell", "1Rnd_SmokeYellow_Grenade_shell"]+
		["KNB_PanelGreen","KNB_PanelRed","KNB_PanelYellow"]
	};

	case "pilot":
	{
		_gto_main+
		_weapon_mp+
		_ammo_mp+
		_weapon_medium+
		_ammo_medium+
		_weapon_pistoles+
		_ammo_pistoles+
		_scope_main+
		_railAttachments_main+
		_muzzleAttachments_main+
		       // _helmet_main+
		_vest_sl+
		       // _backpack_small+
		_googles+
		_nvg_main+
		_binoculars_medium+
		_mapCompasRadio+
		_better_radio+
		_granades+
		_items_main+
		_medic_light+
		_items_engi+
		["H_PilotHelmetHeli_I", "H_PilotHelmetHeli_O", "H_PilotHelmetHeli_I_E", "H_PilotHelmetHeli_B", "RHS_jetpilot_usaf", "H_PilotHelmetFighter_I", "H_PilotHelmetFighter_O", "H_PilotHelmetFighter_I_E", "H_PilotHelmetFighter_B", "rhsusf_hgu56p_black", "rhsusf_hgu56p_mask_black", "rhsusf_hgu56p_mask_black_skull", "rhsusf_hgu56p_visor_black", "rhsusf_hgu56p_visor_mask_black", "rhsusf_hgu56p_visor_mask_Empire_black", "rhsusf_hgu56p_visor_mask_black_skull", "rhsusf_hgu56p_green", "rhsusf_hgu56p_mask_green", "rhsusf_hgu56p_visor_green", "rhsusf_hgu56p_visor_mask_green", "rhsusf_hgu56p_visor_mask_green_mo", "rhsusf_hgu56p", "rhsusf_hgu56p_mask", "rhsusf_hgu56p_mask_skull", "rhsusf_hgu56p_visor", "rhsusf_hgu56p_visor_mask", "rhsusf_hgu56p_visor_mask_mo", "rhsusf_hgu56p_visor_mask_skull", "rhsusf_hgu56p_saf", "rhsusf_hgu56p_mask_saf", "rhsusf_hgu56p_visor_saf", "rhsusf_hgu56p_visor_mask_saf", "rhsusf_hgu56p_tan", "rhsusf_hgu56p_mask_tan", "rhsusf_hgu56p_visor_tan", "rhsusf_hgu56p_visor_mask_tan", "rhsusf_hgu56p_white", "rhsusf_hgu56p_visor_white", "U_I_HeliPilotCoveralls", "U_I_E_Uniform_01_coveralls_F", "U_B_HeliPilotCoveralls", "U_I_pilotCoveralls", "U_O_PilotCoveralls", "U_B_PilotCoveralls"]
	};

	case "crewman":
	{
		_gto_main+
		_weapon_mp+
		_ammo_mp+
		_weapon_medium+
		_ammo_medium+
		_weapon_pistoles+
		_ammo_pistoles+
		_scope_main+
		_railAttachments_main+
		_muzzleAttachments_main+
		       // _helmet_main+
		_uniform_main+
		_vest_light+
		_backpack_small+
		_googles+
		_nvg_main+
		_binoculars_medium+
		_mapCompasRadio+
		_better_radio+
		_granades+
		_items_main+
		_medic_light+
		_items_engi+
		["rhs_gssh18", "rhs_6m2", "rhs_6m2_1", "rhsusf_cvc_green_helmet", "rhsusf_cvc_green_alt_helmet", "rhsusf_cvc_green_ess", "rhsusf_cvc_helmet", "rhsusf_cvc_alt_helmet", "rhsusf_cvc_ess"]
	};

	case "zeus":{
		_gto_main+
		_googles+
		_nvg_main+
		_binoculars_main+
		_mapCompasRadio+
		["rhs_weap_SCARH_USA_CQC", "VSM_MBSS_PACA_WTF", "VSM_MBSS_WTF", "TFAR_mr6000l", "TFAR_anprc152", "H_Construction_headset_white_F", "H_Construction_earprot_white_F", "H_Construction_basic_white_F", "H_Construction_headset_vrana_F", "H_Construction_earprot_vrana_F", "H_Construction_basic_vrana_F"]
	};

	case "admin": {
		_gto_main+
		_weapon_medium+
		_ammo_medium+
		_weapon_pistoles+
		_ammo_pistoles+
		_weapon_mp+
		_ammo_mp+
		_weapon_heavy+
		_ammo_heavy+
		_weapon_dmr+
		_ammo_dmr+
		_weapon_sniper+
		_ammo_sniper+
		_weapon_grenadier+
		_ammo_grenadier+
		_weapon_sapper+
		_ammo_sapper+
		_weapon_mg+
		_ammo_mg+
		_HAT_Pack+
		_scope_main+
		_scope_sniper+
		_railAttachments_main+
		_muzzleAttachments_main+
		_bipod_main+
		_bipod_mg+
		_bipod_sniper+
		_helmet_main+
		_uniform_main+
		_vest_main+
		_vest_light+
		_vest_heavy+
		_vest_sl+
		_vest_ftl+
		_vest_medic+
		_vest_explosive+
		_backpack_small+
		_backpack_middle+
		_backpack_big+
		_backpack_radio+
		_googles+
		_nvg_main+
		_binoculars_main+
		_mapCompasRadio+
		_better_radio+
		_granades+
		_explosives+
		_items_main+
		_medic_light+
		_medic_medium+
		_medic_heavy+
		_items_sniper+
		_items_engi+
		_items_lead+
		["Rangefinder", "ACE_VectorDay", "ACE_Vector"]+
		["rhs_weap_M320", "ACE_HuntIR_M203", "Laserdesignator", "Laserdesignator_03", "Laserdesignator_01_khk_F", "Laserdesignator_02", "Laserdesignator_02_ghex_F", "B_UavTerminal", "ACE_HuntIR_monitor", "ItemcTab"]+
		["ACE_wirecutter","ACE_DefusalKit","ACE_M26_Clacker","ACE_Clacker","MineDetector","ACE_DeadManSwitch","tsp_lockpick","ACE_SpraypaintRed","ACE_Cellphone","ZDZ_EOD_Kit","ZDZ_BombBook_EOD_1","ZDZ_Tool_DSnips","ChemicalDetector_01_watch_F","ZDZ_IMS_1"]+
		["ACE_Fortify", "ACE_wirecutter", "ACE_Sandbag_empty"]+
		["GTO_ILBE_Medic_alpine","GTO_ILBE_Medic_black","GTO_ILBE_Medic_multicam","GTO_ILBE_Medic_arid"]
	};

	default {
		hint "Schwerer Fehler #100"
	};
});

_items arrayIntersect _items