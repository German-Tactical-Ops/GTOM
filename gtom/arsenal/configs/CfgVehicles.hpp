class CfgVehicles
{
    // ###################### Makros ######################
    #define MAKE_PUBLIC(D_NAME,A_TYPE) displayName = #D_NAME; \
        arsenalType = #A_TYPE; \
        scope = 2; \
        scopeCurator = 2

    // ###################### ArsenalBoxes ######################
    class C_IDAP_supplyCrate_F;
    class TB_arsenal_base : C_IDAP_supplyCrate_F
    {
        displayName = "BASE";
        author = "shukari";

        arsenalType = "";

        editorCategory = "A_Testing";
        editorSubcategory = "TB_Arsenal";

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
            class ACE_MainActions
            {
                /* displayName = "Interaktionen";
                modifierFunction = "[_this] call FUNC(modifierMainAction);"; 
                statement =  "[_this] call FUNC(actionMain);";
                runOnHover = 1;
                distance = 6; */

                displayName = "Interaktionen";
                modifierFunction = QUOTE([_this] call FUNC(modifierMainAction));
                statement =  QUOTE([_this] call FUNC(actionMain));
                runOnHover = 1;
                distance = 6;				

                // class changeArsenalType
                // {
                //     displayName = "Wechsel zu...";
                //     modifierFunction =  QUOTE([_this, getText (configOf _target >> 'arsenalType')] call FUNC(modifierChangeArsenalType));
                //     statement = QUOTE(_player setVariable ['TB_arsenalType', getText (configOf _target >> 'arsenalType'), true]; _player setVariable ['TB_rolle', nil, true]; _player setVariable [QQGVAR(arsenalCargo), nil]);
                //     condition =  QUOTE(!([_target] call FUNC(isArsenalType)));
                //     exceptions[] = {"isNotSwimming", "isNotInside", "notOnMap", "isNotSitting"};
                //     priority = 1;
                // };

                class openArsenal
                {
                    displayName = "Öffne Arsenal";
                    statement = "[_target, _player] call ace_arsenal_fnc_openBox";
                    condition =  "!isNil {_target getVariable 'ace_arsenal_virtualItems'}";
                    exceptions[] = {/*"isNotSwimming", "isNotInside", "notOnMap", "isNotSitting"*/};
                    priority = 1;
                };

                // class rollen
                // {
                //     displayName = "Rollen";
                //     condition =  QUOTE([_target] call FUNC(isArsenalType));
                //     exceptions[] = {"isNotSwimming", "isNotInside", "notOnMap", "isNotSitting"};
                //     priority = 3;

                //     #define ADD_ROLLE(ROLLEN_NAME) \
                //         class rolle_##ROLLEN_NAME \
                //         { \
                //             displayName = ""; \
                //             condition = QUOTE(!('ROLLEN_NAME' in GVAR(blacklistRollen))); \
                //             modifierFunction = QUOTE([_this, 'ROLLEN_NAME'] call FUNC(modifierRollenname)); \
                //             statement = QUOTE(['ROLLEN_NAME', getText (configOf _target >> 'arsenalType'), _target] call FUNC(changeRolle); [_target, _player] call ace_arsenal_fnc_openBox;); \
                //             exceptions[] = {"isNotSwimming", "isNotInside", "notOnMap", "isNotSitting"}; \
                //         }

                //     ADD_ROLLE(lead);
                //     ADD_ROLLE(grena);
                //     ADD_ROLLE(sani);
                //     ADD_ROLLE(mg);
                //     ADD_ROLLE(spreng);
                //     ADD_ROLLE(aaat);
                //     ADD_ROLLE(trag);
                //     ADD_ROLLE(dmr);
                //     ADD_ROLLE(pilot);
                //     ADD_ROLLE(sniper);
                //     ADD_ROLLE(spotter);
                //     ADD_ROLLE(jtac);
                //     ADD_ROLLE(arzt);
                //     ADD_ROLLE(rifle);
                //     ADD_ROLLE(pionier);
                // };
            };
        };
    };

    class TB_arsenal_usa : TB_arsenal_base
    {
        MAKE_PUBLIC(USA,USA);
        //hiddenSelectionsTextures[] = {QPATHTOF(pics\Arsenal_USA.paa)};
    };
};