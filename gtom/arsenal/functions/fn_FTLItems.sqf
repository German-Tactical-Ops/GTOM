scriptName "fn_FTLItems";
/*
	Author: LucyferHW
*/
params ["_ammoBox"];

private _items = parseSimpleArray GTO_RoleEquipment_ftl;

_items append GTO_RoleItems_ftl;

[_ammoBox, _items, false] call ace_arsenal_fnc_addVirtualItems;