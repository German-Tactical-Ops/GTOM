scriptName "fn_loadDefault";
/*
	Author: LucyferHW
	
	Description:
	Describe your function
*/
params ["_arsenalType", "_role"];

if (_arsenalType == "USA") exitWith {
	private _layout = switch (_role) do
	{
		case "sl": {
			[["rhs_weap_m4a1_carryhandle","","rhsusf_acc_anpeq15_bk_light","rhsusf_acc_ACOG_RMR",["rhs_mag_30Rnd_556x45_M855A1_PMAG_Tracer_Red",30],[],"rhsusf_acc_kac_grip"],[],["rhs_weap_M320","","","",["ACE_HuntIR_M203",1],[],""],["VSM_Multicam_Crye_Camo",[["ACE_EarPlugs",1],["ACE_IR_Strobe_Item",1],["ACE_CableTie",3],["ItemAndroid",1],["ACE_MapTools",1],["ace_marker_flags_blue",1],["ACE_packingBandage",25],["ACE_tourniquet",4],["ACE_splint",1],["A3_GPNVG18b_F",1],["GTO_Beret_Red",1],["rhsusf_acc_rotex5_grey",1],["kat_Painkiller",1,10]]],["lbt_comms_mc",[["ACE_EntrenchingTool",1],["WBK_HeadLampItem",1],["ACE_HuntIR_monitor",1],["ItemcTab",1],["ItemcTabHCam",1],["SmokeShellBlue",1,1],["SmokeShell",2,1],["UGL_FlareRed_F",1,1],["B_IR_Grenade",1,1],["ACE_HuntIR_M203",4,1]]],["TFAR_rt1523g_big_rhs",[["rhs_mag_30Rnd_556x45_M855A1_PMAG_Tracer_Red",8,30]]],"VSM_OPS_2_multicam","",["Laserdesignator","","","",[],[],""],["ItemMap","ItemGPS","TFAR_anprc152_8","ItemCompass","ItemWatch",""]]
		};
		case "ftl": {
			[[], [], [], ["GTO_BaseUniform", []], [], [], "GTO_Beret_Black", "", ["", "", "", "", [], [], ""], ["ItemMap", "ItemGPS", "TFAR_rf7800str", "ItemCompass", "TFAR_microdagr", ""]]
		};
		case "doctor": {
			[[], [], [], ["GTO_BaseUniform", []], [], [], "GTO_Beret_Black", "", ["", "", "", "", [], [], ""], ["ItemMap", "ItemGPS", "TFAR_rf7800str", "ItemCompass", "TFAR_microdagr", ""]]
		};
		case "medic": {
			[["arifle_SPAR_01_blk_F","","","rhsusf_acc_su230",["rhs_mag_30Rnd_556x45_M855A1_Stanag",30],[],""],[],[],["VSM_Multicam_Crye_Camo",[["ACE_CableTie",1],["ACE_EarPlugs",1],["ACE_EntrenchingTool",1],["ItemAndroid",1],["ItemMicroDAGR",1],["ACE_Flashlight_XL50",1],["ACE_IR_Strobe_Item",1],["ItemcTabHCam",1],["WBK_HeadLampItem",1],["ACE_packingBandage",20],["ACE_tourniquet",4],["ACE_splint",2]]],["VSM_RAV_operator_Multicam",[["kat_AED",1],["kat_stethoscope",1],["rhs_mag_30Rnd_556x45_M855A1_PMAG_Tracer_Red",10,30],["SmokeShell",2,1]]],["GTO_Carryall_Medic_multicam",[["kat_IV_16",10],["kat_aatKit",2],["ACE_adenosine",5],["ACE_quikclot",20],["ACE_packingBandage",30],["kat_chestSeal",5],["kat_EACA",5],["ACE_epinephrine",5],["kat_IO_FAST",10],["kat_guedel",20],["ACE_plasmaIV",10],["ACE_plasmaIV_500",12],["kat_Pulseoximeter",10],["ACE_salineIV_250",2],["ACE_splint",8],["ACE_tourniquet",10],["kat_TXA",5]]],"GTO_HelmetSpec_Medic_Black","",[],["ItemMap","ItemGPS","TFAR_rf7800str","ItemCompass","TFAR_microdagr",""]]
		};
		case "ammoCarrier": {
			[["rhs_weap_m16a4","","","rhsusf_acc_ACOG_RMR",["rhs_mag_30Rnd_556x45_M855A1_PMAG_Tracer_Red",30],[],"rhsusf_acc_grip1"],[],["rhsusf_weap_glock17g4","","","",["rhsusf_mag_17Rnd_9x19_JHP",17],[],""],["VSM_Multicam_Crye_Camo",[["ACE_CableTie",1],["ACE_EarPlugs",1],["ItemAndroid",1],["WBK_HeadLampItem",1],["ItemcTabHCam",1],["ACE_IR_Strobe_Item",1],["ACE_Flashlight_XL50",1],["ACE_packingBandage",20],["ACE_splint",1],["ACE_tourniquet",4],["ACE_EntrenchingTool",1],["kat_Painkiller",1,10],["rhsusf_mag_17Rnd_9x19_JHP",2,17]]],["VSM_FAPC_MG_Multicam",[["rhs_mag_30Rnd_556x45_M855A1_PMAG_Tracer_Red",10,30],["HandGrenade",1,1],["SmokeShell",1,1]]],["VSM_Multicam_Backpack_Kitbag",[["rhs_mag_30Rnd_556x45_M855A1_PMAG_Tracer_Red",10,30],["SmokeShell",5,1],["HandGrenade",5,1]]],"VSM_OPS_multicam","",["Rangefinder","","","",[],[],""],["ItemMap","ItemGPS","TFAR_rf7800str","ItemCompass","TFAR_microdagr","A3_GPNVG18_F"]]
		};
		case "weaponSpecialist": {
			[["rhs_weap_mk17_STD","","rhsusf_acc_anpeq15side","rhsusf_acc_su230a_mrds_c_3d",["rhs_mag_20Rnd_SCAR_762x51_m62_tracer",20],[],"rhsusf_acc_tdstubby_tan"],[],["hgun_P07_blk_F","","","",["16Rnd_9x21_Mag",17],[],""],["VSM_Multicam_Crye_SS_Camo",[["ACE_packingBandage",20],["ACE_CableTie",2],["ACE_tourniquet",4],["ItemAndroid",1],["ACE_Canteen",1],["ACE_Flashlight_XL50",1],["ACE_EntrenchingTool",1],["ACE_EarPlugs",1],["kat_Painkiller",1,10]]],["VSM_CarrierRig_Gunner_Multicam",[["SmokeShell",2,1],["HandGrenade",2,1]]],["VSM_Multicam_Backpack_Compact",[["16Rnd_9x21_Mag",2,17],["rhs_mag_20Rnd_SCAR_762x51_m62_tracer",7,20]]],"VSM_Mich2000_Multicam","",["Rangefinder","","","",[],[],""],["ItemMap","ItemGPS","TFAR_rf7800str","ItemCompass","TFAR_microdagr","A3_GPNVG18_F"]]
		};
		case "mg": {
			[["rhs_weap_m249_light_S_vfg2","ACE_muzzle_mzls_L","rhsusf_acc_anpeq15side_bk","rhsusf_acc_su230_mrds_3d",["rhsusf_100Rnd_556x45_M855_mixed_soft_pouch_coyote",100],[],"rhsusf_acc_grip4_bipod"],[],["rhsusf_weap_m9","","","",["rhsusf_mag_15Rnd_9x19_JHP",15],[],""],["VSM_Multicam_Camo_SS",[["ACE_packingBandage",20],["ACE_CableTie",2],["ACE_Canteen",1],["ACE_Flashlight_XL50",1],["ACE_EntrenchingTool",1],["ACE_EarPlugs",1],["ItemAndroid",1]]],["VSM_FAPC_MG_Multicam",[["ACE_WaterBottle",2],["ACE_tourniquet",4],["SmokeShell",2,1],["rhsusf_100Rnd_556x45_M855_mixed_soft_pouch_coyote",7,100],["kat_Painkiller",1,10]]],["VSM_Multicam_Backpack_Compact",[]],"VSM_OPS_multicam","",["Binocular","","","",[],[],""],["ItemMap","ItemGPS","TFAR_rf7800str_12","ItemCompass","TFAR_microdagr","A3_GPNVG18_F"]]
		};
		case "grenadier": {
			[["rhs_weap_m4a1_m320","","rhsusf_acc_anpeq15_bk_light","rhsusf_acc_ACOG_RMR_3d",["rhs_mag_30Rnd_556x45_M855A1_Stanag",30],["rhs_mag_M441_HE",1],""],[],[],["VSM_Multicam_Crye_Camo",[["ACE_packingBandage",15],["ACE_CableTie",2],["ACE_EarPlugs",1],["ACE_IR_Strobe_Item",1],["ACE_splint",1],["ACE_tourniquet",4],["GTO_Beret_Black",1],["WBK_HeadLampItem",1],["ItemcTabHCam",1],["kat_Painkiller",1,10]]],["VSM_RAV_MG_Multicam",[["ACE_EntrenchingTool",1],["ItemAndroid",1],["A3_GPNVG18_F",1],["KNB_Notebook",1],["HandGrenade",1,1],["SmokeShell",1,1],["rhs_mag_30Rnd_556x45_M855_Stanag",12,30]]],["VSM_Multicam_Backpack_Compact",[["rhs_mag_M433_HEDP",6,1],["rhs_mag_M441_HE",18,1],["UGL_FlareRed_F",1,1]]],"VSM_OPS_multicam","G_Tactical_Black",["Rangefinder","","","",[],[],""],["ItemMap","ItemGPS","TFAR_rf7800str_4","ItemCompass","TFAR_microdagr",""]]
		};
		case "lat": {
			[["rhs_weap_m4a1_carryhandle_grip2","","rhsusf_acc_anpeq15side_bk","rhsusf_acc_ACOG_3d",["rhs_mag_30Rnd_556x45_M855A1_PMAG_Tracer_Red",30],[],"rhsusf_acc_grip2"],["rhs_weap_M136","","","",[],[],""],["rhsusf_weap_glock17g4","","","",["rhsusf_mag_17Rnd_9x19_JHP",17],[],""],["VSM_Multicam_Crye_SS_Camo",[["ACE_packingBandage",20],["ACE_CableTie",2],["ACE_tourniquet",4],["ACE_Canteen",1],["ACE_Flashlight_XL50",1],["ACE_EntrenchingTool",1],["ACE_EarPlugs",1],["kat_Painkiller",1,10]]],["VSM_CarrierRig_Gunner_OCP",[]],["VSM_Multicam_Backpack_Compact",[["rhs_mag_30Rnd_556x45_M855A1_PMAG_Tracer_Red",7,30],["rhsusf_mag_17Rnd_9x19_JHP",3,17]]],"VSM_Mich2000_Multicam","",["Rangefinder","","","",[],[],""],["ItemMap","ItemGPS","TFAR_rf7800str_19","ItemCompass","TFAR_microdagr",""]]
		};
		case "hat": {
			[["rhs_weap_m4a1_carryhandle","","rhsusf_acc_anpeq15_bk_light","rhsusf_acc_ACOG_RMR_3d",["rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red",30],[],"rhsusf_acc_grip3"],["launch_MRAWS_sand_F","","","",["MRAWS_HEAT_F",1],[],""],[],["VSM_Multicam_Crye_Camo",[["ACE_packingBandage",15],["ACE_CableTie",2],["ACE_EarPlugs",1],["ACE_IR_Strobe_Item",1],["ACE_splint",1],["ACE_tourniquet",4],["GTO_Beret_Black",1],["WBK_HeadLampItem",1],["ItemcTabHCam",1],["kat_Painkiller",1,10]]],["VSM_RAV_MG_Multicam",[["ACE_EntrenchingTool",1],["A3_GPNVG18_F",1],["KNB_Notebook",1],["ItemMicroDAGR",1],["HandGrenade",1,1],["SmokeShell",1,1],["rhs_mag_30Rnd_556x45_M855A1_PMAG_Tracer_Red",8,30]]],["VSM_OCP_Backpack_Kitbag",[["MRAWS_HEAT_F",2,1]]],"VSM_OPS_multicam","G_Tactical_Black",["Rangefinder","","","",[],[],""],["ItemMap","ItemGPS","TFAR_rf7800str","ItemCompass","TFAR_microdagr",""]]
		};
		case "marksman": {
			[["rhs_weap_sr25_ec","","rhsusf_acc_anpeq15side_bk","optic_AMS",["rhsusf_20Rnd_762x51_SR25_m62_Mag",20],[],"rhsusf_acc_harris_bipod"],[],["rhsusf_weap_glock17g4","ACE_muzzle_mzls_smg_02","acc_flashlight_pistol","",["rhsusf_mag_17Rnd_9x19_JHP",17],[],""],["VSM_Multicam_Camo_SS",[["ACE_packingBandage",20],["ACE_CableTie",2],["ACE_tourniquet",4],["ItemAndroid",1],["ACE_Canteen",1],["ACE_Flashlight_XL50",1],["ACE_EntrenchingTool",1],["ACE_EarPlugs",1],["kat_Painkiller",1,10]]],["cpc_lightbelt_mc",[["rhsusf_20Rnd_762x51_SR25_m62_Mag",6,20]]],["VSM_Multicam_Backpack_Compact",[["optic_Nightstalker",1],["rhsusf_mag_17Rnd_9x19_JHP",5,17]]],"VSM_OPS_multicam","",["ACE_Vector","","","",[],[],""],["ItemMap","ItemGPS","TFAR_anprc152_14","ItemCompass","ItemWatch","A3_GPNVG18_F"]]
		};
		case "sniper": {
			[[], [], [], ["GTO_BaseUniform", []], [], [], "GTO_Beret_Black", "", ["", "", "", "", [], [], ""], ["ItemMap", "ItemGPS", "TFAR_rf7800str", "ItemCompass", "TFAR_microdagr", ""]]
		};
		case "spotter": {
			[[], [], [], ["GTO_BaseUniform", []], [], [], "GTO_Beret_Black", "", ["", "", "", "", [], [], ""], ["ItemMap", "ItemGPS", "TFAR_rf7800str", "ItemCompass", "TFAR_microdagr", ""]]
		};
		case "sapper": {
			[["rhs_weap_m4a1_carryhandle_grip3","","rhsusf_acc_anpeq15_bk","rhsusf_acc_ACOG_RMR_3d",["rhs_mag_30Rnd_556x45_M855A1_PMAG_Tracer_Red",30],[],"rhsusf_acc_grip3"],[],[],["VSM_Multicam_Crye_SS_Camo",[["ACE_CableTie",2],["ACE_IR_Strobe_Item",1],["GTO_Beret_Black",1],["WBK_HeadLampItem",1],["ItemcTabHCam",1],["ACE_packingBandage",15],["ACE_tourniquet",4],["ACE_splint",2]]],["V_PlateCarrierGL_rgr",[["MineDetector",1],["ACE_M26_Clacker",1],["KNB_Notebook",1],["ItemMicroDAGR",1],["ACE_EntrenchingTool",1],["ACE_DefusalKit",1],["SmokeShell",1,1],["SmokeShellGreen",1,1],["HandGrenade",1,1]]],["VSM_OCP_Backpack_Kitbag",[["rhs_mag_30Rnd_556x45_M855A1_PMAG_Tracer_Red",12,30]]],"VSM_OPS_multicam","G_Tactical_Clear",["Rangefinder","","","",[],[],""],["ItemMap","ItemGPS","TFAR_rf7800str_5","ItemCompass","ItemWatch","A3_GPNVG18_F"]]
		};
		case "pionier": {
			[[], [], [], ["GTO_BaseUniform", []], [], [], "GTO_Beret_Black", "", ["", "", "", "", [], [], ""], ["ItemMap", "ItemGPS", "TFAR_rf7800str", "ItemCompass", "TFAR_microdagr", ""]]
		};
		case "enginier": {
			[[], [], [], ["GTO_BaseUniform", []], [], [], "GTO_Beret_Black", "", ["", "", "", "", [], [], ""], ["ItemMap", "ItemGPS", "TFAR_rf7800str", "ItemCompass", "TFAR_microdagr", ""]]
		};
		case "pilot": {
			[["rhs_weap_m4_carryhandle","","rhsusf_acc_anpeq15_bk_light","rhsusf_acc_ACOG",["rhs_mag_30Rnd_556x45_M855_PMAG",30],[],"rhsusf_acc_kac_grip"],[],["rhsusf_weap_glock17g4","","","",[],[],""],["VSM_Multicam_Crye_Camo",[["ACE_packingBandage",15],["ACE_CableTie",2],["ACE_EarPlugs",1],["ACE_IR_Strobe_Item",1],["ACE_splint",1],["ACE_tourniquet",4],["GTO_Beret_Black",1],["WBK_HeadLampItem",1],["ItemcTabHCam",1],["kat_Painkiller",1,10],["rhs_mag_30Rnd_556x45_M855_PMAG",1,30]]],["VSM_FAPC_MG_Multicam",[["ACE_EntrenchingTool",1],["ItemAndroid",1],["A3_GPNVG18_F",1],["rhs_mag_30Rnd_556x45_M855_PMAG",14,30],["HandGrenade",1,1],["SmokeShell",1,1],["rhsusf_mag_17Rnd_9x19_JHP",5,17]]],[],"VSM_OPS_multicam","",["Rangefinder","","","",[],[],""],["ItemMap","ItemGPS","TFAR_rf7800str","ItemCompass","TFAR_microdagr",""]]
		};
		case "crewman": {
			[["rhsusf_weap_MP7A2","","","optic_Yorris",["rhsusf_mag_40Rnd_46x30_JHP",40],[],""],[],["rhsusf_weap_glock17g4","","acc_flashlight_pistol","",["rhsusf_mag_17Rnd_9x19_JHP",17],[],""],["VSM_Multicam_Camo",[["ACE_EarPlugs",1],["ItemAndroid",1],["WBK_HeadLampItem",1],["ItemcTabHCam",1],["ACE_IR_Strobe_Item",1],["ACE_Flashlight_XL50",1],["ACE_MapTools",1],["ACE_tourniquet",4],["ACE_splint",2],["ACE_quikclot",16],["ACE_CableTie",1],["rhsusf_mag_17Rnd_9x19_JHP",1,17]]],["lbt_light_mc",[["ToolKit",1],["rhsusf_mag_17Rnd_9x19_JHP",3,17]]],[],"rhsusf_cvc_helmet","",["Rangefinder","","","",[],[],""],["ItemMap","ItemGPS","TFAR_anprc152","ItemCompass","TFAR_microdagr","A3_GPNVG18_F"]]
		};
		default {
			[[], [], [], ["GTO_BaseUniform", []], [], [], "GTO_Beret_Black", "", ["", "", "", "", [], [], ""], ["ItemMap", "ItemGPS", "TFAR_rf7800str", "ItemCompass", "TFAR_microdagr", ""]]
		};
	};

	ACE_player setUnitLoadout [_layout, true];
};

