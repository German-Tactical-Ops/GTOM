scriptName "fn_loadDefault";

params ["_arsenalType", "_role"];

if (_arsenalType == "USA") exitWith {
	private _layout = switch (_role) do
	{
		case "pl": {
			[];
		};
		case "sl": {
			[["rhs_weap_m4a1_carryhandle", "", "rhsusf_acc_anpeq15_bk_light", "rhsusf_acc_ACOG_RMR", ["rhs_mag_30Rnd_556x45_M855A1_PMAG_Tracer_Red", 30], [], "rhsusf_acc_kac_grip"], [], ["rhs_weap_M320", "", "", "", ["ACE_HuntIR_M203", 1], [], ""], ["VSM_Multicam_Crye_Camo", [["ACE_EarPlugs", 1], ["ACE_IR_Strobe_Item", 1], ["ACE_CableTie", 3], ["ItemAndroid", 1], ["ACE_MapTools", 1], ["ace_marker_flags_blue", 1], ["ACE_packingBandage", 25], ["ACE_tourniquet", 4], ["ACE_splint", 1], ["A3_GPNVG18b_F", 1], ["GTO_Beret_Red", 1], ["rhsusf_acc_rotex5_grey", 1], ["kat_Painkiller", 1, 10]]], ["lbt_comms_mc", [["ACE_EntrenchingTool", 1], ["WBK_HeadLampItem", 1], ["ACE_HuntIR_monitor", 1], ["ItemcTab", 1], ["ItemcTabHCam", 1], ["SmokeShellBlue", 1, 1], ["SmokeShell", 2, 1], ["UGL_FlareRed_F", 1, 1], ["B_IR_Grenade", 1, 1], ["ACE_HuntIR_M203", 4, 1]]], ["TFAR_rt1523g_big_rhs", [["rhs_mag_30Rnd_556x45_M855A1_PMAG_Tracer_Red", 8, 30]]], "VSM_OPS_2_multicam", "", ["Laserdesignator", "", "", "", [], [], ""], ["ItemMap", "ItemGPS", "TFAR_anprc152", "ItemCompass", "ItemWatch", ""]]
		};
		case "ldoctor": {
			[[], [], [], ["GTO_BaseUniform", []], [], [], "GTO_Beret_Black", "", ["", "", "", "", [], [], ""], ["ItemMap", "ItemGPS", "TFAR_anprc152", "ItemCompass", "TFAR_microdagr", ""]]
		};
		case "doctor": {
			[[], [], [], ["GTO_BaseUniform", []], [], [], "GTO_Beret_Black", "", ["", "", "", "", [], [], ""], ["ItemMap", "ItemGPS", "TFAR_anprc152", "ItemCompass", "TFAR_microdagr", ""]]
		};
		case "medic": {
			[["arifle_SPAR_01_blk_F", "", "", "rhsusf_acc_su230", ["rhs_mag_30Rnd_556x45_M855A1_Stanag", 30], [], ""], [], [], ["VSM_Multicam_Crye_Camo", [["ACE_CableTie", 1], ["ACE_EarPlugs", 1], ["ACE_EntrenchingTool", 1], ["ItemAndroid", 1], ["ItemMicroDAGR", 1], ["ACE_Flashlight_XL50", 1], ["ACE_IR_Strobe_Item", 1], ["ItemcTabHCam", 1], ["WBK_HeadLampItem", 1], ["ACE_packingBandage", 20], ["ACE_tourniquet", 4], ["ACE_splint", 2]]], ["VSM_RAV_operator_Multicam", [["kat_AED", 1], ["kat_stethoscope", 1], ["rhs_mag_30Rnd_556x45_M855A1_PMAG_Tracer_Red", 10, 30], ["SmokeShell", 2, 1]]], ["GTO_Carryall_Medic_multicam", [["kat_IV_16", 10], ["kat_aatKit", 2], ["ACE_adenosine", 5], ["ACE_quikclot", 20], ["ACE_packingBandage", 30], ["kat_chestSeal", 5], ["kat_EACA", 5], ["ACE_epinephrine", 5], ["kat_IO_FAST", 10], ["kat_larynx", 20], ["ACE_plasmaIV", 10], ["ACE_plasmaIV_500", 12], ["kat_Pulseoximeter", 10], ["ACE_salineIV_250", 2], ["ACE_splint", 8], ["ACE_tourniquet", 10], ["kat_TXA", 5]]], "GTO_HelmetSpec_Medic_Black", "", [], ["ItemMap", "ItemGPS", "TFAR_anprc152", "ItemCompass", "TFAR_microdagr", ""]]
		};
		case "ammoCarrier": {
			[["rhs_weap_m16a4", "", "", "rhsusf_acc_ACOG_RMR", ["rhs_mag_30Rnd_556x45_M855A1_PMAG_Tracer_Red", 30], [], "rhsusf_acc_grip1"], [], ["rhsusf_weap_glock17g4", "", "", "", ["rhsusf_mag_17Rnd_9x19_JHP", 17], [], ""], ["VSM_Multicam_Crye_Camo", [["ACE_CableTie", 1], ["ACE_EarPlugs", 1], ["ItemAndroid", 1], ["WBK_HeadLampItem", 1], ["ItemcTabHCam", 1], ["ACE_IR_Strobe_Item", 1], ["ACE_Flashlight_XL50", 1], ["ACE_packingBandage", 20], ["ACE_splint", 1], ["ACE_tourniquet", 4], ["ACE_EntrenchingTool", 1], ["kat_Painkiller", 1, 10], ["rhsusf_mag_17Rnd_9x19_JHP", 2, 17]]], ["VSM_FAPC_MG_Multicam", [["rhs_mag_30Rnd_556x45_M855A1_PMAG_Tracer_Red", 10, 30], ["HandGrenade", 1, 1], ["SmokeShell", 1, 1]]], ["VSM_Multicam_Backpack_Kitbag", [["rhs_mag_30Rnd_556x45_M855A1_PMAG_Tracer_Red", 10, 30], ["SmokeShell", 5, 1], ["HandGrenade", 5, 1]]], "VSM_OPS_multicam", "", ["Rangefinder", "", "", "", [], [], ""], ["ItemMap", "ItemGPS", "TFAR_anprc152", "ItemCompass", "TFAR_microdagr", "A3_GPNVG18_F"]]
		};
		case "weaponSpecialist": {
			[["rhs_weap_mk17_STD", "", "rhsusf_acc_anpeq15side", "rhsusf_acc_su230a_mrds_c_3d", ["rhs_mag_20Rnd_SCAR_762x51_m62_tracer", 20], [], "rhsusf_acc_tdstubby_tan"], [], ["hgun_P07_blk_F", "", "", "", ["16Rnd_9x21_Mag", 17], [], ""], ["VSM_Multicam_Crye_SS_Camo", [["ACE_packingBandage", 20], ["ACE_CableTie", 2], ["ACE_tourniquet", 4], ["ItemAndroid", 1], ["ACE_Canteen", 1], ["ACE_Flashlight_XL50", 1], ["ACE_EntrenchingTool", 1], ["ACE_EarPlugs", 1], ["kat_Painkiller", 1, 10]]], ["VSM_CarrierRig_Gunner_Multicam", [["SmokeShell", 2, 1], ["HandGrenade", 2, 1]]], ["VSM_Multicam_Backpack_Compact", [["16Rnd_9x21_Mag", 2, 17], ["rhs_mag_20Rnd_SCAR_762x51_m62_tracer", 7, 20]]], "VSM_Mich2000_Multicam", "", ["Rangefinder", "", "", "", [], [], ""], ["ItemMap", "ItemGPS", "TFAR_anprc152", "ItemCompass", "TFAR_microdagr", "A3_GPNVG18_F"]]
		};
		case "mg": {
			[["rhs_weap_m249_light_S_vfg2", "ACE_muzzle_mzls_L", "rhsusf_acc_anpeq15side_bk", "rhsusf_acc_su230_mrds_3d", ["rhsusf_100Rnd_556x45_M855_mixed_soft_pouch_coyote", 100], [], "rhsusf_acc_grip4_bipod"], [], ["rhsusf_weap_m9", "", "", "", ["rhsusf_mag_15Rnd_9x19_JHP", 15], [], ""], ["VSM_Multicam_Camo_SS", [["ACE_packingBandage", 20], ["ACE_CableTie", 2], ["ACE_Canteen", 1], ["ACE_Flashlight_XL50", 1], ["ACE_EntrenchingTool", 1], ["ACE_EarPlugs", 1], ["ItemAndroid", 1]]], ["VSM_FAPC_MG_Multicam", [["ACE_WaterBottle", 2], ["ACE_tourniquet", 4], ["SmokeShell", 2, 1], ["rhsusf_100Rnd_556x45_M855_mixed_soft_pouch_coyote", 7, 100], ["kat_Painkiller", 1, 10]]], ["VSM_Multicam_Backpack_Compact", []], "VSM_OPS_multicam", "", ["Binocular", "", "", "", [], [], ""], ["ItemMap", "ItemGPS", "TFAR_rf7800str_12", "ItemCompass", "TFAR_microdagr", "A3_GPNVG18_F"]]
		};
		case "grenadier": {
			[["rhs_weap_m4a1_m320", "", "rhsusf_acc_anpeq15_bk_light", "rhsusf_acc_ACOG_RMR_3d", ["rhs_mag_30Rnd_556x45_M855A1_Stanag", 30], ["rhs_mag_M441_HE", 1], ""], [], [], ["VSM_Multicam_Crye_Camo", [["ACE_packingBandage", 15], ["ACE_CableTie", 2], ["ACE_EarPlugs", 1], ["ACE_IR_Strobe_Item", 1], ["ACE_splint", 1], ["ACE_tourniquet", 4], ["GTO_Beret_Black", 1], ["WBK_HeadLampItem", 1], ["ItemcTabHCam", 1], ["kat_Painkiller", 1, 10]]], ["VSM_RAV_MG_Multicam", [["ACE_EntrenchingTool", 1], ["ItemAndroid", 1], ["A3_GPNVG18_F", 1], ["KNB_Notebook", 1], ["HandGrenade", 1, 1], ["SmokeShell", 1, 1], ["rhs_mag_30Rnd_556x45_M855_Stanag", 12, 30]]], ["VSM_Multicam_Backpack_Compact", [["rhs_mag_M433_HEDP", 6, 1], ["rhs_mag_M441_HE", 18, 1], ["UGL_FlareRed_F", 1, 1]]], "VSM_OPS_multicam", "G_Tactical_Black", ["Rangefinder", "", "", "", [], [], ""], ["ItemMap", "ItemGPS", "TFAR_rf7800str_4", "ItemCompass", "TFAR_microdagr", ""]]
		};
		case "lat": {
			[["rhs_weap_m4a1_carryhandle_grip2", "", "rhsusf_acc_anpeq15side_bk", "rhsusf_acc_ACOG_3d", ["rhs_mag_30Rnd_556x45_M855A1_PMAG_Tracer_Red", 30], [], "rhsusf_acc_grip2"], ["rhs_weap_M136", "", "", "", [], [], ""], ["rhsusf_weap_glock17g4", "", "", "", ["rhsusf_mag_17Rnd_9x19_JHP", 17], [], ""], ["VSM_Multicam_Crye_SS_Camo", [["ACE_packingBandage", 20], ["ACE_CableTie", 2], ["ACE_tourniquet", 4], ["ACE_Canteen", 1], ["ACE_Flashlight_XL50", 1], ["ACE_EntrenchingTool", 1], ["ACE_EarPlugs", 1], ["kat_Painkiller", 1, 10]]], ["VSM_CarrierRig_Gunner_OCP", []], ["VSM_Multicam_Backpack_Compact", [["rhs_mag_30Rnd_556x45_M855A1_PMAG_Tracer_Red", 7, 30], ["rhsusf_mag_17Rnd_9x19_JHP", 3, 17]]], "VSM_Mich2000_Multicam", "", ["Rangefinder", "", "", "", [], [], ""], ["ItemMap", "ItemGPS", "TFAR_rf7800str_19", "ItemCompass", "TFAR_microdagr", ""]]
		};
		case "hat": {
			[["rhs_weap_m4a1_carryhandle", "", "rhsusf_acc_anpeq15_bk_light", "rhsusf_acc_ACOG_RMR_3d", ["rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red", 30], [], "rhsusf_acc_grip3"], ["launch_MRAWS_sand_F", "", "", "", ["MRAWS_HEAT_F", 1], [], ""], [], ["VSM_Multicam_Crye_Camo", [["ACE_packingBandage", 15], ["ACE_CableTie", 2], ["ACE_EarPlugs", 1], ["ACE_IR_Strobe_Item", 1], ["ACE_splint", 1], ["ACE_tourniquet", 4], ["GTO_Beret_Black", 1], ["WBK_HeadLampItem", 1], ["ItemcTabHCam", 1], ["kat_Painkiller", 1, 10]]], ["VSM_RAV_MG_Multicam", [["ACE_EntrenchingTool", 1], ["A3_GPNVG18_F", 1], ["KNB_Notebook", 1], ["ItemMicroDAGR", 1], ["HandGrenade", 1, 1], ["SmokeShell", 1, 1], ["rhs_mag_30Rnd_556x45_M855A1_PMAG_Tracer_Red", 8, 30]]], ["VSM_OCP_Backpack_Kitbag", [["MRAWS_HEAT_F", 2, 1]]], "VSM_OPS_multicam", "G_Tactical_Black", ["Rangefinder", "", "", "", [], [], ""], ["ItemMap", "ItemGPS", "TFAR_anprc152", "ItemCompass", "TFAR_microdagr", ""]]
		};
		case "marksman": {
			[["rhs_weap_sr25_ec", "", "rhsusf_acc_anpeq15side_bk", "optic_AMS", ["rhsusf_20Rnd_762x51_SR25_m62_Mag", 20], [], "rhsusf_acc_harris_bipod"], [], ["rhsusf_weap_glock17g4", "ACE_muzzle_mzls_smg_02", "acc_flashlight_pistol", "", ["rhsusf_mag_17Rnd_9x19_JHP", 17], [], ""], ["VSM_Multicam_Camo_SS", [["ACE_packingBandage", 20], ["ACE_CableTie", 2], ["ACE_tourniquet", 4], ["ItemAndroid", 1], ["ACE_Canteen", 1], ["ACE_Flashlight_XL50", 1], ["ACE_EntrenchingTool", 1], ["ACE_EarPlugs", 1], ["kat_Painkiller", 1, 10]]], ["cpc_lightbelt_mc", [["rhsusf_20Rnd_762x51_SR25_m62_Mag", 6, 20]]], ["VSM_Multicam_Backpack_Compact", [["optic_Nightstalker", 1], ["rhsusf_mag_17Rnd_9x19_JHP", 5, 17]]], "VSM_OPS_multicam", "", ["ACE_Vector", "", "", "", [], [], ""], ["ItemMap", "ItemGPS", "TFAR_anprc152_14", "ItemCompass", "ItemWatch", "A3_GPNVG18_F"]]
		};
		case "sniper": {
			[[], [], [], ["GTO_BaseUniform", []], [], [], "GTO_Beret_Black", "", ["", "", "", "", [], [], ""], ["ItemMap", "ItemGPS", "TFAR_anprc152", "ItemCompass", "TFAR_microdagr", ""]]
		};
		case "spotter": {
			[[], [], [], ["GTO_BaseUniform", []], [], [], "GTO_Beret_Black", "", ["", "", "", "", [], [], ""], ["ItemMap", "ItemGPS", "TFAR_anprc152", "ItemCompass", "TFAR_microdagr", ""]]
		};
		case "sapper": {
			[["rhs_weap_m4a1_carryhandle_grip3", "", "rhsusf_acc_anpeq15_bk", "rhsusf_acc_ACOG_RMR_3d", ["rhs_mag_30Rnd_556x45_M855A1_PMAG_Tracer_Red", 30], [], "rhsusf_acc_grip3"], [], [], ["VSM_Multicam_Crye_SS_Camo", [["ACE_CableTie", 2], ["ACE_IR_Strobe_Item", 1], ["GTO_Beret_Black", 1], ["WBK_HeadLampItem", 1], ["ItemcTabHCam", 1], ["ACE_packingBandage", 15], ["ACE_tourniquet", 4], ["ACE_splint", 2]]], ["V_PlateCarrierGL_rgr", [["MineDetector", 1], ["ACE_M26_Clacker", 1], ["KNB_Notebook", 1], ["ItemMicroDAGR", 1], ["ACE_EntrenchingTool", 1], ["ACE_DefusalKit", 1], ["SmokeShell", 1, 1], ["SmokeShellGreen", 1, 1], ["HandGrenade", 1, 1]]], ["VSM_OCP_Backpack_Kitbag", [["rhs_mag_30Rnd_556x45_M855A1_PMAG_Tracer_Red", 12, 30]]], "VSM_OPS_multicam", "G_Tactical_Clear", ["Rangefinder", "", "", "", [], [], ""], ["ItemMap", "ItemGPS", "TFAR_rf7800str_5", "ItemCompass", "ItemWatch", "A3_GPNVG18_F"]]
		};
		case "pionier": {
			[[], [], [], ["GTO_BaseUniform", []], [], [], "GTO_Beret_Black", "", ["", "", "", "", [], [], ""], ["ItemMap", "ItemGPS", "TFAR_anprc152", "ItemCompass", "TFAR_microdagr", ""]]
		};
		case "engineer": {
			[[], [], [], ["GTO_BaseUniform", []], [], [], "GTO_Beret_Black", "", ["", "", "", "", [], [], ""], ["ItemMap", "ItemGPS", "TFAR_rf7800str", "ItemCompass", "TFAR_microdagr", ""]]
		};
		case "pilot": {
			[["rhs_weap_m4_carryhandle", "", "rhsusf_acc_anpeq15_bk_light", "rhsusf_acc_ACOG", ["rhs_mag_30Rnd_556x45_M855_PMAG", 30], [], "rhsusf_acc_kac_grip"], [], ["rhsusf_weap_glock17g4", "", "", "", [], [], ""], ["VSM_Multicam_Crye_Camo", [["ACE_packingBandage", 15], ["ACE_CableTie", 2], ["ACE_EarPlugs", 1], ["ACE_IR_Strobe_Item", 1], ["ACE_splint", 1], ["ACE_tourniquet", 4], ["GTO_Beret_Black", 1], ["WBK_HeadLampItem", 1], ["ItemcTabHCam", 1], ["kat_Painkiller", 1, 10], ["rhs_mag_30Rnd_556x45_M855_PMAG", 1, 30]]], ["VSM_FAPC_MG_Multicam", [["ACE_EntrenchingTool", 1], ["ItemAndroid", 1], ["A3_GPNVG18_F", 1], ["rhs_mag_30Rnd_556x45_M855_PMAG", 14, 30], ["HandGrenade", 1, 1], ["SmokeShell", 1, 1], ["rhsusf_mag_17Rnd_9x19_JHP", 5, 17]]], [], "VSM_OPS_multicam", "", ["Rangefinder", "", "", "", [], [], ""], ["ItemMap", "ItemGPS", "TFAR_anprc152", "ItemCompass", "TFAR_microdagr", ""]]
		};
		case "crewman": {
			[["rhsusf_weap_MP7A2", "", "", "optic_Yorris", ["rhsusf_mag_40Rnd_46x30_JHP", 40], [], ""], [], ["rhsusf_weap_glock17g4", "", "acc_flashlight_pistol", "", ["rhsusf_mag_17Rnd_9x19_JHP", 17], [], ""], ["VSM_Multicam_Camo", [["ACE_EarPlugs", 1], ["ItemAndroid", 1], ["WBK_HeadLampItem", 1], ["ItemcTabHCam", 1], ["ACE_IR_Strobe_Item", 1], ["ACE_Flashlight_XL50", 1], ["ACE_MapTools", 1], ["ACE_tourniquet", 4], ["ACE_splint", 2], ["ACE_quikclot", 16], ["ACE_CableTie", 1], ["rhsusf_mag_17Rnd_9x19_JHP", 1, 17]]], ["lbt_light_mc", [["ToolKit", 1], ["rhsusf_mag_17Rnd_9x19_JHP", 3, 17]]], [], "rhsusf_cvc_helmet", "", ["Rangefinder", "", "", "", [], [], ""], ["ItemMap", "ItemGPS", "TFAR_anprc152", "ItemCompass", "TFAR_microdagr", "A3_GPNVG18_F"]]
		};
		default {
			[[], [], [], ["GTO_BaseUniform", []], [], [], "GTO_Beret_Black", "", ["", "", "", "", [], [], ""], ["ItemMap", "ItemGPS", "TFAR_anprc152", "ItemCompass", "TFAR_microdagr", ""]]
		};
	};

	ACE_player setUnitLoadout [_layout, true];
};

