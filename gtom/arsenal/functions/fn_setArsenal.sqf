scriptName "fn_setArsenal";
/*
	Author: LucyferHW
	
	Description:
	Describe your function
*/
params ["_ammoBox", ["_role", ""]];

if (isNull _ammoBox) exitWith {};

// Check zum Überspringen
private _type = getText (configOf _ammoBox >> "arsenalType");
if (_type in ["", "CUSTOM"]) exitWith {};

// Arsenalitems laden
private _allItems = [_role] call (switch (_type) do
{
    case "USA": {GTO_fnc_arsenal_USA};
    case "VANILLA": {GTO_fnc_arsenal_Vanilla};
    default {hint "Schwerer Fehler #300 | Arsenaltyp unbekannt"; {[]}};
});

//todo: check if needed
//[_allItems] call FUNC(whitelist);

ace_arsenal_cameraPosition = [4, -8, 15, [0, 0, 1]];

// Box cleanen & Items hinzufügen
[_ammoBox, false] call ace_arsenal_fnc_removeBox;
[_ammoBox, true, false] call ace_arsenal_fnc_removeVirtualItems;
[_ammoBox, _allItems, false] call ace_arsenal_fnc_addVirtualItems;

// sinchronise virtual items on player and sync other arsenals
private _gtoCargo = _ammoBox getVariable "ace_arsenal_virtualItems";
ACE_player setVariable ["gto_arsenalCargo", _gtoCargo];


// arsenal sync
{
    if (true && {_gtoCargo isNotEqualTo (_x getVariable ["ace_arsenal_virtualItems", []])}) then
    {
        _x setVariable ["ace_arsenal_virtualItems", _gtoCargo];
    };
} forEach (entities (typeOf _ammoBox));

//[_x] call FUNC(isArsenalType) && 