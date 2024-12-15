/// <p>Configuration settings for a stemmer supporting multiple languages. Each language can be
/// configured separately, or just use the default settings.
/// <p>Unless you're using custom configurations, using the default configuration ("DEFAULT") will
/// automatically support multiple languages. See also <class>%iKnow.Stemming.DefaultStemmer</class>.</p>
Class %iKnow.Stemming.MultiLanguageConfig Extends %iKnow.Stemming.Configuration [ Deprecated, System = 4 ]
{

/// Comma-separated list of languages this stemmer supports, or "*" if it supports all
Property Languages As %String;

/// Comma-separated list of custom configurations to use for each language in <property>Languages</property>.
/// Entries left blank will be instantiated using the default configuration.
Property StemmerConfigs As %String;

Method CreateStemmerObject(Output pStemmer As %iKnow.Stemmer) As %Status
{
}

}
