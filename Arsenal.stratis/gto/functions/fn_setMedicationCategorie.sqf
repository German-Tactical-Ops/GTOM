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


_medicItems=["ACE_adenosine","kat_amiodarone","kat_Carbonate","kat_atropine","kat_CaffeineItem","kat_EACA","kat_etomidate","kat_flumazenil","kat_ketamine","kat_lidocaine","kat_lorazepam","ACE_morphine","kat_nalbuphine","kat_nitroglycerin","kat_norepinephrine","kat_naloxone","kat_Painkiller","kat_PervitinItem","kat_phenylephrine","kat_sealant","kat_TXA","kat_fentanyl","ACE_epinephrine"];


[_medicItems, "MedicalStuff","gtom\arsenal\textures\icon_medical.paa"] call ace_arsenal_fnc_addRightPanelButton;