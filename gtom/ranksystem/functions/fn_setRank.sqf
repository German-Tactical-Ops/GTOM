scriptName "fn_setRank";
/*
	Author: LucyferHW
	
	Description:
	Runs on start.
	
	Parameter(s):
	#0 OBJECT - Description
*/

private _allRanks = ["GTO_RankList_SL", "GTO_RankList_FTL", "GTO_RankList_Private"];

private _sl = ["76561198287292572"];
private _ftl = [""];
// 76561198287292572

/* {
		if (getPlayerUID player in _x) exitWith {};
} forEach _allRanks; */

if (getPlayerUID player in GTO_RankList_SL) exitWith {hint "SL"};

if (getPlayerUID player in GTO_RankList_FTL) exitWith {hint "FTL"};

if (getPlayerUID player in GTO_RankList_Private) exitWith {hint "Private"};