#define WEAPON(MODEL,CLASS_A, CLASS_B, CLASS_C)\
class ##CLASS_A## \
{ \
    model = ##MODEL##;\
    weaponCamo = "black";\
};\
\
class ##CLASS_B##\
{\
    model = ##MODEL##;\
    weaponCamo = "desert";\
};\
\
class ##CLASS_C##\
{\
    model = ##MODEL##;\
    weaponCamo = "woodland";\
};

#define WEAPONV(MODEL, VERSION, CLASS_A, CLASS_B, CLASS_C)\
class ##CLASS_A## \
{ \
    model = ##MODEL##;\
    weaponCamo = "black";\
    version = ##VERSION##;\
};\
\
class ##CLASS_B##\
{\
    model = ##MODEL##;\
    weaponCamo = "desert";\
    version = ##VERSION##;\
};\
\
class ##CLASS_C##\
{\
    model = ##MODEL##;\
    weaponCamo = "woodland";\
    version = ##VERSION##;\
};

#define VESTVSM(NAME, CAMO, VERSION, ROLE)\
class ##NAME##\
        {\
            model = "GTO_Vest_VSM";            \
            camoType = ##CAMO##;\
            version = ##VERSION##;\
            role = ##ROLE##;\
        };

class XtdGearInfos {
	
	class CfgVehicles
    {

        // ---------- GTO_Medic_Carryall ---------- //

		class GTO_Carryall_Medic_alpine 
        {
            model = "GTO_Medic_Carryall"; 
            camoType = "alpine";
           
        };

        class GTO_Carryall_Medic_aor1 
        {
            model = "GTO_Medic_Carryall"; 
            camoType = "aor1";
           
        };

        class GTO_Carryall_Medic_aor2 
        {
            model = "GTO_Medic_Carryall"; 
            camoType = "aor2";
           
        };

        class GTO_Carryall_Medic_dts 
        {
            model = "GTO_Medic_Carryall"; 
            camoType = "dts";
           
        };

        class GTO_Carryall_Medic_m81 
        {
            model = "GTO_Medic_Carryall"; 
            camoType = "m81";
           
        };

        class GTO_Carryall_Medic_multicam 
        {
            model = "GTO_Medic_Carryall"; 
            camoType = "multicam";
           
        };

        class GTO_Carryall_Medic_multicam_arid 
        {
            model = "GTO_Medic_Carryall"; 
            camoType = "multicam_arid";
           
        };

        class GTO_Carryall_Medic_multicam_black 
        {
            model = "GTO_Medic_Carryall"; 
            camoType = "multicam_black";
           
        };

        class GTO_Carryall_Medic_multicam_tropic 
        {
            model = "GTO_Medic_Carryall"; 
            camoType = "multicam_tropic";
           
        };

        class GTO_Carryall_Medic_ocp 
        {
            model = "GTO_Medic_Carryall"; 
            camoType = "ocp";
           
        };

        class GTO_Carryall_Medic_oga 
        {
            model = "GTO_Medic_Carryall"; 
            camoType = "oga";
           
        };

        class GTO_Carryall_Medic_oga_od 
        {
            model = "GTO_Medic_Carryall"; 
            camoType = "oga_od";
           
        };

        class GTO_Carryall_Medic_projecthonor 
        {
            model = "GTO_Medic_Carryall"; 
            camoType = "projecthonor";
           
        };

        // ---------- GTO_Compact ---------- //

        class Alpine_Backpack_Compact 
        {
            model = "GTO_Compact"; 
            camoType = "alpine";
           
        };

        class VSM_AOR1_Backpack_Compact 
        {
            model = "GTO_Compact"; 
            camoType = "aor1";
           
        };

        class AOR2_Backpack_Compact 
        {
            model = "GTO_Compact"; 
            camoType = "aor2";
           
        };

        class DTS_Backpack_Compact 
        {
            model = "GTO_Compact"; 
            camoType = "dts";
           
        };

        class VSM_M81_Backpack_Compact 
        {
            model = "GTO_Compact"; 
            camoType = "m81";
           
        };

        class VSM_Multicam_Backpack_Compact 
        {
            model = "GTO_Compact"; 
            camoType = "multicam";
           
        };

        class Arid_Backpack_Compact 
        {
            model = "GTO_Compact"; 
            camoType = "multicam_arid";
           
        };

        class Black_Backpack_Compact 
        {
            model = "GTO_Compact"; 
            camoType = "multicam_black";
           
        };

        class VSM_MulticamTropic_Backpack_Compact 
        {
            model = "GTO_Compact"; 
            camoType = "multicam_tropic";
           
        };

        class VSM_OCP_Backpack_Compact 
        {
            model = "GTO_Compact"; 
            camoType = "ocp";
           
        };

        class VSM_OGA_Backpack_Compact 
        {
            model = "GTO_Compact"; 
            camoType = "oga";
           
        };

        class VSM_OGA_OD_Backpack_Compact 
        {
            model = "GTO_Compact"; 
            camoType = "oga_od";
           
        };

        class VSM_ProjectHonor_Backpack_Compact 
        {
            model = "GTO_Compact"; 
            camoType = "projecthonor";
           
        };

        // ---------- GTO_Kitbag ---------- //

        class Alpine_Backpack_kitbag 
        {
            model = "GTO_Kitbag"; 
            camoType = "alpine";
           
        };

        class VSM_AOR1_Backpack_Kitbag 
        {
            model = "GTO_Kitbag"; 
            camoType = "aor1";
           
        };

        class AOR2_Backpack_kitbag 
        {
            model = "GTO_Kitbag"; 
            camoType = "aor2";
           
        };

        class DTS_Backpack_kitbag 
        {
            model = "GTO_Kitbag"; 
            camoType = "dts";
           
        };

        class VSM_M81_Backpack_Kitbag 
        {
            model = "GTO_Kitbag"; 
            camoType = "m81";
           
        };

