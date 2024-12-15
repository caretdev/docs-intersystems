/// See <CLASS>%Text.Text</CLASS>
/// <p>
/// The <CLASS>%Text.Portuguese</CLASS> class implements the Portuguese language-specific stemming algorithm
/// and initializes the language-specific list of noise words.</p>
///
Class %Text.Portuguese Extends %Text.Text [ System = 4 ]
{

Parameter DICTIONARY = 7;

Parameter SOURCELANGUAGE = "pt";

Parameter NOISEWORDS100 = "de a e em é ele você isso ele era para em seja com como his eles seja em um tenha isto de ou teve por quente palavra mas que alguns nós lata para fora outro eram tudo lá quando acima use seu como dito cada ela qual seu tempo se vontade maneira sobre muitos então eles escreva como assim estes ela longo faça coisa veja ele dois tem olhar mais dia poderia vá vindo número som não maioria povos meu sobre saiba água do que chamada primeiramente quem possa para baixo lado sido agora achado alguns novo trabalho parte tomada";

Parameter NOISEWORDS200 = "comece lugar feito vivo onde seguida parte traseira pouco somente redondo homem ano veio mostra cada bom mim elasticidade nosso sob nome muito através apenas formulário sentença grande pense palavra ajuda baixo linha difira volta causa muito meio antes movimento direita menino velho demasiado mesmos diga jogo três queira ar poço também jogo pequeno extremidade posto home lido mão porto grande período adicione nivele terra aqui obrigação grande elevado tais siga ato porque peça homens mudança foi luz amável fora de necessidade casa retrato tentativa nós outra vez animal ponto mãe mundo perto configuração self terra pai cabeça carrinho para possuir página se país encontrado resposta";

Parameter NOISEWORDS300 = "escola cresça estudo ainda aprenda planta tampa alimento sol quatro entre estado sustento olho nunca último deixado pensamento cidade árvore cruz fazenda duramente começo poder história serra distante mar tração esquerdo tarde funcionamento não quando imprensa fim noite real vida poucos norte aberto pareça junto em seguida branco crianças comece começado caminhada exemplo facilidade papel grupo sempre música aqueles ambos marca frequentemente letra até milha rio carro pés cuidado em segundo livro carregue fêz exame ciência coma quarto amigo começou idéia peixes montanha batente uma vez que base ouça cavalo corte certo relógio cor cara madeira principal bastantes planície menina usual novo apronte acima sempre vermelho lista embora sensação";

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
