scriptName "fn_loadDefault";

// Remove current stuff
removeAllWeapons ACE_player;
removeAllItems ACE_player;
removeAllAssignedItems ACE_player;
removeUniform ACE_player;
removeVest ACE_player;
removeBackpack ACE_player;
removeHeadgear ACE_player;

params ["_arsenalType", "_role"];

if (_arsenalType == "USA") exitWith {
	private _layout = switch (_role) do
	{
		case "pl":
		{
			[["rhs_weap_m4_urgi_kac","rhsusf_acc_nt4_tan","rhsusf_acc_anpeq15side","optic_Arco_blk_F",["rhs_mag_30Rnd_556x45_M855A1_PMAG",30],[],"rhs_acc_m4_urgi_d"],[],["rhsusf_weap_glock17g4","","acc_flashlight_pistol","",["rhsusf_mag_17Rnd_9x19_JHP",17],[],""],["TPW_G3_G3_FS_FM_UNIFORM_MCAMF",[["ACE_EarPlugs",1],["ACE_packingBandage",30],["ACE_tourniquet",4],["ACE_Flashlight_XL50",1],["ACE_CableTie",3],["ACE_IR_Strobe_Item",1],["ACE_MapTools",1],["ItemAndroid",1],["ACE_painkillers",1,10],["rhsusf_mag_17Rnd_9x19_JHP",1,17]]],["3DMA_WD_AVS_PLLEAD",[["ACE_HuntIR_monitor",1],["ItemcTab",1],["rhs_mag_30Rnd_556x45_M855A1_PMAG",8,30],["ACE_M14",3,1]]],["tfw_ilbe_blade_mc",[["tfw_rf3080Item",1],["SmokeShellBlue",4,1],["SmokeShellGreen",3,1],["ACE_M84",2,1],["HandGrenade",2,1],["SmokeShell",8,1]]],"3DMA_WD_Opscore_V5","G_Squares_Tinted",["Rangefinder","","","",[],[],""],["ItemMap","ItemGPS","TFAR_anprc152","ItemCompass","ACE_Altimeter","3DMA_WD_ANPVS31_v2"]]
		};

		case "sl":
		{
			[["rhs_weap_m4_urgi_kac","rhsusf_acc_nt4_tan","rhsusf_acc_anpeq15_wmx","rhsusf_acc_su230",["rhs_mag_30Rnd_556x45_M855A1_PMAG",30],[],"rhs_acc_m4_urgi_d"],[],["rhsusf_weap_glock17g4","","acc_flashlight_pistol","",["rhsusf_mag_17Rnd_9x19_JHP",17],[],""],["TPW_G3_G3_FS_FM_UNIFORM_MCAMF",[["ACE_EarPlugs",1],["ACE_packingBandage",30],["ACE_tourniquet",4],["ACE_Flashlight_XL50",1],["ACE_CableTie",3],["ACE_IR_Strobe_Item",1],["ACE_MapTools",1],["ItemAndroid",1],["ACE_painkillers",1,10],["rhsusf_mag_17Rnd_9x19_JHP",1,17]]],["3DMA_WD_AVS_SL",[["SmokeShell",2,1],["HandGrenade",2,1],["rhs_mag_30Rnd_556x45_M855A1_PMAG",8,30],["ACE_M84",2,1],["SmokeShellBlue",1,1],["SmokeShellGreen",1,1]]],["tfw_ilbe_blade_mc",[["rhs_mag_30Rnd_556x45_M855A1_PMAG",8,30],["rhsusf_mag_17Rnd_9x19_JHP",1,17]]],"3DMA_WD_Opscore_V5","rhs_googles_black",["Rangefinder","","","",[],[],""],["ItemMap","ItemGPS","TFAR_anprc152","ItemCompass","ACE_Altimeter","3DMA_WD_ANPVS31_v2"]]
		};

		case "pmed":
		{
			[["rhs_weap_mk18_urgi_kac","rhsusf_acc_nt4_tan","rhsusf_acc_anpeq15_wmx","rhsusf_acc_su230",["rhs_mag_30Rnd_556x45_M855A1_PMAG",30],[],"rhs_acc_mk18_urgi_d"],[],["rhsusf_weap_glock17g4","","acc_flashlight_pistol","",["rhsusf_mag_17Rnd_9x19_JHP",17],[],""],["TPW_G3_G3_FS_FM_UNIFORM_MCAMF_pmed",[["ACE_EarPlugs",1],["ACE_packingBandage",30],["ACE_tourniquet",4],["ACE_Flashlight_XL50",1],["ACE_CableTie",3],["ACE_IR_Strobe_Item",1],["ItemAndroid",1],["rhsusf_mag_17Rnd_9x19_JHP",1,17],["ACE_painkillers",1,10]]],["3DMA_WD_AVS_Medic",[["SmokeShell",2,1],["HandGrenade",2,1],["ACE_M84",4,1],["rhs_mag_30Rnd_556x45_M855A1_PMAG",8,30]]],["GTO_Carryall_Medic_multicam",[["ACE_packingBandage",50],["ACE_quikclot",25],["ACE_elasticBandage",25],["ACE_epinephrine",15],["ACE_adenosine",10],["ACE_morphine",10],["ACE_tourniquet",5],["ACE_splint",7],["ACE_salineIV",5],["ACE_salineIV_500",5],["ACE_salineIV_250",5],["ACE_plasmaIV_500",5],["ACE_plasmaIV",5],["ACE_surgicalKit",1],["ACE_bodyBag",5],["ACE_bodyBag_blue",1],["ACE_bodyBag_white",1],["ACE_painkillers",2,10]]],"3DMA_WD_Opscore_V5","rhs_googles_black",["Rangefinder","","","",[],[],""],["ItemMap","ItemGPS","TFAR_anprc152","ItemCompass","ACE_Altimeter","3DMA_WD_ANPVS31_v2"]]
		};

		case "rifleman":
		{
			[["rhs_weap_m4_urgi_kac","rhsusf_acc_nt4_tan","rhsusf_acc_anpeq15_wmx","rhsusf_acc_su230",["rhs_mag_30Rnd_556x45_M855A1_PMAG",30],[],"rhs_acc_m4_urgi_d"],[],["rhsusf_weap_glock17g4","","acc_flashlight_pistol","",["rhsusf_mag_17Rnd_9x19_JHP",17],[],""],["TPW_G3_G3_FS_FM_UNIFORM_MCAMF",[["ACE_EarPlugs",1],["ACE_packingBandage",30],["ACE_tourniquet",4],["ACE_Flashlight_XL50",1],["ACE_CableTie",3],["ACE_IR_Strobe_Item",1],["ItemAndroid",1],["rhsusf_mag_17Rnd_9x19_JHP",1,17],["ACE_painkillers",1,10]]],["3DMA_WD_AVS_Rifleman_v4",[["SmokeShell",2,1],["HandGrenade",2,1],["rhs_mag_30Rnd_556x45_M855A1_PMAG",8,30],["ACE_M84",4,1]]],[],"3DMA_WD_Opscore_V2","rhs_googles_black",["Rangefinder","","","",[],[],""],["ItemMap","ItemGPS","TFAR_anprc152","ItemCompass","ACE_Altimeter","3DMA_WD_ANPVS31_v2"]]
		};

		case "ammoCarrier":
		{
			[["rhs_weap_m4_urgi_kac","rhsusf_acc_nt4_tan","rhsusf_acc_anpeq15_wmx","rhsusf_acc_su230",["rhs_mag_30Rnd_556x45_M855A1_PMAG",30],[],"rhs_acc_m4_urgi_d"],[],["rhsusf_weap_glock17g4","","acc_flashlight_pistol","",["rhsusf_mag_17Rnd_9x19_JHP",17],[],""],["TPW_G3_G3_FS_FM_UNIFORM_MCAMF",[["ACE_EarPlugs",1],["ACE_packingBandage",30],["ACE_tourniquet",4],["ACE_Flashlight_XL50",1],["ACE_CableTie",3],["ACE_IR_Strobe_Item",1],["ItemAndroid",1],["rhsusf_mag_17Rnd_9x19_JHP",1,17],["ACE_painkillers",1,10]]],["3DMA_WD_AVS_Rifleman_v4",[["SmokeShell",2,1],["HandGrenade",2,1],["rhs_mag_30Rnd_556x45_M855A1_PMAG",8,30],["ACE_M84",4,1]]],["B_Kitbag_rgr",[]],"3DMA_WD_Opscore_V2","rhs_googles_black",["Rangefinder","","","",[],[],""],["ItemMap","ItemGPS","TFAR_anprc152","ItemCompass","ACE_Altimeter","3DMA_WD_ANPVS31_v2"]]
		};

		case "grenadier":
		{
			[["rhs_weap_m4_urgi_kac","rhsusf_acc_nt4_tan","rhsusf_acc_anpeq15_wmx","rhsusf_acc_su230",["rhs_mag_30Rnd_556x45_M855A1_PMAG",30],[],"rhs_acc_m4_urgi_d"],[],["rhs_weap_M320","","","",["1Rnd_HE_Grenade_shell",1],[],""],["TPW_G3_G3_FS_FM_UNIFORM_MCAMF",[["ACE_EarPlugs",1],["ACE_packingBandage",30],["ACE_tourniquet",4],["ACE_Flashlight_XL50",1],["ACE_CableTie",3],["ACE_IR_Strobe_Item",1],["ItemAndroid",1],["ACE_painkillers",1,10]]],["3DMA_WD_AVS_Grenadier",[["SmokeShell",2,1],["HandGrenade",2,1],["rhs_mag_30Rnd_556x45_M855A1_PMAG",8,30],["ACE_M84",4,1]]],["B_Kitbag_rgr",[["1Rnd_HE_Grenade_shell",25,1],["ACE_40mm_Flare_ir",8,1],["1Rnd_Smoke_Grenade_shell",8,1],["1Rnd_SmokeRed_Grenade_shell",5,1]]],"3DMA_WD_Opscore_V2","rhs_googles_black",["Rangefinder","","","",[],[],""],["ItemMap","ItemGPS","TFAR_anprc152","ItemCompass","ACE_Altimeter","3DMA_WD_ANPVS31_v2"]]
		};

		case "marksman":
		{
			[["rhs_weap_SCARH_FDE_STD","rhsgref_sdn6_suppressor","rhsusf_acc_anpeq15_wmx","rhsusf_acc_su230a_c",["rhs_mag_20Rnd_SCAR_762x51_m61_ap",20],[],"rhsusf_acc_grip1"],[],["rhsusf_weap_glock17g4","","acc_flashlight_pistol","",["rhsusf_mag_17Rnd_9x19_JHP",17],[],""],["TPW_G3_G3_FS_FM_UNIFORM_MCAMF",[["ACE_EarPlugs",1],["ACE_packingBandage",28],["ACE_tourniquet",4],["ACE_Flashlight_XL50",1],["ACE_CableTie",3],["ACE_Chemlight_Shield",1],["ACE_IR_Strobe_Item",1],["ItemAndroid",1],["rhsusf_mag_17Rnd_9x19_JHP",1,17],["ACE_Chemlight_IR",1,1],["ACE_painkillers",1,10]]],["3DMA_WD_AVS_Rifleman_v3",[["SmokeShell",2,1],["HandGrenade",2,1],["rhs_mag_20Rnd_SCAR_762x51_m61_ap",4,20],["ACE_M84",4,1]]],["B_AssaultPack_rgr",[["rhs_mag_20Rnd_SCAR_762x51_m61_ap",9,20]]],"3DMA_WD_Opscore_V2","rhs_googles_black",["Rangefinder","","","",[],[],""],["ItemMap","ItemGPS","TFAR_anprc152","ItemCompass","ACE_Altimeter","3DMA_WD_ANPVS31_v2"]]
		};

		case "lmg":
		{
			[["rhs_weap_m249_light_S","","rhsusf_acc_anpeq15side","rhsusf_acc_su230",["rhsusf_100Rnd_556x45_mixed_soft_pouch_coyote",100],[],"rhsusf_acc_grip4_bipod"],[],["rhsusf_weap_glock17g4","","acc_flashlight_pistol","",["rhsusf_mag_17Rnd_9x19_JHP",17],[],""],["TPW_G3_G3_FS_FM_UNIFORM_MCAMF",[["ACE_EarPlugs",1],["ACE_packingBandage",30],["ACE_tourniquet",4],["ACE_Flashlight_XL50",1],["ACE_CableTie",3],["ACE_IR_Strobe_Item",1],["ItemAndroid",1],["rhsusf_mag_17Rnd_9x19_JHP",1,17],["ACE_painkillers",1,10]]],["3DMA_WD_AVS_Saw",[["SmokeShell",2,1],["HandGrenade",1,1],["rhsusf_100Rnd_556x45_mixed_soft_pouch_coyote",4,100],["ACE_M84",3,1]]],["B_AssaultPack_rgr",[["rhsusf_100Rnd_556x45_mixed_soft_pouch_coyote",3,100]]],"3DMA_WD_Opscore_V4","rhs_googles_black",["Rangefinder","","","",[],[],""],["ItemMap","ItemGPS","TFAR_anprc152","ItemCompass","ACE_Altimeter","3DMA_WD_ANPVS31_v2"]]
		};

		case "mmg":
		{
			[["rhs_weap_m240G","","","rhsusf_acc_su230a",["rhsusf_100Rnd_762x51_m62_tracer",100],[],""],[],["rhsusf_weap_glock17g4","","acc_flashlight_pistol","",["rhsusf_mag_17Rnd_9x19_JHP",17],[],""],["TPW_G3_G3_FS_FM_UNIFORM_MCAMF",[["ACE_EarPlugs",1],["ACE_packingBandage",30],["ACE_tourniquet",4],["ACE_Flashlight_XL50",1],["ACE_CableTie",3],["ACE_IR_Strobe_Item",1],["ItemAndroid",1],["rhsusf_mag_17Rnd_9x19_JHP",1,17],["ACE_painkillers",1,10]]],["3DMA_WD_AVS_Saw",[["ACE_WaterBottle",5],["SmokeShell",1,1],["HandGrenade",1,1],["rhsusf_100Rnd_762x51_m62_tracer",3,100]]],["B_AssaultPack_rgr",[["rhsusf_100Rnd_762x51_m62_tracer",4,100],["ACE_SpareBarrel",1,1]]],"3DMA_WD_Opscore_V4","rhs_googles_black",["Rangefinder","","","",[],[],""],["ItemMap","ItemGPS","TFAR_anprc152","ItemCompass","ACE_Altimeter","3DMA_WD_ANPVS31_v2"]]
		};

		case "lat":
		{
			[[], [], [], ["GTO_BaseUniform", []], [], [], "GTO_Beret_Black", "", ["", "", "", "", [], [], ""], ["ItemMap", "ItemGPS", "TFAR_anprc152", "ItemCompass", "TFAR_microdagr", ""]]
		};

		case "hat":
		{
			[["rhs_weap_m4_urgi_kac","rhsusf_acc_nt4_tan","rhsusf_acc_anpeq15_wmx","rhsusf_acc_su230",["rhs_mag_30Rnd_556x45_M855A1_PMAG",30],[],"rhs_acc_m4_urgi_d"],["launch_MRAWS_green_rail_F","","","",["MRAWS_HEAT55_F",1],[],""],["rhsusf_weap_glock17g4","","acc_flashlight_pistol","",["rhsusf_mag_17Rnd_9x19_JHP",17],[],""],["TPW_G3_G3_FS_FM_UNIFORM_MCAMF",[["ACE_EarPlugs",1],["ACE_packingBandage",30],["ACE_tourniquet",4],["ACE_Flashlight_XL50",1],["ACE_CableTie",3],["ACE_IR_Strobe_Item",1],["ItemAndroid",1],["rhsusf_mag_17Rnd_9x19_JHP",1,17],["ACE_painkillers",1,10]]],["3DMA_WD_AVS_Rifleman_v1",[["SmokeShell",1,1],["HandGrenade",1,1],["rhs_mag_30Rnd_556x45_M855A1_PMAG",8,30]]],["B_Kitbag_rgr",[["MRAWS_HEAT55_F",2,1],["MRAWS_HE_F",2,1]]],"3DMA_WD_Opscore_V4","rhs_googles_black",["Binocular","","","",[],[],""],["ItemMap","ItemGPS","TFAR_anprc152","ItemCompass","ACE_Altimeter","3DMA_WD_ANPVS31_v2"]]
		};

		case "medic_bravo":
		{
			[["rhs_weap_m4_urgi_kac","rhsusf_acc_nt4_tan","rhsusf_acc_anpeq15_wmx","rhsusf_acc_su230",["rhs_mag_30Rnd_556x45_M855A1_PMAG",30],[],"rhs_acc_m4_urgi_d"],[],["rhsusf_weap_glock17g4","","acc_flashlight_pistol","",["rhsusf_mag_17Rnd_9x19_JHP",17],[],""],["TPW_G3_G3_FS_FM_UNIFORM_MCAMF_arfr",[["ACE_EarPlugs",1],["ACE_tourniquet",4],["ACE_Flashlight_XL50",1],["ACE_CableTie",3],["ACE_IR_Strobe_Item",1],["ItemAndroid",1],["ACE_packingBandage",30],["rhsusf_mag_17Rnd_9x19_JHP",1,17],["ACE_painkillers",1,10]]],["3DMA_WD_AVS_Medic",[["SmokeShell",2,1],["HandGrenade",2,1],["rhs_mag_30Rnd_556x45_M855A1_PMAG",8,30],["ACE_M84",4,1]]],["B_TacticalPack_blk",[["ACE_packingBandage",40],["ACE_quikclot",30],["ACE_epinephrine",15],["ACE_adenosine",10],["ACE_morphine",8],["ACE_tourniquet",5],["ACE_splint",6],["ACE_salineIV",6],["ACE_salineIV_500",6],["ACE_salineIV_250",4],["ACE_bodyBag",1],["ACE_painkillers",1,10]]],"3DMA_WD_Opscore_V2","rhs_googles_black",["Rangefinder","","","",[],[],""],["ItemMap","","TFAR_anprc152","ItemCompass","ACE_Altimeter","3DMA_WD_ANPVS31_v2"]]
		};

		case "medic_charlie":
		{
			[["rhs_weap_mk18_urgi_kac","rhsusf_acc_nt4_tan","rhsusf_acc_anpeq15_wmx","rhsusf_acc_su230",["rhs_mag_30Rnd_556x45_M855A1_PMAG",30],[],"rhs_acc_mk18_urgi_d"],[],["rhsusf_weap_glock17g4","","acc_flashlight_pistol","",["rhsusf_mag_17Rnd_9x19_JHP",17],[],""],["TPW_G3_G3_FS_FM_UNIFORM_MCAMF_arfr",[["ACE_EarPlugs",1],["ACE_packingBandage",30],["ACE_tourniquet",4],["ACE_Flashlight_XL50",1],["ACE_CableTie",3],["ACE_IR_Strobe_Item",1],["ItemAndroid",1],["rhsusf_mag_17Rnd_9x19_JHP",1,17],["ACE_painkillers",1,10]]],["3DMA_WD_AVS_Medic",[["SmokeShell",2,1],["HandGrenade",2,1],["ACE_M84",4,1],["rhs_mag_30Rnd_556x45_M855A1_PMAG",8,30]]],["B_Carryall_cbr",[["ACE_packingBandage",50],["ACE_quikclot",25],["ACE_elasticBandage",25],["ACE_epinephrine",15],["ACE_adenosine",10],["ACE_morphine",10],["ACE_tourniquet",5],["ACE_splint",7],["ACE_salineIV",5],["ACE_salineIV_500",5],["ACE_surgicalKit",1],["ACE_plasmaIV",5],["ACE_plasmaIV_500",5],["ACE_salineIV_250",5],["ACE_painkillers",2,10]]],"3DMA_WD_Opscore_V5","rhs_googles_black",["Rangefinder","","","",[],[],""],["ItemMap","ItemGPS","TFAR_anprc152","ItemCompass","ACE_Altimeter","3DMA_WD_ANPVS31_v2"]]
		};

		case "eod":
		{
			[["rhs_weap_mk18_urgi_kac","rhsusf_acc_nt4_tan","rhsusf_acc_anpeq15_wmx","rhsusf_acc_su230",["rhs_mag_30Rnd_556x45_M855A1_PMAG",30],[],"rhs_acc_mk18_urgi_d"],[],["rhsusf_weap_glock17g4","","acc_flashlight_pistol","",["rhsusf_mag_17Rnd_9x19_JHP",17],[],""],["TPW_G3_G3_FS_FM_UNIFORM_MCAMF",[["ACE_EarPlugs",1],["ACE_packingBandage",30],["ACE_tourniquet",4],["ACE_Flashlight_XL50",1],["ACE_CableTie",3],["ACE_IR_Strobe_Item",1],["ItemAndroid",1],["rhsusf_mag_17Rnd_9x19_JHP",1,17],["ACE_painkillers",1,10]]],["3DMA_WD_AVS_Rifleman_v2",[["SmokeShell",2,1],["HandGrenade",2,1],["ACE_M84",4,1],["rhs_mag_30Rnd_556x45_M855A1_PMAG",8,30]]],["B_AssaultPack_khk",[["ACE_wirecutter",1],["ACE_DefusalKit",1],["ACE_M26_Clacker",1],["ACE_M14",3,1],["DemoCharge_Remote_Mag",3,1],["SLAMDirectionalMine_Wire_Mag",2,1]]],"3DMA_WD_Opscore_V2","rhs_googles_black",["Binocular","","","",[],[],""],["ItemMap","","TFAR_anprc152","ItemCompass","ACE_Altimeter","3DMA_WD_ANPVS31_v2"]]
		};

		case "sniper":
		{
			[["rhs_weap_M107_w","","","rhsusf_acc_premier_mrds",["ACE_10Rnd_127x99_AMAX_Mag",10],[],""],[],["rhsusf_weap_glock17g4","","acc_flashlight_pistol","",["rhsusf_mag_17Rnd_9x19_JHP",17],[],""],["TPW_G3_G3_FS_FM_UNIFORM_MCAMF",[["ACE_EarPlugs",1],["ACE_packingBandage",30],["ACE_tourniquet",4],["ACE_Flashlight_XL50",1],["ACE_CableTie",3],["ACE_IR_Strobe_Item",1],["ItemAndroid",1],["rhsusf_mag_17Rnd_9x19_JHP",1,17],["ACE_painkillers",1,10]]],["3DMA_WD_AVS_SNOT",[["ACE_ATragMX",1],["ACE_Kestrel4500",1],["ACE_MapTools",1],["ACE_microDAGR",1],["ACE_RangeCard",1],["ACE_DAGR",1],["SmokeShell",2,1],["HandGrenade",2,1],["ACE_M84",2,1],["ACE_10Rnd_127x99_AMAX_Mag",3,10]]],["B_AssaultPack_rgr",[["ACE_Tripod",1],["ACE_10Rnd_127x99_AMAX_Mag",3,10]]],"3DMA_WD_Opscore_V4","rhs_googles_black",["Rangefinder","","","",[],[],""],["ItemMap","ItemGPS","TFAR_anprc152","ItemCompass","ACE_Altimeter","3DMA_WD_ANPVS31_v2"]]
		};

		case "spotter":
		{
			[["rhs_weap_sr25_ec","rhsusf_acc_aac_scarh_silencer","rhsusf_acc_anpeq15side_bk","optic_DMS",["rhsusf_20Rnd_762x51_SR25_m993_Mag",20],[],"rhsusf_acc_harris_bipod"],[],["rhsusf_weap_glock17g4","","acc_flashlight_pistol","",["rhsusf_mag_17Rnd_9x19_JHP",17],[],""],["TPW_G3_G3_FS_FM_UNIFORM_MCAMF",[["ACE_EarPlugs",1],["ACE_packingBandage",30],["ACE_tourniquet",4],["ACE_Flashlight_XL50",1],["ACE_CableTie",3],["ACE_IR_Strobe_Item",1],["ItemAndroid",1],["rhsusf_mag_17Rnd_9x19_JHP",1,17],["ACE_painkillers",1,10]]],["3DMA_WD_AVS_SNOT",[["ACE_MapTools",1],["ACE_microDAGR",1],["ACE_RangeCard",1],["ACE_Kestrel4500",1],["ACE_ATragMX",1],["ACE_DAGR",1],["SmokeShell",2,1],["HandGrenade",2,1],["ACE_M84",1,1],["rhsusf_20Rnd_762x51_SR25_m993_Mag",6,20],["acex_intelitems_notepad",1,1]]],["tfw_ilbe_whip_mc",[["tfw_rf3080Item",1],["ACE_SpottingScope",1],["ACE_Tripod",1],["ACE_10Rnd_127x99_AMAX_Mag",2,10],["rhsusf_20Rnd_762x51_SR25_m993_Mag",2,20]]],"3DMA_WD_Opscore_V4","rhs_googles_black",["Rangefinder","","","",[],[],""],["ItemMap","ItemGPS","TFAR_anprc152","ItemCompass","ACE_Altimeter","3DMA_WD_ANPVS31_v2"]]
		};

		case "jtac":
		{
			[["rhs_weap_m4_urgi_kac","rhsusf_acc_nt4_tan","rhsusf_acc_anpeq15_wmx","rhsusf_acc_su230",["rhs_mag_30Rnd_556x45_M855A1_PMAG",30],[],"rhs_acc_m4_urgi_d"],[],["rhs_weap_M320","","","",["1Rnd_SmokeRed_Grenade_shell",1],[],""],["TPW_G3_G3_FS_FM_UNIFORM_MCAMF",[["ACE_EarPlugs",1],["ACE_packingBandage",30],["ACE_tourniquet",4],["ACE_Flashlight_XL50",1],["ACE_CableTie",3],["ACE_IR_Strobe_Item",1],["ACE_MapTools",1],["ItemAndroid",1],["ACE_microDAGR",1],["ACE_PlottingBoard",1],["ACE_painkillers",1,10],["acex_intelitems_notepad",1,1]]],["3DMA_WD_AVS_JTAC",[["SmokeShell",2,1],["HandGrenade",2,1],["rhs_mag_30Rnd_556x45_M855A1_PMAG",8,30],["ACE_M84",4,1]]],["tfw_ilbe_whip_mc",[["tfw_rf3080Item",1],["uh60_jvmf_tablet",1],["B_IR_Grenade",1,1],["SmokeShellBlue",5,1],["SmokeShellGreen",5,1],["SmokeShellPurple",5,1],["ACE_Chemlight_IR",1,1],["UGL_FlareRed_F",2,1],["UGL_FlareYellow_F",2,1],["UGL_FlareGreen_F",2,1],["1Rnd_SmokeRed_Grenade_shell",12,1],["1Rnd_SmokePurple_Grenade_shell",3,1]]],"3DMA_WD_Opscore_V2","rhs_googles_black",["Laserdesignator","","","",["Laserbatteries",1],[],""],["ItemMap","ItemGPS","TFAR_anprc152","ItemCompass","ACE_Altimeter","3DMA_WD_ANPVS31_v2"]]
		};

		case "heli_pilot":
		{
			[["rhs_weap_m4a1_carryhandle","","rhsusf_acc_anpeq15_top","rhsusf_acc_eotech_xps3",["rhs_mag_30Rnd_556x45_M855A1_Stanag",30],[],""],[],[],["TPW_L9_L9_FS_FM_UNIFORM_MCAMF",[["ACE_EarPlugs",1],["ACE_packingBandage",30],["ACE_tourniquet",4],["ACE_Flashlight_XL50",1],["ACE_Chemlight_Shield",1],["ACE_IR_Strobe_Item",1],["ACE_CableTie",3],["ACE_microDAGR",1],["ACE_Chemlight_IR",1,1],["ACE_painkillers",1,10]]],["V_TacVest_oli",[["rhs_mag_30Rnd_556x45_M855A1_Stanag",2,30],["B_IR_Grenade",1,1],["HandGrenade",2,1],["SmokeShellGreen",2,1],["SmokeShell",1,1]]],["B_LegStrapBag_coyote_F",[["ToolKit",1]]],"rhsusf_hgu56p_visor_mask_Empire_black","",["Binocular","","","",[],[],""],["ItemMap","ItemGPS","TFAR_anprc152","ItemCompass","ACE_Altimeter","ACE_NVG_Wide_Black_WP"]]
		};

		case "jet_pilot":
		{
			[[],[],["rhsusf_weap_glock17g4","","","",["rhsusf_mag_17Rnd_9x19_JHP",17],[],""],["U_B_PilotCoveralls",[["ACE_EarPlugs",1],["ACE_packingBandage",20],["ACE_tourniquet",3],["ACE_Flashlight_XL50",1],["ACE_CableTie",3],["ACE_Chemlight_Shield",1],["ItemAndroid",1],["ACE_IR_Strobe_Item",1],["rhsusf_mag_17Rnd_9x19_JHP",2,17],["ACE_Chemlight_IR",1,1],["SmokeShellBlue",1,1],["SmokeShellGreen",1,1],["SmokeShell",2,1],["ACE_painkillers",1,10]]],[],[],"H_PilotHelmetFighter_B","",[],["ItemMap","ItemGPS","TFAR_anprc152","ItemCompass","ACE_Altimeter",""]]
		};
		default {
			[[], [], [], ["GTO_BaseUniform", []], [], [], "GTO_Beret_Black", "", ["", "", "", "", [], [], ""], ["ItemMap", "ItemGPS", "TFAR_anprc152", "ItemCompass", "TFAR_microdagr", ""]]
		};
	};

	ACE_player setUnitLoadout [_layout, true];
};

