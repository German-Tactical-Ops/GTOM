scriptName "fn_setPlayerRank";
/*
	Author: LucyferHW

	Description:
	Describe your function

	Parameter(s):
	#0 OBJECT - player

	Example: [player] call GTO_fnc_setPlayerRank;
*/

params ["_unit"];
 
switch ([getPlayerUID _unit] call KPR_fnc_getRankScore) do  
{  
 case 80: 	 {hint "set PRIVATE"; _unit setUnitRank "PRIVATE";};  
 case 320: 	 {hint "set PRIVATE"; _unit setUnitRank "PRIVATE";}; 
 case 720: 	 {hint "set PRIVATE"; _unit setUnitRank "PRIVATE";}; 
 case 1280:  {hint "set CORPORAL"; _unit setUnitRank "CORPORAL";}; 
 case 2000:  {hint "set CORPORAL"; _unit setUnitRank "CORPORAL";}; 
 case 2880:  {hint "set SERGEANT"; _unit setUnitRank "SERGEANT";}; 
 case 3920:  {hint "set SERGEANT"; _unit setUnitRank "SERGEANT";}; 
 case 5120:  {hint "set SERGEANT"; _unit setUnitRank "SERGEANT";}; 
 case 6480:  {hint "set SERGEANT"; _unit setUnitRank "SERGEANT";}; 
 case 8000:  {hint "set SERGEANT"; _unit setUnitRank "SERGEANT";}; 
 case 9680:  {hint "set SERGEANT"; _unit setUnitRank "SERGEANT";}; 
 case 11520: {hint "set SERGEANT"; _unit setUnitRank "SERGEANT";};  
 case 13520: {hint "set LIEUTENANT"; _unit setUnitRank "LIEUTENANT";}; 
 case 15680: {hint "set LIEUTENANT"; _unit setUnitRank "LIEUTENANT";}; 
 case 18000: {hint "set CAPTAIN"; _unit setUnitRank "CAPTAIN";}; 
 case 20480: {hint "set CAPTAIN"; _unit setUnitRank "CAPTAIN";};  
 case 23120: {hint "set MAJOR"; _unit setUnitRank "MAJOR";}; 
 case 25920: {hint "set MAJOR"; _unit setUnitRank "MAJOR";}; 
 case 28880: {hint "set COLONEL"; _unit setUnitRank "COLONEL";}; 
 default {systemChat "Error"};  
}; 
 
/*  PRIVATE CORPORAL SERGEANT LIEUTENANT CAPTAIN MAJOR COLONEL  */