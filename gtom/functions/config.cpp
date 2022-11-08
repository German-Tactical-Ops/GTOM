#include "\gtom\basicDefines_A3.hpp"
#include "\gtom\cfgPatches.hpp"

class cfgFunctions
{
	class GTO
	{
		class arsenal
		{
			file = "gtom\functions\arsenal";

			class initArsenal
			{
				description = "Creates a arsenal on the given object";
				recompile = 1;
			}; // [box] call GTO_fnc_initArsenal;

			class mainArsenal
			{
				description = "Returns arsenal item ARRAY";
				recompile = 1;
			}; //_itemArray = [] call GTO_fnc_mainArsenal;
		};
	};
};

// class empty
			// {
			// 	// description = "Function description"; // You can write some words about your fonction
			// 	// preInit = 1;						  // 1 to call the function upon mission start, before objects are initialized. Passed arguments are ["preInit"]
			// 	// postInit = 1;						  // 1 to call the function upon mission start, after objects are initialized. Passed arguments are ["postInit"]
			// 	// preStart = 1;						  // 1 to call the function upon game start, before title screen, but after all addons are loaded.
			// 	// recompile = 1;						  // 1 to recompile the function upon mission start
			// 	// headerType = -1;					  // Set function header type: -1 - no header; 0 - default header; 1 - system header.
			// }; // [] call GTO_fnc_myFunction4