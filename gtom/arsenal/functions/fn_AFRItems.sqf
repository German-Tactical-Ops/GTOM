scriptName "fn_AFRItems";
/*
	Author: LucyferHW
*/
params ["_ammoBox"];

private _items = parseSimpleArray GTO_RoleEquipment_afr;

_items append GTO_RoleItems_afr;

[_ammoBox, _items, false] call ace_arsenal_fnc_addVirtualItems;


