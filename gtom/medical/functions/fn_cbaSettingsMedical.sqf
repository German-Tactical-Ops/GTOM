scriptName "fn_cbaSettingsMedical";
/*
	Author: LucyferHW
	
	Description:
	Runs on start.
	
	Parameter(s):
	#0 OBJECT - Description
*/
[
	"GTO_BloodRegenSpeed", // Internal setting name, should always contain a tag! This will be the global variable which takes the value of the setting.
	"SLIDER", // setting type
	["Blood Regen Speed", ""], // Pretty name shown inside the ingame settings menu. Can be stringtable entry.
	["GTOM Settings", "Medical"], // Pretty name of the category where the setting can be found. Can be stringtable entry.
	[0, 1, 0.1, 3], // data for this setting: [min, max, default, number of shown trailing decimals]
	true, // "_isGlobal" flag. set this to true to always have this setting synchronized between all clients in multiplayer
	{

	} // function that will be executed once on mission start and every time the setting is changed.
] call CBA_fnc_addSetting;

[
	"GTO_healthRegen",
	"CHECKBOX",
	["Health Regeneration", "Wenn man volle Ausdauer hat und ruhig steht, regeniert man leicht Blut und genähte Wunden/Prellungen werden geschlossen"],
	["GTOM Settings", "Medical"],
	true,
	1,
	{
		if (_this) then {

			private _codeToRun = {
				private _state = [player, ace_medical_STATE_MACHINE] call CBA_statemachine_fnc_getCurrentState;

				playerIsRegenerating = false;

				// _notInjured = _state != "Injured";
				// _MovingToFast = speed player > 7;
				// _noStamina = ace_advanced_fatigue_anReserve / 2300 < 0.8;
				// _hasPain = (0 max ((player getVariable ["ace_medical_pain", 0]) - (player getVariable ["ace_medical_painSuppress", 0])) min 1) > 0.05;
				// _isBleeding = (player getVariable ["ace_medical_woundBleeding", 0]) > 0;

				if ((speed player)^2 > 7^2 || ace_advanced_fatigue_anReserve / 2300 < 0.6 || (0 max ((player getVariable ["ace_medical_pain", 0]) - (player getVariable ["ace_medical_painSuppress", 0])) min 1) > 0.05 || (player getVariable ["ace_medical_woundBleeding", 0]) > 0) exitWith {};

				playerIsRegenerating = true;

				// if (_notInjured || (vehicle player == player && speed player > 7) || ace_advanced_fatigue_anReserve / 2300 < 0.8 ||
				// (0 max ((player getVariable ["ace_medical_pain", 0]) - (player getVariable ["ace_medical_painSuppress", 0])) min 1) > 0.05 ||
				// (player getVariable ["ace_medical_woundBleeding", 0]) > 0) exitWith {};

				// BLOOD VOLUME
				private _volume = player getVariable ["ace_medical_bloodVolume", 6];
				private _lost = 6 - _volume;
				player setVariable ["ace_medical_bloodVolume", (_volume + (_lost * GTO_BloodRegenSpeed)) min 6];

				// Prellungen entfernen
				private _openWounds = (player getVariable ["ace_medical_openWounds", []]) select {
					(_x # 2) > 0
				};
				private _prellungsId = _openWounds findIf {
					(ace_medical_damage_woundClassNamesComplex select (_x # 0)) find "Contusion" != -1
				};
				if (_prellungsId != -1) then {
					_openWounds deleteAt _prellungsId;
					player setVariable ["ace_medical_openWounds", _openWounds, true];
				};

				// Genähte Wunden entfernen
				private _stitchedWounds = player getVariable ["ace_medical_stitchedWounds", []];
				private _stitched = _stitchedWounds deleteAt 0;
				if (!isNil "_stitched") then {
					player setVariable ["ace_medical_stitchedWounds", _stitchedWounds, true]
				};

				// ace_medical_bodyPartDamage updaten
				private _updateBodyPartVisuals = false;
				for "_i" from 0 to 5 do
				{
					private _partIndex = _i;
					if ((_openWounds findIf {
						_x params ["", "_bodyPartN", "_amountOf"];
						(_partIndex ==_bodyPartN) && {
							_amountOf > 0
						}
					}) == -1) then {
						private _bodyPartDamage = player getVariable ["ace_medical_bodyPartDamage", [0, 0, 0, 0, 0, 0]];
						_bodyPartDamage set [_partIndex, 0];
						player setVariable ["ace_medical_bodyPartDamage", _bodyPartDamage, true];

						switch (_partIndex) do
						{
							case 0: {
								[player, true, false, false, false] call ace_medical_engine_fnc_updateBodyPartVisuals;
							};
							case 1: {
								[player, false, true, false, false] call ace_medical_engine_fnc_updateBodyPartVisuals;
							};
							case 2;
							case 3: {
								[player, false, false, true, false] call ace_medical_engine_fnc_updateBodyPartVisuals;
							};
							default {
								[player, false, false, false, true] call ace_medical_engine_fnc_updateBodyPartVisuals;
							};
						};

						_updateBodyPartVisuals = true;
					};
				};
			};
			private _parameters = player;
			private _exitCode = {
				hint format ["Player %1 has died", name player]
			};
			private _condition = {
				alive player
			};
			private _delay = 60;

			[{
				params ["_args", "_handle"];
				_args params ["_codeToRun", "_parameters", "_exitCode", "_condition"];

				if (_parameters call _condition) then {
					_parameters call _codeToRun;
				} else {
					_handle call CBA_fnc_removePerFrameHandler;
					_parameters call _exitCode;
				};
			}, _delay, [_codeToRun, _parameters, _exitCode, _condition]] call CBA_fnc_addPerFrameHandler;
		};
	}, true
] call CBA_fnc_addSetting;