        class VSM_Multicam_Backpack_Kitbag 
        {
            model = "GTO_Kitbag"; 
            camoType = "multicam";
           
        };

        class Arid_Backpack_kitbag 
        {
            model = "GTO_Kitbag"; 
            camoType = "multicam_arid";
           
        };

        class Black_Backpack_kitbag 
        {
            model = "GTO_Kitbag"; 
            camoType = "multicam_black";
           
        };

        class VSM_MulticamTropic_Backpack_Kitbag 
        {
            model = "GTO_Kitbag"; 
            camoType = "multicam_tropic";
           
        };

        class VSM_OCP_Backpack_Kitbag 
        {
            model = "GTO_Kitbag"; 
            camoType = "ocp";
           
        };

        class VSM_OGA_Backpack_Kitbag 
        {
            model = "GTO_Kitbag"; 
            camoType = "oga";
           
        };

        class VSM_OGA_OD_Backpack_Kitbag 
        {
            model = "GTO_Kitbag"; 
            camoType = "oga_od";
           
        };

        class VSM_ProjectHonor_Backpack_Kitbag 
        {
            model = "GTO_Kitbag"; 
            camoType = "projecthonor";
           
        };

        // ---------- GTO_Carryall ---------- //

        class Alpine_Carryall 
        {
            model = "GTO_Carryall"; 
            camoType = "alpine";
           
        };

        class VSM_AOR1_carryall 
        {
            model = "GTO_Carryall"; 
            camoType = "aor1";
           
        };

        class AOR2_Carryall 
        {
            model = "GTO_Carryall"; 
            camoType = "aor2";
           
        };

        class DTS_Carryall 
        {
            model = "GTO_Carryall"; 
            camoType = "dts";
           
        };

        class VSM_M81_carryall 
        {
            model = "GTO_Carryall"; 
            camoType = "m81";
           
        };

        class VSM_Multicam_carryall 
        {
            model = "GTO_Carryall"; 
            camoType = "multicam";
           
        };

        class Arid_Carryall 
        {
            model = "GTO_Carryall"; 
            camoType = "multicam_arid";
           
        };

        class Black_Carryall 
        {
            model = "GTO_Carryall"; 
            camoType = "multicam_black";
           
        };

        class VSM_MulticamTropic_carryall 
        {
            model = "GTO_Carryall"; 
            camoType = "multicam_tropic";
           
        };

        class VSM_OCP_carryall 
        {
            model = "GTO_Carryall"; 
            camoType = "ocp";
           
        };

        class VSM_OGA_carryall 
        {
            model = "GTO_Carryall"; 
            camoType = "oga";
           
        };

        class VSM_OGA_OD_carryall 
        {
            model = "GTO_Carryall"; 
            camoType = "oga_od";
           
        };

        class VSM_ProjectHonor_carryall 
        {
            model = "GTO_Carryall"; 
            camoType = "projecthonor";
           
        };
	};



    class CfgWeapons
    {
        // ---------- Battle Dress U. ---------- //

        class VSM_AOR1_BDU_Camo
        {
            model = "GTO_Uniform_BDU";
            camoType = "aor1";
        };

        class DTS_BDU_Camo
        {
            model = "GTO_Uniform_BDU";
            camoType = "dts";
        };

        class VSM_M81_BDU_Camo
        {
            model = "GTO_Uniform_BDU";
            camoType = "m81";
        };

        class VSM_Multicam_BDU_Camo
        {
            model = "GTO_Uniform_BDU";
            camoType = "multicam";
        };

        class VSM_MulticamTropic_BDU_Camo
        {
            model = "GTO_Uniform_BDU";
            camoType = "multicam_tropic";
        };

        class VSM_OCP_BDU_Camo
        {
            model = "GTO_Uniform_BDU";
            camoType = "ocp";
        };

        class VSM_ProjectHonor_BDU_Camo
        {
            model = "GTO_Uniform_BDU";
            camoType = "projecthonor";
        };

        // ---------- Crey ---------- //

        class Alpine_Crye_Camo
        {
            model = "GTO_Uniform_CG3";
            camoType = "alpine";
            
            rolledSleeves = "rolledSleevesFalse";
        };

        class Alpine_Crye_SS_Camo
        {
            model = "GTO_Uniform_CG3";
            camoType = "alpine";
            
            rolledSleeves = "rolledSleevesTrue";
        };

        class VSM_AOR1_Crye_Camo
        {
            model = "GTO_Uniform_CG3";
            camoType = "aor1";
            
            rolledSleeves = "rolledSleevesFalse";
        };

        class VSM_AOR1_Crye_SS_Camo
        {
            model = "GTO_Uniform_CG3";
            camoType = "aor1";
            
            rolledSleeves = "rolledSleevesTrue";
        };

        class AOR_2_Crye_Camo
        {
            model = "GTO_Uniform_CG3";
            camoType = "aor2";
            
            rolledSleeves = "rolledSleevesFalse";
        };

        class AOR_2_CryeSS_Camo
        {
            model = "GTO_Uniform_CG3";
            camoType = "aor2";
            
            rolledSleeves = "rolledSleevesTrue";
        };

        class VSM_M81_Crye_Camo
        {
            model = "GTO_Uniform_CG3";
            camoType = "m81";
            
            rolledSleeves = "rolledSleevesFalse";
        };

        class VSM_M81_Crye_SS_Camo
        {
            model = "GTO_Uniform_CG3";
            camoType = "m81";
            
            rolledSleeves = "rolledSleevesTrue";
        };

        class VSM_Multicam_Crye_Camo
        {
            model = "GTO_Uniform_CG3";
            camoType = "multicam";
            
            rolledSleeves = "rolledSleevesFalse";
        };

        class VSM_Multicam_Crye_SS_Camo
        {
            model = "GTO_Uniform_CG3";
            camoType = "multicam";
            
