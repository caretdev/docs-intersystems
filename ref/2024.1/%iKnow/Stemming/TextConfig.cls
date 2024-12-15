/// Simple configuration object for the <class>%iKnow.Stemming.TextStemmer</class> class, which
/// wraps the <class>%Text.Text</class> Standardize() method. Use <property>DefaultLanguage</property>
/// to identify the language for which the %Text class should be instantiated.
Class %iKnow.Stemming.TextConfig Extends %iKnow.Stemming.Configuration [ Deprecated, System = 4 ]
{

Property DefaultLanguage As %String;

/// Instantiates a stemmer object based on the current object's configuration.
Method CreateStemmerObject(Output pStemmer As %iKnow.Stemmer) As %Status
{
}

}
