#include "\gtom\basicDefines_A3.hpp"
#include "\gtom\defines.hpp"
#include "\gtom\cfgPatches.hpp"

class cfgFunctions
{
	class GTO // project tag
	{
		class arsenal // This represent a group of function
		{
			file = "gtom\functions\arsenal"; // Where my functions are

			class setCategorie
			{
				description = "Makes a medical categorie in the arsenal";
				postInit = 1;
				recompile = 1;
			}; //

			class initArsenal
			{
				description = "Creates a arsenal on the given object";
				recompile = 1;
			}; // [box] call GTO_fnc_initArsenal;

			class mainArsenal
			{
				description = "Returns arsenal item ARRAY";
				recompile = 1;
			}; //_itemArray = [] call GTO_fnc_mainArsenal

			// TODO: make possible to insert Loadout via CBA Settings
			class shareBasicLoadouts
			{
				description = "Shares the basic loadout";
				postInit = 1;
				recompile = 1;
			}; // [] call GTO_fnc_shareBasicLoadouts;
		};

		class diary
		{
			file = "gtom\functions\diary";

			class addBasicDiary
			{
				postInit = 1;
				recompile = 1;
			}; //

			class myFunction4
			{
				// description = "Function description"; // You can write some words about your fonction
				// preInit = 1;						  // 1 to call the function upon mission start, before objects are initialized. Passed arguments are ["preInit"]
				// postInit = 1;						  // 1 to call the function upon mission start, after objects are initialized. Passed arguments are ["postInit"]
				// preStart = 1;						  // 1 to call the function upon game start, before title screen, but after all addons are loaded.
				// recompile = 1;						  // 1 to recompile the function upon mission start
				// headerType = -1;					  // Set function header type: -1 - no header; 0 - default header; 1 - system header.
			}; // [] call GTO_fnc_myFunction4
		};
		// TODO: add teleport function for Hebotes
		class other
		{
			file = "gtom\functions\other";

			class setPlayerRank
			{
				description = "Creates a arsenal on the given object";
				recompile = 1;
			}; // [_player] call GTO_fnc_setPlayerRank;

			class cbaSettings
			{
				postInit = 1;
				recompile = 1;
			}; //

			class initFortify
			{
				recompile = 1;
			}; // [] call GTO_fnc_initFortify;
		};

		class respawn
		{
			file = "gtom\functions\respawn";

			class placeRalypoint
			{
				recompile = 1;
			}; // [player] call GTO_fnc_placeRalypoint
		};
	};
};