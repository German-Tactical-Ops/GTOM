scriptName "fn_setRank";
/*
	Author: LucyferHW
*/

private _medicState = player getVariable ["ace_medical_medicClass", 0];

if (_medicState > 0 && !GTO_OverrideMedicPatch) exitWith {
	[player, "GTO_Insignia_Medic"] call BIS_fnc_setUnitInsignia;
};

private _rankList = [];

private _rankCode = profileNamespace getVariable ["GTO_RankCode", -1];

switch (_rankCode) do {
	case 100: {
		[player, _rankList select (_rankCode/10)] call BIS_fnc_setUnitInsignia;
	};
	case 90: {
		[player, _rankList select (_rankCode/10)] call BIS_fnc_setUnitInsignia;
	};
	case 70: {
		[player, _rankList select (_rankCode/10)] call BIS_fnc_setUnitInsignia;
	};
	case 60: {
		[player, _rankList select (_rankCode/10)] call BIS_fnc_setUnitInsignia;
	};
	case 50: {
		[player, _rankList select (_rankCode/10)] call BIS_fnc_setUnitInsignia;
	};
	case 40: {
		[player, _rankList select (_rankCode/10)] call BIS_fnc_setUnitInsignia;
	};
	case 30: {
		[player, _rankList select (_rankCode/10)] call BIS_fnc_setUnitInsignia;
	};
	case 20: {
		[player, _rankList select (_rankCode/10)] call BIS_fnc_setUnitInsignia;
	};
	case 10: {
		[player, _rankList select (_rankCode/10)] call BIS_fnc_setUnitInsignia;
	};
	case 0: {
		[player, _rankList select (_rankCode/10)] call BIS_fnc_setUnitInsignia;
	};
	default {
		systemChat format ["Error Player: %1", name player];
	};
};