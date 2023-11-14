scriptName "fn_arsenal_Custom";
/*
	Author: LucyferHW
	
	Description:
	Describe your function
*/
params ["_role"];

private _primary_basic = parseSimpleArray GTO_Primary_basic;
private _secondary_basic = parseSimpleArray GTO_Secondary_basic;

private _primary_basicWeapon = parseSimpleArray GTO_Primary_basicWeapon;
private _secondary_basicWeapon = parseSimpleArray GTO_Secondary_basicWeapon;

private _primary_basicAttachments = parseSimpleArray GTO_Primary_basicAttachments;
private _secondary_basicAttachments = parseSimpleArray GTO_Secondary_basicAttachments;

private _primary_sl = parseSimpleArray GTO_Primary_sl;
private _secondary_sl = parseSimpleArray GTO_Secondary_sl;
private _primary_ftl = parseSimpleArray GTO_Primary_ftl;
private _secondary_ftl = parseSimpleArray GTO_Secondary_ftl;

private _primary_doctor = parseSimpleArray GTO_Primary_doctor;
private _secondary_doctor = parseSimpleArray GTO_Secondary_doctor;
private _primary_medic = parseSimpleArray GTO_Primary_medic;
private _secondary_medic = parseSimpleArray GTO_Secondary_medic;
// private _primary_medic = parseSimpleArray GTO_Primary_afr;
// private _secondary_medic = parseSimpleArray GTO_Secondary_afr;

private _primary_ammoCarrier = parseSimpleArray GTO_Primary_ammoCarrier;
private _secondary_ammoCarrier = parseSimpleArray GTO_Secondary_ammoCarrier;
private _primary_weaponSpecialist = parseSimpleArray GTO_Primary_weaponSpecialist;
private _secondary_weaponSpecialist = parseSimpleArray GTO_Secondary_weaponSpecialist;
private _primary_mg = parseSimpleArray GTO_Primary_mg;
private _secondary_mg = parseSimpleArray GTO_Secondary_mg;
private _primary_grenadier = parseSimpleArray GTO_Primary_grenadier;
private _secondary_grenadier = parseSimpleArray GTO_Secondary_grenadier;
private _primary_at = parseSimpleArray GTO_Primary_at;
private _secondary_at = parseSimpleArray GTO_Secondary_at;
private _primary_marksman = parseSimpleArray GTO_Primary_marksman;
private _secondary_marksman = parseSimpleArray GTO_Secondary_marksman;
private _primary_sniper = parseSimpleArray GTO_Primary_sniper;
private _secondary_sniper = parseSimpleArray GTO_Secondary_sniper;
private _primary_sapper = parseSimpleArray GTO_Primary_sapper;
private _secondary_sapper = parseSimpleArray GTO_Secondary_sapper;
private _primary_engineer = parseSimpleArray GTO_Primary_engineer;
private _secondary_engineer = parseSimpleArray GTO_Secondary_engineer;
private _primary_pilot = parseSimpleArray GTO_Primary_pilot;
private _secondary_pilot = parseSimpleArray GTO_Secondary_pilot;
private _primary_crewman = parseSimpleArray GTO_Primary_crewman;
private _secondary_crewman = parseSimpleArray GTO_Secondary_crewman;

// Extra Fields

private _primary_goggles = parseSimpleArray GTO_Primary_goggles;
private _secondary_goggles = parseSimpleArray GTO_Secondary_goggles;

private _base = _primary_goggles + _secondary_goggles + _primary_basic + _secondary_basic;
private _base_soldier = _base + _primary_basicWeapon + _secondary_basicWeapon + _primary_basicAttachments + _secondary_basicAttachments;

private _items = [];

_items append (switch (_role) do
{
	case "sl":
	{
		_base_soldier+
		_primary_sl+
		_secondary_sl+
		_primary_ftl+
		_secondary_ftl
	};
	case "doctor":
	{
		_base_soldier+
		_primary_sl+
		_secondary_sl+
		_primary_medic+
		_secondary_medic+
		_primary_doctor+
		_secondary_doctor
	};
	case "medic":
	{
		_base_soldier+
		_primary_medic+
		_secondary_medic
	};
	case "ammoCarrier":
	{
		_base_soldier+
		_primary_ammoCarrier+
		_secondary_ammoCarrier
	};
	case "weaponSpecialist":
	{
		_base+
		_primary_basicAttachments+
		_secondary_basicAttachments+
		_primary_weaponSpecialist+
		_secondary_weaponSpecialist
	};
	case "mg":
	{
		_base+
		_primary_basicAttachments+
		_secondary_basicAttachments+
		_primary_mg+
		_secondary_mg
	};
	case "grenadier":
	{
		_base+
		_primary_basicAttachments+
		_secondary_basicAttachments+
		_primary_grenadier+
		_secondary_grenadier
	};
	case "at":
	{
		_base_soldier+
		_primary_at+
		_secondary_at
	};
	case "marksman":
	{
		_base+
		_primary_marksman+
		_secondary_marksman
	};
	case "sniper":
	{
		_base+
		_primary_sniper+
		_secondary_sniper
	};
	case "sapper":
	{
		_base_soldier+
		_primary_sapper+
		_secondary_sapper
	};
	case "engineer":
	{
		_base_soldier+
		_primary_engineer+
		_secondary_engineer
	};
	case "pilot":
	{
		_base_soldier+
		_primary_pilot+
		_secondary_pilot
	};
	case "crewman":
	{
		_base_soldier+
		_primary_crewman+
		_secondary_crewman
	};
	case "admin":
	{
		_base_soldier+
		_primary_sl+
		_primary_medic+
		_secondary_sl+
		_secondary_medic+
		_primary_ammoCarrier+
		_secondary_ammoCarrier+
		_primary_weaponSpecialist+
		_secondary_weaponSpecialist+
		_primary_mg+
		_secondary_mg+
		_primary_grenadier+
		_secondary_grenadier+
		_primary_at+
		_secondary_at+
		_primary_sniper+
		_secondary_sniper+
		_primary_marksman+
		_secondary_marksman+
		_primary_sapper+
		_secondary_sapper+
		_primary_engineer+
		_secondary_engineer+
		_primary_pilot+
		_secondary_pilot+
		_primary_crewman+
		_secondary_crewman
	};

	default {
		hint "Schwerer Fehler #100"
	};
});

_items arrayIntersect _items