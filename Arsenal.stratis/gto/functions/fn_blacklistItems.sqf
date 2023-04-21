scriptName "fn_blacklistItems";
/*
	Author: LucyferHW
	
	Description:
	Describe your function
*/
private _items = [];

private _GPS = ["ItemGPS","I_UavTerminal","C_UavTerminal","O_UavTerminal","I_E_UavTerminal","B_UavTerminal","ACE_DAGR","ItemAndroid","ACE_HuntIR_monitor","ACE_Kestrel4500","ItemMicroDAGR","ACE_microDAGR","ItemcTab"];
_items append _GPS;

private _NVG = ["rhsusf_acc_anpvs27","rhsusf_acc_anpas13gv1","optic_tws","optic_tws_mg","optic_NVS","optic_Nightstalker","rhsusf_acc_ACOG_anpvs27","ACE_optic_Hamr_PIP","ACE_optic_Hamr_2D","rhsusf_ANPVS_14","rhsusf_ANPVS_15","A3_GPNVG18_F","A3_GPNVG18b_F","A3_GPNVG18_REC_F","A3_GPNVG18b_REC_F","A3_GPNVG18_BLK_F","A3_GPNVG18b_BLK_F","A3_GPNVG18_REC_BLK_F","A3_GPNVG18b_REC_BLK_F","A3_GPNVG18_BLK_TI","A3_GPNVG18b_BLK_TI","A3_GPNVG18_REC_BLK_TI","A3_GPNVG18b_REC_BLK_TI","A3_GPNVG18_TI","A3_GPNVG18b_TI","A3_GPNVG18_REC_TI","A3_GPNVG18b_REC_TI","ACE_NVG_Gen1","ACE_NVG_Gen1_Brown","ACE_NVG_Gen1_Green","ACE_NVG_Gen2_Black","ACE_NVG_Gen2_Brown","ACE_NVG_Gen2","NVGoggles_OPFOR","NVGoggles","NVGoggles_INDEP","ACE_NVG_Gen4_Black","ACE_NVG_Gen4","ACE_NVG_Gen4_Green","NVGoggles_tna_F","ACE_NVG_Wide_Black","ACE_NVG_Wide","ACE_NVG_Wide_Green","rhsusf_Rhino","O_NVGoggles_ghex_F","O_NVGoggles_grn_F","O_NVGoggles_hex_F","O_NVGoggles_urb_F","NVGogglesB_blk_F","NVGogglesB_grn_F","NVGogglesB_gry_F","gpn18","rhs_1PN138","Laserdesignator_02_ghex_F","Laserdesignator_02","Laserdesignator_01_khk_F","Laserdesignator_03","Laserdesignator","ACE_Vector","ACE_MX2A"];
_items append _NVG;

private _tracking = ["rhs_weap_fgm148","launch_I_Titan_F","launch_I_Titan_eaf_F","launch_O_Titan_ghex_F","launch_O_Titan_F","launch_B_Titan_olive_F","launch_B_Titan_F","launch_B_Titan_tna_F","launch_O_Titan_short_F","launch_O_Titan_short_ghex_F","launch_I_Titan_short_F","launch_B_Titan_short_F","launch_B_Titan_short_tna_F"];
_items append _tracking;


_items arrayIntersect _items