            rolledSleeves = "rolledSleevesTrue";
        };

        class black_Crye_Camo
        {
            model = "GTO_Uniform_CG3";
            camoType = "multicam_black";
            
            rolledSleeves = "rolledSleevesFalse";
        };

        class Black_Crye_SS_Camo
        {
            model = "GTO_Uniform_CG3";
            camoType = "multicam_black";
            
            rolledSleeves = "rolledSleevesTrue";
        };

        class VSM_MulticamTropic_Crye_Camo
        {
            model = "GTO_Uniform_CG3";
            camoType = "multicam_tropic";
            
            rolledSleeves = "rolledSleevesFalse";
        };

        class VSM_MulticamTropic_Crye_SS_Camo
        {
            model = "GTO_Uniform_CG3";
            camoType = "multicam_tropic";
            
            rolledSleeves = "rolledSleevesTrue";
        };

        class VSM_OCP_Crye_Camo
        {
            model = "GTO_Uniform_CG3";
            camoType = "ocp";
            
            rolledSleeves = "rolledSleevesFalse";
        };

        class VSM_OCP_Crye_SS_Camo
        {
            model = "GTO_Uniform_CG3";
            camoType = "ocp";
            
            rolledSleeves = "rolledSleevesTrue";
        };

        class VSM_OGA_Crye_Camo
        {
            model = "GTO_Uniform_CG3";
            camoType = "oga";
            
            rolledSleeves = "rolledSleevesFalse";
        };

        class VSM_OGA_Crye_SS_Camo
        {
            model = "GTO_Uniform_CG3";
            camoType = "oga";
            
            rolledSleeves = "rolledSleevesTrue";
        };

        class VSM_OGA_Crye_grey_Camo
        {
            model = "GTO_Uniform_CG3";
            camoType = "oga_grey";
            
            rolledSleeves = "rolledSleevesFalse";
        };

        class VSM_OGA_Crye_SS_grey_Camo
        {
            model = "GTO_Uniform_CG3";
            camoType = "oga_grey";
            
            rolledSleeves = "rolledSleevesTrue";
        };

        class VSM_OGA_Crye_od_Camo
        {
            model = "GTO_Uniform_CG3";
            camoType = "oga_od";
            
            rolledSleeves = "rolledSleevesFalse";
        };

        class VSM_OGA_Crye_SS_od_Camo
        {
            model = "GTO_Uniform_CG3";
            camoType = "oga_od";
            
            rolledSleeves = "rolledSleevesTrue";
        };

        class VSM_ProjectHonor_Crye_Camo
        {
            model = "GTO_Uniform_CG3";
            camoType = "projecthonor";
            
            rolledSleeves = "rolledSleevesFalse";
        };

        class VSM_ProjectHonor_Crye_SS_Camo
        {
            model = "GTO_Uniform_CG3";
            camoType = "projecthonor";
            
            rolledSleeves = "rolledSleevesTrue";
        };

        class VSM_Scorpion_Crye_Camo
        {
            model = "GTO_Uniform_CG3";
            camoType = "scorpion";
            
            rolledSleeves = "rolledSleevesFalse";
        };

        class VSM_Scorpion_Crye_SS_Camo
        {
            model = "GTO_Uniform_CG3";
            camoType = "scorpion";
            
            rolledSleeves = "rolledSleevesTrue";
        };

        class Arid_Crye_Camo
        {
            model = "GTO_Uniform_CG3";
            camoType = "arid";
            
            rolledSleeves = "rolledSleevesFalse";
        };

        class Arid_Crye_SS_Camo
        {
            model = "GTO_Uniform_CG3";
            camoType = "arid";
            
            rolledSleeves = "rolledSleevesTrue";
        };

        class DTS_Crye_Camo
        {
            model = "GTO_Uniform_CG3";
            camoType = "dts";
            
            rolledSleeves = "rolledSleevesFalse";
        };

        class DTS_Crye_SS_Camo
        {
            model = "GTO_Uniform_CG3";
            camoType = "dts";
            
            rolledSleeves = "rolledSleevesTrue";
        };

        // ---------- Massif Combat U. ---------- //

        class Alpine_Massif_Camo
        {
            model = "GTO_Uniform_MCU";
            camoType = "alpine";

            rolledSleeves = "rolledSleevesFalse";
        };

        class Alpine_Massif_Camo_SS
        {
            model = "GTO_Uniform_MCU";
            camoType = "alpine";

            rolledSleeves = "rolledSleevesTrue";
        };

        class VSM_AOR1_Camo
        {
            model = "GTO_Uniform_MCU";
            camoType = "aor1";

            rolledSleeves = "rolledSleevesFalse";
        };

        class VSM_AOR1_Camo_SS
        {
            model = "GTO_Uniform_MCU";
            camoType = "aor1";

            rolledSleeves = "rolledSleevesTrue";
        };

        class AOR2_camo
        {
            model = "GTO_Uniform_MCU";
            camoType = "aor2";

            rolledSleeves = "rolledSleevesFalse";
        };

        class AOR2_SS_camo
        {
            model = "GTO_Uniform_MCU";
            camoType = "aor2";

            rolledSleeves = "rolledSleevesTrue";
        };

        class VSM_M81_Camo
        {
            model = "GTO_Uniform_MCU";
            camoType = "m81";

            rolledSleeves = "rolledSleevesFalse";
        };

        class VSM_M81_Camo_SS
        {
            model = "GTO_Uniform_MCU";
            camoType = "m81";

            rolledSleeves = "rolledSleevesTrue";
        };

        class VSM_Multicam_Camo
        {
            model = "GTO_Uniform_MCU";
            camoType = "multicam";

            rolledSleeves = "rolledSleevesFalse";
        };

        class VSM_Multicam_Camo_SS
        {
            model = "GTO_Uniform_MCU";
            camoType = "multicam";

            rolledSleeves = "rolledSleevesTrue";
        };

