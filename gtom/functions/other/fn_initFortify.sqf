scriptName "fn_initFortify";
/*
	Author: LucyferHW
	
	Description:
	Runs on start.
*/

[west, -1, [["Land_MedicalTent_01_white_generic_inner_F",100],["Land_HBarrier_3_F",30],["Land_HBarrier_1_F",10],["Land_SandbagBarricade_01_half_F",25],["Land_SandbagBarricade_01_F",50],["Land_SandbagBarricade_01_hole_F",50],["Land_BagFence_Long_F",20],["Land_BagFence_Round_F",20],["Land_BagFence_Short_F",10],["Land_Plank_01_4m_F",5],["Land_PortableLight_double_F",10],["RHS_M2StaticMG_D",500],["RHS_MK19_TriPod_D",500],["RHS_TOW_TriPod_D",750],["RHS_M2StaticMG_MiniTripod_D",500],["RHS_Stinger_AA_pod_D",750]]] call ace_fortify_fnc_registerObjects;

systemChat "Fortify initialized";