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

// todo: make full Tutorial

if !(hasInterface) exitWith {};
waituntil {alive player};

player createDiarySubject ["gtotutorials","GTO Tutorials"];

player createDiaryRecord ["gtotutorials", ["Funkplan", "<img image='gtom\images\Funkfrequenzen.jpg' width='375'/><br/><br/><img image='gtom\images\funkTabelle.jpg' width='375' >"]];

player createDiaryRecord ["gtotutorials", ["Ränge", "<img image='gtom\images\RaengePunkte.jpg' width='375'/>"]];

player createDiaryRecord ["gtotutorials", ["SITREP & Kurzer SITREP", '
	<font color="#ffffff" size="20">Kurzer SITREP</font><br/>
	Der Kurzee SITREP (Situation Report) ist eine ausführlichere Variante, die den danach fragenden über das wichtigste aufklärt.
	Wenn nach einem kurzen SITREP gefragt wird, sollten in der Antwort folgende Punkte stecken:<br/>
	- Hat das fire-Team oder Squad Feindkontakt und wenn wo.<br/>
	- Wie viele sind Ausgefallen und/oder Verletzt<br/>
	- Wird die Munition Knapp, reicht sie noch aus oder ist sie voll<br/>
	- Was ist der letzte gegebene Befehl / Ziel / Auftrag der Einheit<br/>
	- Was wird gerade getan ("Wir bewegen uns auf die gegebene Position, müssen jedoch aus Gelände Gründen einen Umweg machen", "Können uns nicht weiterbewegen, werden vom Feind niedergehalten")<br/><br/><br/>

	<font color="#ffffff" size="20">SITREP</font><br/>
	Der SITREP (Situation Report) ist eine sehr ausführliche Variante in der fast alle möglichen Informationen übergeben werden sollen:<br/>
	- Wo befindet sich das Squad (Optional: Koordinate)<br/>
	- Hat das Squad Feindkontakt, wo befindet sich dieser (Optional: Koordinate)<br/>
	- Aus wie vielen Soldaten besteht das Squad.<br/>
	- Wie viele Ausfälle oder Verletzten gibt es.<br/>
	- Wird die Munition Knapp, reicht sie noch aus oder ist sie voll<br/>
	- Was ist der letzte gegebene Befehl / Ziel / Auftrag der Einheit<br/>
	- Was wird gerade getan ("Wir bewegen uns auf die gegebene Position, müssen jedoch aus Gelände Gründen einen Umweg machen", "Können uns nicht weiterbewegen, werden vom Feind niedergehalten")<br/>
- Wird Unterstützung benötigt.<br/>']];

player createDiaryRecord ["gtotutorials", ["Statusbericht", 'Kurze und schnelle Antwort: "Alpha 2 ist GRÜN GRÜN kommen", wobei das erste Grün sich auf den Medizinischen Status bezieht und das 2. auf den Munition Status.<br/><br/>
	<font color="#ffffff" size="20">Medizinische Status - Abstufungen:</font><br/>
	🟢 GRÜN => Das fire-Team oder Squad ist vollständig in der Lage zu verlegen. z.B.: (fire-Team hat: 1 Verletzten) (Gesamtes Squad hat: 1-2 Verletzte)<br/>
	🟡 GELB => Dem fire-Team oder Squad geht es nicht mehr optimal aber es ist noch Kampfähig. z.B.: (fire-Team hat: 1 Ausfall und 1 Verletzten) (Gesamtes Squad hat: 1-2 Ausfälle und 2-3 Verletzte)<br/>
	🔴 ROT => Das fire-Team oder Squad ist nicht mehr in der Lage sich zu Bewegen und Sicherung ist Möglicherweise zusammengebrochen. z.B.: (fire-Team hat: 1-3 Ausfälle und 1-3 schwer Verletzte) (Gesamtes Squad hat: 3-4 Ausfälle und mehrere Verletzte)<br/><br/>

	<font color="#ffffff" size="20">Munition Status - Abstunfungen:</font><br/>
	🟢 GRÜN => Das fire-Team oder Squad hat noch kaum geschossen und noch viel Munition.<br/>
	🟡 GELB => Das fire-Team oder Squad hat bereit einiges an Munition verschossen aber hat noch genügend um weiterzukämpfen.<br/>
🔴 ROT => Die Munition des Fire-Teams oder Squads ist vollständig aufgebraucht oder ist sehr Knapp davor aufgebraucht zu werden.<br/>']];

player createDiaryRecord ["gtotutorials", ["Medic cheat sheet", "<img image='gtom\images\ace_medical_cheat sheet.jpg' width='375'/>"]];

player createDiaryRecord ["gtotutorials", ["Formationen", "<img image='gtom\images\Formationen.jpg' width='375'/>"]];

player createDiaryRecord ["gtotutorials", ["Feuerstatus", '
	<font color="#ff0000" size="16">🔴 Feuerstatus Rot - Keine Feuererlaubnis</font><br/>
	<font color="#fff200" size="16">🟡 Feuerstatus Gelb - Feuer bei Beschuss erwidern</font><br/>
<font color="#00ff00" size="16">🟢 Feuerstatus Grün - Feuer auf erkannten Feind freigegeben</font>']];

player createDiaryRecord ["gtotutorials", ["Default Loadout", "<img image='gtom\images\DefaultLoadout.jpg' width='375'/>"]];

player createDiaryRecord ["gtotutorials", ["NATO Alphabet", "A – ALPHA<br/>B – BRAVO<br/>C – CHARLIE<br/>D – DELTA<br/>E – echo<br/>F – FOXTROT<br/>G – GOLF<br/>H – HOTEL<br/>I – INDIA<br/>J – JULIETT<br/>K – KILO<br/>L – LIMA<br/>M – MIKE<br/>N – NOVEMBER<br/>O – OSCAR<br/>P – PAPA<br/>Q – QUEBEC<br/>R – ROMEO<br/>S – SIERRA<br/>T – TANGO<br/>U – uniform<br/>V – VICTOR<br/>W -WHISKEY<br/>X – XRAY<br/>Y – YANKEE<br/>Z – ZULU"]];