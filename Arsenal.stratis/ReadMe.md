# Anleitung
Wie man dieses Packet erstellt.

Lösche in `fn_setArsenal.sqf` die folgenden Zeilen:

```
//private _type = getText (configOf _ammoBox >> "arsenalType");
//private _subType = getText (configOf _ammoBox >> "arsenalSubType");
```


Hinzufügen in `fn_setArsenal.sqf` die folgenden Zeilen:

```
private _type = "USA";

private _subType = "NONE";
```