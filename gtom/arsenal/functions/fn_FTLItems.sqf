scriptName "fn_FTLItems";
/*
	Author: LucyferHW
	
	Description:
	Runs on start.
	
	Parameter(s):
	#0 OBJECT - Description
*/
params ["_ammoBox"];


private _items = ["TFAR_anprc152"];

//"TFAR_anprc152";

[_ammoBox, _items, false] call ace_arsenal_fnc_addVirtualItems;