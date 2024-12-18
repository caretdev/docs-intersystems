/// See <CLASS>%Text.Text</CLASS>
/// <p>
/// The <CLASS>%Text.Portuguese</CLASS> class implements the Portuguese language-specific stemming algorithm
/// and initializes the language-specific list of noise words.</p>
///
Class %Text.Portuguese Extends %Text.Text [ System = 4 ]
{

Parameter DICTIONARY = 7;

Parameter SOURCELANGUAGE = "pt";

Parameter NOISEWORDS100 = "de a e em � ele voc� isso ele era para em seja com como his eles seja em um tenha isto de ou teve por quente palavra mas que alguns n�s lata para fora outro eram tudo l� quando acima use seu como dito cada ela qual seu tempo se vontade maneira sobre muitos ent�o eles escreva como assim estes ela longo fa�a coisa veja ele dois tem olhar mais dia poderia v� vindo n�mero som n�o maioria povos meu sobre saiba �gua do que chamada primeiramente quem possa para baixo lado sido agora achado alguns novo trabalho parte tomada";

Parameter NOISEWORDS200 = "comece lugar feito vivo onde seguida parte traseira pouco somente redondo homem ano veio mostra cada bom mim elasticidade nosso sob nome muito atrav�s apenas formul�rio senten�a grande pense palavra ajuda baixo linha difira volta causa muito meio antes movimento direita menino velho demasiado mesmos diga jogo tr�s queira ar po�o tamb�m jogo pequeno extremidade posto home lido m�o porto grande per�odo adicione nivele terra aqui obriga��o grande elevado tais siga ato porque pe�a homens mudan�a foi luz am�vel fora de necessidade casa retrato tentativa n�s outra vez animal ponto m�e mundo perto configura��o self terra pai cabe�a carrinho para possuir p�gina se pa�s encontrado resposta";

Parameter NOISEWORDS300 = "escola cres�a estudo ainda aprenda planta tampa alimento sol quatro entre estado sustento olho nunca �ltimo deixado pensamento cidade �rvore cruz fazenda duramente come�o poder hist�ria serra distante mar tra��o esquerdo tarde funcionamento n�o quando imprensa fim noite real vida poucos norte aberto pare�a junto em seguida branco crian�as comece come�ado caminhada exemplo facilidade papel grupo sempre m�sica aqueles ambos marca frequentemente letra at� milha rio carro p�s cuidado em segundo livro carregue f�z exame ci�ncia coma quarto amigo come�ou id�ia peixes montanha batente uma vez que base ou�a cavalo corte certo rel�gio cor cara madeira principal bastantes plan�cie menina usual novo apronte acima sempre vermelho lista embora sensa��o";

ClassMethod removeAllAccents(ByRef b As %String, ByRef k As %Integer)
{
}

/// Remove plural and feminine form of Portuguese words
ClassMethod removePTSuffix(ByRef b As %String, ByRef k As %Integer, ByRef j As %Integer)
{
}

ClassMethod normFemininePortuguese(ByRef b As %String, ByRef k As %Integer, ByRef j As %Integer)
{
}

/// Simple Portuguese stemmer.  See http://www.unine.ch/info/clef/portugueseStemmer.txt
ClassMethod stemWord(ByRef b As %String) As %String
{
}

}
