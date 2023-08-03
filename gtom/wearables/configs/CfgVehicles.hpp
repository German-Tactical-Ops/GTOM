class CfgVehicles {

    class B_Carryall_Base;


	// Base GTO Carryall class to inherit
	class GTO_Carryall_Medic_Base : B_Carryall_Base
	{
		scope= 0;
		author= "w0llkopf";
		picture= "\gtom\wearables\icons\gto_medic_icon.paa";
		maximumLoad= 400;
	};


    class GTO_Carryall_Medic_alpine : GTO_Carryall_Medic_Base
    {
        scope= 2;
		scopeCurator= 2;
		scopeArsenal= 2;
        displayName= "Carryall B. Medic (alpine)";
        hiddenSelectionsTextures[]= {"gtom\wearables\textures\CarryallMedic\carryall_medic_alpine.paa"};
    };

	class GTO_Carryall_Medic_aor1 : GTO_Carryall_Medic_Base
    {
        scope= 2;
		scopeCurator= 2;
		scopeArsenal= 2;
        displayName= "Carryall B. Medic (aor1)";
        hiddenSelectionsTextures[]= {"gtom\wearables\textures\CarryallMedic\carryall_medic_aor1.paa"};
    };

	    class GTO_Carryall_Medic_aor2 : GTO_Carryall_Medic_Base
    {
        scope= 2;
		scopeCurator= 2;
		scopeArsenal= 2;
        displayName= "Carryall B. Medic (aor2)";
        hiddenSelectionsTextures[]= {"gtom\wearables\textures\CarryallMedic\carryall_medic_aor2.paa"};
    };

	class GTO_Carryall_Medic_dts : GTO_Carryall_Medic_Base
    {
        scope= 2;
		scopeCurator= 2;
		scopeArsenal= 2;
        displayName= "Carryall B. Medic (dts)";
        hiddenSelectionsTextures[]= {"gtom\wearables\textures\CarryallMedic\carryall_medic_dts.paa"};
    };

	class GTO_Carryall_Medic_m81 : GTO_Carryall_Medic_Base
    {
        scope= 2;
		scopeCurator= 2;
		scopeArsenal= 2;
        displayName= "Carryall B. Medic (m81)";
        hiddenSelectionsTextures[]= {"gtom\wearables\textures\CarryallMedic\carryall_medic_m81.paa"};
    };

	class GTO_Carryall_Medic_multicam : GTO_Carryall_Medic_Base
    {
        scope= 2;
		scopeCurator= 2;
		scopeArsenal= 2;
        displayName= "Carryall B. Medic (multicam)";
        hiddenSelectionsTextures[]= {"gtom\wearables\textures\CarryallMedic\carryall_medic_multicam.paa"};
    };

	class GTO_Carryall_Medic_multicam_arid : GTO_Carryall_Medic_Base
    {
        scope= 2;
		scopeCurator= 2;
		scopeArsenal= 2;
        displayName= "Carryall B. Medic (arid)";
        hiddenSelectionsTextures[]= {"gtom\wearables\textures\CarryallMedic\carryall_medic_multicamarid.paa"};
    };

	class GTO_Carryall_Medic_multicam_black : GTO_Carryall_Medic_Base
    {
        scope= 2;
		scopeCurator= 2;
		scopeArsenal= 2;
        displayName= "Carryall B. Medic (black)";
        hiddenSelectionsTextures[]= {"gtom\wearables\textures\CarryallMedic\carryall_medic_multicamblack.paa"};
    };

	class GTO_Carryall_Medic_multicam_tropic : GTO_Carryall_Medic_Base
    {
        scope= 2;
		scopeCurator= 2;
		scopeArsenal= 2;
        displayName= "Carryall B. Medic (tropic)";
        hiddenSelectionsTextures[]= {"gtom\wearables\textures\CarryallMedic\carryall_medic_multicamtropic.paa"};
    };

	class GTO_Carryall_Medic_ocp : GTO_Carryall_Medic_Base
    {
        scope= 2;
		scopeCurator= 2;
		scopeArsenal= 2;
        displayName= "Carryall B. Medic (ocp)";
        hiddenSelectionsTextures[]= {"gtom\wearables\textures\CarryallMedic\carryall_medic_ocp.paa"};
    };

	class GTO_Carryall_Medic_oga : GTO_Carryall_Medic_Base
    {
        scope= 2;
		scopeCurator= 2;
		scopeArsenal= 2;
        displayName= "Carryall B. Medic (oga)";
        hiddenSelectionsTextures[]= {"gtom\wearables\textures\CarryallMedic\carryall_medic_oga.paa"};
    };

	class GTO_Carryall_Medic_oga_od : GTO_Carryall_Medic_Base
    {
        scope= 2;
		scopeCurator= 2;
		scopeArsenal= 2;
        displayName= "Carryall B. Medic (oga_od)";
        hiddenSelectionsTextures[]= {"gtom\wearables\textures\CarryallMedic\carryall_medic_ogaod.paa"};
    };

	class GTO_Carryall_Medic_projecthonor : GTO_Carryall_Medic_Base
    {
        scope= 2;
		scopeCurator= 2;
		scopeArsenal= 2;
        displayName= "Carryall B. Medic (projecthonor)";
        hiddenSelectionsTextures[]= {"gtom\wearables\textures\CarryallMedic\carryall_medic_projecthonor.paa"};
    };


    /* class tfw_ilbe_DD_Base;
    class tfw_ilbe_blade_Base;

    class GTO_ILBE_Medic_Base : tfw_ilbe_blade_Base
	{
		scope= 0;
		author= "LucyferHW";
		picture= "\gtom\wearables\icons\gto_medic_icon.paa";
		maximumLoad= 400;
	};

    class GTO_ILBE_Medic_alpine : GTO_ILBE_Medic_Base
    {
        scope= 2;
		scopeCurator= 2;
		scopeArsenal= 2;
        displayName= "ILBE B. Medic (alpine)";
        hiddenSelectionsTextures[]= {"gtom\wearables\textures\ILBE\ilbe_alpine.paa"};
    };

    class GTO_ILBE_Medic_black : GTO_ILBE_Medic_Base
    {
        scope= 2;
		scopeCurator= 2;
		scopeArsenal= 2;
        displayName= "ILBE B. Medic (black)";
        hiddenSelectionsTextures[]= {"gtom\wearables\textures\ILBE\ilbe_black.paa"};
    };

    class GTO_ILBE_Medic_multicam : GTO_ILBE_Medic_Base
    {
        scope= 2;
		scopeCurator= 2;
		scopeArsenal= 2;
        displayName= "ILBE B. Medic (multicam)";
        hiddenSelectionsTextures[]= {"gtom\wearables\textures\ILBE\ilbe_multicam.paa"};
    };

    class GTO_ILBE_Medic_multicamtropic : GTO_ILBE_Medic_Base
    {
        scope= 2;
		scopeCurator= 2;
		scopeArsenal= 2;
        displayName= "ILBE B. Medic (multicam tropic)";
        hiddenSelectionsTextures[]= {"gtom\wearables\textures\ILBE\ilbe_multicamtropic.paa"};
    };

    class GTO_ILBE_Medic_aor1 : GTO_ILBE_Medic_Base
    {
        scope= 2;
		scopeCurator= 2;
		scopeArsenal= 2;
        displayName= "ILBE B. Medic (AOR1)";
        hiddenSelectionsTextures[]= {"gtom\wearables\textures\ILBE\ilbe_arid.paa"};
    }; */

};