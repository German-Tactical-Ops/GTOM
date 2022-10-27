scriptName "fn_setRole";
#include "script_component.hpp"
{
	waitUntil {
		!isNull player
	};  // Waits for player to load into mission file

	if (isMultiplayer) then {
		// Checks if mission is in MULTIPLAYER
		  private _uid = getPlayerUID player;   // and Gets the player's Steam 64 ID

		  private _bloodTypelist = ["O", "O", "O", "O", "A", "A", "A", "B", "B", "AB"]; //  Array of possible blood types

		  private _uidsplit = _uid splitString ''; 
		  private _bloodTypeNumber = _uidsplit select 16;            //  These 3 lines get the last number of the Steam 64 ID
		  private _bloodTypeNumber = parseNumber _bloodTypeNumber; 

		  private _bloodType = _bloodTypelist select _bloodTypeNumber;   //   Selects the blood type from the array
		  player setVariable [QGVAR(bloodtype), _bloodType, true];       // and sets the blood type for the player

		waitUntil {
			sleep 1;
			alive player
		};                        // These 3 lines wait for player to spawn
		player setVariable [QGVAR(bloodtype), _bloodType, true];
	};
}remoteExec ["BIS_fnc_call", 0];