class cfgFunctions
{
	class GTO // project tag
	{
		class arsenalSystem // This represent a group of function
		{
			file = "gto\functions";
			requiredAddons[] = {

            // CBA
            "cba_common",
            "cba_main",
            "cba_main_a3",

            // ACE3
            "ace_common",
            "ace_main"};

			class setRole
			{}; // [] call GTO_fnc_setRole;

			class setArsenal 
			{}; // [] call GTO_fnc_setArsenal;

			class getRoleName 
			{}; // [] call GTO_fnc_getRoleName;

			class getRankNumber
			{}; // [_player] call GTO_fnc_getRankNumber;

			class blacklistItems
			{}; // [_items] call GTO_fnc_blacklistItems;

			class loadDefault 
			{}; // [_arsenalType, _role] call GTO_fnc_loadDefault;

			class initArsenal
			{
				postInit = 1;
			}; //

			class transformArsenal
			{}; // [_target] call GTO_fnc_transformArsenal;
		};

		class arsenalLists
		{

			file = "gto\arsenalLists";
			requiredAddons[] = {
				
            // CBA
            "cba_common",
            "cba_main",
            "cba_main_a3",

            // ACE3
            "ace_common",
            "ace_main"};

			class arsenal_USA
			{
				
			}; // [] call GTO_fnc_arsenal_USA

			class arsenal_Vanilla
			{
				
			}; // [] call GTO_fnc_arsenal_Vanilla
		};
	};
};