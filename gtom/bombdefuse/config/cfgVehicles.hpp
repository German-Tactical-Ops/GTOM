class CfgVehicles
{

	class Man;
	class CAManBase: Man 
	{
		class ACE_SelfActions 
		{
			class ACE_GTOM_miniGameDefuse 
			{
				displayName = "Bomb Defuse";
				condition ="((cursorTarget getVariable ['realIed',objnull]) getVariable ['GTOM_isIEDMiniGame',false]) && ((cursorTarget getVariable ['realIed',objnull]) getVariable ['armed',false]) && (_player distance cursorTarget < 8)";
				statement = "[cursorTarget] spawn GTOM_fnc_bdStart";
				showDisabled = 0;
				icon = "\A3\ui_f\data\map\markers\military\unknown_CA.paa";
			};
		};
	};

	class Logic;
	class Module_F: Logic
	{
		class AttributesBase
		{
			class Default;
			class Edit;					// Default edit box (i.e. text input field)
			class Combo;				// Default combo box (i.e. drop-down menu)
			class Checkbox;				// Default checkbox (returned value is Boolean)
			class CheckboxNumber;		// Default checkbox (returned value is Number)
			class ModuleDescription;	// Module description
			class Units;				// Selection of units on which the module is applied
		};

		// Description base classes (for more information see below):
		class ModuleDescription
		{
			class AnyPlayer;
			class AnyBrain;
			class EmptyDetector;
		};
	};

	class GTOM_Module_Base : Module_F
	{
		access = 0;
		author = "Wollkopf";
		vehicleClass = "Modules";
		category = "GTOM_ZEUS";
		icon = "\gtom\logo\gto_unit_logo";
		picture = "\gtom\logo\gto_unit_logo";
		portrait = "\gtom\logo\gto_unit_logo";

		scope = 1;
		scopeCurator = 1;

		displayName = "GTOM TEST";

		function = "";
		functionPriority = 1;
		isGlobal = 1;
		isTriggerActivated = 0;
		isDisposable = 0;

		class Arguments {};
		class ModuleDescription: ModuleDescription
		{
			description = "";
		};
	};

	class GTOM_Module_createIEDCurator : GTOM_Module_Base
	{
		category = "GTOM_ZEUS";
		displayName = "IED/Suicide Bomber";
		function = "gtom_fnc_curatorSetIED";
		portrait = "a3\ui_f\data\IGUI\Cfg\simpleTasks\types\destroy_ca.paa";
		scopeCurator = 2;
	};

	class GTOM_Module_createIED : Module_F
	{
		category = "GTOM_ZEUS";
		displayName = "IED/Suicide Bomber";
		function = "gtom_fnc_curatorSetIED";
		scope = 2;
		isGlobal = 0;

		class Attributes : AttributesBase
		{
			class side : Combo
			{
				displayName = "Activate Side";
				typeName = "NUMBER";
				property = "side";

				class values
				{
					class BLUFOR
					{
						name = "$STR_WEST";
						value = 1;
						default = 1;
					};
					class OPFOR
					{
						name = "$STR_EAST";
						value = 0;
					};
					class Independent
					{
						name = "$STR_GUERRILA";
						value = 2;
					};
					class Civilian
					{
						name = "$STR_CIVILIAN";
						value = 3;
					};
				};
			};

			class size : Combo
			{
				displayName = "Explosion Size";
				typeName = "STRING";
				property = "size";

				class values
				{
					class small
					{
						name = "Small";
						value = "small";
					};
					class medium
					{
						name = "Medium";
						value = "medium";
						default = 1;
					};
					class large
					{
						name = "Large";
						value = "large";
					};
				};
			};

			class effect : Combo
			{
				displayName = "Explosion Effect";
				typeName = "NUMBER";
				property = "effect";

				class values
				{
					class Deadly
					{
						name = "Deadly";
						value = 0;
						default = 1;
					};
					class Disabling
					{
						name = "Disabling";
						value = 1;
					};
					class Fake
					{
						name = "Fake";
						value = 2;
					};
					class None
					{
						name = "None";
						value = 3;
					};
				};
			};

			class disarmTime : Combo
			{
				displayName = "Disarm Time";
				typeName = "NUMBER";
				property = "disarmTime";

				class values
				{
					class t10
					{
						name = "10 seconds";
						value = 10;
						default = 1;
					};
					class t30
					{
						name = "30 seconds";
						value = 30;
					};
					class t60
					{
						name = "60 seconds";
						value = 60;
					};
					class t120
					{
						name = "120 seconds";
						value = 120;
					};
					class t240
					{
						name = "240 seconds";
						value = 240;
					};
				};
			};

			class Jammable : Combo
			{
				displayName = "Jammable";
				typeName = "NUMBER";
				property = "Jammable";

				class values
				{
					class yes
					{
						name = "Yes";
						value = 1;
						default = 1;
					};
					class no
					{
						name = "No";
						value = 0;
					};
				};
			};

			class ActivationType : Combo
			{
				displayName = "Activation Type";
				typeName = "NUMBER";
				property = "ActivationType";

				class values
				{
					class Proximity
					{
						name = "Proximity";
						value = 0;
						default = 1;
					};
					class Radio
					{
						name = "Radio/Spotter";
						value = 1;
					};
					class missionMaker
					{
						name = "Mission Maker Only";
						value = 2;
					};
					class miniGame
					{
						name = "Mini-Game(Proximity)";
						value = 3;
					};
					class miniGameManual
					{
						name = "Mini-Game(Manual)";
						value = 4;
					};
				};
			};

			class Distance : Combo
			{
				displayName = "Activation Distance";
				typeName = "NUMBER";
				property = "Distance";

				class values
				{
					class t5
					{
						name = "5 meters";
						value = 5;
					};
					class t10
					{
						name = "10 meters";
						value = 10;
					};
					class t20
					{
						name = "20 meters";
						value = 20;
						default = 1;
					};
					class t30
					{
						name = "30 meters";
						value = 30;
					};
					class t40
					{
						name = "40 meters";
						value = 40;
					};
					class t50
					{
						name = "50 meters";
						value = 50;
					};
				};
			};

			class ModuleDescription: ModuleDescription{};
		};

		class ModuleDescription: ModuleDescription
		{
			description = "Sync it with any vehicle or object to create an IED or with an AI to create suicide Bomber";
			sync[] = {"Anything"};

			class Anything
			{
				description = "Any vehicle. No persons or static objects.";
				displayName = "Any vehicle";
				side = 4;
				position = 1;
				direction = 1;
				optional = 0;
				duplicate = 1;
			};
		};
	};

};

