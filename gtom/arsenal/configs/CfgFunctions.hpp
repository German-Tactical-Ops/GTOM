class cfgFunctions
{
	class GTO // project tag
	{
		class arsenalSystem // This represent a group of function
		{
			file = "gtom\arsenal\functions";

			class returnArsenal_Basic
			{
				recompile = 1;
			}; // [] call GTO_fnc_returnArsenal_Basic;

			class setRole
			{
				recompile = 1;
			}; // [] call GTO_fnc_setRole;

			class empty
			{
				// description = "Function description"; // You can write some words about your fonction
				// preInit = 1;						  // 1 to call the function upon mission start, before objects are initialized. Passed arguments are ["preInit"]
				// postInit = 1;						  // 1 to call the function upon mission start, after objects are initialized. Passed arguments are ["postInit"]
				// preStart = 1;						  // 1 to call the function upon game start, before title screen, but after all addons are loaded.
				// recompile = 1;						  // 1 to recompile the function upon mission start
				// headerType = -1;					  // Set function header type: -1 - no header; 0 - default header; 1 - system header.
			}; // [] call GTO_fnc_myFunction4
		};
	};
};