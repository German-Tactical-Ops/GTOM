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
			}; //

			class setPlayerRank
			{
			}; // [_player] call GTO_fnc_setPlayerRank;

			class initFortify
			{
			}; // [] call GTO_fnc_initFortify;

			class persistentPlayer
			{
			}; // [] call GTO_fnc_persistentPlayer;
		};

		class arsenal
		{
			file = "gtom\main\functions";

			class initArsenal
			{
			}; // [box] call GTO_fnc_initArsenal;

			class mainArsenal
			{
			}; //_itemArray = [] call GTO_fnc_mainArsenal;

			class setMedicationCategorie
			{
			}; // [] call GTO_fnc_setMedicationCategorie;
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