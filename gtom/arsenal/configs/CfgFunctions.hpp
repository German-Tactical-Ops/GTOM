class cfgFunctions
{
	class GTO // project tag
	{
		class arsenalSystem // This represent a group of function
		{
			file = "gtom\arsenal\functions";

			class setRole
			{
			}; // [] call GTO_fnc_setRole;

			class setArsenal 
			{
			}; // [] call GTO_fnc_setArsenal;

			class blacklistItems
			{
			}; // [_items] call GTO_fnc_blacklistItems;

			class loadDefault 
			{
			}; // [_arsenalType, _role] call GTO_fnc_loadDefault;

			class cbaArsenal
			{
				//preStart = 1;
			}; // [] call GTO_fnc_cbaArsenal;

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
			}; // [] call GTO_fnc_arsenal_USA

			class arsenal_Vanilla
			{
			}; // [] call GTO_fnc_arsenal_Vanilla

			class arsenal_Custom
			{				
			}; // [] call GTO_fnc_arsenal_Custom
		};
	};
};
