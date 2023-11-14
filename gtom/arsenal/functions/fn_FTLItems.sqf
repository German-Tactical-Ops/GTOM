scriptName "fn_FTLItems";
/*
	Author: LucyferHW
*/
params ["_ammoBox"];

private _items = parseSimpleArray GTO_Primary_ftl;

_items append parseSimpleArray GTO_Secondary_ftl;

[_ammoBox, _items, false] call ace_arsenal_fnc_addVirtualItems;