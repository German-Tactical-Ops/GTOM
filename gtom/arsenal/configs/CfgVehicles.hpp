class CfgVehicles
{
    class C_IDAP_supplyCrate_F;

    class GTO_arsenal_base: C_IDAP_supplyCrate_F
    {
        displayName = "BASE";
        author = "LucyferHW";

        arsenalType = "";
        arsenalSubType = "";

        editorCategory = "Categorie_GTO";
        editorSubcategory = "Categorie_GTO_Arsenal";

        scope = 1;
        scopeCurator = 1;

        disableInventory = 0;
        ace_cargo_canLoad = 0;
        DLC = "";

        class TransportItems {};
        class TransportMagazines {};
        class TransportWeapons {};
        class TransportBackpacks {};
    };


    class GTO_arsenal_custom : GTO_arsenal_base
    {
        displayName = "Custom Arsenal";
        arsenalType = "Custom";
        arsenalSubType = "NONE";
        scope = 2;
        scopeCurator = 2;
        hiddenSelectionsTextures[] = {gtom\arsenal\textures\export\Arsenal_Classic.paa};

        class ACE_Actions
        {
            class ACE_MainActions
            {

			    displayName = "Arsenal";
                statement = "";
				runOnHover = 1;
                distance = 6;

				class openArsenal
				{
					displayName = "Open Arsenal";
                	statement = "[_target, _player, false] call ace_arsenal_fnc_openBox;";
                	condition =  "!isNil {_target getVariable 'ace_arsenal_virtualItems'}";
                	exceptions[] = {"isNotSwimming", "isNotInside", "notOnMap", "isNotSitting"};
                	priority = 1;
				};

				class takeRole
				{
					displayName = "Take Role";
                	condition =  "true";
                	exceptions[] = {"isNotSwimming", "isNotInside", "notOnMap", "isNotSitting"};
					priority = 2;                

                    class categorie_lead
                    {
                        displayName = "Lead";
                	    condition =  "20 <= ([_player] call GTO_fnc_getRankNumber)";
                	    exceptions[] = {};

                        class role_PL
                        {
                            displayName = "PL (Coming soon)";
                            condition = "50 <= ([_player] call GTO_fnc_getRankNumber)"; 
                            //statement = "['pl', getText (configOf _target >> 'arsenalType'), _target] call GTO_fnc_setRole; [_target, _player] call ace_arsenal_fnc_openBox;";
                        };

                        class role_SL
                        {
                            displayName = "SL";
                            condition = "30 <= ([_player] call GTO_fnc_getRankNumber)"; 
                            statement = "['sl', getText (configOf _target >> 'arsenalType'), _target] call GTO_fnc_setRole; [_target, _player] call ace_arsenal_fnc_openBox;";
                            icon= "gtom\icons\Roles\SL_icon.paa";
                            modifierFunction ="_actionData = 'SL02'";
                                                                        
                        };

                        class role_Lead_Doctor
                        {
                            displayName = "Lead Doctor";
                            condition = "50 <= ([_player] call GTO_fnc_getRankNumber)"; 
                            statement = "['ldoctor', getText (configOf _target >> 'arsenalType'), _target] call GTO_fnc_setRole; [_target, _player] call ace_arsenal_fnc_openBox;";
                            icon ="gtom\icons\Roles\Med_icon.paa";
                        };
                    };

                    class categorie_support
                    {
                        displayName = "Support";
                	    condition =  "true";
                	    exceptions[] = {};				

					    class role_Doctor
                        {
                            displayName = "Doctor";
                            condition = "20 <= ([_player] call GTO_fnc_getRankNumber)"; 
                            statement = "['doctor', getText (configOf _target >> 'arsenalType'), _target] call GTO_fnc_setRole; [_target, _player] call ace_arsenal_fnc_openBox;";
                            icon ="gtom\icons\Roles\Med_icon.paa";                            
                        };

					    class role_Medic
                        {
                            displayName = "Medic";
                            condition = "10 <= ([_player] call GTO_fnc_getRankNumber)"; 
                            statement = "['medic', getText (configOf _target >> 'arsenalType'), _target] call GTO_fnc_setRole; [_target, _player] call ace_arsenal_fnc_openBox;";
                            icon ="gtom\icons\Roles\Med_icon.paa";                            
                        };

                        class role_Ammo_Carrier 
                        {
                            displayName = "Ammo Carrier";
                            condition = "true"; 
                            statement = "['ammoCarrier', getText(configOf _target >> 'arsenalType'), _target]call GTO_fnc_setRole; [_target, _player]call    ace_arsenal_fnc_openBox;";
                            icon = "gtom\icons\Roles\Rifleman_icon.paa";                            
                        };
                    };

                    class categorie_Rifleman
                    {
                        displayName = "Basic";
                        condition =  "false";
                        exceptions[] = {};
				        priority = 1;
                    };

                    class categorie_Weapon
                    {
                        displayName = "Weapon";
                	    condition =  "true";
                	    exceptions[] = {};
					    priority = 1;

					    class role_weaponSpecialist 
                        {
                            displayName = "Weapon Specialist";
                            condition = "true"; 
                            statement = "['weaponSpecialist', getText (configOf _target >> 'arsenalType'), _target] call GTO_fnc_setRole; [_target, _player] call   ace_arsenal_fnc_openBox;";
                            icon = "gtom\icons\Roles\LMG_icon.paa";                            
                        };

					    class role_MG 
                        {
                            displayName = "MG";
                            condition = "true"; 
                            statement = "['mg', getText (configOf _target >> 'arsenalType'), _target] call GTO_fnc_setRole; [_target, _player] call ace_arsenal_fnc_openBox;";
                            icon = "gtom\icons\Roles\MMG_icon.paa";                            
                        };

					    class role_Grenadier 
                        {
                            displayName = "Grenadier";
                            condition = "true"; 
                            statement = "['grenadier', getText (configOf _target >> 'arsenalType'), _target] call GTO_fnc_setRole; [_target, _player] call  ace_arsenal_fnc_openBox;";
                            icon = "gtom\icons\Roles\Grenadier_icon.paa";                            
                        };

                        class role_AT 
                        {
                            displayName = "LAT";
                            condition = "true"; 
                            statement = "['lat', getText (configOf _target>> 'arsenalType'), _target] call GTO_fnc_setRole; [_target, _player] call   ace_arsenal_fnc_openBox;";
                            icon = "gtom\icons\Roles\AT_icon.paa";                            
                        };

					    class role_HAT 
                        {
                            displayName = "HAT";
                            condition = "true"; 
                            statement = "['hat', getText (configOf _target >> 'arsenalType'), _target] call GTO_fnc_setRole; [_target, _player] call ace_arsenal_fnc_openBox;";
                            icon = "gtom\icons\Roles\HAT_icon.paa";                            
                        };

                        class role_Marksman 
                        {
                            displayName = "Marksman";
                            condition = "true"; 
                            statement = "['marksman', getText (configOf _target >> 'arsenalType'), _target] call GTO_fnc_setRole; [_target, _player] call   ace_arsenal_fnc_openBox;";
                            icon = "gtom\icons\Roles\Marksman_icon.paa";                            
                        };
                    };

                    class categorie_special
                    {
                        displayName = "Special";
                	    condition =  "20 <= ([_player] call GTO_fnc_getRankNumber)";
                	    exceptions[] = {};

					    class role_Sniper
                        {
                            displayName = "Sniper";
                            condition = "true"; 
                            statement = "['sniper', getText (configOf _target >> 'arsenalType'), _target] call GTO_fnc_setRole; [_target, _player] call ace_arsenal_fnc_openBox;";
                            icon = "gtom\icons\Roles\Sniper_icon.paa";                       
                        };

					    class role_Spotter
                        {
                            displayName = "Spotter";
                            condition = "true"; 
                            statement = "['spotter', getText (configOf _target >> 'arsenalType'), _target] call GTO_fnc_setRole; [_target, _player] call    ace_arsenal_fnc_openBox;";
                            icon = "gtom\icons\Roles\Sniper_icon.paa";                            
                        };                        

					    class role_Sapper
                        {
                            displayName = "Sapper/Breacher";
                            condition = "true"; 
                            statement = "['sapper', getText (configOf _target >> 'arsenalType'), _target] call GTO_fnc_setRole; [_target, _player] call ace_arsenal_fnc_openBox;";
                            icon = "gtom\icons\Roles\ExpSp_icon.paa";                            
                        };

                        class role_Pionier
                        {
                            displayName = "Pionier/Engineer";
                            condition = "true"; 
                            statement = "['pionier', getText (configOf _target >> 'arsenalType'), _target] call GTO_fnc_setRole; [_target, _player] call ace_arsenal_fnc_openBox;";
                            icon = "gtom\icons\Roles\Eng_icon.paa";                            
                        };

					    class role_Engineer
                        {
                            displayName = "Engineer";
                            condition = "false"; 
                            statement = "['engineer', getText (configOf _target >> 'arsenalType'), _target] call GTO_fnc_setRole; [_target, _player] call   ace_arsenal_fnc_openBox;";
                            icon = "gtom\icons\Roles\Eng_icon.paa";                           
                        };

					    class role_JTAC
                        {
                            displayName = "JTAC";
                            condition = "true"; 
                            statement = "['jtac', getText (configOf _target >> 'arsenalType'), _target] call GTO_fnc_setRole; [_target, _player] call ace_arsenal_fnc_openBox;";
                            icon = "gtom\icons\Roles\Pilot_icon.paa";          
                        };
                    };

                    class categorie_Vehicle
                    {
                        displayName = "Vehicle";
                	    condition =  "20 <= ([_player] call GTO_fnc_getRankNumber)";
                	    exceptions[] = {};

					    class role_Pilot
                        {
                            displayName = "Pilot";
                            condition = "true"; 
                            statement = "['pilot', getText (configOf _target >> 'arsenalType'), _target] call GTO_fnc_setRole; [_target, _player] call ace_arsenal_fnc_openBox;";
                            icon = "gtom\icons\Roles\Pilot_icon.paa";
                            
                        };

					    class role_Crewman
                        {
                            displayName = "Crewman";
                            condition = "true"; 
                            statement = "['crewman', getText (configOf _target >> 'arsenalType'), _target] call GTO_fnc_setRole; [_target, _player] call    ace_arsenal_fnc_openBox;";
                            icon = "gtom\icons\Roles\Crewman_icon.paa";
                            
                        };                        
                    };

                    class categorie_other
                    {
                        displayName = "Other";
                	    condition =  "100 <= ([_player] call GTO_fnc_getRankNumber)"; //todo: has permissions
                	    exceptions[] = {};

                        class role_Admin
                        {
                            displayName = "Admin";
                            condition = "100 <= ([_player] call GTO_fnc_getRankNumber)"; 
                            statement = "['admin', getText (configOf _target >> 'arsenalType'), _target] call GTO_fnc_setRole; [_target, _player] call ace_arsenal_fnc_openBox; ";
                            icon = "gtom\icons\Roles\Other_icon.paa";
                        };

                        class role_Zeus
                        {
                            displayName = "Zeus";
                            condition = "true"; 
                            statement = "['zeus', getText (configOf _target >> 'arsenalType'), _target] call GTO_fnc_setRole; [_target, _player] call ace_arsenal_fnc_openBox;";
                            icon = "gtom\icons\Roles\Other_icon.paa";
                        };
                    };
				};	
            };
        };
    };

    class GTO_arsenal_usa_base : GTO_arsenal_base
    {
       displayName = "BASE USA";

        arsenalType = "";
        arsenalSubType = "";

        class ACE_Actions
        {
            class ACE_MainActions
            {

			    displayName = "Arsenal";
                statement = "";
				runOnHover = 1;
                distance = 6;

				class openArsenal
				{
					displayName = "Open Arsenal";
                	statement = "[_target, _player, false] call ace_arsenal_fnc_openBox;";
                	condition =  "!isNil {_target getVariable 'ace_arsenal_virtualItems'}";
                	exceptions[] = {"isNotSwimming", "isNotInside", "notOnMap", "isNotSitting"};
                	priority = 1;
				};

				class takeRole
				{
					displayName = "Take Role";
                	condition =  "true";
                	exceptions[] = {"isNotSwimming", "isNotInside", "notOnMap", "isNotSitting"};
					priority = 2;                

                    class categorie_lead
                    {
                        displayName = "Lead";
                	    condition =  "20 <= ([_player] call GTO_fnc_getRankNumber)";
                	    exceptions[] = {};

                        class role_PL
                        {
                            displayName = "PL (Coming soon)";
                            condition = "50 <= ([_player] call GTO_fnc_getRankNumber)"; 
                            //statement = "['pl', getText (configOf _target >> 'arsenalType'), _target] call GTO_fnc_setRole; [_target, _player] call ace_arsenal_fnc_openBox;";
                        };

                        class role_SL
                        {
                            displayName = "SL";
                            condition = "30 <= ([_player] call GTO_fnc_getRankNumber)"; 
                            statement = "['sl', getText (configOf _target >> 'arsenalType'), _target] call GTO_fnc_setRole; [_target, _player] call ace_arsenal_fnc_openBox;";
                            icon= "gtom\icons\Roles\SL_icon.paa";
                            modifierFunction ="_actionData = 'SL02'";
                                                                        
                        };

                        class role_Lead_Doctor
                        {
                            displayName = "Lead Doctor";
                            condition = "50 <= ([_player] call GTO_fnc_getRankNumber)"; 
                            statement = "['ldoctor', getText (configOf _target >> 'arsenalType'), _target] call GTO_fnc_setRole; [_target, _player] call ace_arsenal_fnc_openBox;";
                            icon ="gtom\icons\Roles\Med_icon.paa";
                        };
                    };

                    class categorie_support
                    {
                        displayName = "Support";
                	    condition =  "true";
                	    exceptions[] = {};				

					    class role_Doctor
                        {
                            displayName = "Doctor";
                            condition = "20 <= ([_player] call GTO_fnc_getRankNumber)"; 
                            statement = "['doctor', getText (configOf _target >> 'arsenalType'), _target] call GTO_fnc_setRole; [_target, _player] call ace_arsenal_fnc_openBox;";
                            icon ="gtom\icons\Roles\Med_icon.paa";                            
                        };

					    class role_Medic
                        {
                            displayName = "Medic";
                            condition = "10 <= ([_player] call GTO_fnc_getRankNumber)"; 
                            statement = "['medic', getText (configOf _target >> 'arsenalType'), _target] call GTO_fnc_setRole; [_target, _player] call ace_arsenal_fnc_openBox;";
                            icon ="gtom\icons\Roles\Med_icon.paa";                            
                        };

                        class role_Ammo_Carrier 
                        {
                            displayName = "Ammo Carrier";
                            condition = "true"; 
                            statement = "['ammoCarrier', getText(configOf _target >> 'arsenalType'), _target]call GTO_fnc_setRole; [_target, _player]call    ace_arsenal_fnc_openBox;";
                            icon = "gtom\icons\Roles\Rifleman_icon.paa";                            
                        };
                    };

                    class categorie_Rifleman
                    {
                        displayName = "Basic";
                        condition =  "false";
                        exceptions[] = {};
				        priority = 1;
                    };

                    class categorie_Weapon
                    {
                        displayName = "Weapon";
                	    condition =  "true";
                	    exceptions[] = {};
					    priority = 1;

					    class role_weaponSpecialist 
                        {
                            displayName = "Weapon Specialist";
                            condition = "true"; 
                            statement = "['weaponSpecialist', getText (configOf _target >> 'arsenalType'), _target] call GTO_fnc_setRole; [_target, _player] call   ace_arsenal_fnc_openBox;";
                            icon = "gtom\icons\Roles\LMG_icon.paa";                            
                        };

					    class role_MG 
                        {
                            displayName = "MG";
                            condition = "true"; 
                            statement = "['mg', getText (configOf _target >> 'arsenalType'), _target] call GTO_fnc_setRole; [_target, _player] call ace_arsenal_fnc_openBox;";
                            icon = "gtom\icons\Roles\MMG_icon.paa";                            
                        };

					    class role_Grenadier 
                        {
                            displayName = "Grenadier";
                            condition = "true"; 
                            statement = "['grenadier', getText (configOf _target >> 'arsenalType'), _target] call GTO_fnc_setRole; [_target, _player] call  ace_arsenal_fnc_openBox;";
                            icon = "gtom\icons\Roles\Grenadier_icon.paa";                            
                        };

                        class role_AT 
                        {
                            displayName = "LAT";
                            condition = "true"; 
                            statement = "['lat', getText (configOf _target>> 'arsenalType'), _target] call GTO_fnc_setRole; [_target, _player] call   ace_arsenal_fnc_openBox;";
                            icon = "gtom\icons\Roles\AT_icon.paa";                            
                        };

					    class role_HAT 
                        {
                            displayName = "HAT";
                            condition = "true"; 
                            statement = "['hat', getText (configOf _target >> 'arsenalType'), _target] call GTO_fnc_setRole; [_target, _player] call ace_arsenal_fnc_openBox;";
                            icon = "gtom\icons\Roles\HAT_icon.paa";                            
                        };

                        class role_Marksman 
                        {
                            displayName = "Marksman";
                            condition = "true"; 
                            statement = "['marksman', getText (configOf _target >> 'arsenalType'), _target] call GTO_fnc_setRole; [_target, _player] call   ace_arsenal_fnc_openBox;";
                            icon = "gtom\icons\Roles\Marksman_icon.paa";                            
                        };
                    };

                    class categorie_special
                    {
                        displayName = "Special";
                	    condition =  "20 <= ([_player] call GTO_fnc_getRankNumber)";
                	    exceptions[] = {};

					    class role_Sniper
                        {
                            displayName = "Sniper";
                            condition = "true"; 
                            statement = "['sniper', getText (configOf _target >> 'arsenalType'), _target] call GTO_fnc_setRole; [_target, _player] call ace_arsenal_fnc_openBox;";
                            icon = "gtom\icons\Roles\Sniper_icon.paa";                       
                        };

					    class role_Spotter
                        {
                            displayName = "Spotter";
                            condition = "true"; 
                            statement = "['spotter', getText (configOf _target >> 'arsenalType'), _target] call GTO_fnc_setRole; [_target, _player] call    ace_arsenal_fnc_openBox;";
                            icon = "gtom\icons\Roles\Sniper_icon.paa";                            
                        };                        

					    class role_Sapper
                        {
                            displayName = "Sapper/Breacher";
                            condition = "true"; 
                            statement = "['sapper', getText (configOf _target >> 'arsenalType'), _target] call GTO_fnc_setRole; [_target, _player] call ace_arsenal_fnc_openBox;";
                            icon = "gtom\icons\Roles\ExpSp_icon.paa";                            
                        };

                        class role_Pionier
                        {
                            displayName = "Pionier/Engineer";
                            condition = "true"; 
                            statement = "['pionier', getText (configOf _target >> 'arsenalType'), _target] call GTO_fnc_setRole; [_target, _player] call ace_arsenal_fnc_openBox;";
                            icon = "gtom\icons\Roles\Eng_icon.paa";                            
                        };

					    class role_Engineer
                        {
                            displayName = "Engineer";
                            condition = "false"; 
                            statement = "['engineer', getText (configOf _target >> 'arsenalType'), _target] call GTO_fnc_setRole; [_target, _player] call   ace_arsenal_fnc_openBox;";
                            icon = "gtom\icons\Roles\Eng_icon.paa";                           
                        };

					    class role_JTAC
                        {
                            displayName = "JTAC";
                            condition = "true"; 
                            statement = "['jtac', getText (configOf _target >> 'arsenalType'), _target] call GTO_fnc_setRole; [_target, _player] call ace_arsenal_fnc_openBox;";
                            icon = "gtom\icons\Roles\Pilot_icon.paa";          
                        };
                    };

                    class categorie_Vehicle
                    {
                        displayName = "Vehicle";
                	    condition =  "20 <= ([_player] call GTO_fnc_getRankNumber)";
                	    exceptions[] = {};

					    class role_Pilot
                        {
                            displayName = "Pilot";
                            condition = "true"; 
                            statement = "['pilot', getText (configOf _target >> 'arsenalType'), _target] call GTO_fnc_setRole; [_target, _player] call ace_arsenal_fnc_openBox;";
                            icon = "gtom\icons\Roles\Pilot_icon.paa";
                            
                        };

					    class role_Crewman
                        {
                            displayName = "Crewman";
                            condition = "true"; 
                            statement = "['crewman', getText (configOf _target >> 'arsenalType'), _target] call GTO_fnc_setRole; [_target, _player] call    ace_arsenal_fnc_openBox;";
                            icon = "gtom\icons\Roles\Crewman_icon.paa";
                            
                        };                        
                    };

                    class categorie_other
                    {
                        displayName = "Other";
                	    condition =  "100 <= ([_player] call GTO_fnc_getRankNumber)"; //todo: has permissions
                	    exceptions[] = {};

                        class role_Admin
                        {
                            displayName = "Admin";
                            condition = "100 <= ([_player] call GTO_fnc_getRankNumber)"; 
                            statement = "['admin', getText (configOf _target >> 'arsenalType'), _target] call GTO_fnc_setRole; [_target, _player] call ace_arsenal_fnc_openBox; ";
                            icon = "gtom\icons\Roles\Other_icon.paa";
                        };

                        class role_Zeus
                        {
                            displayName = "Zeus";
                            condition = "true"; 
                            statement = "['zeus', getText (configOf _target >> 'arsenalType'), _target] call GTO_fnc_setRole; [_target, _player] call ace_arsenal_fnc_openBox;";
                            icon = "gtom\icons\Roles\Other_icon.paa";
                        };
                    };
				};	
            };
        };
    };

    class GTO_arsenal_usa : GTO_arsenal_usa_base
    {
        displayName = "Arsenal USA";
        arsenalType = "USA";
        arsenalSubType = "NONE";
        scope = 2;
        scopeCurator = 2;
        hiddenSelectionsTextures[] = {gtom\arsenal\textures\export\Arsenal_Classic.paa};
    };

    class GTO_arsenal_usa_noElectronics : GTO_arsenal_usa_base
    {
        displayName = "Arsenal USA (no electronics)";
        arsenalType = "USA";
        arsenalSubType = "noElectronics";
        scope = 2;
        scopeCurator = 2;
        hiddenSelectionsTextures[] = {gtom\arsenal\textures\export\Arsenal_Dark.paa};
    };

    class GTO_arsenal_vanilla : GTO_arsenal_usa_base
    {
        displayName = "Arsenal Vanilla";
        arsenalType = "Vanilla";
        scope = 1; //todo: change when working
        scopeCurator = 1;
        hiddenSelectionsTextures[] = {gtom\arsenal\pics\Arsenal_USA.paa};
    };
};