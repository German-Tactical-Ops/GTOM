scriptName "fn_getModList";

copyToClipboard str ("true" configClasses (configFile >> "CfgPatches") apply {configName _x});