        class VSM_MulticamTropic_Camo
        {
            model = "GTO_Uniform_MCU";
            camoType = "multicam_tropic";

            rolledSleeves = "rolledSleevesFalse";
        };

        class VSM_MulticamTropic_Camo_SS
        {
            model = "GTO_Uniform_MCU";
            camoType = "multicam_tropic";

            rolledSleeves = "rolledSleevesTrue";
        };

        class VSM_OCP_Camo
        {
            model = "GTO_Uniform_MCU";
            camoType = "ocp";

            rolledSleeves = "rolledSleevesFalse";
        };

        class VSM_OCP_Camo_SS
        {
            model = "GTO_Uniform_MCU";
            camoType = "ocp";

            rolledSleeves = "rolledSleevesTrue";
        };

        class VSM_OGA_Camo
        {
            model = "GTO_Uniform_MCU";
            camoType = "oga";

            rolledSleeves = "rolledSleevesFalse";
        };

        class VSM_OGA_Camo_SS
        {
            model = "GTO_Uniform_MCU";
            camoType = "oga";

            rolledSleeves = "rolledSleevesTrue";
        };

        class VSM_OGA_od_Camo
        {
            model = "GTO_Uniform_MCU";
            camoType = "oga_od";

            rolledSleeves = "rolledSleevesFalse";
        };

        class VSM_OGA_od_Camo_SS
        {
            model = "GTO_Uniform_MCU";
            camoType = "oga_od";

            rolledSleeves = "rolledSleevesTrue";
        };

        class VSM_ProjectHonor_Camo
        {
            model = "GTO_Uniform_MCU";
            camoType = "projecthonor";

            rolledSleeves = "rolledSleevesFalse";
        };

        class VSM_ProjectHonor_Camo_SS
        {
            model = "GTO_Uniform_MCU";
            camoType = "projecthonor";

            rolledSleeves = "rolledSleevesTrue";
        };

        class DTS_Massif_Camo
        {
            model = "GTO_Uniform_MCU";
            camoType = "dts";

            rolledSleeves = "rolledSleevesFalse";
        };

        class DTS_Massif_SS_Camo
        {
            model = "GTO_Uniform_MCU";
            camoType = "dts";

            rolledSleeves = "rolledSleevesTrue";
        };

        class U_B_T_Soldier_F
        {
            model = "GTO_Uniform_MCU";
            camoType = "apex";
            
            rolledSleeves = "rolledSleevesFalse";
        };

        class U_B_T_Soldier_SL_F
        {
            model = "GTO_Uniform_MCU";
            camoType = "apex";
            
            rolledSleeves = "rolledSleevesTrue";
        };

        // ---------- Wetsuit ---------- //

        class U_B_Wetsuit
        {
            model = "GTO_Uniform_Wetsuit";
            wetsuit = "wetsuitTrue";
            
            //rolledSleeves = "rolledSleevesFalse";
        };

        class Black_Black_Camo
        {
            model = "GTO_Uniform_Wetsuit";
            wetsuit = "wetsuitFalse";
            
            //rolledSleeves = "rolledSleevesFalse";
        };

        /*class Black_Black_SS_Camo
        {
            model = "GTO_Uniform_Wetsuit";
            wetsuit = "wetsuitFalse";
            
            rolledSleeves = "rolledSleevesTrue";
        }; */

        // ---------- Rebreather ---------- //

        class V_RebreatherB
        {
            model = "GTO_Vest_Rebreather";
            rebreather = "rebreatherTrue";
        };

        class V_Pocketed_black_F
        {
            model = "GTO_Vest_Rebreather";
            rebreather = "rebreatherFalse";
        };

        // ---------- Cap ---------- //

        class Alpine_Cap
        {
            model = "GTO_MiliCap";
            camoType = "alpine";
        };

        class VSM_AOR1_Cap
        {
            model = "GTO_MiliCap";
            camoType = "aor1";
        };

        class AOR2_Cap
        {
            model = "GTO_MiliCap";
            camoType = "aor2";
        };

        class Arid_Cap
        {
            model = "GTO_MiliCap";
            camoType = "arid";
        };

        class DTS_Cap
        {
            model = "GTO_MiliCap";
            camoType = "dts";
        };

        class VSM_M81_Cap
        {
            model = "GTO_MiliCap";
            camoType = "m81";
        };

        class VSM_Multicam_Cap
        {
            model = "GTO_MiliCap";
            camoType = "multicam";
        };

        class VSM_MulticamTropic_Cap
        {
            model = "GTO_MiliCap";
            camoType = "multicam_tropic";
        };

        class VSM_OCP_Cap
        {
            model = "GTO_MiliCap";
            camoType = "ocp";
        };

        class VSM_ProjectHonor_Cap
        {
            model = "GTO_MiliCap";
            camoType = "projecthonor";
        };

        // ---------- Mich 2000 v1 ---------- //

/*         class Alpine_Cap
        {
            model = "GTO_Mich2000";
            camoType = "alpine";
            variant = "v1";
        }; */

        class VSM_Mich2000_AOR1
        {
            model = "GTO_Mich2000";
            camoType = "aor1";
            variant = "v1";
        };

/*         class AOR2_Cap
        {
            model = "GTO_Mich2000";
            camoType = "aor2";
            variant = "v1";
        }; */

/*         class Arid_Cap
        {
            model = "GTO_Mich2000";
            camoType = "arid";
            variant = "v1";
        }; */

/*         class DTS_Cap
        {
            model = "GTO_Mich2000";
            camoType = "dts";
            variant = "v1";
        }; */

        class VSM_Mich2000_M81
        {
            model = "GTO_Mich2000";
            camoType = "m81";
            variant = "v1";
        };

        class VSM_Mich2000_Multicam
        {
            model = "GTO_Mich2000";
            camoType = "multicam";
            variant = "v1";
        };

