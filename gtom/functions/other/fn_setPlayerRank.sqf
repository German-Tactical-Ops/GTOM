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
 case 80: 	 {systemChat "set PRIVATE"; _unit setUnitRank "PRIVATE";};  
 case 320: 	 {systemChat "set PRIVATE"; _unit setUnitRank "PRIVATE";}; 
 case 720: 	 {systemChat "set PRIVATE"; _unit setUnitRank "PRIVATE";}; 
 case 1280:  {systemChat "set CORPORAL"; _unit setUnitRank "CORPORAL";}; 
 case 2000:  {systemChat "set CORPORAL"; _unit setUnitRank "CORPORAL";}; 
 case 2880:  {systemChat "set SERGEANT"; _unit setUnitRank "SERGEANT";}; 
 case 3920:  {systemChat "set SERGEANT"; _unit setUnitRank "SERGEANT";}; 
 case 5120:  {systemChat "set SERGEANT"; _unit setUnitRank "SERGEANT";}; 
 case 6480:  {systemChat "set SERGEANT"; _unit setUnitRank "SERGEANT";}; 
 case 8000:  {systemChat "set SERGEANT"; _unit setUnitRank "SERGEANT";}; 
 case 9680:  {systemChat "set SERGEANT"; _unit setUnitRank "SERGEANT";}; 
 case 11520: {systemChat "set SERGEANT"; _unit setUnitRank "SERGEANT";};  
 case 13520: {systemChat "set LIEUTENANT"; _unit setUnitRank "LIEUTENANT";}; 
 case 15680: {systemChat "set LIEUTENANT"; _unit setUnitRank "LIEUTENANT";}; 
 case 18000: {systemChat "set CAPTAIN"; _unit setUnitRank "CAPTAIN";}; 
 case 20480: {systemChat "set CAPTAIN"; _unit setUnitRank "CAPTAIN";};  
 case 23120: {systemChat "set MAJOR"; _unit setUnitRank "MAJOR";}; 
 case 25920: {systemChat "set MAJOR"; _unit setUnitRank "MAJOR";}; 
 case 28880: {systemChat "set COLONEL"; _unit setUnitRank "COLONEL";}; 
 default {systemChat "Error"};  
}; 
 
/*  PRIVATE CORPORAL SERGEANT LIEUTENANT CAPTAIN MAJOR COLONEL  */