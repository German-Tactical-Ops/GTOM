#include "\gtom\basicDefines_A3.hpp"

#include "dialogs\dynamicDialogUi.hpp"
#include "dialogs\bombDefuse.hpp"



class CfgPatches 
{
	class GTOM_ZEUS_Module
	{
		weapons[] = {};
		requiredVersion = 0.1;
		author = "Wollkopf";
		version = 1.0.0;
		units[] = {"GTOM_Module_Base","GTOM_Module_createIED" ,"GTOM_Module_createIEDCurator"};
		requiredAddons[] = {"A3_Modules_F", "cba_common", "cba_events"};
	};
};	

class CfgFactionClasses
{
	class NO_CATEGORY;
	class GTOM_ZEUS : NO_CATEGORY
	{
		displayName = "GTOM ZEUS";
		priority = 8;
		side = 7;
	};
};

class cfgFunctions
{
	class GTOM
	{
		class fnglobal 
		{
			file = "gtom\bombdefuse\fnglobal";

			class preinit {preInit = 1;};
			class globalExecute {};
			class addVelocity {};
			class createHelper {};
			class deleteHelper {};
			class setVehicleInit {};
			class globalSay3D {};
			class time2String {};
		};

		
		class fndialog
		{
			file = "gtom\bombdefuse\fndialog";
			class initDynamicDialog {};
		};

		class fnbomb
		{
			file = "gtom\bombdefuse\fnbomb";
			class manageSB {};
			class createIED {};
			class IedDeadlyExplosion {};
			class IedDisablingExplosion {};
			class IedFakeExplosion {};
			class IedHit {};
			class IedSync {};
		};
	
		class fnbombgame
		{
			file = "gtom\bombdefuse\fnbombgame";
			class initBombDefuse {};
			class bdWireModule {};
			class bdButtonsModule {};
			class bdNumpadModule {};
			class bdWatch {};
			class bdStart {};
			class bdCreateManual {postinit = 1;};
		};

		class fncurator
		{
			file = "gtom\bombdefuse\fncurator";
			class curatorSetIED {description = "Make item/object/unit an IED";};
		};
	};
};

#include "config\cfgVehicles.hpp"