scriptName "fn_full_Heal";

params ["_target", "_player", "_type", "_self"];

private _time = 1; 

if (!_self) then {

	if (_type=="GTO_Medikit") then {
		_player removeItem "GTO_Medikit";	
		_time = 5;
	} else {
		_player removeItem "GTO_FirstAidKit";
		_time = 10;
	};

	[_time, [], {[_target] call ace_medical_treatment_fnc_fullHealLocal;}, {}, "Full Healing"] call ace_common_fnc_progressBar;
		
} else {
	
};