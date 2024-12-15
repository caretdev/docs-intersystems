/// See <CLASS>%Text.Text</CLASS>
/// <p>
/// The <CLASS>%Text.French</CLASS> class implements the French language-specific stemming algorithm
/// and initializes the language-specific list of noise words.</p>
///
Class %Text.French Extends %Text.Text [ System = 4 ]
{

Parameter DICTIONARY = 3;

Parameter SOURCELANGUAGE = "fr";

Parameter NOISEWORDS100 = "de à et a dans est il vous cela était pour sur soyez avec sien ils soyez un ayez ceci de ou eu par chaud mot mais ce qui certains nous bidon hors autre étaient tous là quand vers le haut employez votre comment dit chacun elle quel leur temps si volonté manière au sujet beaucoup puis écrivez comme ainsi ceux ci elle long faites chose voyez deux regard plus jour pourrait allez venez nombre bruit non les plupart les gens mon savez l'eau que appel d'abord qui pouvez vers le bas côté été maintenant trouvaille";

Parameter NOISEWORDS200 = "quels nouveau travail partie prise obtenez endroit fait phase ensuite dos peu seulement rond homme année soyez venu exposition chaque bon je élasticité notre sous nom très travers juste forme phrase grand pensez parole aide bas ligne différez tour cause beaucoup moyen avant mouvement droite garçon vieux aussi mêmes dites ensemble trois voulez air puits aussi jeu petit extrémité mis maison lu main port grand charme ajoutez égalisez terre ici nécessité grand haut tels suivez acte pourquoi demandez hommes changement allé lumière aimable outre besoin maison image essai nous encore animal point mère monde près construction portrait terre père";

Parameter NOISEWORDS300 = "tête stand posséder page si pays trouvé réponse école développez étude toujours apprenez usine couverture nourriture soleil quatre entre état subsistance oeil jamais bout laissé pensée ville arbre croix ferme dur début force histoire scie loin mer aspiration gauche tard course pas tandis pression fin nuit vrai vie peu nord ouvert semblez ensemble après blanc enfants commencez obtenu promenade exemple facilité papier groupe toujours musique ceux tous marque souvent lettre jusque mille fleuve voiture pieds soin second livre portez pris science mangez pièce ami commencé idée poissons montagne arrêt fois base entendez cheval coupe sûr montre couleur visage bois principal";

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
