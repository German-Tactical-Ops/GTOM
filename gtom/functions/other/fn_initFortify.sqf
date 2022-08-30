scriptName "fn_initFortify";
/*
	Author: LucyferHW
	
	Description:
	Runs on start.
*/

[west, -1, [["Land_MedicalTent_01_white_generic_inner_F"],["Land_HBarrier_3_F"],["Land_HBarrier_1_F"],["Land_SandbagBarricade_01_half_F"],["Land_SandbagBarricade_01_F"],["Land_SandbagBarricade_01_hole_F"],["Land_BagFence_Long_F"],["Land_BagFence_Round_F"],["Land_BagFence_Short_F"],["Land_Plank_01_4m_F"],["Land_PortableLight_double_F"],["RHS_M2StaticMG_D"],["RHS_MK19_TriPod_D"],["RHS_TOW_TriPod_D"],["RHS_M2StaticMG_MiniTripod_D"],["RHS_Stinger_AA_pod_D"]]] call ace_fortify_fnc_registerObjects;

systemChat "Fortify initialized";