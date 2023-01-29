// Open Arsenal

_actionOpenArsenal = ["openArsenal", "Open Arsenal", "", {[_target, _player, false] call ace_arsenal_fnc_openBox;}, {!isNil {_target getVariable 'ace_arsenal_virtualItems'}}] call ace_interact_menu_fnc_createAction;
["C_IDAP_supplyCrate_F", 0, ["ACE_MainActions"], _actionOpenArsenal, true] call ace_interact_menu_fnc_addActionToClass;

// Take Role

_actionTakeRole = ["takeRole", "Take Role", "", {[_target, _target] call ace_common_fnc_claim;}, {true},{},[],"",4,[false, false, false, true, false]] call ace_interact_menu_fnc_createAction;
["C_IDAP_supplyCrate_F", 0, ["ACE_MainActions"], _actionTakeRole, true] call ace_interact_menu_fnc_addActionToClass;

// Category

_actionTakeRole = ["Lead", "Lead", "", {hintSilent ""}, {true},{},[],"",4,[false, false, false, true, false]] call ace_interact_menu_fnc_createAction;
["C_IDAP_supplyCrate_F", 0, ["ACE_MainActions","takeRole"], _actionTakeRole, true] call ace_interact_menu_fnc_addActionToClass;

_actionTakeRole = ["Support", "Support", "", {hintSilent ""}, {true},{},[],"",4,[false, false, false, true, false]] call ace_interact_menu_fnc_createAction;
["C_IDAP_supplyCrate_F", 0, ["ACE_MainActions","takeRole"], _actionTakeRole, true] call ace_interact_menu_fnc_addActionToClass;

_actionTakeRole = ["Weapon", "Weapon", "", {hintSilent ""}, {true},{},[],"",4,[false, false, false, true, false]] call ace_interact_menu_fnc_createAction;
["C_IDAP_supplyCrate_F", 0, ["ACE_MainActions","takeRole"], _actionTakeRole, true] call ace_interact_menu_fnc_addActionToClass;

_actionTakeRole = ["Special", "Special", "", {hintSilent ""}, {true},{},[],"",4,[false, false, false, true, false]] call ace_interact_menu_fnc_createAction;
["C_IDAP_supplyCrate_F", 0, ["ACE_MainActions","takeRole"], _actionTakeRole, true] call ace_interact_menu_fnc_addActionToClass;

_actionTakeRole = ["Vehicle", "Vehicle", "", {hintSilent ""}, {true},{},[],"",4,[false, false, false, true, false]] call ace_interact_menu_fnc_createAction;
["C_IDAP_supplyCrate_F", 0, ["ACE_MainActions","takeRole"], _actionTakeRole, true] call ace_interact_menu_fnc_addActionToClass;

//Roles

//Lead

_actionSL = ["sl", "SL", "", {['sl', "USA", _target] call GTO_fnc_setRole; [_target, _player] call ace_arsenal_fnc_openBox;}, {true}] call ace_interact_menu_fnc_createAction;
["C_IDAP_supplyCrate_F", 0, ["ACE_MainActions","takeRole","Lead"], _actionSL, true] call ace_interact_menu_fnc_addActionToClass;

_actionLDoctor = ["ldoctor", "Lead Doctor", "", {['ldoctor', "USA", _target] call GTO_fnc_setRole; [_target, _player] call ace_arsenal_fnc_openBox;}, {true}] call ace_interact_menu_fnc_createAction;
["C_IDAP_supplyCrate_F", 0, ["ACE_MainActions","takeRole","Lead"], _actionLDoctor, true] call ace_interact_menu_fnc_addActionToClass;

// Support

_actionDoctor = ["doctor", "Doctor", "", {['doctor', "USA", _target] call GTO_fnc_setRole; [_target, _player] call ace_arsenal_fnc_openBox;}, {true}] call ace_interact_menu_fnc_createAction;
["C_IDAP_supplyCrate_F", 0, ["ACE_MainActions","takeRole","Support"], _actionDoctor, true] call ace_interact_menu_fnc_addActionToClass;

_actionMedic = ["medic", "Medic", "", {['medic', "USA", _target] call GTO_fnc_setRole; [_target, _player] call ace_arsenal_fnc_openBox;}, {true}] call ace_interact_menu_fnc_createAction;
["C_IDAP_supplyCrate_F", 0, ["ACE_MainActions","takeRole","Support"], _actionMedic, true] call ace_interact_menu_fnc_addActionToClass;

_actionAmmo_Carrier = ["Ammo_Carrier", "Ammo Carrier", "", {['ammoCarrier', "USA", _target] call GTO_fnc_setRole; [_target, _player] call ace_arsenal_fnc_openBox; }, {true}] call ace_interact_menu_fnc_createAction;
["C_IDAP_supplyCrate_F", 0, ["ACE_MainActions","takeRole","Support"], _actionAmmo_Carrier, true] call ace_interact_menu_fnc_addActionToClass;

// Weapon

_actionweaponSpecialist = ["weaponSpecialist", "Weapon Specialist", "", {['weaponSpecialist', "USA", _target] call GTO_fnc_setRole; [_target, _player] call ace_arsenal_fnc_openBox; }, {true}] call ace_interact_menu_fnc_createAction;
["C_IDAP_supplyCrate_F", 0, ["ACE_MainActions","takeRole","Weapon"], _actionweaponSpecialist, true] call ace_interact_menu_fnc_addActionToClass;

