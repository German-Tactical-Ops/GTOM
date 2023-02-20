scriptName "fn_setRank";
/*
	Author: LucyferHW
	
	Description:
	Runs on start.
	
	Parameter(s):
	#0 OBJECT - Description
*/

private _medicState = player getVariable ["ace_medical_medicClass", 0];

if (_medicState > 0 && !GTO_OverrideMedicPatch) exitWith {
	hint "Medic";
	[player, "IDAP"] call BIS_fnc_setUnitInsignia;
	[10] spawn GTO_fnc_sleepClearHint;
};

if (getPlayerUID player in GTO_PlayerRankList_SL) exitWith {
	hint "SL";
	[player, "Curator"] call BIS_fnc_setUnitInsignia;
	[10] spawn GTO_fnc_sleepClearHint;
};

if (getPlayerUID player in GTO_PlayerRankList_FTL) exitWith {
	hint "FTL";
	[player, "111thID"] call BIS_fnc_setUnitInsignia;
	[10] spawn GTO_fnc_sleepClearHint;
};

if (getPlayerUID player in GTO_PlayerRankList_Private) exitWith {
	hint "Private";
	[player, "BI"] call BIS_fnc_setUnitInsignia;
	[10] spawn GTO_fnc_sleepClearHint;
};

hint format ["%1 is not on rank list.\n Set guest rank.", name player];
[10] spawn GTO_fnc_sleepClearHint;


// ["a", "b", "c", "d"] select 2;