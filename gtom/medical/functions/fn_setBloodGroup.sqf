scriptName "fn_setBloodGroup";
/*
	Author: LucyferHW
	
	Description:
	Runs on start.
	
	Parameter(s):
	#0 OBJECT - Description
*/

{
	waitUntil {
		!isNull player
	}; // Waits for player to load into mission file

	if (isMultiplayer) then {
		// Checks if mission is in MULTIPLAYER
		  private _uid = getPlayerUID player; // and Gets the player's Steam 64 ID

		  private _bloodTypelist = ["O", "O", "O_N", "O_N", "A", "A", "A_N", "B", "B_N", "AB"]; // Array of possible blood types

		  private _uidsplit = _uid splitString '';  // 
		  private _bloodTypeNumber = _uidsplit select 16;// These 3 lines get the last number of the Steam 64 ID
		  private _bloodTypeNumber = parseNumber _bloodTypeNumber; // 

		  private _bloodType = _bloodTypelist select _bloodTypeNumber;   // Selects the blood type from the array
		  ["kat_circulation_bloodgroup", _bloodType] call CBA_settings_fnc_set;   // and sets the blood type for the player

		waitUntil {
			sleep 1;
			alive player
		}; // These 3 lines wait for player to spawn

		["kat_circulation_bloodgroup", _bloodType] call CBA_settings_fnc_set;
		hint format ["Set blood group: %1", _bloodType];
	} else {
		systemChat "KAT Medical Static Blood Type not initialized, to use this feature play mission in MULTIPLAYER!";  // Only Runs if mission is in SINGLEPLAYER
	};
}remoteExec ["BIS_fnc_call", 0];