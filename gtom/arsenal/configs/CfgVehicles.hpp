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
                    statement = "";
                    runOnHover = "";
                	exceptions[] = {"isNotSwimming", "isNotInside", "notOnMap", "isNotSitting"};
					priority = 2;

                    class categorie_lead
                    {
                        displayName = "Lead";
                	    condition =  "true";
                	    exceptions[] = {};

                        class role_SL
                        {
                            displayName = "SL";
                            condition = "true";
                            statement = "['sl', getText (configOf _target >> 'arsenalType'), _target] call GTO_fnc_setRole; [_target, _player] call ace_arsenal_fnc_openBox;";
                            icon= "gtom\images\icons\Roles\SL_icon.paa";
                        };

                        class permissions_FTL
                        {
                            displayName = "FTL Items (after role selection)";
                            condition = "true";
                            statement = "[_target] call GTO_fnc_FTLItems; [_target, _player] call ace_arsenal_fnc_openBox;";
                            icon= "gtom\images\icons\Roles\SL_icon.paa";
                        };

                        class role_Admin
                        {
                            displayName = "Admin";
                            condition = "([_player] call GTO_fnc_getRankNumber) >= 100";
                            statement = "['admin', getText (configOf _target >> 'arsenalType'), _target] call GTO_fnc_setRole; [_target, _player] call ace_arsenal_fnc_openBox; ";
                            icon = "gtom\images\icons\Roles\Other_icon.paa";
                        };
                    };

                    class categorie_support
                    {
                        displayName = "Support";
                	    condition =  "true";
                	    exceptions[] = {};

                        class role_Ammo_Carrier 
                        {
                            displayName = "Ammo Carrier / Rifleman";
                            condition = "true"; 
                            statement = "['ammoCarrier', getText(configOf _target >> 'arsenalType'), _target] call GTO_fnc_setRole; [_target, _player] call ace_arsenal_fnc_openBox;";
                            icon = "gtom\images\icons\Roles\Rifleman_icon.paa";                            
                        };

                        class role_AFR
                        {
                            displayName = "AFR Items (after role selection)";
                            condition = "true";
                            statement = "[_target] call GTO_fnc_AFRItems; [_target, _player] call ace_arsenal_fnc_openBox;";
                            icon ="gtom\images\icons\Roles\Med_icon.paa";                            
                        };

                        class role_Medic
                        {
                            displayName = "Medic";
                            condition = "true";
                            statement = "['medic', getText (configOf _target >> 'arsenalType'), _target] call GTO_fnc_setRole; [_target, _player] call ace_arsenal_fnc_openBox;";
                            icon ="gtom\images\icons\Roles\Med_icon.paa";                            
                        };

                        class role_Doctor
                        {
                            displayName = "Doctor (first ask)";
                            condition = "true"; //([_player] call GTO_fnc_getRankNumber) >= 30
                            statement = "['doctor', getText (configOf _target >> 'arsenalType'), _target] call GTO_fnc_setRole; [_target, _player] call ace_arsenal_fnc_openBox;";
                            icon ="gtom\images\icons\Roles\Med_icon.paa";
                        };
                    };

                    class categorie_Weapon
                    {
                        displayName = "Weapon";
                	    condition =  "true"; // 10 <= profileNamespace getVariable ['GTO_RankCode', -1] || GTO_AllRolesAvailable
                	    exceptions[] = {};
					    priority = 1;

					    class role_weaponSpecialist
                        {
                            displayName = "Weapon Specialist";
                            condition = "true"; 
                            statement = "['weaponSpecialist', getText (configOf _target >> 'arsenalType'), _target] call GTO_fnc_setRole; [_target, _player] call   ace_arsenal_fnc_openBox;";
                            icon = "gtom\images\icons\Roles\LMG_icon.paa";                            
                        };

					    class role_MG 
                        {
                            displayName = "MG";
                            condition = "true"; 
                            statement = "['mg', getText (configOf _target >> 'arsenalType'), _target] call GTO_fnc_setRole; [_target, _player] call ace_arsenal_fnc_openBox;";
                            icon = "gtom\images\icons\Roles\MMG_icon.paa";                            
                        };

					    class role_Grenadier 
                        {
                            displayName = "Grenadier";
                            condition = "true"; 
                            statement = "['grenadier', getText (configOf _target >> 'arsenalType'), _target] call GTO_fnc_setRole; [_target, _player] call  ace_arsenal_fnc_openBox;";
                            icon = "gtom\images\icons\Roles\Grenadier_icon.paa";                            
                        };

                        class role_AT
                        {
                            displayName = "AT";
                            condition = "true";
                            statement = "['at', getText (configOf _target>> 'arsenalType'), _target] call GTO_fnc_setRole; [_target, _player] call   ace_arsenal_fnc_openBox;";
                            icon = "gtom\images\icons\Roles\AT_icon.paa";                            
                        };


                    };

                    class categorie_special
                    {
                        displayName = "Special";
                	    condition =  "true";
                	    exceptions[] = {};

					    class role_Marksman
                        {
                            displayName = "Marksman";
                            condition = "true"; 
                            statement = "['marksman', getText (configOf _target >> 'arsenalType'), _target] call GTO_fnc_setRole; [_target, _player] call ace_arsenal_fnc_openBox;";
                            icon = "gtom\images\icons\Roles\Marksman_icon.paa";                       
                        };

                        class role_Sniper
                        {
                            displayName = "Sniper";
                            condition = "true"; 
                            statement = "['sniper', getText (configOf _target >> 'arsenalType'), _target] call GTO_fnc_setRole; [_target, _player] call ace_arsenal_fnc_openBox;";
                            icon = "gtom\images\icons\Roles\Sniper_icon.paa";                    
                        };                        

					    class role_Sapper
                        {
                            displayName = "Explosive Specialist";
                            condition = "true"; 
                            statement = "['sapper', getText (configOf _target >> 'arsenalType'), _target] call GTO_fnc_setRole; [_target, _player] call ace_arsenal_fnc_openBox;";
                            icon = "gtom\images\icons\Roles\ExpSp_icon.paa";                            
                        };

                        class role_Engineer
                        {
                            displayName = "Engineer";
                            condition = "true"; 
                            statement = "['engineer', getText (configOf _target >> 'arsenalType'), _target] call GTO_fnc_setRole; [_target, _player] call ace_arsenal_fnc_openBox;";
                            icon = "gtom\images\icons\Roles\Eng_icon.paa";                            
                        };
                    };

                    class categorie_Vehicle
                    {
                        displayName = "Vehicle";
                	    condition =  "true";
                	    exceptions[] = {};

					    class role_Pilot
                        {
                            displayName = "Pilot";
                            condition = "true";
                            statement = "['pilot', getText (configOf _target >> 'arsenalType'), _target] call GTO_fnc_setRole; [_target, _player] call ace_arsenal_fnc_openBox;";
                            icon = "gtom\images\icons\Roles\Pilot_icon.paa";
                        };

					    class role_Crewman
                        {
                            displayName = "Crewman";
                            condition = "true"; 
                            statement = "['crewman', getText (configOf _target >> 'arsenalType'), _target] call GTO_fnc_setRole; [_target, _player] call    ace_arsenal_fnc_openBox;";
                            icon = "gtom\images\icons\Roles\Crewman_icon.paa";
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
                	    condition =  "true";
                	    exceptions[] = {};

                        class role_PL
                        {
                            displayName = "PL";
                            condition = "true"; 
                            statement = "['pl', getText (configOf _target >> 'arsenalType'), _target] call GTO_fnc_setRole; [_target, _player] call ace_arsenal_fnc_openBox;";
                            icon= "gtom\images\icons\Roles\SL_icon.paa";
                        };

                        class role_SL
                        {
                            displayName = "SL";
                            condition = "true"; 
                            statement = "['sl', getText (configOf _target >> 'arsenalType'), _target] call GTO_fnc_setRole; [_target, _player] call ace_arsenal_fnc_openBox;";
                            icon= "gtom\images\icons\Roles\SL_icon.paa";                                                                        
                        };

                        class role_Lead_Doctor
                        {
                            displayName = "Platoon Medic";
                            condition = "true"; 
                            statement = "['pmed', getText (configOf _target >> 'arsenalType'), _target] call GTO_fnc_setRole; [_target, _player] call ace_arsenal_fnc_openBox;";
                            icon ="gtom\images\icons\Roles\Med_icon.paa";
                        };
                    };

                    class categorie_base
                    {
                        displayName = "Base";
                	    condition =  "true";
                	    exceptions[] = {};				

					    

                        class role_Ammo_Carrier 
                        {
                            displayName = "Ammo Carrier";
                            condition = "true"; 
                            statement = "['ammoCarrier', getText(configOf _target >> 'arsenalType'), _target]call GTO_fnc_setRole; [_target, _player]call    ace_arsenal_fnc_openBox;";
                            icon = "gtom\images\icons\Roles\Rifleman_icon.paa";                            
                        };
                    };

                    class categorie_Rifleman
                    {
                        displayName = "Basic";
                        condition =  "false";
                        exceptions[] = {};
				        priority = 1;
                    };

                    class categorie_base
                    {
                        displayName = "Base";
                	    condition =  "true";
                	    exceptions[] = {};
					    priority = 1;

                        class role_rifleman 
                        {
                            displayName = "Rifleman";
                            condition = "true"; 
                            statement = "['rifleman', getText(configOf _target >> 'arsenalType'), _target]call GTO_fnc_setRole; [_target, _player]call    ace_arsenal_fnc_openBox;";
                            icon = "gtom\images\icons\Roles\Rifleman_icon.paa";                            
                        };

					    class role_lmg
                        {
                            displayName = "LMG";
                            condition = "true"; 
                            statement = "['lmg', getText (configOf _target >> 'arsenalType'), _target] call GTO_fnc_setRole; [_target, _player] call   ace_arsenal_fnc_openBox;";
                            icon = "gtom\images\icons\Roles\LMG_icon.paa";                            
                        };

					    class role_mmg
                        {
                            displayName = "MMG";
                            condition = "true"; 
                            statement = "['mmg', getText (configOf _target >> 'arsenalType'), _target] call GTO_fnc_setRole; [_target, _player] call ace_arsenal_fnc_openBox;";
                            icon = "gtom\images\icons\Roles\MMG_icon.paa";                            
                        };

					    class role_grenadier 
                        {
                            displayName = "Grenadier";
                            condition = "true"; 
                            statement = "['grenadier', getText (configOf _target >> 'arsenalType'), _target] call GTO_fnc_setRole; [_target, _player] call  ace_arsenal_fnc_openBox;";
                            icon = "gtom\images\icons\Roles\Grenadier_icon.paa";                            
                        };

                        class role_lat 
                        {
                            displayName = "LAT";
                            condition = "true"; 
                            statement = "['lat', getText (configOf _target>> 'arsenalType'), _target] call GTO_fnc_setRole; [_target, _player] call   ace_arsenal_fnc_openBox;";
                            icon = "gtom\images\icons\Roles\AT_icon.paa";                       
                        };

					    class role_hat
                        {
                            displayName = "HAT";
                            condition = "true"; 
                            statement = "['hat', getText (configOf _target >> 'arsenalType'), _target] call GTO_fnc_setRole; [_target, _player] call ace_arsenal_fnc_openBox;";
                            icon = "gtom\images\icons\Roles\HAT_icon.paa";                       
                        };

                        class role_marksman 
                        {
                            displayName = "Marksman";
                            condition = "true"; 
                            statement = "['marksman', getText (configOf _target >> 'arsenalType'), _target] call GTO_fnc_setRole; [_target, _player] call   ace_arsenal_fnc_openBox;";
                            icon = "gtom\images\icons\Roles\Marksman_icon.paa";                            
                        };
                    };

                    class categorie_special
                    {
                        displayName = "Special";
                	    condition =  "true";
                	    exceptions[] = {};

                        class role_medic_bravo
                        {
                            displayName = "Squad Medic";
                            condition = "true"; 
                            statement = "['medic_bravo', getText (configOf _target >> 'arsenalType'), _target] call GTO_fnc_setRole; [_target, _player] call ace_arsenal_fnc_openBox;";
                            icon ="gtom\images\icons\Roles\Med_icon.paa";                            
                        };

					    class role_medic_charlie
                        {
                            displayName = "Junior Medic";
                            condition = "true"; 
                            statement = "['medic_charlie', getText (configOf _target >> 'arsenalType'), _target] call GTO_fnc_setRole; [_target, _player] call ace_arsenal_fnc_openBox;";
                            icon ="gtom\images\icons\Roles\Med_icon.paa";                            
                        };

					    class role_sniper
                        {
                            displayName = "Sniper";
                            condition = "true"; 
                            statement = "['sniper', getText (configOf _target >> 'arsenalType'), _target] call GTO_fnc_setRole; [_target, _player] call ace_arsenal_fnc_openBox;";
                            icon = "gtom\images\icons\Roles\Sniper_icon.paa";                       
                        };

					    class role_spotter
                        {
                            displayName = "Spotter";
                            condition = "true"; 
                            statement = "['spotter', getText (configOf _target >> 'arsenalType'), _target] call GTO_fnc_setRole; [_target, _player] call    ace_arsenal_fnc_openBox;";
                            icon = "gtom\images\icons\Roles\Sniper_icon.paa";                            
                        };                        

					    class role_eod
                        {
                            displayName = "EOD";
                            condition = "true"; 
                            statement = "['eod', getText (configOf _target >> 'arsenalType'), _target] call GTO_fnc_setRole; [_target, _player] call ace_arsenal_fnc_openBox;";
                            icon = "gtom\images\icons\Roles\ExpSp_icon.paa";                            
                        };
                    };

                    class categorie_airstack
                    {
                        displayName = "Airstack";
                	    condition =  "true";
                	    exceptions[] = {};

					    class role_Pilot
                        {
                            displayName = "JTAC";
                            condition = "true"; 
                            statement = "['jtac', getText (configOf _target >> 'arsenalType'), _target] call GTO_fnc_setRole; [_target, _player] call ace_arsenal_fnc_openBox;";
                            icon = "gtom\images\icons\Roles\Other_icon.paa";
                        };

					    class role_heli_pilot
                        {
                            displayName = "Helicopter Pilot";
                            condition = "true"; 
                            statement = "['heli_pilot', getText (configOf _target >> 'arsenalType'), _target] call GTO_fnc_setRole; [_target, _player] call    ace_arsenal_fnc_openBox;";
                            icon = "gtom\images\icons\Roles\Pilot_icon.paa";
                        };

                        class role_jet_pilot
                        {
                            displayName = "Jet Pilot";
                            condition = "true"; 
                            statement = "['jet_pilot', getText (configOf _target >> 'arsenalType'), _target] call GTO_fnc_setRole; [_target, _player] call    ace_arsenal_fnc_openBox;";
                            icon = "gtom\images\icons\Roles\Pilot_icon.paa";
                        };        
                    };
				};	
            };
        };
    };

    class GTO_arsenal_usa : GTO_arsenal_usa_base
    {
        displayName = "Arsenal USA Ranger";
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
        scope = 1;
        scopeCurator = 1;
        hiddenSelectionsTextures[] = {gtom\arsenal\textures\export\Arsenal_Dark.paa};
    };

    class GTO_arsenal_vanilla : GTO_arsenal_usa_base
    {
        displayName = "Arsenal Vanilla";
        arsenalType = "Vanilla";
        arsenalSubType = "NONE";
        scope = 1; //todo: change when working
        scopeCurator = 1;
        hiddenSelectionsTextures[] = {gtom\arsenal\textures\export\Arsenal_Classic.paa};
    };
};