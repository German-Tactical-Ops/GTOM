scriptName "fn_addBasicDiary";
/*
	Author: LucyferHW

	Description:
	Describe your function

	Parameter(s):
	#0 OBJECT - player

	Example: [] call GTO_fn_addBasicDiary;
*/
params ["_player"];

player createDiaryRecord ["Diary", ["Funkplan", "<img image='gto_mod\pictures\Funkfrequenzen.jpg' width='375'/><br/><br/><img image='gto_mod\pictures\funkTabelle.jpg' width='375' >"]];

player createDiaryRecord ["Diary", ["Ränge", "<img image='gto_mod\pictures\RaengePunkte.jpg' width='375'/>"]];