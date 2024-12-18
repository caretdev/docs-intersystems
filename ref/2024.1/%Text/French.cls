/// See <CLASS>%Text.Text</CLASS>
/// <p>
/// The <CLASS>%Text.French</CLASS> class implements the French language-specific stemming algorithm
/// and initializes the language-specific list of noise words.</p>
///
Class %Text.French Extends %Text.Text [ System = 4 ]
{

Parameter DICTIONARY = 3;

Parameter SOURCELANGUAGE = "fr";

Parameter NOISEWORDS100 = "de � et a dans est il vous cela �tait pour sur soyez avec sien ils soyez un ayez ceci de ou eu par chaud mot mais ce qui certains nous bidon hors autre �taient tous l� quand vers le haut employez votre comment dit chacun elle quel leur temps si volont� mani�re au sujet beaucoup puis �crivez comme ainsi ceux ci elle long faites chose voyez deux regard plus jour pourrait allez venez nombre bruit non les plupart les gens mon savez l'eau que appel d'abord qui pouvez vers le bas c�t� �t� maintenant trouvaille";

Parameter NOISEWORDS200 = "quels nouveau travail partie prise obtenez endroit fait phase ensuite dos peu seulement rond homme ann�e soyez venu exposition chaque bon je �lasticit� notre sous nom tr�s travers juste forme phrase grand pensez parole aide bas ligne diff�rez tour cause beaucoup moyen avant mouvement droite gar�on vieux aussi m�mes dites ensemble trois voulez air puits aussi jeu petit extr�mit� mis maison lu main port grand charme ajoutez �galisez terre ici n�cessit� grand haut tels suivez acte pourquoi demandez hommes changement all� lumi�re aimable outre besoin maison image essai nous encore animal point m�re monde pr�s construction portrait terre p�re";

Parameter NOISEWORDS300 = "t�te stand poss�der page si pays trouv� r�ponse �cole d�veloppez �tude toujours apprenez usine couverture nourriture soleil quatre entre �tat subsistance oeil jamais bout laiss� pens�e ville arbre croix ferme dur d�but force histoire scie loin mer aspiration gauche tard course pas tandis pression fin nuit vrai vie peu nord ouvert semblez ensemble apr�s blanc enfants commencez obtenu promenade exemple facilit� papier groupe toujours musique ceux tous marque souvent lettre jusque mille fleuve voiture pieds soin second livre portez pris science mangez pi�ce ami commenc� id�e poissons montagne arr�t fois base entendez cheval coupe s�r montre couleur visage bois principal";

/// Remove plural and feminine form of French words
ClassMethod stemWord(ByRef b As %String) As %String
{
}

ClassMethod normFrenchWord(ByRef b As %String, ByRef k As %Integer)
{
}

ClassMethod removeAllAccents(ByRef b As %String, ByRef k As %Integer)
{
}

ClassMethod removeDoublet(ByRef b As %String, ByRef k As %Integer)
{
}

}
