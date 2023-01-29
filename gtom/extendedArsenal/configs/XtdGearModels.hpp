class XtdGearModels {

//todo: make a input field -> Backpack and Uniform have the same text //todo: test if this is working
#define CAMOTYPEM(NAME) \
class camoType \
{ \
	label = ##NAME##;\
    values[] = {"alpine", "aor1", "aor2", "dts", "m81", "multicam", "multicam_arid", "multicam_black", "multicam_tropic", "ocp", "oga","tan","oga_grey","oga_od", "oga_od_spray","projecthonor","scorpion","apex","black","white"};\
	alwaysSelectable = 0;\
    changeingame = 1;\
    changedelay = 1;\
	class alpine{label = "Alpine"; image = "gtom\extendedArsenal\textures\camoFragments\camo_alpine.paa";};\
	class aor1{label = "AOR1"; image = "gtom\extendedArsenal\textures\camoFragments\camo_aor1.paa";};\
	class aor2{label = "AOR2"; image = "gtom\extendedArsenal\textures\camoFragments\camo_aor2.paa";};\
	class dts{label = "Tiger"; image = "gtom\extendedArsenal\textures\camoFragments\camo_dts.paa";};\
	class m81{label = "M81"; image = "gtom\extendedArsenal\textures\camoFragments\camo_m81.paa";};\
	class multicam{label = "MC"; image = "gtom\extendedArsenal\textures\camoFragments\camo_multicam.paa";};\
	class multicam_arid{label = "MC arid"; image = "gtom\extendedArsenal\textures\camoFragments\camo_multicam_arid.paa";};\
	class multicam_black{label = "MC black"; image = "gtom\extendedArsenal\textures\camoFragments\camo_multicam_black.paa";};\
	class multicam_tropic{label = "MC tropic"; image = "gtom\extendedArsenal\textures\camoFragments\camo_multicam_tropic.paa";};\
	class ocp{label = "OCP"; image = "gtom\extendedArsenal\textures\camoFragments\camo_ocp.paa";};\
	class oga{label = "OGA"; image = "gtom\extendedArsenal\textures\camoFragments\camo_oga.paa";};\
	class tan{label = "Tan"; image = "gtom\extendedArsenal\textures\camoFragments\camo_oga.paa";};\
	class oga_grey{label = "OGA grey"; image = "gtom\extendedArsenal\textures\camoFragments\camo_oga_grey.paa";};\
	class oga_od{label = "OGA OD"; image = "gtom\extendedArsenal\textures\camoFragments\camo_oga_od.paa";};\
	class oga_od_spray{label = "OD Spray"; image = "gtom\extendedArsenal\textures\camoFragments\camo_oga_od.paa";};\
	class projecthonor{label = "Projecthonor"; image = "gtom\extendedArsenal\textures\camoFragments\camo_projecthonor.paa";};\
	class scorpion{label = "Scorpion"; image = "gtom\extendedArsenal\textures\camoFragments\camo_scorpion.paa";};\
    class apex{label = "Apex"; image = "gtom\extendedArsenal\textures\camoFragments\camo_multicam_tropic.paa";};\
    class black{label = "Black"; image = "gtom\extendedArsenal\textures\camoFragments\BeretColor_Black.paa";};\
    class white{label = "White"; image = "gtom\extendedArsenal\textures\camoFragments\BeretColor_White.paa";};\
};

#define ROLLEDSLEEVESM(SELECTABLE) \
class rolledSleeves \
{\
    label = "Rolled Sleeves";\
    values[] = {"rolledSleevesFalse", "rolledSleevesTrue"};\
    alwaysSelectable = ##SELECTABLE##;\
    changeingame = 1;\
    changedelay = 1;\
    class rolledSleevesFalse\
    {label = "No";};\
    class rolledSleevesTrue\
    {label = "Yes";};\
};

#define VARIANT() \
class variant \
{\
    label = "Variant";\
    values[] = {"v1", "v2"};\
    alwaysSelectable = 0;\
    changeingame = 0;\
    changedelay = 1;\
    class v1\
    {label = "V-1";};\
    class v2\
    {label = "V-2";};\
};

#define WEAPON(CLASSNAME, NAME)\
class ##CLASSNAME##\
        {\
            label = ##NAME##;\
            author = "LucyferHW";\
            options[] = {"weaponCamo"};\
            \
            class weaponCamo\
            {\
                label = "Weapon";\
                values[] = {"black","desert","woodland"};\
                alwaysSelectable = 0;\
                changeingame = 1;\
                changedelay = 1;\
\
                class black\
                {label = "Black";};\
                class desert\
                {label = "Desert";};\
                class woodland\
                {label = "Woodland";};\
            };  \
        };

#define WEAPON_HK(CLASSNAME, NAME)\
class ##CLASSNAME##\
        {\
            label = ##NAME##;\
            author = "LucyferHW";\
            options[] = {"weaponCamo",version};\
            \
            class weaponCamo\
            {\
                label = "Weapon";\
                values[] = {"black","desert","woodland"};\
                alwaysSelectable = 0;\
                changeingame = 1;\
                changedelay = 1;\
\
                class black\
                {label = "Black";};\
                class desert\
                {label = "Desert";};\
                class woodland\
                {label = "Woodland";};\
            };  \
\
            class version\
            {\
                label = "Weapon";\
                values[] = {"d145","d10","a5"};\
                alwaysSelectable = 0;\
                changeingame = 0;\
                changedelay = 1;\
\
                class d145\
                {label = "D 14.5";};\
                class d10\
                {label = "D 10";};\
                class a5\
                {label = "A5 11";};\
            };  \
        };

	class CamoBase;

    class CfgVehicles
    {
        class GTO_Medic_Carryall
        {
            label = "Carryall Medic";
            author = "LucyferHW";
            options[] = {"camoType"};
            
            CAMOTYPEM(Backpack);
        };

        class GTO_Compact
        {
            label = "Compact";
            author = "LucyferHW";
            options[] = {"camoType"};

            CAMOTYPEM(Backpack);
        };

        class GTO_Kitbag
        {
            label = "Kitbag";
            author = "LucyferHW";
            options[] = {"camoType"};

            CAMOTYPEM(Backpack);
        };

        class GTO_Carryall
        {
            label = "Carryall";
            author = "LucyferHW";
            options[] = {"camoType"};

            CAMOTYPEM(Backpack);
        };
    };

    class CfgWeapons
    {
        class GTO_Uniform_BDU
        {
            label = "BDU";
            author = "LucyferHW";
            options[] = {"camoType"};
            
            CAMOTYPEM("Uniform");
        };

        class GTO_Uniform_CG3
        {
            label = "CG3";
            author = "LucyferHW";
            options[] = {"camoType", "rolledSleeves"};
            
            CAMOTYPEM("Uniform");

            ROLLEDSLEEVESM(0);
        };

        class GTO_Uniform_MCU
        {
            label = "MCU";
            author = "LucyferHW";
            options[] = {"camoType", "rolledSleeves"};
            
            CAMOTYPEM("Uniform");

            ROLLEDSLEEVESM(0);
        };

        class GTO_Uniform_Wetsuit
        {
            label = "Wetsuit";
            author = "LucyferHW";
            options[] = {"wetsuit"};
            
            class wetsuit
            {
                label = "Wetsuit";
                values[] = {"wetsuitTrue","wetsuitFalse"};
                alwaysSelectable = 0;
                changeingame = 1;
                changedelay = 5;
                class wetsuitTrue
                {label = "Wetsuit";};
                class wetsuitFalse
                {label = "not Wetsuit";};
            };            
        };

        class GTO_Vest_Rebreather
        {
            label = "Rebreather";
            author = "LucyferHW";
            options[] = {"rebreather"};
            
            class rebreather
            {
                label = "Rebreather";
                values[] = {"rebreatherTrue","rebreatherFalse"};
                alwaysSelectable = 0;
                changeingame = 1;
                changedelay = 5;
                class rebreatherTrue
                {label = "Rebreather";};
                class rebreatherFalse
                {label = "not Rebreather";};
            };            
        };

        class GTO_Beret_All
        {
            label = "[GTO] Beret";
            author = "LucyferHW";
            options[] = {"color"};
            class color
            {
                label = "Beret Color";
                values[] = {"black", "red", "orange", "yellow", "green", "blue", "violett", "pink", "white", "gray"};
                changeingame = 1;
                alwaysSelectable = 1;
                changedelay = 0.5;

                class black
                {
                    label = "Black";
                    description = "Soldier";
                    image = "gtom\extendedArsenal\textures\colors\BeretColor_Black.paa";
                };
                class red
                {
                    label = "Red";
                    description = "SL";
                    image = "gtom\extendedArsenal\textures\colors\BeretColor_Red.paa";
                };
                class orange
                {
                    label = "Orange";
                    description = "Clan Leader";
                    image = "gtom\extendedArsenal\textures\colors\BeretColor_Orange.paa";
                };
                class yellow
                {
                    label = "Yellow";
                    description = "Tank Crew";
                    image = "gtom\extendedArsenal\textures\colors\BeretColor_Yellow.paa";
                };
                class green
                {
                    label = "Green";
                    description = "FTL";
                    image = "gtom\extendedArsenal\textures\colors\BeretColor_Green.paa";
                };
                class blue
                {
                    label = "Blue";
                    description = "Medic";
                    image = "gtom\extendedArsenal\textures\colors\BeretColor_Blue.paa";
                };
                class violett
                {
                    label = "Violett";
                    description = "Pilot";
                    image = "gtom\extendedArsenal\textures\colors\BeretColor_Violett.paa";
                };
                class pink
                {
                    label = "Pink";
                    description = "JTAC";
                    image = "gtom\extendedArsenal\textures\colors\BeretColor_Pink.paa";
                };
                class white
                {
                    label = "White";
                    description = "Zeus";
                    image = "gtom\extendedArsenal\textures\colors\BeretColor_White.paa";
                };
                class gray
                {
                    label = "Gray";
                    description = "Guest";
                    image = "gtom\extendedArsenal\textures\colors\BeretColor_Gray.paa";
                };
            };
        };

        class GTO_MiliCap
        {
            label = "Cap";
            author = "LucyferHW";
            options[] = {"camoType"};
            
            CAMOTYPEM(Cap);
        };

        class GTO_Mich2000
        {
            label = "Mich 2000";
            author = "LucyferHW";
            options[] = {"camoType", "variant"};
            
            CAMOTYPEM(Helmet);

            VARIANT();
        };

        class GTO_Opscore
        {
            label = "Opscore";
            author = "LucyferHW";
            options[] = {"camoType", "variant"};
            
            CAMOTYPEM(Helmet);

            VARIANT();
        };

        class GTO_HighCut
        {
            label = "High Cut";
            author = "LucyferHW";
            options[] = {"camoType", "variant"};
            
            CAMOTYPEM(Helmet);

            VARIANT();
        };

        class GTO_ModularHelmet
        {
            label = "Modular Helmet";
            author = "LucyferHW";
            options[] = {"camoType", "variant"};
            
            CAMOTYPEM(Helmet);
        };

        class GTO_Beanie
        {
            label = "Beanie";
            author = "LucyferHW";
            options[] = {"camoType"};
            
            CAMOTYPEM(Beanie);
        };

        class GTO_Boonie
        {
            label = "Boonie";
            author = "LucyferHW";
            options[] = {"camoType"};
            
            CAMOTYPEM(Boonie);
        };

        WEAPON(GTO_rhs_mk18,"MK 18");

        WEAPON(GTO_arifle_SPAR,"HK416 A5");

        WEAPON(GTO_rhs_m4a1_blockII,"M4A1 B2");

        WEAPON(GTO_rhs_hk416d145,"HK416 D14.5");

        WEAPON_HK(GTO_HK,"HK");

        WEAPON(GTO_pistol_heavy,"Pistol Heavy");

        WEAPON(GTO_pistol_P07,"P99");

        class GTO_m249
        {
            label = "M249 PIP";
            author = "LucyferHW";
            options[] = {length, version};
              
            class length
            {
                label = "Length";
                values[] = {"long","short"};
                alwaysSelectable = 0;
                changeingame = 0;
                changedelay = 1;

                class long
                {label = "Long";};
                class short\
                {label = "Short";};
            };  
            class version
            {
                label = "Version";
                values[] = {"lcba","para","savit","ris","basic"};
                alwaysSelectable = 0;
                changeingame = 0;
                changedelay = 1;
                
                class lcba
                {label = "LCBA";};
                class para
                {label = "Para";};
                class savit
                {label = "Savit";};
                class ris
                {label = "RIS";};
                class basic
                {label = "Classic";};
            };
        };

        WEAPON(GTO_lwmmg,"LWMMG");

        class GTO_Stoner
        {
            label = "Stoner";
            author = "LucyferHW";
            options[] = {"weaponCamo"};
            
            class weaponCamo
            {
                label = "Camo";
                values[] = {"black","desert"};
                alwaysSelectable = 0;
                changeingame = 1;
                changedelay = 1;

                class black
                {label = "Black";};
                class desert
                {label = "Desert";};
            };  
        };

        class GTO_rhs_m240
        {
            label = "M240";
            author = "LucyferHW";
            options[] = {"version"};
            
            class version
            {
                label = "Version";
                values[] = {"b","g"};
                alwaysSelectable = 0;
                changeingame = 0;
                changedelay = 1;

                class b
                {label = "B";};
                class g
                {label = "G";};
            };  
        };

        class GTO_MMG
        {
            label = "MMG";
            author = "LucyferHW";
            options[] = {"weaponCamo"};
            
            class weaponCamo
            {
                label = "Camo";
                values[] = {"tan","hex"};
                alwaysSelectable = 0;
                changeingame = 1;
                changedelay = 1;

                class tan
                {label = "Tan";};
                class hex
                {label = "Hex";};
            };  
        };


        class GTO_Vest_VSM
        {
            label = "VSM";
            author = "LucyferHW";
            options[] = {"camoType", "version", "role"};
            
            CAMOTYPEM("Vest");

            class version
            {
                label = "Version";
                values[] = {"facp","carrierRig","lbt","par"};
                alwaysSelectable = 0;
                changeingame = 1;
                changedelay = 1;

                class facp
                {label = "DT FACP";};
                class carrierRig
                {label = "LBT";};
                class lbt
                {label = "LBT 6094";};
                class par
                {label = "Paraclete RAV";};
            };

            class role
            {
                label = "Role";
                values[] = {"breacher","gunner","operator"};
                alwaysSelectable = 0;
                changeingame = 1;
                changedelay = 1;

                class breacher
                {label = "Special";description = "Sapper, Engi, Pionier";};
                class gunner
                {label = "Weapon";description = "-all weapon roles-";};
                class operator
                {label = "Lead & Medic";description = "SL, FTL, Doktor, Medic";};
            };

        };
    };
};


/*label = "none";
                    //description = ""; // displayed as tooltip
                    // image = "xxx"; Background image in Arsenal
                    // icon = "xxx"; If can changeingame, action icon in ACE menu
                    // actionlabel = "xxx"; If can changeingame, action label in ACE menu
                    // itemingame = "xxx"; If can changeingame, requires this item to be present in inventory. Item will be removed from inventory (added back if an other value is choosen)
                    // changedelay = (inherited by default); If can changeingame, wait delay before change is effective
                    // faction[] = {"BLU_F", "BLU_T_F", "BLU_W_F"}; // shows this value only for selected factions, identified by their A3 code (optional)