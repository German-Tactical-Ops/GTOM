scriptName "fn_whitelist";
/*
	Author: LucyferHW
	
	Description:
	Describe your function
*/
params ["_items"];

if ("76561198287292572" == getPlayerUID player) then {
	_items append
	["H_Cap_headphones", "V_Rangemaster_belt","TFAR_anprc152"];
};// Lucyfer Angel

if ("76561198137853279" == getPlayerUID player) then {
	_items append
	["H_Cap_headphones", "V_Rangemaster_belt"];
}; // Drake Murphy

if ("76561198181304607" == getPlayerUID player) then {
	_items append
	["H_Cap_headphones", "V_Rangemaster_belt"];
}; // Lars

// // Spieler Whitelist
// _items append (switch (getPlayerUID player) do
// {
// 	case "76561198287292572": {
// 		["H_Beret_EAF_01_F"]
// 	}; // Lucyfer Angel

// 	case "76561198029981749": {
// 		["H_Beret_EAF_01_F"]
// 	}; // Wollkopf

// 	case "76561198137853279": {
// 		["H_Beret_EAF_01_F"]
// 	}; // Drake Murphy

// 	case "76561198181304607": {
// 		["H_Beret_EAF_01_F"]
// 	}; // Lars

// 	default {
// 		[]
// 	};
// });

/* private _leader = [
	"76561198287292572", "76561198029981749"
];

private _offizier = [
	"76561198287292572"
];

private _ausbilder = [
	"76561198287292572", "76561198137853279"
];

private _sl = [];

private _ftl = [];

// leader Whitelist
if (getPlayerUID player in _offizier) then {
	_items append [

	];
};

// Offizier Whitelist
if (getPlayerUID player in _offizier) then {
	_items append [

	];
};

// Ausbilder Whitelist
if (getPlayerUID player in _ausbilder) then {
	_items append ["H_Cap_headphones", "V_Rangemaster_belt"];
};

// SL Whitelist
if (getPlayerUID player in sl) then {
	_items append [
	];
};

if (getPlayerUID player in sl) then {
	_items append [
	];
}; */

_items;