        class VSM_Mich2000_MulticamTropic
        {
            model = "GTO_Mich2000";
            camoType = "multicam_tropic";
            variant = "v1";
        };

        class VSM_Mich2000_ocp
        {
            model = "GTO_Mich2000";
            camoType = "ocp";
            variant = "v1";
        };

        class VSM_Mich2000_ProjectHonor
        {
            model = "GTO_Mich2000";
            camoType = "projecthonor";
            variant = "v1";
        };

        class VSM_Mich2000_OGA
        {
            model = "GTO_Mich2000";
            camoType = "oga";
            variant = "v1";
        };

        class VSM_Mich2000_OGA_OD
        {
            model = "GTO_Mich2000";
            camoType = "oga_od";
            variant = "v1";
        };

        class VSM_Mich2000_CamoSprayOD
        {
            model = "GTO_Mich2000";
            camoType = "oga_od_spray";
            variant = "v1";
        };

        class VSM_Mich2000_CamoSprayTAN
        {
            model = "GTO_Mich2000";
            camoType = "tan";
            variant = "v1";
        };

        // ---------- Mich 2000 v2 ---------- //

        /*         class Alpine_Cap
        {
            model = "GTO_Mich2000";
            camoType = "alpine";
            variant = "v2";
        }; */

        class VSM_Mich2000_2_aor1
        {
            model = "GTO_Mich2000";
            camoType = "aor1";
            variant = "v2";
        };

/*         class AOR2_Cap
        {
            model = "GTO_Mich2000";
            camoType = "aor2";
            variant = "v2";
        }; */

/*         class Arid_Cap
        {
            model = "GTO_Mich2000";
            camoType = "arid";
            variant = "v2";
        }; */

/*         class DTS_Cap
        {
            model = "GTO_Mich2000";
            camoType = "dts";
            variant = "v2";
        }; */

        class VSM_Mich2000_2_M81
        {
            model = "GTO_Mich2000";
            camoType = "m81";
            variant = "v2";
        };

        class VSM_Mich2000_2_Multicam
        {
            model = "GTO_Mich2000";
            camoType = "multicam";
            variant = "v2";
        };

        class VSM_Mich2000_2_MulticamTropic
        {
            model = "GTO_Mich2000";
            camoType = "multicam_tropic";
            variant = "v2";
        };

        class VSM_Mich2000_2_OCP
        {
            model = "GTO_Mich2000";
            camoType = "ocp";
            variant = "v2";
        };

        class VSM_Mich2000_2_ProjectHonor
        {
            model = "GTO_Mich2000";
            camoType = "projecthonor";
            variant = "v2";
        };

        class VSM_Mich2000_2_OGA
        {
            model = "GTO_Mich2000";
            camoType = "oga";
            variant = "v2";
        };

        class VSM_Mich2000_2_OGA_OD
        {
            model = "GTO_Mich2000";
            camoType = "oga_od";
            variant = "v2";
        };

        class VSM_Mich2000_2_CamoSprayOD
        {
            model = "GTO_Mich2000";
            camoType = "oga_od_spray";
            variant = "v2";
        };

        class VSM_Mich2000_2_CamoSprayTAN
        {
            model = "GTO_Mich2000";
            camoType = "tan";
            variant = "v2";
        };

        // ---------- Opscore ---------- //

        class Alpine_opscore
        {
            model = "GTO_Opscore";
            camoType = "alpine";
            variant = "v1";
        };

        class VSM_OPS_aor1
        {
            model = "GTO_Opscore";
            camoType = "aor1";
            variant = "v1";
        };

        class AOR2_opscore
        {
            model = "GTO_Opscore";
            camoType = "aor2";
            variant = "v1";
        };

        class ARD_opscore
        {
            model = "GTO_Opscore";
            camoType = "arid";
            variant = "v1";
        };

        class VSM_Black_OPS
        {
            model = "GTO_Opscore";
            camoType = "black";
            variant = "v1";
        };

        class VSM_M81_OPS
        {
            model = "GTO_Opscore";
            camoType = "m81";
            variant = "v1";
        };

        class VSM_OPS_multicam
        {
            model = "GTO_Opscore";
            camoType = "multicam";
            variant = "v1";
        };

        class VSM_MulticamTropic_OPS
        {
            model = "GTO_Opscore";
            camoType = "multicam_tropic";
            variant = "v1";
        };

        class BLK2_opscore
        {
            model = "GTO_Opscore";
            camoType = "multicam_black";
            variant = "v1";
        };

        class VSM_OPS_ocp
        {
            model = "GTO_Opscore";
            camoType = "ocp";
            variant = "v1";
        };

        class VSM_oga_OPS
        {
            model = "GTO_Opscore";
            camoType = "oga";
            variant = "v1";
        };

        class VSM_OPS
        {
            model = "GTO_Opscore";
            camoType = "oga_grey";
            variant = "v1";
        };

        class VSM_OGA_OD_OPS
        {
            model = "GTO_Opscore";
            camoType = "oga_od";
            variant = "v1";
        };

        class VSM_OD_spray_OPS
        {
            model = "GTO_Opscore";
            camoType = "oga_od_spray";
            variant = "v1";
        };

        class VSM_ProjectHonor_OPS
        {
            model = "GTO_Opscore";
            camoType = "projecthonor";
            variant = "v1";
        };

        class White_opscore
        {
            model = "GTO_Opscore";
            camoType = "white";
            variant = "v1";
        };

        class VSM_Tan_spray_OPS
        {
            model = "GTO_Opscore";
            camoType = "tan";
            variant = "v1";
        };

        // ---------- Opscore v2 ---------- //

        class Alpine_opscore_2
        {
            model = "GTO_Opscore";
            camoType = "alpine";
            variant = "v2";
        };

        class VSM_OPS_2_AOR1
        {
            model = "GTO_Opscore";
            camoType = "aor1";
            variant = "v2";
        };

