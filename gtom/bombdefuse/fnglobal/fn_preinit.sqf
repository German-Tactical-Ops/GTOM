private ["_string","_null","_nul","_dummyGroup","_dummy","_name","_keyDown","_savesArray"];
GTOM_isACE = isClass (configFile >> "CfgPatches" >> "ace_common");
GTOM_dummy = if (GTOM_isACE) then {"ACE_DefuseObject"} else {"bomb"};
GTOM_path = "\gtom\";


//Client init
if (hasInterface) then {

	0 spawn {
		waituntil {!(IsNull (findDisplay 46))};

		{
			_dummy = _x;
			_dummy addEventHandler ["CuratorObjectDoubleClicked", {missionnamespace setvariable ["BIS_fnc_initCuratorAttributes_target",(_this select 1)];_this spawn MCC_fnc_curatorInitLine}];
			_dummy addEventHandler ["CuratorObjectPlaced", {if (local (_this select 1)) then {missionNamespace setVariable ["GTOM_curatorMouseOver",curatorMouseOver]}}];
			{
				[_dummy, _x,["%ALL"]] call BIS_fnc_setCuratorAttributes;
			} forEach ["player"];
		} forEach allCurators;
	};
};