/// This class represents a stemmer configuration using the Hunspell plugin directly.
/// Unless you want to specify a non-default Hunspell library explicitly, use the default
/// stemming configuration ("DEFAULT"). See <class>%iKnow.Stemming.DefaultStemmer</class>.
Class %iKnow.Stemming.HunspellConfig Extends %iKnow.Stemming.Configuration [ Deprecated, System = 4 ]
{

/// Full path to the Hunspell affix file (.aff)
Property AffixFile As %String(MAXLEN = 2000) [ Required ];

/// Full path to the Hunspell dictionary file (.dic)
Property DictionaryFile As %String(MAXLEN = 2000) [ Required ];

Method CreateStemmerObject(Output pStemmer As %iKnow.Stemmer) As %Status
{
}

}
