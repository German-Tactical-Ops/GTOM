#include "\gtom\basicDefines_A3.hpp"

class cfgFunctions
{
	class GTO
	{
		class rankSystem
		{
			file = "gtom\ranksystem\functions";

			class cbaSettingsRanksystem
			{
				postInit = 1;
				recompile = 1;
			}; // [] call GTO_fnc_cbaSettingsRanksystem;

			class convertRank
			{
				recompile = 1;
			}; // [] call GTO_fn_convertRank;

			class setRank
			{
				recompile = 1;
			}; // [] call GTO_fnc_setRank;
		};
	};
};