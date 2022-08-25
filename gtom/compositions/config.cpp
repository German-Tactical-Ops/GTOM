#include "\gtom\basicDefines_A3.hpp"
#include "\gtom\defines.hpp"
#include "\gtom\cfgPatches.hpp"

class CfgEditorCategories
{
    class GTO // CfgGroups NATO
    {
        displayName = "GTO";
    };
};

class CfgEditorSubcategories
{
    class GTO_Infantry // CfgGroups Armored
    {
        displayName = "GTO Infantry";
    };
};

class Cfg3DEN
{
    class Compositions
    {
        class GTO_Army // one class per composition
        {
            path = "gtom\compositions\GTO-Army"; // pbo path to a folder containing header.sqe/composition.sqe files
            side = 1;                            // 0 opfor, 1 blufor, 2 indfor, 3 civ, 8 Empty/Props
            editorCategory = "GTO";              // link to CfgEditorCategories
            editorSubcategory = "GTO_Infantry";  // link to CfgEditorSubcategories
            displayName = "GTO Army";
            icon = "\A3\ui_f\data\map\markers\nato\b_inf.paa"; // left side icon in groups list
            useSideColorOnIcon = 1;                            // 1 == icon is always colored in faction color
        };
    };
};