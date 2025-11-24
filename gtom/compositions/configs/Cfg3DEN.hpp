class Cfg3DEN
{
    class Compositions
    {
        class GTO_Army // one class per composition
        {
            path = "gtom\compositions\GTO_Army"; // pbo path to a folder containing header.sqe/composition.sqe files
            side = 1;                            // 0 opfor, 1 blufor, 2 indfor, 3 civ, 8 Empty/Props
            editorCategory = "Categorie_GTO";              // link to CfgEditorCategories
            editorSubcategory = "Categorie_GTO_Infantry";  // link to CfgEditorSubcategories
            displayName = "GTO Army (do not use)";
            icon = "\A3\ui_f\data\map\markers\nato\b_inf.paa"; // left side icon in groups list
            useSideColorOnIcon = 1;                            // 1 == icon is always colored in faction color
        };

        class GTO_Army_v2 // one class per composition
        {
            path = "gtom\compositions\GTO_Army_v2";             // pbo path to a folder containing header.sqe/composition.sqe files
            side = 1;                                           // 0 opfor, 1 blufor, 2 indfor, 3 civ, 8 Empty/Props
            editorCategory = "Categorie_GTO";                   // link to CfgEditorCategories
            editorSubcategory = "Categorie_GTO_Infantry";       // link to CfgEditorSubcategories
            displayName = "GTO Army v2";
            icon = "\A3\ui_f\data\map\markers\nato\b_inf.paa";  // left side icon in groups list
            useSideColorOnIcon = 1;                             // 1 == icon is always colored in faction color
        };

        class GTO_MainSystem // one class per composition
        {
            path = "gtom\compositions\MainSystem";  // pbo path to a folder containing header.sqe/composition.sqe files
            side = 8;                               // 0 opfor, 1 blufor, 2 indfor, 3 civ, 8 Empty/Props
            editorCategory = "Categorie_GTO";                 // link to CfgEditorCategories
            editorSubcategory = "Categorie_GTO_MissionMaker"; // link to CfgEditorSubcategories
            displayName = "Main System";
            // icon = "\A3\ui_f\data\map\markers\nato\b_inf.paa"; // left side icon in groups list
            useSideColorOnIcon = 1; // 1 == icon is always colored in faction color
        };

        class GTO_AutoMedicTent // one class per composition
        {
            path = "gtom\compositions\AutoMedicTent";  // pbo path to a folder containing header.sqe/composition.sqe files
            side = 8;                               // 0 opfor, 1 blufor, 2 indfor, 3 civ, 8 Empty/Props
            editorCategory = "Categorie_GTO";                 // link to CfgEditorCategories
            editorSubcategory = "Categorie_GTO_MissionMaker"; // link to CfgEditorSubcategories
            displayName = "Automatic Medic Tent";
            // icon = "\A3\ui_f\data\map\markers\nato\b_inf.paa"; // left side icon in groups list
            useSideColorOnIcon = 1; // 1 == icon is always colored in faction color
        };

        class GTO_Zeus // one class per composition
        {
            path = "gtom\compositions\Zeus";  // pbo path to a folder containing header.sqe/composition.sqe files
            side = 1;                               // 0 opfor, 1 blufor, 2 indfor, 3 civ, 8 Empty/Props
            editorCategory = "Categorie_GTO";                 // link to CfgEditorCategories
            editorSubcategory = "Categorie_GTO_MissionMaker"; // link to CfgEditorSubcategories
            displayName = "Zeus";
            // icon = "\A3\ui_f\data\map\markers\nato\b_inf.paa"; // left side icon in groups list
            useSideColorOnIcon = 1; // 1 == icon is always colored in faction color
        };

        /*class GTO_AirDrop // one class per composition
        {
            path = "gtom\compositions\AirDrop";     // pbo path to a folder containing header.sqe/composition.sqe files
            side = 8;                               // 0 opfor, 1 blufor, 2 indfor, 3 civ, 8 Empty/Props
            editorCategory = "Categorie_GTO";                 // link to CfgEditorCategories
            editorSubcategory = "Categorie_GTO_MissionMaker"; // link to CfgEditorSubcategories
            displayName = "AirDrop";
            // icon = "\A3\ui_f\data\map\markers\nato\b_inf.paa"; // left side icon in groups list
            useSideColorOnIcon = 1; // 1 == icon is always colored in faction color
        }; */
    };
};