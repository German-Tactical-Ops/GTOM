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
		requiredAddons[] = {"A3_Functions_F", "A3_Weapons_F","A3_Modules_F","ace_main", "ace_modules", "ace_interact_menu","cba_common", "cba_events","aceax_gearinfo","ace_medical_treatment"};
		// List of objects (CfgVehicles classes) contained in the addon. Important also for Zeus content (units and groups) unlocking.
		units[] = {"GTO_MarkerFlag", "GTO_Banner"};
		// List of weapons (CfgWeapons classes) contained in the addon.
		weapons[] = {};
	};
};