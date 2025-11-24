scriptName "fn_loadDefault";

// Remove current stuff
removeAllWeapons ACE_player;
removeAllItems ACE_player;
removeAllAssignedItems ACE_player;
removeUniform ACE_player;
removeVest ACE_player;
removeBackpack ACE_player;
removeHeadgear ACE_player;

params ["_arsenalType", "_role"];

if (_arsenalType == "USA") exitWith {
	private _layout = switch (_role) do
	{
		default {
			[[], [], [], ["GTO_BaseUniform", []], [], [], "GTO_Beret_Black", "", ["", "", "", "", [], [], ""], ["ItemMap", "ItemGPS", "TFAR_anprc152", "ItemCompass", "TFAR_microdagr", ""]]
		};
	};

	ACE_player setUnitLoadout [_layout, true];
};

GTO_CutomLoadout_Template = {
	params[ "_default", "_custom"];

	parseSimpleArray _default; // todo: edit that only one parameter is used
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