        class AOR2_opscore_2
        {
            model = "GTO_Opscore";
            camoType = "aor2";
            variant = "v2";
        };

        class ARD_opscore_2
        {
            model = "GTO_Opscore";
            camoType = "arid";
            variant = "v2";
        };

        class VSM_Black_OPS_2
        {
            model = "GTO_Opscore";
            camoType = "black";
            variant = "v2";
        };

        class VSM_M81_OPS_2
        {
            model = "GTO_Opscore";
            camoType = "m81";
            variant = "v2";
        };

        class BLK_opscore_2
        {
            model = "GTO_Opscore";
            camoType = "multicam_black";
            variant = "v2";
        };

        class VSM_OPS_2_multicam
        {
            model = "GTO_Opscore";
            camoType = "multicam";
            variant = "v2";
        };

        class VSM_MulticamTropic_OPS_2
        {
            model = "GTO_Opscore";
            camoType = "multicam_tropic";
            variant = "v2";
        };

        class VSM_OPS_2_ocp
        {
            model = "GTO_Opscore";
            camoType = "ocp";
            variant = "v2";
        };

        class VSM_OD_Spray_OPS_2
        {
            model = "GTO_Opscore";
            camoType = "oga_od_spray";
            variant = "v2";
        };

        class VSM_OGA_OD_OPS_2
        {
            model = "GTO_Opscore";
            camoType = "oga_od";
            variant = "v2";
        };

        class VSM_oga_OPS_2
        {
            model = "GTO_Opscore";
            camoType = "oga";
            variant = "v2";
        };

        class VSM_ProjectHonor_OPS_2
        {
            model = "GTO_Opscore";
            camoType = "projecthonor";
            variant = "v2";
        };

        class White_opscore_2
        {
            model = "GTO_Opscore";
            camoType = "white";
            variant = "v2";
        };

        class VSM_OPS_2
        {
            model = "GTO_Opscore";
            camoType = "oga_grey";
            variant = "v2";
        };

        class VSM_Tan_spray_OPS_2
        {
            model = "GTO_Opscore";
            camoType = "tan";
            variant = "v2";
        };

        // ---------- HighCut v1 ---------- //

        class VSM_fasthelmet_alpinecover
        {
            model = "GTO_HighCut";
            camoType = "alpine";
            variant = "v1";
        };

        class VSM_fasthelmet_coveraor1
        {
            model = "GTO_HighCut";
            camoType = "aor1";
            variant = "v1";
        };
        
        class VSM_fasthelmet_black
        {
            model = "GTO_HighCut";
            camoType = "black";
            variant = "v1";
        };

        class VSM_fast_helmet_covermcblack
        {
            model = "GTO_HighCut";
            camoType = "multicam_black";
            variant = "v1";
        };

        class VSM_fasthelmet_covermulticam
        {
            model = "GTO_HighCut";
            camoType = "multicam";
            variant = "v1";
        };

        class VSM_fasthelmet_OD
        {
            model = "GTO_HighCut";
            camoType = "oga_od";
            variant = "v1";
        };

        class VSM_fast_helmet_covertropic
        {
            model = "GTO_HighCut";
            camoType = "multicam_tropic";
            variant = "v1";
        };

        class VSM_fasthelmet_white
        {
            model = "GTO_HighCut";
            camoType = "white";
            variant = "v1";
        };

        class VSM_fasthelmet_tan
        {
            model = "GTO_HighCut";
            camoType = "tan";
            variant = "v1";
        };

        // ---------- HighCut v2 ---------- //

        class VSM_highcutslick_black
        {
            model = "GTO_HighCut";
            camoType = "black";
            variant = "v2";
        };

        class VSM_highcutslick_OD
        {
            model = "GTO_HighCut";
            camoType = "oga_od";
            variant = "v2";
        };

        class VSM_highcutslick_white
        {
            model = "GTO_HighCut";
            camoType = "white";
            variant = "v2";
        };

        class VSM_highcutslick_tan
        {
            model = "GTO_HighCut";
            camoType = "tan";
            variant = "v2";
        };

        // ---------- Modular Helmet ---------- //

        class Alpine_Helmet_IA
        {
            model = "GTO_ModularHelmet";
            camoType = "alpine";
        };

        class AOR2_Helmet_IA
        {
            model = "GTO_ModularHelmet";
            camoType = "aor2";
        };

        class Arid_Helmet_IA
        {
            model = "GTO_ModularHelmet";
            camoType = "arid";
        };

        class DTS_Helmet_IA
        {
            model = "GTO_ModularHelmet";
            camoType = "dts";
        };

        // ---------- Beanie ---------- //

        class VSM_Beanie_Black
        {
            model = "GTO_Beanie";
            camoType = "black";
        };

        class VSM_Beanie_OD
        {
            model = "GTO_Beanie";
            camoType = "oga_od";
        };

        class VSM_Beanie_tan
        {
            model = "GTO_Beanie";
            camoType = "tan";
        };

        // ---------- Boonie ---------- //

        class VSM_AOR1_Boonie
        {
            model = "GTO_Boonie";
            camoType = "aor1";
        };

        class AOR2_Boonie
        {
            model = "GTO_Boonie";
            camoType = "aor2";
        };

        class Arid_Boonie
        {
            model = "GTO_Boonie";
            camoType = "arid";
        };

        class DTS_Boonie
        {
            model = "GTO_Boonie";
            camoType = "dts";
        };

        class VSM_M81_Boonie
        {
            model = "GTO_Boonie";
            camoType = "m81";
        };

        class VSM_Multicam_Boonie
        {
            model = "GTO_Boonie";
            camoType = "multicam";
        };

        class VSM_MulticamTropic_Boonie
        {
            model = "GTO_Boonie";
            camoType = "multicam_tropic";
        };

        class VSM_OCP_Boonie
        {
            model = "GTO_Boonie";
            camoType = "ocp";
        };

