#include "basicDefines_A3.hpp"
#include "defines.hpp"
#include "cfgPatches.hpp"

/*
class XtdGearModels
{
	class CamoBase;
	class SleevesBase;
	class CfgWeapons
	{
		class GTO_Beret_All // <- Name that will be used to group CfgWeapons entries, used in "model" property.
		{
			label = "GTO_Beret";
			author = "LucyferHW";
			options[] = {"camo"};
			class camo : CamoBase // Reuse camos defined in ACEAX
			{
				values[] = {"Red", "Orange", "Yellow", "Green", "Blue", "Violett", "Pink", "WHT", "Gray", "Black"};
			};
		};
	};
};

// We use the "all in one" appraoch here : it's much more easier, and you dot not risk breaking things
class XtdGearInfo
{
	class CfgWeapons
	{
		class GTO_Beret_Red // <- Class name in CfgWeapons
		{
			model = "GTO_Beret_All"; // <- Model name, from XtdGearModels >> CfgWeapons
			camo = "Red";			 // <- "camo" option value
		};

		class GTO_Beret_Orange
		{
			model = "GTO_Beret_All";
			camo = "Orange";
		};

		class GTO_Beret_Yellow
		{
			model = "GTO_Beret_All";
			camo = "Yellow";
		};

		class GTO_Beret_Green
		{
			model = "GTO_Beret_All";
			camo = "Green";
		};

		class GTO_Beret_Blue
		{
			model = "GTO_Beret_All";
			camo = "Blue";
		};

		class GTO_Beret_Violett
		{
			model = "GTO_Beret_All";
			camo = "Violett";
		};

		class GTO_Beret_Pink
		{
			model = "GTO_Beret_All";
			camo = "Pink";
		};

		class GTO_Beret_White
		{
			model = "GTO_Beret_All";
			camo = "WHT";
		};
		class GTO_Beret_Gray
		{
			model = "GTO_Beret_All";
			camo = "Gray";
		};
		class GTO_Beret_Black
		{
			model = "GTO_Beret_All";
			camo = "Black";
		};
	};
};*/


class XtdGearModels
{
	class CamoBase;
	class SleevesBase;
	class CfgWeapons 
	{
		class CBRN_Suit_01 // <- Name that will be used to group CfgWeapons entries, used in "model" property.
		{
			label = "GTO Beret";
			author = "LucyferHW";
			options[] = {"camo"};
			class camo : CamoBase // Reuse camos defined in ACEAX
			{
				values[] = {"WHT", "BLU", "M81", "MTP", "Tropic", "AAF", "EAF"};
			};
		};
	};
};

// We use the "all in one" appraoch here : it's much more easier, and you dot not risk breaking things
class XtdGearInfo
{
	class CfgWeapons
	{
		class U_C_CBRN_Suit_01_White_F // <- Class name in CfgWeapons
		{
			model = "CBRN_Suit_01"; // <- Model name, from XtdGearModels >> CfgWeapons
			camo = "WHT"; // <- "camo" option value
		};
		class U_C_CBRN_Suit_01_Blue_F 
		{
			model = "CBRN_Suit_01";
			camo = "BLU";
		};
		class U_B_CBRN_Suit_01_Wdl_F 
		{
			model = "CBRN_Suit_01";
			camo = "M81";
		};
		class U_B_CBRN_Suit_01_MTP_F 
		{
			model = "CBRN_Suit_01";
			camo = "MTP";
		};
		class U_B_CBRN_Suit_01_Tropic_F 
		{
			model = "CBRN_Suit_01";
			camo = "Tropic";
		};
		class U_I_CBRN_Suit_01_AAF_F 
		{
			model = "CBRN_Suit_01";
			camo = "AAF";
		};
		class U_I_E_CBRN_Suit_01_EAF_F 
		{
			model = "CBRN_Suit_01";
			camo = "EAF";
		};
	};
};