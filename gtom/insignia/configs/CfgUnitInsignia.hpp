#define INSIGNIA(CLASS,NAME,TEXTURE)\
class ##CLASS## \
{ \
    displayName = ##NAME##;\
    author = "LucyferHW";\
    material = "\A3\Ui_f\data\GUI\Cfg\UnitInsignia\default_insignia.rvmat";\
    texture = ##TEXTURE##;\
    textureVehicle = ##TEXTURE##;\
};\

class CfgUnitInsignia
{
    INSIGNIA(GTO_Rank_CPT, "CPT", "gtom\insignia\ranks\Insignia_8.paa");
    INSIGNIA(GTO_Rank_LT, "LT", "gtom\insignia\ranks\Insignia_7.paa");

    INSIGNIA(GTO_Rank_SSG, "SSG", "gtom\insignia\ranks\Insignia_6.paa");
    INSIGNIA(GTO_Rank_SGT, "SGT", "gtom\insignia\ranks\Insignia_5.paa");

    INSIGNIA(GTO_Rank_CPL, "CPL", "gtom\insignia\ranks\Insignia_4.paa");
    INSIGNIA(GTO_Rank_SPC, "SPC", "gtom\insignia\ranks\Insignia_3.paa");

    INSIGNIA(GTO_Rank_PFC, "PFC", "gtom\insignia\ranks\Insignia_2.paa");
    INSIGNIA(GTO_Rank_PV, "PV", "gtom\insignia\ranks\Insignia_1.paa");

    INSIGNIA(GTO_Rank_VG, "VG", "gtom\insignia\ranks\Insignia_10.paa");
    INSIGNIA(GTO_Rank_G, "G", "gtom\insignia\ranks\Insignia_9.paa");

    class GTO_Insignia
    {
        displayName = "GTO";
        author = "LucyferHW";
        material = "\A3\Ui_f\data\GUI\Cfg\UnitInsignia\default_insignia.rvmat";
        texture = "gtom\images\logo\gto_unit_logo.paa";
        textureVehicle = "gtom\images\logo\gto_unit_logo.paa";
    };

    class GTO_Insignia_Medic
    {
        displayName = "Medic";
        author = "w0llkopf";
        material = "\A3\Ui_f\data\GUI\Cfg\UnitInsignia\default_insignia.rvmat";
        texture = "gtom\wearables\icons\gto_medic_icon.paa";
        textureVehicle = "gtom\wearables\icons\gto_medic_icon.paa";
    };
};