        class VSM_ProjectHonor_Boonie
        {
            model = "GTO_Boonie";
            camoType = "projecthonor";
        };

        // ---------- Weapon ---------- //

        WEAPON("GTO_rhs_mk18",rhs_weap_mk18_bk,rhs_weap_mk18_d,rhs_weap_mk18_wd);

        WEAPON("GTO_rhs_m4a1_blockII",rhs_weap_m4a1_blockII_bk,rhs_weap_m4a1_blockII_d,rhs_weap_m4a1_blockII_wd);

        // ---------- Weapon HK ---------- //

        WEAPONV("GTO_HK","a5",arifle_SPAR_01_blk_F,arifle_SPAR_01_snd_F,arifle_SPAR_01_khk_F);

        WEAPONV("GTO_HK","d145",rhs_weap_hk416d145,rhs_weap_hk416d145_d,rhs_weap_hk416d145_wd);

        class rhs_weap_hk416d10
        {
            model = "GTO_HK";
            weaponCamo = "black";
            version = "d10";
        };

        // ---------- Pistole Pistol Heavy ---------- //

        class hgun_Pistol_heavy_01_F
        {
            model = "GTO_pistol_heavy";
            weaponCamo = "desert";
        };

        class hgun_Pistol_heavy_01_green_F
        {
            model = "GTO_pistol_heavy";
            weaponCamo = "woodland";
        };

        // ---------- Pistole Heavy Gun ---------- //

        class hgun_P07_blk_F
        {
            model = "GTO_pistol_P07";
            weaponCamo = "black";
        };

        class hgun_P07_khk_F
        {
            model = "GTO_pistol_P07";
            weaponCamo = "woodland";
        };

        class hgun_P07_F
        {
            model = "GTO_pistol_P07";
            weaponCamo = "desert";
        };

        // ---------- Weapon M249 ---------- //
        
        class rhs_weap_m249_light_L
        {
            model = "GTO_m249";
            
            length = "long";
            version = "lcba";
        };

        class rhs_weap_m249_pip_L_para
        {
            model = "GTO_m249";
            
            length = "long";
            version = "para";
        };

        class rhs_weap_m249_pip_L
        {
            model = "GTO_m249";
            
            length = "long";
            version = "savit";
        };

        class rhs_weap_m249_pip_ris
        {
            model = "GTO_m249";
            
            length = "long";
            version = "ris";
        };

        class rhs_weap_m249_pip
        {
            model = "GTO_m249";            
            length = "long";
            version = "basic";
        };

        //

        class rhs_weap_m249_light_S
        {
            model = "GTO_m249";
            
            length = "short";
            version = "lcba";
        };

        class rhs_weap_m249_pip_S_para
        {
            model = "GTO_m249";
            
            length = "short";
            version = "para";
        };

        class rhs_weap_m249_pip_S
        {
            model = "GTO_m249";
            
            length = "short";
            version = "savit";
        };

        // ---------- Weapon LWMMG ---------- //

        WEAPON("GTO_lwmmg",MMG_02_black_F,MMG_02_sand_F,MMG_02_camo_F);

        // ---------- Weapon Stoner ---------- //

        class LMG_Mk200_black_F
        {
            model = "GTO_Stoner";            
            weaponCamo = "black";
        };

        class LMG_Mk200_F
        {
            model = "GTO_Stoner";
            weaponCamo = "desert";
        };

        // ---------- Weapon M240 ---------- //

        class rhs_weap_m240B
        {
            model = "GTO_rhs_m240";            
            version = "b";
        };

        class rhs_weap_m240G
        {
            model = "GTO_rhs_m240";            
            version = "g";
        };

        // ---------- Weapon MMG ---------- //

        class MMG_01_tan_F
        {
            model = "GTO_MMG";            
            weaponCamo = "tan";
        };

        class MMG_01_hex_F
        {
            model = "GTO_MMG";            
            weaponCamo = "hex";
        };

        // ---------- Vest VSM ---------- //


        /* class ##NAME##
        {
            model = "GTO_Vest_VSM";            
            camoType = ##CAMO##;
            version = ##VERSION##;
            role = ##ROLE##;
        }; */

        //VESTVSM(NAME, CAMO, VERSION, ROLE);

        // Alpine

        VESTVSM(dr_Alpinefacp_br, "alpine", "facp", "breacher");
        VESTVSM(dr_Alpinefacp_mg, "alpine", "facp", "gunner");
        VESTVSM(dr_Alpinefacp_op, "alpine", "facp", "operator");

        VESTVSM(CarrierRig_Breacher_Alpine, "alpine", "carrierRig", "breacher");
        VESTVSM(CarrierRig_Gunner_Alpine, "alpine", "carrierRig", "gunner");
        VESTVSM(CarrierRig_Operator_Alpine, "alpine", "carrierRig", "operator");

        VESTVSM(dr_Alpinelbt_br, "alpine", "lbt", "breacher");
        VESTVSM(dr_Alpinelbt_mg, "alpine", "lbt", "gunner");
        VESTVSM(dr_Alpinelbt_op, "alpine", "lbt", "operator");

        VESTVSM(dr_Alpinepar_br, "alpine", "par", "breacher");
        VESTVSM(dr_Alpinepar_mg, "alpine", "par", "gunner");
        VESTVSM(dr_Alpinepar_op, "alpine", "par", "operator");

        //MC

        VESTVSM(VSM_FAPC_Breacher_Multicam, "multicam", "facp", "breacher");
        VESTVSM(VSM_FAPC_MG_Multicam, "multicam", "facp", "gunner");
        VESTVSM(VSM_FAPC_Operator_Multicam, "multicam", "facp", "operator");