_action = ["MG", "MG", "", {['mg', "USA", _target] call GTO_fnc_setRole; [_target, _player] call ace_arsenal_fnc_openBox; }, {true}] call ace_interact_menu_fnc_createAction;
["C_IDAP_supplyCrate_F", 0, ["ACE_MainActions","takeRole","Weapon"], _action, true] call ace_interact_menu_fnc_addActionToClass;

_action = ["Grenadier", "Grenadier", "", {['grenadier', "USA", _target] call GTO_fnc_setRole; [_target, _player] call ace_arsenal_fnc_openBox; }, {true}] call ace_interact_menu_fnc_createAction;
["C_IDAP_supplyCrate_F", 0, ["ACE_MainActions","takeRole","Weapon"], _action, true] call ace_interact_menu_fnc_addActionToClass;

_actionAT = ["LAT", "LAT", "", {['lat', "USA", _target] call GTO_fnc_setRole; [_target, _player] call ace_arsenal_fnc_openBox; }, {true}] call ace_interact_menu_fnc_createAction;
["C_IDAP_supplyCrate_F", 0, ["ACE_MainActions","takeRole","Weapon"], _actionAT, true] call ace_interact_menu_fnc_addActionToClass;

_action = ["HAT", "HAT", "", {['hat', "USA", _target] call GTO_fnc_setRole; [_target, _player] call ace_arsenal_fnc_openBox; }, {true}] call ace_interact_menu_fnc_createAction;
["C_IDAP_supplyCrate_F", 0, ["ACE_MainActions","takeRole","Weapon"], _action, true] call ace_interact_menu_fnc_addActionToClass;

_action = ["Marksman", "Marksman", "", {['marksman', "USA", _target] call GTO_fnc_setRole; [_target, _player] call ace_arsenal_fnc_openBox; }, {true}] call ace_interact_menu_fnc_createAction;
["C_IDAP_supplyCrate_F", 0, ["ACE_MainActions","takeRole","Weapon"], _action, true] call ace_interact_menu_fnc_addActionToClass;

// Special

_action = ["Sniper", "Sniper", "", {['sniper', "USA", _target] call GTO_fnc_setRole; [_target, _player] call ace_arsenal_fnc_openBox; }, {true}] call ace_interact_menu_fnc_createAction;
["C_IDAP_supplyCrate_F", 0, ["ACE_MainActions","takeRole","Special"], _action, true] call ace_interact_menu_fnc_addActionToClass;

_action = ["Spotter", "Spotter", "", {['spotter', "USA", _target] call GTO_fnc_setRole; [_target, _player] call ace_arsenal_fnc_openBox; }, {true}] call ace_interact_menu_fnc_createAction;
["C_IDAP_supplyCrate_F", 0, ["ACE_MainActions","takeRole","Special"], _action, true] call ace_interact_menu_fnc_addActionToClass;
//
_action = ["Sapper", "Sapper", "", {['sapper', "USA", _target] call GTO_fnc_setRole; [_target, _player] call ace_arsenal_fnc_openBox; }, {true}] call ace_interact_menu_fnc_createAction;
["C_IDAP_supplyCrate_F", 0, ["ACE_MainActions","takeRole","Special"], _action, true] call ace_interact_menu_fnc_addActionToClass;

_action = ["Pionier", "Pionier", "", {['pionier', "USA", _target] call GTO_fnc_setRole; [_target, _player] call ace_arsenal_fnc_openBox; }, {true}] call ace_interact_menu_fnc_createAction;
["C_IDAP_supplyCrate_F", 0, ["ACE_MainActions","takeRole","Special"], _action, true] call ace_interact_menu_fnc_addActionToClass;

_action = ["Enginier", "Enginier", "", {['enginier', "USA", _target] call GTO_fnc_setRole; [_target, _player] call ace_arsenal_fnc_openBox; }, {true}] call ace_interact_menu_fnc_createAction;
["C_IDAP_supplyCrate_F", 0, ["ACE_MainActions","takeRole","Special"], _action, true] call ace_interact_menu_fnc_addActionToClass;

// Vehicle

_action = ["Pilot", "Pilot", "", {['pilot', "USA", _target] call GTO_fnc_setRole; [_target, _player] call ace_arsenal_fnc_openBox; }, {true}] call ace_interact_menu_fnc_createAction;
["C_IDAP_supplyCrate_F", 0, ["ACE_MainActions","takeRole","Vehicle"], _action, true] call ace_interact_menu_fnc_addActionToClass;

_action = ["Crewman", "Crewman", "", {['crewman', "USA", _target] call GTO_fnc_setRole; [_target, _player] call ace_arsenal_fnc_openBox; }, {true}] call ace_interact_menu_fnc_createAction;
["C_IDAP_supplyCrate_F", 0, ["ACE_MainActions","takeRole","Vehicle"], _action, true] call ace_interact_menu_fnc_addActionToClass;

// Admin

_action = ["Admin", "Admin", "", {['admin', "USA", _target] call GTO_fnc_setRole; [_target, _player] call ace_arsenal_fnc_openBox; }, {true}] call ace_interact_menu_fnc_createAction;
["C_IDAP_supplyCrate_F", 0, ["ACE_MainActions","takeRole","Lead"], _action, true] call ace_interact_menu_fnc_addActionToClass;
