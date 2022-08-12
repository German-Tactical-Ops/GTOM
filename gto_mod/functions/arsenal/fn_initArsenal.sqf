scriptName "fn_initArsenal";
/*
	Author: LucyferHW

	Description:
	Describe your function

	Parameter(s):
	#0 OBJECT - object
*/

params ["_box"];

_itemArray = [] call GTO_fnc_mainArsenal;

[_box, _itemArray] call ace_arsenal_fnc_initBox;