        VESTVSM(VSM_CarrierRig_Breacher_Multicam, "multicam", "carrierRig", "breacher");
        VESTVSM(VSM_CarrierRig_Gunner_Multicam, "multicam", "carrierRig", "gunner");
        VESTVSM(VSM_CarrierRig_Operator_Multicam, "multicam", "carrierRig", "operator");

        VESTVSM(VSM_LBT6094_breacher_Multicam, "multicam", "lbt", "breacher");
        VESTVSM(VSM_LBT6094_MG_Multicam, "multicam", "lbt", "gunner");
        VESTVSM(VSM_LBT6094_operator_Multicam, "multicam", "lbt", "operator");

        VESTVSM(VSM_RAV_Breacher_Multicam, "multicam", "par", "breacher");
        VESTVSM(VSM_RAV_MG_Multicam, "multicam", "par", "gunner");
        VESTVSM(VSM_RAV_operator_Multicam, "multicam", "par", "operator");

        //MC Tropic todo: ss

        VESTVSM(VSM_FAPC_Breacher_MulticamTropic, "multicam_tropic", "facp", "breacher");
        VESTVSM(VSM_FAPC_MG_MulticamTropic, "multicam_tropic", "facp", "gunner");
        VESTVSM(VSM_FAPC_Operator_MulticamTropic, "multicam_tropic", "facp", "operator");

        VESTVSM(VSM_CarrierRig_Breacher_multicamTropic, "multicam_tropic", "carrierRig", "breacher");
        VESTVSM(VSM_CarrierRig_Gunner_multicamTropic, "multicam_tropic", "carrierRig", "gunner");
        VESTVSM(VSM_CarrierRig_Operator_multicamTropic, "multicam_tropic", "carrierRig", "operator");

        VESTVSM(VSM_LBT6094_breacher_multicamTropic, "multicam_tropic", "lbt", "breacher");
        VESTVSM(VSM_LBT6094_MG_multicamTropic, "multicam_tropic", "lbt", "gunner");
        VESTVSM(VSM_LBT6094_operator_multicamTropic, "multicam_tropic", "lbt", "operator");

        VESTVSM(VSM_RAV_Breacher_MulticamTropic, "multicam_tropic", "par", "breacher");
        VESTVSM(VSM_RAV_MG_MulticamTropic, "multicam_tropic", "par", "gunner");
        VESTVSM(VSM_RAV_operator_MulticamTropic, "multicam_tropic", "par", "operator");

        //AOR1

        VESTVSM(VSM_FAPC_Breacher_AOR1, "aor1", "facp", "breacher");    
        VESTVSM(VSM_FAPC_MG_AOR1, "aor1", "facp", "gunner");
        VESTVSM(VSM_FAPC_Operator_AOR1, "aor1", "facp", "operator");

        VESTVSM(VSM_CarrierRig_Breacher_AOR1, "aor1", "carrierRig", "breacher");
        VESTVSM(VSM_CarrierRig_Gunner_AOR1, "aor1", "carrierRig", "gunner");
        VESTVSM(VSM_CarrierRig_Operator_AOR1, "aor1", "carrierRig", "operator");

        VESTVSM(VSM_LBT6094_breacher_AOR1, "aor1", "lbt", "breacher");
        VESTVSM(VSM_LBT6094_MG_AOR1, "aor1", "lbt", "gunner");
        VESTVSM(VSM_LBT6094_operator_AOR1, "aor1", "lbt", "operator");

        VESTVSM(VSM_RAV_Breacher_AOR1, "aor1", "par", "breacher");
        VESTVSM(VSM_RAV_MG_AOR1, "aor1", "par", "gunner");
        VESTVSM(VSM_RAV_operator_AOR1, "aor1", "par", "operator");

        //M81

        VESTVSM(VSM_FAPC_Breacher_M81, "m81", "facp", "breacher");    
        VESTVSM(VSM_FAPC_MG_M81, "m81", "facp", "gunner");
        VESTVSM(VSM_FAPC_Operator_M81, "m81", "facp", "operator");

        VESTVSM(VSM_CarrierRig_Breacher_M81, "m81", "carrierRig", "breacher");
        VESTVSM(VSM_CarrierRig_Gunner_M81, "m81", "carrierRig", "gunner");
        VESTVSM(VSM_CarrierRig_Operator_M81, "m81", "carrierRig", "operator");

        VESTVSM(VSM_LBT6094_breacher_M81, "m81", "lbt", "breacher");
        VESTVSM(VSM_LBT6094_MG_M81, "m81", "lbt", "gunner");
        VESTVSM(VSM_LBT6094_operator_M81, "m81", "lbt", "operator");

        VESTVSM(VSM_RAV_Breacher_M81, "m81", "par", "breacher");
        VESTVSM(VSM_RAV_MG_M81, "m81", "par", "gunner");
        VESTVSM(VSM_RAV_operator_M81, "m81", "par", "operator");

        //AOR2

        VESTVSM(dr_AOR2facp_br, "aor2", "facp", "breacher");    
        VESTVSM(dr_AOR2facp_mg, "aor2", "facp", "gunner");
        VESTVSM(dr_AOR2facp_op, "aor2", "facp", "operator");

        VESTVSM(CarrierRig_Breacher_AOR2, "aor2", "carrierRig", "breacher");
        VESTVSM(CarrierRig_Gunner_AOR2, "aor2", "carrierRig", "gunner");
        VESTVSM(CarrierRig_Operator_AOR2, "aor2", "carrierRig", "operator");

        VESTVSM(dr_AOR2lbt_br, "aor2", "lbt", "breacher");
        VESTVSM(dr_AOR2lbt_mg, "aor2", "lbt", "gunner");
        VESTVSM(dr_AOR2lbt_op, "aor2", "lbt", "operator");

        VESTVSM(dr_AOR2par_br, "aor2", "par", "breacher");
        VESTVSM(dr_AOR2par_mg, "aor2", "par", "gunner");
        VESTVSM(dr_AOR2par_op, "aor2", "par", "operator");
    };
};