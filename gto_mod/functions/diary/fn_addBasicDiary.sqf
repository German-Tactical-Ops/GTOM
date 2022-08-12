scriptName "fn_addBasicDiary";
/*
	Author: LucyferHW

	Description:
	Describe your function

	Parameter(s):
	#0 OBJECT - player
*/
params ["_player"];

player createDiaryRecord ["Diary", ["Funkplan", "<img image='pictures\Funkfrequenzen.jpg' width='375'/><br/><br/><img image='pictures\funkTabelle.jpg' width='375' >"]];