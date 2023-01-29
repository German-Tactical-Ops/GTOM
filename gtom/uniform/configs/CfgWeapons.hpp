class CfgWeapons {
    class U_Rangemaster;
    class UniformItem;

    class GTO_BaseUniform : U_Rangemaster
    {
        author = "LucyferHW";
        scope = 2;
        displayName = "GTO Base Uniform";
        hiddenSelectionsTextures[] = {"gtom\uniform\textures\GTO_Uniform\GTO_BaseUniform.paa"};

        class ItemInfo : UniformItem
        {
            // uniformModel = "-";
            uniformClass = GTO_Soldier_base;
            containerClass = Supply40;
            mass = 40;
        };
    };
};