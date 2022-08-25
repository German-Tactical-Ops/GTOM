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
		requiredAddons[] = {"A3_Functions_F", "A3_Weapons_F", "ace_main", "ace_modules", "ace_interact_menu", "A3_Supplies_F_Orange_Ammoboxes", "cba_common", "cba_events"};
		// List of objects (CfgVehicles classes) contained in the addon. Important also for Zeus content (units and groups) unlocking.
		units[] = {"GTO_Supply_Box", "GTO_MarkerFlag", "GTO_Banner", "GTO_Medic_Carryall_oli", "GTO_Arsenal", "GTO_Medic_Carryall_cbr"};
		// List of weapons (CfgWeapons classes) contained in the addon.
		weapons[] = {};
	};
};