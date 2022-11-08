CfgWeapons
{
	class H_HelmetSpecB;

	// Base GTO HelmetSpec class to inherit
	class GTO_HelmetSpec_Medic_Base : H_HelmetSpecB
	{
		scopeCurator = 0;
		author = "w0llkopf";
	};

	class GTO_HelmetSpec_Medic_Black : GTO_HelmetSpec_Medic_Base
	{
		scopeCurator = 2;
        displayName = "Helmet Spec Medic (black)";
        hiddenSelectionsTextures[] = {"gtom\wearables\textures\HelmetSpec\HelmetSpec_Medic_black.paa"};
	};
};