if (_arsenalType == "VANILLA") exitWith {
	switch (toLower worldName) do
	{
		case "sefrouramal" :
		{
			private _layout = switch (_role) do
			{
				case "lead": {
					[["arifle_XMS_GL_Sand_lxWS", "muzzle_snds_m_snd_F", "", "optic_ERCO_snd_F", ["30Rnd_556x45_Stanag_Tracer_Yellow", 30], ["ACE_HuntIR_M203", 1], ""], [], ["hgun_Pistol_heavy_01_F", "muzzle_snds_acp", "", "optic_MRD", ["11Rnd_45ACP_Mag", 15], [], ""], ["U_lxWS_B_CombatUniform_desert", [["ACE_packingBandage", 25], ["ACE_morphine", 10], ["ACE_tourniquet", 4]]], ["V_lxWS_UN_Vest_Lite_F", [["ACE_MapTools", 1], ["ACE_Flashlight_KSF1", 1], ["ACE_EntrenchingTool", 1], ["ACE_CableTie", 2], ["ACE_HuntIR_monitor", 1], ["30Rnd_556x45_Stanag_Tracer_Yellow", 8, 30]]], ["OPXT_aor1_1523", [["ACE_HuntIR_M203", 5, 1], ["3Rnd_Smoke_Grenade_shell_precise", 3, 3], ["1Rnd_SmokeGreen_Grenade_shell", 3, 1], ["1Rnd_SmokeBlue_Grenade_shell", 3, 1], ["1Rnd_SmokeRed_Grenade_shell", 3, 1]]], "lxWS_H_PASGT_basic_UN_F", "G_Headset_lxWS", ["Laserdesignator", "", "", "", ["Laserbatteries", 1], [], ""], ["ItemMap", "ItemGPS", "TFAR_anprc152", "ItemCompass", "ACE_Altimeter", ""]]
				};
				case "grena": {
					[["arifle_XMS_GL_Sand_lxWS", "muzzle_snds_m_snd_F", "", "optic_ERCO_snd_F", ["30Rnd_556x45_Stanag_Tracer_Yellow", 30], ["1Rnd_HE_Grenade_shell", 1], ""], [], ["hgun_Pistol_heavy_01_F", "muzzle_snds_acp", "", "optic_MRD", ["11Rnd_45ACP_Mag", 15], [], ""], ["U_lxWS_B_CombatUniform_desert", [["ACE_packingBandage", 25], ["ACE_morphine", 10], ["ACE_tourniquet", 4]]], ["V_lxWS_UN_Vest_Lite_F", [["ACE_MapTools", 1], ["ACE_Flashlight_KSF1", 1], ["ACE_EntrenchingTool", 1], ["ACE_CableTie", 2], ["ACE_HuntIR_monitor", 1], ["30Rnd_556x45_Stanag_Tracer_Yellow", 8, 30], ["11Rnd_45ACP_Mag", 2, 15]]], ["B_Kitbag_desert_lxWS", [["3Rnd_Smoke_Grenade_shell_precise", 3, 3], ["1Rnd_HE_Grenade_shell", 10, 1], ["1Rnd_SmokeBlue_Grenade_shell", 2, 1], ["1Rnd_SmokeGreen_Grenade_shell", 2, 1], ["1Rnd_SmokeRed_Grenade_shell", 2, 1]]], "lxWS_H_PASGT_basic_UN_F", "G_Headset_lxWS", [], ["ItemMap", "ItemGPS", "TFAR_anprc152", "ItemCompass", "ACE_Altimeter", ""]]
				};
				case "arzt": {
					[["TB_weap_Vector", "", "", "optic_Yorris", ["TB_mag_40Rnd_45_JHP_Tracer_Red", 40], [], ""], [], ["hgun_Pistol_heavy_01_F", "muzzle_snds_acp", "", "optic_MRD", ["11Rnd_45ACP_Mag", 15], [], ""], ["U_lxWS_B_CombatUniform_desert_vest", [["ACE_surgicalKit", 1], ["ACE_quikclot", 25]]], ["V_lxWS_UN_Vest_Lite_F", [["ACE_elasticBandage", 35], ["ACE_packingBandage", 50], ["ACE_epinephrine", 10], ["ACE_morphine", 20], ["ACE_tourniquet", 5]]], ["B_Kitbag_desert_lxWS", [["adv_aceCPR_AED", 1], ["ACE_bloodIV", 10], ["ACE_bloodIV_500", 5], ["ACE_bloodIV_250", 4], ["11Rnd_45ACP_Mag", 3, 15], ["30Rnd_556x45_Stanag_Tracer_Yellow", 8, 30], ["SmokeShell", 7, 1]]], "lxWS_H_PASGT_basic_UN_F", "G_Bandanna_beast", ["Binocular", "", "", "", [], [], ""], ["ItemMap", "ItemGPS", "TFAR_anprc152", "ItemCompass", "ACE_Altimeter", ""]]
				};
				case "sani": {
					[["arifle_XMS_Base_Sand_lxWS", "", "", "optic_ERCO_snd_F", ["30Rnd_556x45_Stanag_Tracer_Yellow", 30], [], ""], [], ["hgun_Pistol_heavy_01_F", "muzzle_snds_acp", "", "optic_MRD", ["11Rnd_45ACP_Mag", 15], [], ""], ["U_lxWS_B_CombatUniform_desert_vest", [["ACE_surgicalKit", 1], ["ACE_quikclot", 25]]], ["V_lxWS_UN_Vest_Lite_F", [["ACE_elasticBandage", 35], ["ACE_packingBandage", 50], ["ACE_epinephrine", 10], ["ACE_morphine", 20], ["ACE_tourniquet", 5]]], ["B_Kitbag_desert_lxWS", [["ACE_plasmaIV", 10], ["ACE_plasmaIV_500", 5], ["adv_aceCPR_AED", 1], ["11Rnd_45ACP_Mag", 3, 15], ["30Rnd_556x45_Stanag_Tracer_Yellow", 8, 30], ["SmokeShell", 7, 1]]], "lxWS_H_PASGT_basic_UN_F", "G_Bandanna_beast", ["Binocular", "", "", "", [], [], ""], ["ItemMap", "ItemGPS", "TFAR_anprc152", "ItemCompass", "ACE_Altimeter", ""]]
				};
				case "mg": {
					[["LMG_Zafir_F", "", "", "optic_ERCO_blk_F", ["150Rnd_762x54_Box_Tracer", 150], [], ""], [], ["hgun_Pistol_heavy_01_F", "muzzle_snds_acp", "", "optic_MRD", ["11Rnd_45ACP_Mag", 15], [], ""], ["U_lxWS_B_CombatUniform_desert_vest", [["ACE_packingBandage", 25], ["ACE_morphine", 10], ["ACE_tourniquet", 4]]], ["V_lxWS_UN_Vest_Lite_F", [["ACE_MapTools", 1], ["ACE_Flashlight_KSF1", 1], ["ACE_EntrenchingTool", 1], ["ACE_salineIV_250", 4], ["150Rnd_762x54_Box_Tracer", 1, 150]]], ["B_Kitbag_desert_lxWS", [["11Rnd_45ACP_Mag", 2, 15], ["SmokeShell", 4, 1], ["150Rnd_762x54_Box_Tracer", 4, 150]]], "lxWS_H_PASGT_basic_UN_F", "G_Bandanna_beast", ["Binocular", "", "", "", [], [], ""], ["ItemMap", "ItemGPS", "TFAR_anprc152", "ItemCompass", "ACE_Altimeter", ""]]
				};
				case "spreng": {
					[["arifle_XMS_M_Sand_lxWS", "", "", "", ["30Rnd_556x45_Stanag_Tracer_Yellow", 30], [], "bipod_01_F_snd"], [], ["ACE_VMM3", "", "", "", [], [], ""], ["U_lxWS_B_CombatUniform_desert_vest", [["ACE_packingBandage", 25], ["ACE_morphine", 10], ["ACE_tourniquet", 4]]], ["V_EOD_coyote_F", [["ACE_Flashlight_KSF1", 1], ["ACE_M26_Clacker", 1], ["MineDetector", 1]]], ["B_Kitbag_desert_lxWS", [["ACE_wirecutter", 1], ["ACE_EntrenchingTool", 1], ["DemoCharge_Remote_Mag", 6, 1], ["SmokeShell", 6, 1], ["30Rnd_556x45_Stanag_Tracer_Yellow", 8, 30]]], "lxWS_H_PASGT_basic_UN_F", "G_Bandanna_beast", ["Binocular", "", "", "", [], [], ""], ["ItemMap", "ItemGPS", "TFAR_anprc152", "ItemCompass", "ACE_Altimeter", ""]]
				};
				case "aaat": {
					[["arifle_XMS_Base_Sand_lxWS", "", "", "optic_ERCO_snd_F", ["30Rnd_556x45_Stanag", 30], [], ""], ["launch_MRAWS_sand_F", "", "", "", ["MRAWS_HEAT_F", 1], [], ""], [], ["U_lxWS_B_CombatUniform_desert_vest", [["ACE_packingBandage", 25], ["ACE_morphine", 10], ["ACE_tourniquet", 4]]], ["V_lxWS_UN_Vest_Lite_F", [["ACE_CableTie", 2], ["ACE_MapTools", 1], ["ACE_Flashlight_KSF1", 1], ["ACE_EntrenchingTool", 1], ["ACE_salineIV_250", 4], ["30Rnd_556x45_Stanag_Tracer_Yellow", 8, 30]]], ["B_Kitbag_desert_lxWS", [["SmokeShell", 5, 1], ["MRAWS_HEAT_F", 3, 1], ["MRAWS_HE_F", 2, 1]]], "lxWS_H_PASGT_basic_UN_F", "G_Bandanna_beast", ["Binocular", "", "", "", [], [], ""], ["ItemMap", "ItemGPS", "TFAR_anprc152", "ItemCompass", "ACE_Altimeter", ""]]
				};
				case "trag": {
					[["arifle_XMS_M_Sand_lxWS", "", "", "optic_ERCO_snd_F", ["30Rnd_556x45_Stanag_Tracer_Yellow", 30], [], ""], [], ["hgun_Pistol_heavy_01_F", "muzzle_snds_acp", "", "optic_MRD", ["11Rnd_45ACP_Mag", 15], [], ""], ["U_lxWS_B_CombatUniform_desert", [["ACE_packingBandage", 25], ["ACE_morphine", 10], ["ACE_tourniquet", 4]]], ["V_lxWS_UN_Vest_Lite_F", [["ACE_salineIV_250", 4], ["ACE_EntrenchingTool", 1], ["30Rnd_556x45_Stanag_Tracer_Yellow", 10, 30], ["SmokeShell", 5, 1]]], ["B_Carryall_desert_lxWS", []], "lxWS_H_PASGT_basic_UN_F", "G_Bandanna_beast", ["Binocular", "", "", "", [], [], ""], ["ItemMap", "ItemGPS", "TFAR_anprc152", "ItemCompass", "ACE_Altimeter", ""]]
				};
				case "dmr": {
					[["srifle_EBR_blk_lxWS", "muzzle_snds_B", "", "optic_ERCO_blk_F", ["ACE_20Rnd_762x51_Mag_Tracer", 20], [], ""], [], ["hgun_Pistol_heavy_01_F", "muzzle_snds_acp", "", "optic_MRD", ["11Rnd_45ACP_Mag", 15], [], ""], ["U_lxWS_B_CombatUniform_desert", [["ACE_packingBandage", 25], ["ACE_morphine", 10], ["ACE_tourniquet", 4]]], ["V_lxWS_UN_Vest_Lite_F", [["ACE_CableTie", 4], ["ACE_MapTools", 1], ["ACE_Flashlight_KSF1", 1], ["ACE_EntrenchingTool", 1], ["ACE_salineIV_250", 4], ["20Rnd_762x51_Mag", 7, 20]]], ["B_Kitbag_rgr", [["20Rnd_762x51_Mag", 5, 20], ["11Rnd_45ACP_Mag", 3, 15], ["SmokeShell", 4, 1]]], "lxWS_H_PASGT_basic_UN_F", "G_Bandanna_beast", ["Binocular", "", "", "", [], [], ""], ["ItemMap", "ItemGPS", "TFAR_anprc152", "ItemCompass", "ACE_Altimeter", ""]]
				};
				case "pilot": {
					[["TB_weap_Vector", "", "", "optic_Yorris", ["TB_mag_40Rnd_45_JHP_Tracer_Red", 40], [], ""], [], ["hgun_Pistol_heavy_01_F", "muzzle_snds_acp", "", "optic_MRD", ["11Rnd_45ACP_Mag", 15], [], ""], ["U_lxWS_UN_Pilot", [["ACE_surgicalKit", 1], ["ACE_quikclot", 25]]], ["V_DeckCrew_yellow_F", [["adv_aceCPR_AED", 1], ["TB_mag_40Rnd_45_FMJ_Tracer_Red", 2, 40]]], ["OPXT_aor1_1523", [["ACE_plasmaIV", 5], ["ACE_elasticBandage", 30], ["ACE_packingBandage", 35], ["ACE_epinephrine", 10], ["ACE_morphine", 20]]], "H_CrewHelmetHeli_B", "G_Bandanna_beast", ["Binocular", "", "", "", [], [], ""], ["ItemMap", "ItemGPS", "TFAR_anprc152", "ItemCompass", "ACE_Altimeter", ""]]
				};
				case "sniper": {
					[["", "", "", "optic_LRPS", ["7Rnd_408_Mag", 7], [], ""], [], ["hgun_Pistol_heavy_01_F", "muzzle_snds_acp", "", "optic_MRD", ["11Rnd_45ACP_Mag", 11], [], ""], ["U_B_FullGhillie_ard", [["ACE_packingBandage", 25], ["ACE_tourniquet", 4], ["ACE_morphine", 10], ["ACE_EntrenchingTool", 1], ["ACE_ATragMX", 1], ["ACE_Kestrel4500", 1], ["ACE_Flashlight_KSF1", 1], ["ACE_MapTools", 1], ["ACE_RangeCard", 1]]], ["V_PlateCarrier2_blk", [["ACE_Tripod", 1], ["ACE_HuntIR_monitor", 1], ["7Rnd_408_Mag", 5, 7], ["11Rnd_45ACP_Mag", 1, 11]]], ["OPXT_blk_1523", [["ACE_wirecutter", 1], ["optic_KHS_blk", 1], ["optic_AMS", 1], ["7Rnd_408_Mag", 6, 7], ["SmokeShellPurple", 4, 1], ["Laserbatteries", 1, 1]]], "H_HelmetSpecB", "G_Bandanna_beast", ["ACE_Vector", "", "", "", [], [], ""], ["ItemMap", "ItemGPS", "TFAR_anprc152", "ItemCompass", "ACE_Altimeter", ""]]
				};
				case "spotter": {
					[["", "", "", "optic_ERCO_snd_F", ["30Rnd_65x39_caseless_mag_Tracer", 30], ["ACE_HuntIR_M203", 1], ""], [], ["hgun_Pistol_heavy_01_F", "muzzle_snds_acp", "", "optic_MRD", ["11Rnd_45ACP_Mag", 11], [], ""], ["U_B_FullGhillie_ard", [["ACE_packingBandage", 25], ["ACE_morphine", 10], ["ACE_EntrenchingTool", 1], ["ACE_Flashlight_KSF1", 1], ["ACE_tourniquet", 4], ["ACE_RangeCard", 1], ["ACE_ATragMX", 1], ["ACE_Kestrel4500", 1], ["ACE_MapTools", 1], ["ACE_CableTie", 1]]], ["V_PlateCarrier2_blk", [["ACE_SpottingScope", 1], ["ACE_HuntIR_monitor", 1], ["ACE_wirecutter", 1], ["30Rnd_65x39_caseless_mag_Tracer", 5, 30]]], ["OPXT_blk_1523", [["ACE_salineIV_250", 3], ["3Rnd_Smoke_Grenade_shell", 5, 3], ["3Rnd_HE_Grenade_shell", 2, 3], ["ACE_HuntIR_M203", 5, 1], ["Laserbatteries", 1, 1], ["30Rnd_65x39_caseless_mag_Tracer", 2, 30]]], "H_HelmetSpecB_sand", "G_Bandanna_beast", ["Laserdesignator", "", "", "", ["Laserbatteries", 1], [], ""], ["ItemMap", "ItemGPS", "TFAR_anprc152", "ItemCompass", "ACE_Altimeter", ""]]
				};
				case "jtac": {
					[["arifle_XMS_GL_Sand_lxWS", "", "", "optic_ERCO_blk_F", ["30Rnd_556x45_Stanag_Tracer_Yellow", 30], [], ""], [], ["hgun_Pistol_heavy_01_F", "muzzle_snds_acp", "", "optic_MRD", ["11Rnd_45ACP_Mag", 15], [], ""], ["U_lxWS_B_CombatUniform_desert_vest", [["ACE_packingBandage", 25], ["ACE_morphine", 10], ["ACE_tourniquet", 4]]], ["V_lxWS_PlateCarrierGL_desert", [["ACE_MapTools", 1], ["ACE_Flashlight_KSF1", 1], ["ACE_UAVBattery", 4], ["ACE_HuntIR_monitor", 1], ["Laserbatteries", 2, 1], ["30Rnd_556x45_Stanag_Tracer_Yellow", 2, 30]]], ["CIV_UAV_01_backpack_lxWS", []], "lxWS_H_PASGT_basic_UN_F", "G_Bandanna_beast", ["Laserdesignator", "", "", "", ["Laserbatteries", 1], [], ""], ["ItemMap", "B_UavTerminal", "TFAR_anprc152", "ItemCompass", "ACE_Altimeter", ""]]
				};
				case "rifle" : {
					[["", "", "ACE_acc_pointer_green", "optic_ERCO_snd_F", ["30Rnd_65x39_caseless_mag_Tracer", 30], [], "bipod_01_F_snd"], [], ["hgun_Pistol_heavy_01_F", "muzzle_snds_acp", "", "optic_MRD", ["11Rnd_45ACP_Mag", 11], [], ""], ["U_B_CTRG_1", [["ACE_packingBandage", 25], ["ACE_morphine", 10], ["ACE_tourniquet", 4]]], ["V_PlateCarrier2_blk", [["ACE_MapTools", 1], ["ACE_Flashlight_KSF1", 1], ["ACE_EntrenchingTool", 1], ["ACE_wirecutter", 1], ["ACE_CableTie", 2], ["ACE_salineIV_250", 4], ["ACE_packingBandage", 20]]], ["B_Kitbag_sgg", [["30Rnd_65x39_caseless_mag", 10, 30], ["11Rnd_45ACP_Mag", 5, 11], ["HandGrenade", 5, 1], ["SmokeShell", 5, 1], ["AMP_Breaching_Charge_Mag", 5, 1]]], "H_HelmetSpecB", "G_Bandanna_oli", ["Binocular", "", "", "", [], [], ""], ["ItemMap", "ItemGPS", "TFAR_anprc152", "ItemCompass", "ACE_Altimeter", ""]]
				};
				case "pionier" : {
					[["arifle_XMS_M_Sand_lxWS", "", "", "optic_ERCO_snd_F", ["30Rnd_556x45_Stanag_Tracer_Yellow", 30], [], "bipod_01_F_snd"], [], ["ACE_VMM3", "", "", "", [], [], ""], ["U_lxWS_UN_Pilot", [["ACE_packingBandage", 25], ["ACE_morphine", 10], ["ACE_tourniquet", 4]]], ["V_EOD_coyote_F", [["ACE_Flashlight_KSF1", 1], ["ACE_M26_Clacker", 1], ["MineDetector", 1]]], ["B_Kitbag_desert_lxWS", [["ACE_wirecutter", 1], ["ACE_EntrenchingTool", 1], ["ToolKit", 1], ["DemoCharge_Remote_Mag", 6, 1], ["SmokeShell", 6, 1], ["30Rnd_556x45_Stanag_Tracer_Yellow", 8, 30]]], "lxWS_H_PASGT_basic_UN_F", "G_Bandanna_beast", ["Binocular", "", "", "", [], [], ""], ["ItemMap", "ItemGPS", "TFAR_anprc152", "ItemCompass", "ACE_Altimeter", ""]]
				};
				default {
					[]
				};
			};

			ACE_player setUnitLoadout [_layout, true];
		};
		default
		{
			private _layout = switch (_role) do
			{
				case "lead": {
					[["arifle_MX_GL_Black_F", "", "ACE_acc_pointer_green", "optic_ERCO_blk_F", ["30Rnd_65x39_caseless_mag_Tracer", 30], ["ACE_HuntIR_M203", 1], ""], [], ["hgun_Pistol_heavy_01_F", "muzzle_snds_acp", "", "optic_MRD", ["11Rnd_45ACP_Mag", 11], [], ""], ["U_B_CTRG_1", [["ACE_packingBandage", 25], ["ACE_morphine", 10], ["ACE_tourniquet", 4]]], ["V_PlateCarrier2_blk", [["ACE_MapTools", 1], ["ACE_Flashlight_KSF1", 1], ["ACE_EntrenchingTool", 1], ["ACE_CableTie", 2], ["ACE_HuntIR_monitor", 1], ["30Rnd_65x39_caseless_mag_Tracer", 10, 30], ["Laserbatteries", 1, 1]]], ["OPXT_blk_1523", [["1Rnd_Smoke_Grenade_shell", 6, 1], ["1Rnd_SmokePurple_Grenade_shell", 2, 1], ["ACE_HuntIR_M203", 5, 1]]], "H_HelmetSpecB", "G_Bandanna_beast", ["Laserdesignator", "", "", "", ["Laserbatteries", 1], [], ""], ["ItemMap", "ItemGPS", "TFAR_anprc152", "ItemCompass", "ACE_Altimeter", ""]]
				};
				case "grena": {
					[["arifle_MX_GL_Black_F", "", "ACE_acc_pointer_green", "optic_ERCO_blk_F", ["30Rnd_65x39_caseless_mag_Tracer", 30], ["1Rnd_Smoke_Grenade_shell", 1], ""], [], ["hgun_Pistol_heavy_01_F", "muzzle_snds_acp", "", "optic_MRD", ["11Rnd_45ACP_Mag", 11], [], ""], ["U_B_CTRG_1", [["ACE_packingBandage", 25], ["ACE_morphine", 10], ["ACE_tourniquet", 4]]], ["V_PlateCarrier2_blk", [["ACE_CableTie", 2], ["ACE_MapTools", 1], ["ACE_Flashlight_KSF1", 1], ["ACE_EntrenchingTool", 1], ["ACE_HuntIR_monitor", 1], ["30Rnd_65x39_caseless_mag_Tracer", 10, 30]]], ["B_Kitbag_rgr", [["ACE_salineIV_250", 4], ["3Rnd_Smoke_Grenade_shell", 6, 3], ["3Rnd_HE_Grenade_shell", 6, 3]]], "H_HelmetSpecB", "G_Bandanna_beast", ["Binocular", "", "", "", [], [], ""], ["ItemMap", "ItemGPS", "TFAR_anprc152", "ItemCompass", "ACE_Altimeter", ""]]
				};
				case "arzt": {
					[[], [], ["hgun_Pistol_heavy_01_F", "muzzle_snds_acp", "", "optic_MRD", ["11Rnd_45ACP_Mag", 11], [], ""], ["U_B_CTRG_1", [["ACE_surgicalKit", 1], ["ACE_quikclot", 25]]], ["V_PlateCarrier2_blk", [["ACE_tourniquet", 6], ["ACE_elasticBandage", 35], ["ACE_packingBandage", 50], ["ACE_morphine", 10], ["ACE_epinephrine", 10], ["ACE_morphine", 10], ["ACE_MapTools", 1], ["ACE_Flashlight_KSF1", 1], ["ACE_CableTie", 2]]], ["B_Kitbag_sgg", [["ACE_bloodIV", 10], ["ACE_bloodIV_500", 5], ["adv_aceCPR_AED", 1], ["ACE_EntrenchingTool", 1], ["ACE_personalAidKit", 1], ["SmokeShellRed", 8, 1]]], "H_HelmetSpecB", "G_Bandanna_beast", ["Binocular", "", "", "", [], [], ""], ["ItemMap", "ItemGPS", "TFAR_anprc152", "ItemCompass", "ACE_Altimeter", ""]]
				};
				case "sani": {
					[["arifle_MX_Black_F", "muzzle_snds_H", "ACE_acc_pointer_green", "optic_ERCO_blk_F", ["30Rnd_65x39_caseless_mag_Tracer", 30], [], "bipod_01_F_blk"], [], ["hgun_Pistol_heavy_01_F", "muzzle_snds_acp", "", "optic_MRD", ["11Rnd_45ACP_Mag", 11], [], ""], ["U_B_CTRG_1", [["ACE_surgicalKit", 1], ["ACE_quikclot", 25]]], ["V_PlateCarrier2_blk", [["ACE_elasticBandage", 35], ["ACE_packingBandage", 50], ["ACE_epinephrine", 10], ["ACE_morphine", 10], ["ACE_morphine", 10], ["ACE_tourniquet", 6], ["ACE_CableTie", 4]]], ["B_Kitbag_rgr", [["ACE_plasmaIV", 10], ["ACE_plasmaIV_500", 5], ["adv_aceCPR_AED", 1], ["30Rnd_65x39_caseless_mag_Tracer", 10, 30], ["11Rnd_45ACP_Mag", 3, 11]]], "H_HelmetSpecB_sand", "G_Bandanna_beast", ["Binocular", "", "", "", [], [], ""], ["ItemMap", "ItemGPS", "TFAR_anprc152", "ItemCompass", "ACE_Altimeter", ""]]
				};
				case "mg": {
					[["LMG_03_F", "", "ACE_acc_pointer_green_IR", "optic_ERCO_blk_F", ["200Rnd_556x45_Box_F", 200], [], ""], [], ["hgun_Pistol_heavy_01_F", "muzzle_snds_acp", "", "optic_MRD", ["11Rnd_45ACP_Mag", 11], [], ""], ["U_B_CTRG_3", [["ACE_packingBandage", 25], ["ACE_morphine", 10], ["ACE_tourniquet", 4]]], ["V_PlateCarrier2_blk", [["ACE_MapTools", 1], ["ACE_Flashlight_KSF1", 1], ["ACE_EntrenchingTool", 1], ["ACE_salineIV_250", 4], ["200Rnd_556x45_Box_Tracer_F", 2, 200]]], ["B_Kitbag_rgr", [["200Rnd_556x45_Box_Tracer_F", 3, 200], ["11Rnd_45ACP_Mag", 2, 11], ["SmokeShell", 4, 1]]], "H_HelmetSpecB", "G_Bandanna_beast", ["Binocular", "", "", "", [], [], ""], ["ItemMap", "ItemGPS", "TFAR_anprc152", "ItemCompass", "ACE_Altimeter", ""]]
				};
				case "spreng": {
					[["arifle_MX_Black_F", "", "ACE_acc_pointer_green", "optic_ERCO_blk_F", ["30Rnd_65x39_caseless_mag", 30], [], "bipod_01_F_blk"], [], ["ACE_VMM3", "", "", "", [], [], ""], ["U_B_CTRG_1", [["ACE_packingBandage", 25], ["ACE_morphine", 10], ["ACE_tourniquet", 4]]], ["V_PlateCarrierGL_blk", [["ACE_Flashlight_KSF1", 1], ["ACE_M26_Clacker", 1], ["MineDetector", 1], ["ACE_wirecutter", 1], ["ACE_DefusalKit", 1], ["ACE_EntrenchingTool", 1], ["30Rnd_65x39_caseless_mag_Tracer", 7, 30]]], ["B_Kitbag_rgr", [["DemoCharge_Remote_Mag", 6, 1]]], "H_HelmetSpecB_sand", "G_Bandanna_beast", ["Binocular", "", "", "", [], [], ""], ["ItemMap", "ItemGPS", "TFAR_anprc152", "ItemCompass", "ACE_Altimeter", ""]]
				};
				case "aaat": {
					[["arifle_MX_Black_F", "", "ACE_acc_pointer_green", "optic_ERCO_blk_F", ["30Rnd_65x39_caseless_mag_Tracer", 30], [], "bipod_01_F_blk"], ["launch_MRAWS_sand_F", "", "", "", ["MRAWS_HEAT_F", 1], [], ""], [], ["U_B_CTRG_1", [["ACE_packingBandage", 25], ["ACE_morphine", 10], ["ACE_tourniquet", 4]]], ["V_PlateCarrier2_blk", [["ACE_CableTie", 2], ["ACE_MapTools", 1], ["ACE_Flashlight_KSF1", 1], ["ACE_EntrenchingTool", 1], ["ACE_salineIV_250", 4], ["30Rnd_65x39_caseless_mag_Tracer", 8, 30]]], ["B_Kitbag_rgr", [["MRAWS_HEAT_F", 4, 1], ["SmokeShell", 5, 1]]], "H_HelmetSpecB", "G_Bandanna_beast", ["Binocular", "", "", "", [], [], ""], ["ItemMap", "ItemGPS", "TFAR_anprc152", "ItemCompass", "ACE_Altimeter", ""]]
				};
				case "trag": {
					[["arifle_MX_Black_F", "", "ACE_acc_pointer_green", "optic_ERCO_blk_F", ["30Rnd_65x39_caseless_mag_Tracer", 30], [], "bipod_02_F_blk"], [], ["hgun_Pistol_heavy_01_F", "muzzle_snds_acp", "", "optic_MRD", ["11Rnd_45ACP_Mag", 11], [], ""], ["U_B_CTRG_1", [["ACE_packingBandage", 25], ["ACE_morphine", 10], ["ACE_tourniquet", 4]]], ["V_PlateCarrier2_blk", [["ACE_salineIV_250", 4], ["30Rnd_65x39_caseless_mag_Tracer", 10, 30]]], ["B_Carryall_cbr", [["MRAWS_HEAT_F", 2, 1], ["20Rnd_762x51_Mag", 5, 20], ["30Rnd_65x39_caseless_mag_Tracer", 10, 30], ["200Rnd_556x45_Box_Tracer_Red_F", 1, 200]]], "H_HelmetSpecB_sand", "G_Bandanna_beast", ["Binocular", "", "", "", [], [], ""], ["ItemMap", "ItemGPS", "TFAR_anprc152", "ItemCompass", "ACE_Altimeter", ""]]
				};
				case "dmr": {
					[["srifle_EBR_F", "", "ACE_acc_pointer_green", "optic_DMS", ["20Rnd_762x51_Mag", 20], [], "bipod_01_F_snd"], [], ["hgun_Pistol_heavy_01_F", "muzzle_snds_acp", "", "optic_MRD", ["11Rnd_45ACP_Mag", 11], [], ""], ["U_B_CTRG_1", [["ACE_packingBandage", 25], ["ACE_morphine", 10], ["ACE_tourniquet", 4]]], ["V_PlateCarrier2_blk", [["ACE_CableTie", 4], ["ACE_MapTools", 1], ["ACE_Flashlight_KSF1", 1], ["ACE_EntrenchingTool", 1], ["ACE_salineIV_250", 4], ["20Rnd_762x51_Mag", 7, 20]]], ["B_Kitbag_rgr", [["20Rnd_762x51_Mag", 5, 20], ["11Rnd_45ACP_Mag", 3, 11], ["SmokeShell", 4, 1]]], "H_HelmetSpecB_sand", "G_Bandanna_beast", ["Binocular", "", "", "", [], [], ""], ["ItemMap", "ItemGPS", "TFAR_anprc152", "ItemCompass", "ACE_Altimeter", ""]]
				};
				case "pilot": {
					[["SMG_01_F", "", "", "optic_ACO_grn_smg", ["30Rnd_45ACP_Mag_SMG_01", 25], [], ""], [], ["hgun_Pistol_heavy_01_F", "muzzle_snds_acp", "", "optic_MRD", ["11Rnd_45ACP_Mag", 11], [], ""], ["U_B_HeliPilotCoveralls", [["ACE_surgicalKit", 1], ["ACE_quikclot", 25]]], ["V_DeckCrew_white_F", [["adv_aceCPR_AED", 1], ["30Rnd_45ACP_Mag_SMG_01_Tracer_Yellow", 2, 25]]], ["OPXT_wht_1523", [["ACE_plasmaIV", 5], ["ACE_elasticBandage", 30], ["ACE_packingBandage", 35], ["ACE_epinephrine", 10], ["ACE_morphine", 10], ["ACE_morphine", 10]]], "H_CrewHelmetHeli_B", "G_Bandanna_beast", ["Binocular", "", "", "", [], [], ""], ["ItemMap", "ItemGPS", "TFAR_anprc152", "ItemCompass", "ACE_Altimeter", ""]]
				};
				case "sniper": {
					[["srifle_LRR_F", "", "", "optic_LRPS", ["7Rnd_408_Mag", 7], [], ""], [], ["hgun_Pistol_heavy_01_F", "muzzle_snds_acp", "", "optic_MRD", ["11Rnd_45ACP_Mag", 11], [], ""], ["U_B_FullGhillie_ard", [["ACE_packingBandage", 25], ["ACE_tourniquet", 4], ["ACE_morphine", 10], ["ACE_EntrenchingTool", 1], ["ACE_ATragMX", 1], ["ACE_Kestrel4500", 1], ["ACE_Flashlight_KSF1", 1], ["ACE_MapTools", 1], ["ACE_RangeCard", 1]]], ["V_PlateCarrier2_blk", [["ACE_Tripod", 1], ["ACE_HuntIR_monitor", 1], ["7Rnd_408_Mag", 5, 7], ["11Rnd_45ACP_Mag", 1, 11]]], ["OPXT_blk_1523", [["ACE_wirecutter", 1], ["optic_KHS_blk", 1], ["optic_AMS", 1], ["7Rnd_408_Mag", 6, 7], ["SmokeShellPurple", 4, 1], ["Laserbatteries", 1, 1]]], "H_HelmetSpecB", "G_Bandanna_beast", ["ACE_Vector", "", "", "", [], [], ""], ["ItemMap", "ItemGPS", "TFAR_anprc152", "ItemCompass", "ACE_Altimeter", ""]]
				};
				case "spotter": {
					[["arifle_MX_GL_F", "", "", "optic_ERCO_snd_F", ["30Rnd_65x39_caseless_mag_Tracer", 30], ["ACE_HuntIR_M203", 1], ""], [], ["hgun_Pistol_heavy_01_F", "muzzle_snds_acp", "", "optic_MRD", ["11Rnd_45ACP_Mag", 11], [], ""], ["U_B_FullGhillie_ard", [["ACE_packingBandage", 25], ["ACE_morphine", 10], ["ACE_EntrenchingTool", 1], ["ACE_Flashlight_KSF1", 1], ["ACE_tourniquet", 4], ["ACE_RangeCard", 1], ["ACE_ATragMX", 1], ["ACE_Kestrel4500", 1], ["ACE_MapTools", 1], ["ACE_CableTie", 1]]], ["V_PlateCarrier2_blk", [["ACE_SpottingScope", 1], ["ACE_HuntIR_monitor", 1], ["ACE_wirecutter", 1], ["30Rnd_65x39_caseless_mag_Tracer", 5, 30]]], ["OPXT_blk_1523", [["ACE_salineIV_250", 3], ["3Rnd_Smoke_Grenade_shell", 5, 3], ["3Rnd_HE_Grenade_shell", 2, 3], ["ACE_HuntIR_M203", 5, 1], ["Laserbatteries", 1, 1], ["30Rnd_65x39_caseless_mag_Tracer", 2, 30]]], "H_HelmetSpecB_sand", "G_Bandanna_beast", ["Laserdesignator", "", "", "", ["Laserbatteries", 1], [], ""], ["ItemMap", "ItemGPS", "TFAR_anprc152", "ItemCompass", "ACE_Altimeter", ""]]
				};
				case "jtac": {
					[["arifle_MX_GL_Black_F", "", "", "optic_ERCO_blk_F", ["30Rnd_65x39_caseless_mag_Tracer", 30], [], ""], [], ["hgun_Pistol_heavy_01_F", "muzzle_snds_acp", "", "optic_MRD", ["11Rnd_45ACP_Mag", 11], [], ""], ["U_B_CTRG_1", [["ACE_packingBandage", 25], ["ACE_morphine", 10], ["ACE_tourniquet", 4]]], ["V_PlateCarrier2_blk", [["ACE_MapTools", 1], ["ACE_Flashlight_KSF1", 1], ["ACE_UAVBattery", 4], ["ACE_HuntIR_monitor", 1], ["Laserbatteries", 2, 1], ["30Rnd_65x39_caseless_mag_Tracer", 2, 30]]], ["B_UAV_01_backpack_F", []], "H_HelmetSpecB", "G_Bandanna_beast", ["Laserdesignator", "", "", "", ["Laserbatteries", 1], [], ""], ["ItemMap", "B_UavTerminal", "TFAR_anprc152", "ItemCompass", "ACE_Altimeter", ""]]
				};
				case "rifle" : {
					[["arifle_MX_F", "", "ACE_acc_pointer_green", "optic_ERCO_snd_F", ["30Rnd_65x39_caseless_mag_Tracer", 30], [], "bipod_01_F_snd"], [], ["hgun_Pistol_heavy_01_F", "muzzle_snds_acp", "", "optic_MRD", ["11Rnd_45ACP_Mag", 11], [], ""], ["U_B_CTRG_1", [["ACE_packingBandage", 25], ["ACE_morphine", 10], ["ACE_tourniquet", 4]]], ["V_PlateCarrier2_blk", [["ACE_MapTools", 1], ["ACE_Flashlight_KSF1", 1], ["ACE_EntrenchingTool", 1], ["ACE_wirecutter", 1], ["ACE_CableTie", 2], ["ACE_salineIV_250", 4], ["ACE_packingBandage", 20]]], ["B_Kitbag_sgg", [["30Rnd_65x39_caseless_mag", 10, 30], ["11Rnd_45ACP_Mag", 5, 11], ["HandGrenade", 5, 1], ["SmokeShell", 5, 1], ["AMP_Breaching_Charge_Mag", 5, 1]]], "H_HelmetSpecB", "G_Bandanna_oli", ["Binocular", "", "", "", [], [], ""], ["ItemMap", "ItemGPS", "TFAR_anprc152", "ItemCompass", "ACE_Altimeter", ""]]
				};
				case "pionier" : {
					[["arifle_MX_F", "", "ACE_acc_pointer_green_IR", "optic_ERCO_snd_F", ["30Rnd_65x39_caseless_mag_Tracer", 30], [], "bipod_01_F_snd"], [], ["hgun_Pistol_heavy_01_F", "muzzle_snds_acp", "", "optic_MRD", ["11Rnd_45ACP_Mag", 11], [], ""], ["U_B_CTRG_1", [["ACE_tourniquet", 4], ["ACE_packingBandage", 25], ["ACE_morphine", 10]]], ["V_PlateCarrierGL_blk", [["ACE_wirecutter", 1], ["ACE_DefusalKit", 1], ["ACE_EntrenchingTool", 1], ["MineDetector", 1], ["ACE_CableTie", 2], ["ACE_MapTools", 1], ["ACE_Flashlight_KSF1", 1], ["SmokeShellBlue", 2, 1], ["SmokeShellYellow", 2, 1], ["SmokeShell", 2, 1], ["30Rnd_65x39_caseless_mag_Tracer", 5, 30]]], ["OPXT_blk_1523", [["ToolKit", 1], ["ACE_salineIV_250", 4], ["ACE_HuntIR_monitor", 1]]], "H_HelmetSpecB", "", [], ["", "", "", "", "", ""]]
				};
				default {
					[]
				};
			};

			ACE_player setUnitLoadout [_layout, true];
		};
	};
};