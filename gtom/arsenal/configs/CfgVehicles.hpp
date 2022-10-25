class CfgVehicles
{
    class C_IDAP_supplyCrate_F;
    class GTO_arsenal_base : C_IDAP_supplyCrate_F
    {
        displayName = "BASE";
        author = "LucyferHW";

        arsenalType = "";

        editorCategory = "GTO";
        editorSubcategory = "GTO_Arsenal";

        scope = 1;
        scopeCurator = 1;

        disableInventory = 1;

        ace_cargo_canLoad = 0;
        DLC = "";

        class TransportItems {};
        class TransportMagazines {};
        class TransportWeapons {};
        class TransportBackpacks {};

        class ACE_Actions
        {
				class openArsenalA
				{
					displayName = "Open Arsenal";
                	statement = "[_target, _player, false] call ace_arsenal_fnc_openBox;";
                	condition =  "true"; //!isNil {_target getVariable 'ace_arsenal_virtualItems'};
                	exceptions[] = {}; //"isNotSwimming", "isNotInside", "notOnMap", "isNotSitting"
                	priority = 1;
				};

            class ACE_MainActions
            {

			    displayName = "Main";
                statement = "[_target, [] call GTO_fnc_returnArsenal_Basic, false] call ace_arsenal_fnc_addVirtualItems;";

				runOnHover = 1;
                distance = 6;

				class openArsenal
				{
					displayName = "Open Arsenal";
                	statement = "[_target, _player, false] call ace_arsenal_fnc_openBox;";
                	condition =  "true"; //!isNil {_target getVariable 'ace_arsenal_virtualItems'};
                	exceptions[] = {}; //"isNotSwimming", "isNotInside", "notOnMap", "isNotSitting"
                	priority = 1;
				};

				class takeRole
				{
					displayName = "Take Role";
                	statement = "systemchat 'select Role';";
                	condition =  "true"; //!isNil {_target getVariable 'ace_arsenal_virtualItems'};
                	exceptions[] = {};
					priority = 2;

					class role_SL
                    {
                        displayName = "SL";
                        condition = "true"; 
                        statement = "['sl'] call GTO_fnc_setRole;";
                        exceptions[] = {}; 
                    };

					class role_FTL
                    {
                        displayName = "FTL";
                        condition = "true"; 
                        statement = "['ftl'] call GTO_fnc_setRole;";
                        exceptions[] = {}; 
                    };

					class role_Doctor
                    {
                        displayName = "Doctor";
                        condition = "true"; 
                        statement = "['doctor'] call GTO_fnc_setRole;";
                        exceptions[] = {}; 
                    };

					class role_Medic
                    {
                        displayName = "Medic";
                        condition = "true"; 
                        statement = "['medic'] call GTO_fnc_setRole;";
                        exceptions[] = {}; 
                    };

					class role_Rifleman
                    {
                        displayName = "Rifleman";
                        condition = "true"; 
                        statement = "['rifleman'] call GTO_fnc_setRole;";
                        exceptions[] = {}; 
                    };

					class role_Ammo_Carrier
                    {
                        displayName = "Ammo Carrier";
                        condition = "true"; 
                        statement = "['ammoCarrier'] call GTO_fnc_setRole;";
                        exceptions[] = {}; 
                    };

					class role_MG
                    {
                        displayName = "MG";
                        condition = "true"; 
                        statement = "['mg'] call GTO_fnc_setRole;";
                        exceptions[] = {}; 
                    };

					class role_Grenadier
                    {
                        displayName = "Grenadier";
                        condition = "true"; 
                        statement = "['grenadier'] call GTO_fnc_setRole;";
                        exceptions[] = {}; 
                    };

					class role_AT
                    {
                        displayName = "AT";
                        condition = "true"; 
                        statement = "['at'] call GTO_fnc_setRole;";
                        exceptions[] = {}; 
                    };

					class role_Sniper
                    {
                        displayName = "Sniper";
                        condition = "true"; 
                        statement = "['sniper'] call GTO_fnc_setRole;";
                        exceptions[] = {}; 
                    };

					class role_Spotter
                    {
                        displayName = "Spotter";
                        condition = "true"; 
                        statement = "['spotter'] call GTO_fnc_setRole;";
                        exceptions[] = {}; 
                    };

					class role_Sapper
                    {
                        displayName = "Sapper";
                        condition = "true"; 
                        statement = "['sapper'] call GTO_fnc_setRole;";
                        exceptions[] = {}; 
                    };

					class role_Pionier
                    {
                        displayName = "Pionier";
                        condition = "true"; 
                        statement = "['pionier'] call GTO_fnc_setRole;";
                        exceptions[] = {}; 
                    };

					class role_Enginier
                    {
                        displayName = "Enginier";
                        condition = "true"; 
                        statement = "['enginier'] call GTO_fnc_setRole;";
                        exceptions[] = {}; 
                    };

					class role_JTAC
                    {
                        displayName = "JTAC";
                        condition = "true"; 
                        statement = "['jtac'] call GTO_fnc_setRole;";
                        exceptions[] = {}; 
                    };

					class role_Pilot
                    {
                        displayName = "Pilot";
                        condition = "true"; 
                        statement = "['pilot'] call GTO_fnc_setRole;";
                        exceptions[] = {}; 
                    };

					class role_Crewman
                    {
                        displayName = "Crewman";
                        condition = "true"; 
                        statement = "['crewman'] call GTO_fnc_setRole;";
                        exceptions[] = {}; 
                    };

					class role_Admin
                    {
                        displayName = "Admin";
                        condition = "true"; 
                        statement = "['admin'] call GTO_fnc_setRole;";
                        exceptions[] = {}; 
                    };
				};	
            };
        };
    };

    class GTO_arsenal_usa : GTO_arsenal_base
    {
        displayName = "Arsenal USA";
        //arsenalType = "USA";
        scope = 2;
        scopeCurator = 2;
        //hiddenSelectionsTextures[] = {gtom\arsenal\pics\Arsenal_USA.paa};
    };
};
//ADD_ROLE(dmr,);