scriptName "fn_transformArsenal";

params["_target"];

[_target, _target] call ace_common_fnc_claim;
clearItemCargoGlobal _target;
clearBackpackCargoGlobal _target;
clearMagazineCargoGlobal _target;
clearWeaponCargoGlobal _target;
_target setObjectTexture [0, "gto\Arsenal_Classic.paa"];