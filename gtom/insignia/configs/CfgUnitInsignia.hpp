#define INSIGNIA(CLASS,NAME,TEXTURE)\
class ##CLASS## \
{ \
    displayName = ##NAME##;\
    author = "w0llkopf";\
    material = "\A3\Ui_f\data\GUI\Cfg\UnitInsignia\default_insignia.rvmat";\
    texture = ##TEXTURE##;\
    textureVehicle = ##TEXTURE##;\
};\

class CfgUnitInsignia
{
    INSIGNIA(GTO_Rank_CPT, "CPT", "gtom\insignia\ranks");
    INSIGNIA(GTO_Rank_CPT, "LT", "gtom\insignia\ranks");

    INSIGNIA(GTO_Rank_CPT, "SSG", "gtom\insignia\ranks");
    INSIGNIA(GTO_Rank_CPT, "SGT", "gtom\insignia\ranks");

    INSIGNIA(GTO_Rank_CPT, "CPL", "gtom\insignia\ranks");
    INSIGNIA(GTO_Rank_CPT, "SPC", "gtom\insignia\ranks");

    INSIGNIA(GTO_Rank_CPT, "PFC", "gtom\insignia\ranks");
    INSIGNIA(GTO_Rank_CPT, "PV", "gtom\insignia\ranks");

    INSIGNIA(GTO_Rank_CPT, "VG", "gtom\insignia\ranks");
    INSIGNIA(GTO_Rank_CPT, "G", "gtom\insignia\ranks");

    class GTO_Insignia
    {
        displayName = "GTO";
        author = "LucyferHW";
        material = "\A3\Ui_f\data\GUI\Cfg\UnitInsignia\default_insignia.rvmat";
        texture = "gtom\logo\gto_unit_logo.paa";
        textureVehicle = "gtom\logo\gto_unit_logo.paa";
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