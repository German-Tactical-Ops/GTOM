scriptName "fn_getRankNumber";
/*
	Author: LucyferHW
	
	Description:
	Describe your function
*/
params ["_player"];

systemChat "Deprecated Function fn_getRankNumber";

_rank = rank _player;

_rankID = 0;

switch (_rank) do {
	case "PRIVATE": {
		_rankID = 10;
	};
	case "CORPORAL": {
		_rankID = 20;
	};
	case "SERGEANT": {
		_rankID = 30;
	};
	case "LIEUTENANT": {
		_rankID = 50;
	};
	case "CAPTAIN": {
		_rankID = 100;
	};
	case "MAJOR": {
		_rankID = 500;
	};
	case "COLONEL": {
		_rankID = 1000;
	};

	default {
		hint "Critical Error in fn_getRankNumber";
	};
};

_rankID;

// "PRIVATE"
// "CORPORAL"
// "SERGEANT"
// "LIEUTENANT"
// "CAPTAIN"
// "MAJOR"
// "COLONEL"