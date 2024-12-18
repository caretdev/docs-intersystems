/// See <CLASS>%Text.Text</CLASS>
/// <p>
/// The <CLASS>%Text.German</CLASS> class implements the German language-specific stemming algorithm
/// and initializes the language-specific list of noise words.</p>
///
Class %Text.German Extends %Text.Text [ System = 4 ]
{

Parameter DICTIONARY = 4;

Parameter SOURCELANGUAGE = "de";

Parameter NOISEWORDS100 = "von zu und a in ist es Sie das er war f�r auf seien mit wie seins sie seien an ein haben dieses von oder hatte durch hei� Wort aber was einige wir Dose aus anderes waren alle dort wenn herauf verwenden Ihr wie besagt jedes sie welches ihr Zeit wenn Wille Weise �ber viele dann sie schreiben wurde wie so diese sie lang bilden Sache sehen er zwei hat Blick mehr Tag k�nnte gehen gekommen Zahl Ton nein meisten Leute mein r�ber wissen Wasser als Anruf zuerst wer k�nnen unten Seite gewesen jetzt Entdeckung irgendwelche neu Arbeit Teil Nehmen erhalten";

Parameter NOISEWORDS200 = "Platz gebildet Phasen wo nachher R�ckseite wenig nur rund Mann Jahr kam Erscheinen jedes gut ich Geben unser unter Name sehr durch gerade Form Satz gro� denken Sagen Hilfe niedrig Linie unterscheiden Umdrehung Ursache viel Mittel vorher Bewegung Recht Junge alt auch selben sagen Sie Satz drei w�nschen Luft Brunnen auch Spiel klein Ende gesetzt Haupt gelesen Hand Tor gro� Bann f�gen hinzu gl�tten Land hier Mu� gro� hoch so folgen Tat warum bitten M�nner �nderung ging Licht freundlich weg Notwendigkeit Haus Abbildung Versuch wir wieder Tier Punkt Mutter Welt nahe Bau Selbst Masse Vater Kopf Standplatz besitzen Seite wenn Land gefunden Antwort Schule";

Parameter NOISEWORDS300 = "wachsen Studie noch erlernen Betrieb Abdeckung Nahrung Sonne vier zwischen Zustand Unterhalt Auge nie Letztes gelassen Gedanke Stadt Baum Kreuz Bauernhof stark Anfang Macht Geschichte S�ge weit Meer abgehobener Betrag link sp�t Durchlauf nicht w�hrend Presse Ende Nacht real Leben wenige Nord ge�ffnet scheinen zusammen zun�chst wei� Kinder fangen erhalten Weg Beispiel M�helosigkeit Papier Gruppe immer Musik die beide Markierung h�ufig Buchstabe bis Meile Flu� Auto F��e Obacht zweitens Buch tragen Sie nahm Wissenschaft essen Raum Freund fing an Idee Fische Berg Anschlag sobald Unterseite h�ren Pferd Schnitt sicher Uhr Farbe Gesicht Holz haupts�chlich genug Ebene M�dchen �blich jung bereiten �ber �berhaupt rot Liste obwohl Gef�hl";

ClassMethod removeAllAccents(ByRef b As %String, ByRef k As %Integer)
{
}

/// Simple German stemmer.  See http://www.unine.ch/info/clef/germanStemmer.txt
ClassMethod stemWord(ByRef b As %String) As %String
{
}

}
