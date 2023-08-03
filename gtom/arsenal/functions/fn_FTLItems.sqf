scriptName "fn_FTLItems";
/*
	Author: LucyferHW
	
	Description:
	Runs on start.
	
	Parameter(s):
	#0 OBJECT - Description
*/
params ["_ammoBox"];

private _items = parseSimpleArray GTO_Items_FTL;

[_ammoBox, _items, false] call ace_arsenal_fnc_addVirtualItems;