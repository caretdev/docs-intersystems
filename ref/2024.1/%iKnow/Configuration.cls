/// <p>The InterSystems IRIS NLP iKnow technology is now deprecated. Please see the
/// <a href="https://docs.intersystems.com/irislatest/csp/docbook/DocBook.UI.Page.cls?KEY=GIKNOW">product
/// documentation</a> for more detail.</p>
/// <p>This class groups the configuration parameters to drive the iKnow Smart Indexing algorithm
/// as executed by the iKnow engine (external libraries). Configurations are referred to by name
/// and can be used across domains within the same namespace.</p>
/// <p>When creating a configuration, you can pass initial values for the following properties
/// to its <method>%New</method> method:
/// <ol>
/// 	<li><property>Name</property> (required)</li>
/// 	<li><property>DetectLanguage</property></li>
/// 	<li><property>Languages</property></li>
/// 	<li><property>UserDictionary</property></li>
/// 	<li><property>Summarize</property></li>
/// </ol>
/// Check the respective property descriptions for more details.</p>
Class %iKnow.Configuration Extends %Persistent [ Deprecated, Final, StorageStrategy = iKnowStorage, System = 4 ]
{

Property Id As %Integer [ Internal, ReadOnly ];

/// The name of this configuration, which should be unique within the namespace (case-insensitive)
Property Name As %String [ ReadOnly ];

/// Whether or not to use Automatic Language Identification
Property DetectLanguage As %Boolean;

/// The list of languages the engine should take into account when processing the text.
Property Languages As %List;

/// The name to the User Dictionary to use for rewriting and standardizing input as it is
/// read by the engine. See also <class>%iKnow.UserDictionary</class>.
/// Alternatively, the path to a file-based User Dictionary can be supplied.
Property UserDictionary As %String(MAXLEN = 1000);

/// This setting is deprecated. Summaries are now generated at query time.
Property Summarize As %Integer [ Deprecated, InitialExpression = 1 ];

/// Maximum cluster length. Advanced use only.
Property MaxConceptLength As %Integer(MINVAL = 0) [ Internal ];

Property IsTransient As %Boolean [ Internal, Private, Transient ];

/// Private Indexer object for <method>Normalize</method> method.
Property Indexer As %iKnow.Indexer [ Internal, Private, Transient ];

/// Automatically (re)create the default configuration
ClassMethod CreateDefaultConfig() As %Status [ Internal ]
{
}

/// Create a new Configuration object using the specified parameters
/// <p><b>Deprecated</b>: Please use <method>%New</method> and <method>%Save</method></p>
ClassMethod Create(name As %String, DetectLanguage As %Integer = 0, languages As %List = {$lb("en")}, userDictionary As %String = "", summarize As %Integer = 1, maxConceptLength As %Integer = 0, Output sc As %Status = {$$$OK}) As %iKnow.Configuration [ Deprecated ]
{
}

/// Opens the Configuration object with the supplied name.
/// When requesting the default configuration ($$$DEFAULTCONFIG), it will be created if it didn't
/// exist yet for this namespace.
ClassMethod Open(name As %String, Output pSC As %Status = {$$$OK}) As %iKnow.Configuration
{
}

/// Opens the Configuration object with the supplied ID
/// <p><b>Deprecated</b>: Please use <method>%OpenId</method></p>
ClassMethod OpenId(id As %Integer) As %iKnow.Configuration [ Deprecated ]
{
}

/// Checks whether a Configuration object exists with the given name
/// <p><b>Deprecated</b>: Please use <method>NameIndexExists</method></p>
ClassMethod Exists(name As %String) As %Boolean [ Deprecated ]
{
}

/// Deletes a named configuration
/// <p><b>Deprecated</b>: Please use <method>NameIndexOpen</method> and <method>%DeleteId</method></p>
ClassMethod Delete(configName As %String) As %Status [ Deprecated ]
{
}

/// Deletes a configuration specified by ID
/// <p><b>Deprecated</b>: Please use <method>%DeleteId</method></p>
ClassMethod DeleteId(configId As %String) As %Status [ Deprecated ]
{
}

/// Creates a Configuration object with the specified parameters.
/// <p>Note: Use of the <var>pMaxConceptLength</var> parameter is deprecated as from 2013.2</p>.
Method %OnNew(pName As %String, pDetectLanguage As %Integer = 0, pLanguages As %List = {$lb("en")}, pUserDictionary As %String = "", pSummarize As %Integer = 1, pMaxConceptLength As %Integer = 0, pTransient As %Boolean = 0) As %Status [ Private, ServerOnly = 1 ]
{
}

Method ResolveLanguage(tLanguage) As %String [ Internal ]
{
}

/// Configures an %iKnow.Indexer object with the settings stored in this Configuration object
Method ConfigureIndexer(indexer As %iKnow.Indexer) As %Status [ Internal ]
{
}

/// Simple class query to retrieve all the configurations for this Namespace.
/// <p><b>Deprecated</b>: Please use normal SQL queries to approach this class.</p>
ClassMethod GetAllConfigurationsExecute(ByRef qHandle As %Binary) As %Status [ Internal ]
{
}

ClassMethod GetAllConfigurationsClose(ByRef qHandle As %Binary) As %Status [ Internal, PlaceAfter = GetAllConfigurationsExecute ]
{
}

ClassMethod GetAllConfigurationsFetch(ByRef qHandle As %Binary, ByRef Row As %List, ByRef AtEnd As %Integer = 0) As %Status [ Internal, PlaceAfter = GetAllConfigurationsExecute ]
{
}

Method %OnBeforeSave(insert As %Boolean) As %Status [ Private, ServerOnly = 1 ]
{
}

ClassMethod LanguagesIsValid(pLanguages As %String) As %Status [ Private, ServerOnly = 1 ]
{
}

Method %ConstructClone(deep As %Boolean = 0, ByRef cloned As %String, location As %String) As %RegisteredObject [ ServerOnly = 0 ]
{
}

ClassMethod %DeleteExtent(concurrency As %Integer = -1, ByRef deletecount, ByRef instancecount, pInitializeExtent As %Integer = 1) As %Status [ ServerOnly = 0 ]
{
}

ClassMethod %KillExtentData(killstreams As %Boolean = 0) As %Status [ Private, ServerOnly = 1 ]
{
}

ClassMethod CheckIfManaged(pConfig As %iKnow.Configuration) As %Status [ Internal ]
{
}

ClassMethod %OnDelete(oid As %ObjectIdentity) As %Status [ Private, ServerOnly = 1 ]
{
}

/// <p>Takes an input string <var>pString</var> and returns its normalized form as returned by the
/// iKnow engine. Using this method will ensure a string has the same form as any results (entities)
/// returned by the engine as a result of iKnow indexing with this Configuration object.</p>
/// <p>More specifically, this normalization takes into account the following properties:</p>
/// <ul>
/// 	<li>User Dictionary literal input substitutions.</li>
/// 	<li>Language model preprocess filters.</li>
/// 	<li>Character normalization (lower casing and some punctuation separation)</li>
/// 	<li>Whitespace compression.</li>
/// 	<li>Entity filters.</li>
/// </ul>
/// <p>Input substitution adheres to the User Dictionary as specified in the <property>UserDictionary</property>
/// property of this Configuration. If not specified through <var>pLanguage</var> (as a two-letter
/// language code), the language will be randomly selected by the engine from the list specified
/// in this Configuration's <property>Languages</property> property, so it's recommended to
/// supply a value for <var>pLanguage</var> if <property>Languages</property> contains more than
/// one entry. If specified, <var>pLanguage</var> should appear in <property>Languages</property></p>
/// <p>See also <method>NormalizeWithParams</method> to normalize without a Configuration object.</p>
Method Normalize(pString As %String, pLanguage As %String = "", Output pSC As %Status = {$$$OK}, pCleanPunctuation As %Boolean = 1) As %String
{
}

/// <p>Takes an input string <var>pString</var> and returns its normalized form as returned by the
/// iKnow engine. Using this method will ensure a string has the same form as any results (entities)
/// returned by the engine as a result of indexing operations.</p>
/// <p>More specifically, this normalization takes into account the following properties:</p>
/// <ul>
/// 	<li>User Dictionary literal input substitutions.</li>
/// 	<li>Language model preprocess filters.</li>
/// 	<li>Character normalization (lower casing and some punctuation separation)</li>
/// 	<li>Whitespace compression.</li>
/// 	<li>Entity filters.</li>
/// </ul>
/// <p>Input substitution adheres to the User Dictionary as specified through <var>pUserDictionary</var>
/// and the preprocess filters for language <var>pLanguage</var> are used.</p>
/// <p>See also <method>Normalize</method> to normalize using an existing Configuration object.</p>
ClassMethod NormalizeWithParams(pString As %String, pLanguage As %String = "en", pUserDictionary As %String = "", Output pSC As %Status = {$$$OK}, pCleanPunctuation As %Boolean = 1) As %String
{
}

ClassMethod CreateTransientConfig(pLanguage As %String = "en", pUserDictionary As %String = "", Output pSC As %Status = {$$$OK}) As %iKnow.Configuration [ Internal ]
{
}

}
