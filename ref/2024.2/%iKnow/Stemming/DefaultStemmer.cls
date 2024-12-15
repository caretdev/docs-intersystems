/// <p>This class encapsulates logic to instantiate, use and amend stemmers for different languages.
/// Plugin selection behavior per language is as follows: if a valid Hunspell affix and dictionary file is found in
/// the /dev/hunspell subdirectory of your installation location (either named [language code]_*.aff
/// or in a subdirectory named after the language code), a <class>HunspellStemmer</class>
/// object will be instantiated to treat stemming requests for that language. If no such library is
/// found, the corresponding <class>TextStemmer</class> will be instantiated.</p>
/// <p>If the <method>StemWord</method> method is invoked for a particular language, this class will
/// first look up the supplied string in the list of exceptions. If no exceptions are found (either
/// default exceptions supplied with iKnow or custom exceptions in the <class>Rule</class> table
/// for this namespace), the StemWord method of the instantiated Stemmer plugin object will be
/// invoked. If the plugin supports returning multiple results, these will be filtered and only the
/// first result satisfying the corresponding rules (stored in the iKnow language model or the
/// <class>Rule</class>) will be returned.</p>
Class %iKnow.Stemming.DefaultStemmer Extends %iKnow.Stemmer [ Deprecated, System = 4 ]
{

/// Array of language-specific stemmers in use by this default stemmer
Property Stemmers [ Internal, MultiDimensional, Private ];

/// Default language to use when not specified in calls to <method>Stem</method>
Property DefaultLanguage As %String [ InitialExpression = "en" ];

/// Array of stemming rules to apply, indexed by language
/// (sub-index levels specific to stemming plugin type)
Property Rules [ Internal, MultiDimensional ];

/// Internal method to retrieve a stemmer object for <var>pLanguage</var>, initializing
/// one if it does not exist yet.
Method GetStemmerObject(pLanguage As %String) As %iKnow.Stemmer [ Internal ]
{
}

/// Initializes the default stemmer object for a particular language
Method InitializeLanguage(pLanguage As %String) As %Status [ Internal ]
{
}

/// Forwards to specialized implementations, according to the plugin being used
Method StemWord(pToken As %String, pLanguage As %String = "", pLexType As %Integer = {$$$ENTTYPECONCEPT}, pEntity As %String = "") As %String [ Internal ]
{
}

/// Starting point for advanced resolution of hunspell stemming results.
/// Stems <var>pToken</var> using <var>pStemmer</var> by testing it first in the capitalization
/// supplied initially and then with initcaps and all-caps in case no stem was found.
/// Relays to <method>StemWordHunspellRules</method> for the actual stemming.
Method StemWordHunspell(pStemmer As %iKnow.Stemming.HunspellStemmer, pToken As %String, pLanguage As %String, pLexType As %Integer = {$$$ENTTYPECONCEPT}, pEntity As %String = "") As %String [ Private ]
{
}

/// For a given token, goes through all the results presented by Hunspell and then decides
/// which option to return (if any at all), based on the rules returned by
/// <method>GetHunspellRules</method>, using context information such as <var>pLexType</var>
Method StemWordHunspellRules(pStemmer As %iKnow.Stemming.HunspellStemmer, pToken As %String, pLanguage As %String, pLexType As %Integer = {$$$ENTTYPECONCEPT}, pEntity As %String = "", Output pHasMatch As %Boolean) As %String [ Private ]
{
}

/// Retrieves a set of rules to customize or overrule plugin output, based on default rules
/// returned by <method>GetDefaultRules</method> and the content of the <class>%iKnow.Stemming.Rule</class>
/// table.
/// Any result retrieved by a plugin will have to pass these rules (where applicable) or it
/// will not be returned. Note that this may result in no results to be passed back at all!
Method LoadRules(pLanguage As %String, pPlugin As %String) As %Status [ Private ]
{
}

Method %OnNew(pDefaultLanguage As %String) As %Status [ Private, ServerOnly = 1 ]
{
}

/// Reloads underlying stemmer implementations and rules
Method Reload() As %Status
{
}

}
