#include "\gtom\basicDefines_A3.hpp"

class cfgFunctions
{
	class GTO
	{
		class main
		{
			file = "gtom\main\functions";

			class cbaSettings
			{
				postInit = 1;
				recompile = 1;
			}; //

			class setPlayerRank
			{
				description = "Gives Player his Rank";
				recompile = 1;
			}; // [_player] call GTO_fnc_setPlayerRank;

			class initFortify
			{
				recompile = 1;
			}; // [] call GTO_fnc_initFortify;

			class persistentPlayer
			{
				recompile = 1;
			}; // [] call GTO_fnc_persistentPlayer;
		};

		// class permissionCheck
		// {
		// 	file = "gtom\functions\permissionCheck";

		// 	class isZeus
		// 	{
		// 		recompile = 1;
		// 	};

		// 	class isAdmin
		// 	{
		// 		recompile = 1;
		// 	};
		// };
	};
};