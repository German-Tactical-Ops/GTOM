scriptName "fn_whitelist";
/*
	Author: LucyferHW
	
	Description:
	Describe your function
*/
params ["_items"];

// Spieler Whitelist
_items append (switch (getPlayerUID player) do
{
	case "76561198287292572": {
		["G_Aviator"]
	}; // Lucyfer Angel

	default {
		[]
	};
});

private _offizier = [
	"76561198287292572"
];

private _ausbilder = [
	""
];

private _sl = [
	""
];

private _ftl = [""
];

// Offizier Whitelist
if (getPlayerUID player in _offizier) then {
	_items append [

	];
};

// Ausbilder Whitelist
if (getPlayerUID player in _ausbilder) then {
	_items append [
		"V_Rangemaster_belt"
	];
};

// SL Whitelist
if (getPlayerUID player in sl) then {
	_items append [
	];
};

if (getPlayerUID player in sl) then {
	_items append [
	];
};

_items