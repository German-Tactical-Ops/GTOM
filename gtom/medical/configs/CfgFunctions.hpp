#include "\gtom\basicDefines_A3.hpp"
#include "\gtom\defines.hpp"

class cfgFunctions
{
	class GTO
	{
		class medical
		{
			file = "gtom\medical\functions";

			class cbaSettingsMedical
			{
				postInit = 1;
				recompile = 1;
			}; // [] call GTO_fnc_cbaSettingsMedical;

			class setBloodGroup
			{
				recompile = 1;
			}; // [] call GTO_fnc_setBloodGroup;
		};
	};
};