GTO_CutomLoadout_Template = {
	params[ "_default", "_custom"];

	parseSimpleArray _default; // todo: edit that only one parameter is used
};


if (_arsenalType == "Custom") exitWith {
	private _layout = switch (_role) do
	{
		case "sl": {
			[GTO_DefaultLoadout_sl, GTO_Loadout_sl] call GTO_CutomLoadout_Template;
		};

		case "medic": {
			[GTO_DefaultLoadout_medic, GTO_Loadout_medic] call GTO_CutomLoadout_Template;
		};
		case "ammoCarrier": {
			[GTO_DefaultLoadout_ammoCarrier, GTO_Loadout_ammoCarrier] call GTO_CutomLoadout_Template;
		};

		case "weaponSpecialist": {
			[GTO_DefaultLoadout_weaponSpecialist, GTO_Loadout_weaponSpecialist] call GTO_CutomLoadout_Template;
		};
		case "mg": {
			[GTO_DefaultLoadout_mg, GTO_Loadout_mg] call GTO_CutomLoadout_Template;
		};
		case "grenadier": {
			[GTO_DefaultLoadout_grenadier, GTO_Loadout_grenadier] call GTO_CutomLoadout_Template;
		};
		case "at": {
			[GTO_DefaultLoadout_at, GTO_Loadout_at] call GTO_CutomLoadout_Template;
		};

		case "marksman": {
			[GTO_DefaultLoadout_marksman, GTO_Loadout_marksman] call GTO_CutomLoadout_Template;
		};
		case "sniper": {
			[GTO_DefaultLoadout_sniper, GTO_Loadout_sniper] call GTO_CutomLoadout_Template;
		};
		case "sapper": {
			[GTO_DefaultLoadout_sapper, GTO_Loadout_sapper] call GTO_CutomLoadout_Template;
		};
		case "engineer": {
			[GTO_DefaultLoadout_engineer, GTO_Loadout_engineer] call GTO_CutomLoadout_Template;
		};

		case "pilot": {
			[GTO_DefaultLoadout_pilot, GTO_Loadout_pilot] call GTO_CutomLoadout_Template;
		};
		case "crewman": {
			[GTO_DefaultLoadout_crewman, GTO_Loadout_crewman] call GTO_CutomLoadout_Template;
		};

		default {
			[[], [], [], ["GTO_BaseUniform", []], [], [], "GTO_Beret_Black", "", ["", "", "", "", [], [], ""], ["ItemMap", "", "", "ItemCompass", "", ""]]
		};
	};

	ACE_player setUnitLoadout [_layout, true];
};