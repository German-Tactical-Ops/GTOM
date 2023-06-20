scriptName "fn_convertRank";
/*
	Author: LucyferHW
	
	Description:
	Runs on start.
*/

GTO_ExtractPlayerFromList = {
	params["_playerList", "_rankCode"];

	private _state = false;

	if (getPlayerUID player in _playerList) exitWith {
		profileNamespace setVariable ["GTO_RankCode", _rankCode];

		_state = true;

		_state;
	};
};

if ([GTO_PlayerRankList_CPT, 100] call GTO_ExtractPlayerFromList) exitWith {
	call GTO_fnc_setRank;
};

if ([GTO_PlayerRankList_LT, 90] call GTO_ExtractPlayerFromList) exitWith {
	call GTO_fnc_setRank;
};

if ([GTO_PlayerRankList_SSG, 70] call GTO_ExtractPlayerFromList) exitWith {
	call GTO_fnc_setRank;
};

if ([GTO_PlayerRankList_SGT, 60] call GTO_ExtractPlayerFromList) exitWith {
	call GTO_fnc_setRank;
};

if ([GTO_PlayerRankList_CPL, 50] call GTO_ExtractPlayerFromList) exitWith {
	call GTO_fnc_setRank;
};

if ([GTO_PlayerRankList_SPC, 40] call GTO_ExtractPlayerFromList) exitWith {
	call GTO_fnc_setRank;
};

if ([GTO_PlayerRankList_PFC, 30] call GTO_ExtractPlayerFromList) exitWith {
	call GTO_fnc_setRank;
};

if ([GTO_PlayerRankList_PV, 20] call GTO_ExtractPlayerFromList) exitWith {
	call GTO_fnc_setRank;
};

if ([GTO_PlayerRankList_VG, 10] call GTO_ExtractPlayerFromList) exitWith {
	call GTO_fnc_setRank;
};


profileNamespace setVariable ["GTO_RankCode", 0];
[] call GTO_fnc_setRank;