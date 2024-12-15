/// See <CLASS>%Text.Text</CLASS>
/// <p>
/// The <CLASS>%Text.Japanese</CLASS> class implements (or calls) the Japanese language-specific stemming algorithm
/// and initializes the language-specific list of noise words.</p>
///
Class %Text.Japanese Extends %Text.Text [ System = 4 ]
{

Parameter DICTIONARY = 6;

Parameter SOURCELANGUAGE = "ja";

Parameter SEPARATEWORDS = 1;

Parameter FILTERNOISEWORDS = 0;

Parameter MINWORDLEN = 1;

Parameter NUMCHARS;

Parameter CASEINSENSITIVE = 0;

Parameter STEMMING = 0;

Parameter NGRAMLEN = 2;

ClassMethod SeparateWords(rawText As %String) As %String
{
}

ClassMethod stemWord(ByRef b As %String) As %String
{
}

ClassMethod ExcludeCommonTerms(nWords) As %Status
{
}

}
