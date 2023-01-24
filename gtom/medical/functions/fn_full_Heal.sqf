scriptName "fn_full_Heal";

params ["_target", "_player", "_type", "_self"];

if (!_self) then {
	switch (_type) do {
		case "GTO_Medikit": {
			_player removeItem "GTO_Medikit";
			[_target] call ace_medical_treatment_fnc_fullHealLocal;
		};
		case "GTO_FirstAidKit": {
			_player removeItem "GTO_FirstAidKit";
			[_target] call ace_medical_treatment_fnc_fullHealLocal;
		};
		default {};
	};

	/* // if (_type=="GTO_Medikit") exitWith {
		// _player removeItem "GTO_Medikit";

		// [10, [], {
			// [_target] call ace_medical_treatment_fnc_fullHealLocal
			//
		}, {
			// hint "error"
			//
		}, "Full Healing"] call ace_common_fnc_progressBar;

		//
	}; */

	/* // if (_type=="GTO_FirstAidKit") exitWith {
		// _player removeItem "GTO_FirstAidKit";

		// [5, [], {
			// [_target] call ace_medical_treatment_fnc_fullHealLocal
			//
		}, {
			// hint "error"
			//
		}, "Full Healing"] call ace_common_fnc_progressBar;

		//
	}; */
} else {};