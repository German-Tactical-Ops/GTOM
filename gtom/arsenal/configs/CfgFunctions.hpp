class cfgFunctions
{
	class GTO // project tag
	{
		class arsenalSystem // This represent a group of function
		{
			file = "gtom\arsenal\functions";

			class setRole
			{
				recompile = 1;
			}; // [] call GTO_fnc_setRole;

			class setArsenal 
			{
				recompile = 1;
			}; // [] call GTO_fnc_setArsenal;

			class getRoleName 
			{
				recompile = 1;
			}; // [] call GTO_fnc_getRoleName;

			class getRankNumber
			{
				recompile = 1;
			}; // [_player] call GTO_fnc_getRankNumber;

			class whitelist
			{
				recompile = 1;
			}; // [_items] call GTO_fnc_whitelist;

			class loadDefault 
			{
				recompile = 1;
			}; // [_arsenalType, _role] call GTO_fnc_loadDefault;

			// class empty
			// {
			// 	// description = "Function description"; // You can write some words about your fonction
			// 	// preInit = 1;						  // 1 to call the function upon mission start, before objects are initialized. Passed arguments are ["preInit"]
			// 	// postInit = 1;						  // 1 to call the function upon mission start, after objects are initialized. Passed arguments are ["postInit"]
			// 	// preStart = 1;						  // 1 to call the function upon game start, before title screen, but after all addons are loaded.
			// 	// recompile = 1;						  // 1 to recompile the function upon mission start
			// 	// headerType = -1;					  // Set function header type: -1 - no header; 0 - default header; 1 - system header.
			// }; // [] call GTO_fnc_myFunction4
		};

		class arsenalLists
		{

			file = "gtom\arsenal\arsenalLists";

			class arsenal_USA
			{
				recompile = 1;
			}; // [] call GTO_fnc_arsenal_USA

			class arsenal_Vanilla
			{
				recompile = 1;
			}; // [] call GTO_fnc_arsenal_Vanilla
		};
	};
};