scriptName "fn_setRole";
/*
	Author: LucyferHW
	
	Description:
	Describe your function
	
	Example: [] call GTO_fnc_shareBasicLoadouts;
*/
params [["_shortName", ""], ["_custom", true]];

_name = "";

switch (_shortName) do
{
    case "sl": {_name = "Squad Leader";};
    case "pl": {_name = "Platoon Leader";};
    case "ftl": {_name = "Fire Team Leader";};
    case "ldoctor": {_name = "Lead Doctor";};
    case "doctor": {_name = "Doctor";};
    case "medic": {_name = "Medic";};
    case "ammoCarrier": {_name = "Ammo Carrier";};
    case "lat": {_name = "LAT";};
    case "weaponSpecialist": {_name = "Weapon Specialist";};
    case "mg": {_name =  "MG";};
    case "grenadier": {_name = "Grenadier";};
    case "hat": {_name = "HAT";};
    case "marksman": {_name = "Marksman";};
    case "sniper": {_name = "Sniper";};
    case "spotter": {_name = "Spotter";};
    case "sapper": {_name = "Sapper";};
    case "pionier": {_name = "Pionier";};
    case "engineer": {_name = "Engineer";};
    case "jtac": {_name = "JTAC";};
    case "pilot": {_name = "Pilot";};
    case "crewman": {_name = "Crewman";};
    case "admin": {_name = "Admin";};
};

_name;