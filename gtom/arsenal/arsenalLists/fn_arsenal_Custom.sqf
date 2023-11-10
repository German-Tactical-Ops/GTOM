scriptName "fn_arsenal_Custom";
/*
	Author: LucyferHW
	
	Description:
	Describe your function
*/
params ["_role"];

private _roleEquipment_basic = parseSimpleArray GTO_RoleEquipment_basic;
private _roleItems_basic = parseSimpleArray GTO_RoleItems_basic;

private _roleEquipment_sl = parseSimpleArray GTO_RoleEquipment_sl;
private _roleItems_sl = parseSimpleArray GTO_RoleItems_sl;

private _roleEquipment_doctor = parseSimpleArray GTO_RoleEquipment_doctor;
private _roleItems_doctor = parseSimpleArray GTO_RoleItems_doctor;
private _roleEquipment_medic = parseSimpleArray GTO_RoleEquipment_medic;
private _roleItems_medic = parseSimpleArray GTO_RoleItems_medic;
// private _roleEquipment_medic = parseSimpleArray GTO_RoleEquipment_afr;
// private _roleItems_medic = parseSimpleArray GTO_RoleItems_afr;

private _roleEquipment_ammoCarrier = parseSimpleArray GTO_RoleEquipment_ammoCarrier;
private _roleItems_ammoCarrier = parseSimpleArray GTO_RoleItems_ammoCarrier;
private _roleEquipment_weaponSpecialist = parseSimpleArray GTO_RoleEquipment_weaponSpecialist;
private _roleItems_weaponSpecialist = parseSimpleArray GTO_RoleItems_weaponSpecialist;
private _roleEquipment_mg = parseSimpleArray GTO_RoleEquipment_mg;
private _roleItems_mg = parseSimpleArray GTO_RoleItems_mg;
private _roleEquipment_grenadier = parseSimpleArray GTO_RoleEquipment_grenadier;
private _roleItems_grenadier = parseSimpleArray GTO_RoleItems_grenadier;
private _roleEquipment_at = parseSimpleArray GTO_RoleEquipment_at;
private _roleItems_at = parseSimpleArray GTO_RoleItems_at;
private _roleEquipment_marksman = parseSimpleArray GTO_RoleEquipment_marksman;
private _roleItems_marksman = parseSimpleArray GTO_RoleItems_marksman;
private _roleEquipment_sniper = parseSimpleArray GTO_RoleEquipment_sniper;
private _roleItems_sniper = parseSimpleArray GTO_RoleItems_sniper;
private _roleEquipment_sapper = parseSimpleArray GTO_RoleEquipment_sapper;
private _roleItems_sapper = parseSimpleArray GTO_RoleItems_sapper;
private _roleEquipment_engineer = parseSimpleArray GTO_RoleEquipment_engineer;
private _roleItems_engineer = parseSimpleArray GTO_RoleItems_engineer;
private _roleEquipment_pilot = parseSimpleArray GTO_RoleEquipment_pilot;
private _roleItems_pilot = parseSimpleArray GTO_RoleItems_pilot;
private _roleEquipment_crewman = parseSimpleArray GTO_RoleEquipment_crewman;
private _roleItems_crewman = parseSimpleArray GTO_RoleItems_crewman;

private _goggles = parseSimpleArray GTO_Equipment_Goggles;

private _items = [];

_items append _roleEquipment_basic;
_items append _roleItems_basic;
_items append _goggles;


_items append (switch (_role) do
{
	case "sl":
	{
		_roleEquipment_sl+
		_roleItems_sl
	};
	case "doctor":
	{
		_roleEquipment_sl+
		_roleItems_sl+
		_roleEquipment_medic+
		_roleItems_medic+
		_roleEquipment_doctor+
		_roleItems_doctor
	};
	case "medic":
	{
		_roleEquipment_medic+
		_roleItems_medic
	};
	case "ammoCarrier":
	{
		_roleEquipment_ammoCarrier+
		_roleItems_ammoCarrier
	};
	case "weaponSpecialist":
	{
		_roleEquipment_weaponSpecialist+
		_roleItems_weaponSpecialist
	};
	case "mg":
	{
		_roleEquipment_mg+
		_roleItems_mg
	};
	case "grenadier":
	{
		_roleEquipment_grenadier+
		_roleItems_grenadier
	};
	case "at":
	{
		_roleEquipment_at+
		_roleItems_at
	};
	case "marksman":
	{
		_roleEquipment_marksman+
		_roleItems_marksman
	};
	case "sniper":
	{
		_roleEquipment_sniper+
		_roleItems_sniper
	};
	case "sapper":
	{
		_roleEquipment_sapper+
		_roleItems_sapper
	};
	case "engineer":
	{
		_roleEquipment_engineer+
		_roleItems_engineer
	};
	case "pilot":
	{
		_roleEquipment_pilot+
		_roleItems_pilot
	};
	case "crewman":
	{
		_roleEquipment_crewman+
		_roleItems_crewman
	};
	case "admin":
	{
		_roleEquipment_sl+
		_roleEquipment_medic+
		_roleItems_sl+
		_roleItems_medic+
		_roleEquipment_ammoCarrier+
		_roleItems_ammoCarrier+
		_roleEquipment_weaponSpecialist+
		_roleItems_weaponSpecialist+
		_roleEquipment_mg+
		_roleItems_mg+
		_roleEquipment_grenadier+
		_roleItems_grenadier+
		_roleEquipment_at+
		_roleItems_at+
		_roleEquipment_sniper+
		_roleItems_sniper+
		_roleEquipment_spotter+
		_roleItems_spotter+
		_roleEquipment_sapper+
		_roleItems_sapper+
		_roleEquipment_engineer+
		_roleItems_engineer+
		_roleEquipment_pilot+
		_roleItems_pilot+
		_roleEquipment_crewman+
		_roleItems_crewman
	};

	default {
		hint "Schwerer Fehler #100"
	};
});

_items arrayIntersect _items