GTO_CutomLoadout_Template = {
	params[ "_default", "_custom"];

	if (_custom == "[]") then {
		parseSimpleArray _default;
	} else {
		systemChat "Loading Custom Loadout";
		parseSimpleArray _custom;
		
	};
};

if (_arsenalType == "Custom") exitWith {
	private _layout = switch (_role) do
	{
		case "sl": {
			[GTO_DefaultLoadout_sl, GTO_Loadout_sl] call GTO_CutomLoadout_Template;
		};

		case "medic": {
			[GTO_DefaultLoadout_medic, GTO_Loadout_medic] call GTO_CutomLoadout_Template;
		};
		case "ammoCarrier": {
			[GTO_DefaultLoadout_ammoCarrier, GTO_Loadout_ammoCarrier] call GTO_CutomLoadout_Template;
		};

		case "weaponSpecialist": {
			[GTO_DefaultLoadout_weaponSpecialist, GTO_Loadout_weaponSpecialist] call GTO_CutomLoadout_Template;
		};
		case "mg": {
			[GTO_DefaultLoadout_mg, GTO_Loadout_mg] call GTO_CutomLoadout_Template;
		};
		case "grenadier": {
			[GTO_DefaultLoadout_grenadier, GTO_Loadout_grenadier] call GTO_CutomLoadout_Template;
		};
		case "at": {
			[GTO_DefaultLoadout_at, GTO_Loadout_at] call GTO_CutomLoadout_Template;
		};

		case "marksman": {
			[GTO_DefaultLoadout_marksman, GTO_Loadout_marksman] call GTO_CutomLoadout_Template;
		};
		case "sniper": {
			[GTO_DefaultLoadout_sniper, GTO_Loadout_sniper] call GTO_CutomLoadout_Template;
		};
		case "sapper": {
			[GTO_DefaultLoadout_sapper, GTO_Loadout_sapper] call GTO_CutomLoadout_Template;
		};
		case "engineer": {
			[GTO_DefaultLoadout_engineer, GTO_Loadout_engineer] call GTO_CutomLoadout_Template;
		};

		case "pilot": {
			[GTO_DefaultLoadout_pilot, GTO_Loadout_pilot] call GTO_CutomLoadout_Template;
		};
		case "crewman": {
			[GTO_DefaultLoadout_crewman, GTO_Loadout_crewman] call GTO_CutomLoadout_Template;
		};

		default {
			[[], [], [], ["GTO_BaseUniform", []], [], [], "GTO_Beret_Black", "", ["", "", "", "", [], [], ""], ["ItemMap", "", "", "ItemCompass", "", ""]]
		};
	};

	ACE_player setUnitLoadout [_layout, true];
};

/* if (GTO_Loadout_sl == "[]") then {
		systemChat "SL no Custom Loadout";
		
		parseSimpleArray GTO_DefaultLoadout_sl;
	} else {
		parseSimpleArray GTO_Loadout_sl;
}; */