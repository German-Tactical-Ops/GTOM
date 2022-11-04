scriptName "fn_setMedicationCategorie";
/*
	Author: LucyferHW
	
	Description:
	Runs on start.
	
	Parameter(s):
	#0 OBJECT - Description
	
	Returns:
	Nothing
*/


_medicItems=["kat_Painkiller","kat_Carbonate","kat_IV_16","kat_aatKit","kat_accuvac","ACE_adenosine","kat_X_AED","kat_amiodarone","ACE_ATNAA","kat_atropine","kat_AED","Attachable_Helistretcher","ACE_fieldDressing","ACE_elasticBandage","ACE_packingBandage","ACE_quikclot","kat_crossPanel","ACE_bodyBag","kat_chestSeal","ACE_epinephrine","kat_IO_FAST","KAT_Empty_bloodIV_250","KAT_Empty_bloodIV_500","kat_guedel","kat_larynx","kat_lidocaine","ACE_morphine","kat_naloxone","kat_nitroglycerin","kat_norepinephrine","ACE_personalAidKit","kat_phenylephrine","ACE_plasmaIV","ACE_plasmaIV_250","ACE_plasmaIV_500","kat_Pulseoximeter","ACE_salineIV","ACE_salineIV_250","ACE_salineIV_500","ACE_splint","kat_stethoscope","ACE_surgicalKit","kat_TXA","ACE_tourniquet","kat_bloodIV_O","ACE_bloodIV","kat_bloodIV_O_N","kat_bloodIV_A","kat_bloodIV_A_N","kat_bloodIV_AB","kat_bloodIV_AB_N","kat_bloodIV_B","kat_bloodIV_B_N","ACE_bloodIV_250","kat_bloodIV_O_250","kat_bloodIV_O_250_N","kat_bloodIV_A_250","kat_bloodIV_A_250_N","kat_bloodIV_AB_250","kat_bloodIV_AB_250_N","kat_bloodIV_B_250","kat_bloodIV_B_250_N","ACE_bloodIV_500","kat_bloodIV_O_500","kat_bloodIV_O_500_N","kat_bloodIV_A_500","kat_bloodIV_A_500_N","kat_bloodIV_AB_500","kat_bloodIV_AB_500_N","kat_bloodIV_B_500","kat_bloodIV_B_500_N"];


[_medicItems, "MedicalStuff","gtom\icons\export\medIcon.paa"] call ace_arsenal_fnc_addRightPanelButton;