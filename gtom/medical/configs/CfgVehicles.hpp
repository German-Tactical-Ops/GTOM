class CfgVehicles
{
	class Man;
    class CAManBase : Man
    {
        class ACE_Actions
        {
            class ACE_MainActions
            {
                class GTO_Medikit_Heal
                {
                    displayName = "Use Medikit";
                    condition = "'GTO_Medikit' in (items player)";
                    //exceptions[] = {};
                    statement = "[_target, _player,'GTO_Medikit', false] call GTO_fnc_full_Heal";
                    //icon = "";
                };

                class GTO_FirstAidKit_Heal
                {
                    displayName = "Use FirstAidKit";
                    condition = "'GTO_FirstAidKit' in (items player) && [_target] call ace_medical_status_fnc_hasStableVitals";
                    //exceptions[] = {};
                    statement = "[_target, _player, 'GTO_FirstAidKit', false] call GTO_fnc_full_Heal";
                    //icon = "";
                };
            };
        };
    };
};

//todo: add [cursorObject] call ace_medical_status_fnc_hasStableVitals