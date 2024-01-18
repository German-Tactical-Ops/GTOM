scriptName "fn_uniformFix";

//Store TFAR radio settings and active radio channel
_settings = (call TFAR_fnc_activeLrRadio) call TFAR_fnc_getLrSettings;
_channel = (call TFAR_fnc_ActiveLrRadio) call TFAR_fnc_getLrChannel;

ACE_player setUnitLoadout [getUnitLoadout ACE_player, true];
systemChat "Uniform.sqf";

//Apply previously saved TFAR settings to the new backpack radio
if (isClass(configFile >> "cfgPatches" >> "tfar_core")) then {
     [(call TFAR_fnc_ActiveLrRadio), _settings] call TFAR_fnc_setLrSettings;
 } else {
     [(call TFAR_fnc_ActiveLrRadio) select 0, (call TFAR_fnc_ActiveLrRadio) select 1, _settings] call TFAR_fnc_setLrSettings;
 };
_settings set [0, _channel]; // sets the active channel to 2