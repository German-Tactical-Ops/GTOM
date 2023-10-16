scriptName "fn_setInsignia";
/*
	Author: LucyferHW
*/

private _medicState = player getVariable ["ace_medical_medicClass", 0];

if (_medicState > 0 && !GTO_OverrideMedicPatch) exitWith {
	[player, "GTO_Insignia_Medic"] call BIS_fnc_setUnitInsignia;
};

private _insigniaList = ["GTO_Rank_G", "GTO_Rank_PV", "GTO_Rank_VG",  "GTO_Rank_PFC", "GTO_Rank_SPC", "GTO_Rank_CPL", "GTO_Rank_SGT", "GTO_Rank_SSG", "GTO_Rank_LT", "GTO_Rank_LT", "GTO_Rank_CPT"]; // Array of rank insignias
private _rankList = ["PRIVATE", "PRIVATE", "PRIVATE", "PRIVATE", "PRIVATE", "CORPORAL", "SERGEANT", "SERGEANT", "LIEUTENANT", "LIEUTENANT", "CAPTAIN"]; // Array of rank insignias

private _rankCode = profileNamespace getVariable ["GTO_RankCode", -1]; // gets the RankCode from the player 

if (_rankCode>-1) exitWith {
	[player, _insigniaList select (_rankCode/10)] call BIS_fnc_setUnitInsignia;
	player setUnitRank (_rankList select (_rankCode/10));
};

systemChat format ["Error Player: %1", name player];