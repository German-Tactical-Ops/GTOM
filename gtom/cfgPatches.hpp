class CfgPatches
{
	class GTOM
	{
		// Meta information for editor
		name = "GTO Mod";
		author = "LucyferHW";
		url = "";

		// Required addons, used for setting load order.
		// When any of the addons is missing, pop-up warning will appear when launching the game.
		requiredAddons[] = {"A3_Functions_F", "A3_Weapons_F","A3_Modules_F","ace_main", "ace_modules", "ace_interact_menu", "A3_Supplies_F_Orange_Ammoboxes", "cba_common", "cba_events","aceax_gearinfo","ace_medical_treatment"};
		// List of objects (CfgVehicles classes) contained in the addon. Important also for Zeus content (units and groups) unlocking.
		units[] = {"GTO_MarkerFlag", "GTO_Banner", "GTO_Medic_Carryall_oli","GTO_Medic_Carryall_cbr","GTO_Base_Uniform","GTO_Soldier_Pilot","GTO_Soldier_Crewman","GTO_Soldier_LC","GTO_Soldier_Grenadier","GTO_Soldier_Rifleman","GTO_Soldier_Marksman","GTO_Soldier_MMG","GTO_Soldier_LMG","GTO_Soldier_AT","GTO_Soldier_Eng","GTO_Soldier_Med","GTO_Soldier_ExpSp","GTO_Soldier_FTL","GTO_Soldier_SL","GTO_Ammo_Box","GTO_Explosiv_Box","GTO_Equipment_Box","GTO_Arsenal_Box","GTO_Medic_Box"};
		// List of weapons (CfgWeapons classes) contained in the addon.
		weapons[] = {};
	};
};