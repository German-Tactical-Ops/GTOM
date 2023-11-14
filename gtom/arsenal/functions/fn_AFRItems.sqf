scriptName "fn_AFRItems";
/*
	Author: LucyferHW
*/
params ["_ammoBox"];

private _items = parseSimpleArray GTO_Primary_afr;

_items append parseSimpleArray GTO_Secondary_afr;

[_ammoBox, _items, false] call ace_arsenal_fnc_addVirtualItems;


