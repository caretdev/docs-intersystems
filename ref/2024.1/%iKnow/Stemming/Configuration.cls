/// <p>This class encapsulates the configuration settings of a customized <class>%iKnow.Stemmer</class>
/// object, as identified by a configuration name. Use <method>GetStemmer</method> to retrieve a
/// saved stemmer configuration.</p>
/// Look at the subclasses for actual stemmer-specific parameters.
Class %iKnow.Stemming.Configuration Extends %Persistent [ Abstract, Deprecated, System = 4 ]
{

/// Name of this stemmer configuration. Should be unique within the namespace
Property Name As %String(MAXLEN = 150) [ Required ];

Method %OnNew(pName As %String) As %Status
{
}

/// Instantiates a stemmer object based on the stemmer configuration saved with <property>Name</property> = <var>pName</var>.
/// Alternatively, if <var>pName</var> is a colon-delimited list of which the first entry is a valid
/// class name referring to a class that inherits from <class>%iKnow.Stemmer</class>, that class is
/// instantiated, using the remaining elements of the list as arguments for its %New method.
ClassMethod GetStemmer(pName As %String, Output pStemmer As %iKnow.Stemmer) As %Status [ Final ]
{
}

/// Instantiates a stemmer object based on the current object's configuration.
/// (Does not need to be persisted)
Method CreateStemmerObject(Output pStemmer As %iKnow.Stemmer) As %Status [ Abstract ]
{
}

ClassMethod NameIsValid(pValue As %String) As %Status [ Private, ServerOnly = 1 ]
{
}

}
