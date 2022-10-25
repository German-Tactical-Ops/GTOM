scriptName "fn_setRole";
/*
	Author: LucyferHW
	
	Description:
	Describe your function
	
	Example: [] call GTO_fnc_shareBasicLoadouts;
*/

params ["_role"];

if (_role in ["medic", "doctor"]) then {
	ACE_player setVariable ["ace_medical_medicClass", [2, 1] select (_role == "medic"), true];
	ACE_player setUnitTrait ["medic", true];
	hint "Medic oder Doctor";
} else {
	ACE_player setVariable ["ace_medical_medicClass", 0, true];
	ACE_player setUnitTrait ["medic", false];
};

if (_role in ["crewman", "pilot"]) then {
	ACE_player setVariable ["ACE_IsEngineer", [1, 2] select (_role == "engi"), true];
	ACE_player setUnitTrait ["engineer", true];
	ACE_player setUnitTrait ["explosiveSpecialist", true];
	hint "Pilot oder Creman";
} else {
	ACE_player setVariable ["ACE_IsEngineer", 0, true];
	ACE_player setUnitTrait ["engineer", false];
	ACE_player setUnitTrait ["explosiveSpecialist", false];
};

if (_role in ["sapper"]) then {
	ACE_player setUnitTrait ["explosiveSpecialist", true];
	hint "Sapper";
} else {
	ACE_player setUnitTrait ["explosiveSpecialist", false];
};

if (_role == "pilot") then {
	ACE_player setVariable ["ACE_GForceCoef", 0.4, true];
	hint "Pilot";
} else {
	ACE_player setVariable ["ACE_GForceCoef", 1, true];
};

removeAllWeapons ACE_player;
removeAllItems ACE_player;
removeAllAssignedItems ACE_player;
removeUniform ACE_player;
removeVest ACE_player;
removeBackpack ACE_player;
removeHeadgear ACE_player;
removeGoggles ACE_player;

// [] call FUNC(loadDefault);

/*
	                    ADD_ROLLE(sl, SL);
	                    ADD_ROLLE(ftl, FTL);
	                    ADD_ROLLE(grena, Grenadier);
	                    ADD_ROLLE(medic, Medic);
	                    ADD_ROLLE(mg, MG);
	                    ADD_ROLLE(sapper, Sapper);
	                ADD_ROLLE(at, AT);
	                    ADD_ROLLE(ammo, 'Ammo Carrier');
                   // ADD_ROLLE(dmr,);
	                    ADD_ROLLE(sniper, Sniper);
	                    ADD_ROLLE(spotter, Spotter);
	                    ADD_ROLLE(jtac, JTAC);
	                    ADD_ROLLE(doctor, Doctor);
	                    ADD_ROLLE(rifle, Rifleman);
	                    ADD_ROLLE(pionier, Pionier);
	                    ADD_ROLLE(engi, Enginier);
	ADD_ROLLE(pilot, Pilot);
	ADD_ROLLE(crew, Crewman);
	                    ADD_ROLLE(uni, admin);