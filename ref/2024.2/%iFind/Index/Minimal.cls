/// <p>This class offers a subset of the full-text search capabilities brought by
/// <class>%iFind.Index.Basic</class> with a minimal storage footprint. The following Basic
/// features are <u>not</u> available for a Minimal index:</p>
/// <ul>
/// <li>Positional search: e.g. "[five tickets]", "[aspirin ? daily]</li>
/// <li>Cooccurence search: e.g. "[ketchup, mayonaise, 5]"</li>
/// <li>Highlighting search results</li>
/// <li>Ranking search results</li>
/// </ul>
/// <p>See the class reference of <class>%iFind.Index.Basic</class> for a detailed overview
/// of available search capabilities.</p>
Class %iFind.Index.Minimal Extends (%Library.FunctionalIndex, %Compiler.Type.Embedded) [ EmbeddedClass = %iFind.Find.Minimal, System = 2 ]
{

Parameter FILER [ Internal ] = "%iFind.Filer.Minimal";

/// This parameter can be set to 1 if the implementation of the filing interface and the SQL query interface can be
/// executed on a shard server.  The default is 0.  If a sharded class attempts to use a functional index where
/// SUPPORTSSHARDING = 0, a class compiler error will be returned.
Parameter SUPPORTSSHARDING = 1;

/// Language to use when indexing records.
/// Use "*" to enable automatic language detection.
Parameter LANGUAGE As STRING = "en";

/// Specific indexing options to use when processing records.
/// <ul><li>0 = Do not store compounds or stems</li>
/// <li>1 = Store word-level stems</li>
/// <li>2 = Store word-level compounds and stems</li></ul>
/// <p>See also <class>%iKnow.Stemmer</class> and <class>%iKnow.Stemming.DecompoundUtils</class>
/// for more details on stemming or decompounding, or <parameter>TRANSFORMATIONSPEC</parameter>
/// for advanced options to use custom transformations.</p>
Parameter INDEXOPTION [ Constraint = "0,1,2" ] = 0;

/// Whether or not to convert content to lowercase before indexing.
/// When set to 1 (default), searches are always case-insensitive.
/// When set to 0, searching will be case-sensitive.
Parameter LOWER As BOOLEAN = 1;

/// <p>This parameter controls which user dictionary should be used to rewrite or annotate text before
/// it is processed by the NLP engine. See
/// <a target="_top" href="/csp/docbook/Doc.View.cls?FIND=CLASSES+%25iFind.Index.Minimal+USERDICTIONARY">NLP User Dictionaries</a>
/// in the NLP documentation.</p>
/// <p>This parameter is for advanced use only and empty by default.</p>
Parameter USERDICTIONARY As STRING;

/// <p>This parameter can be used to override the default stemming implementation when
/// <parameter>INDEXOPTION</parameter> &gt; 0. To do so, set this parameter to a saved
/// <class>%iKnow.Stemming.Configuration</class> instance. This parameter has no effect if
/// <parameter>INDEXOPTION</parameter> = 0.</p>
/// <p>This parameter is for advanced use only and empty by default.</p>
Parameter STEMMINGCONFIG As STRING;

/// <p>When this parameter is set to 1, additional SQL projections will be created upon compiling
/// the class. These are accessible as read-only tables in a package named [<i>package_name</i>]_[<i>class_name</i>]
/// and have names starting with [<i>class_name</i>]_[<i>index_name</i>] (which can be overridden
/// through <parameter>IFINDADVANCEDSQLPREFIX</parameter>).<p>
/// <p>By default, the following mappings are generated for an %iFind.Index.Minimal index:</p>
/// <ul>
/// <li><b>[<i>class_name</i>]_[<i>index_name</i>]_WordRec</b>: stores which words appear in each
/// record in this index. See also <class>%iFind.Index.AbstractWordRec</class>.</li>
/// </ul>
/// <p>Additional classes will be generated automatically, based on your index class and parameters.
/// See the class reference for subclasses for more details.<p>
Parameter IFINDMAPPINGS As BOOLEAN = 0;

/// <p>When generating SQL projections of iFind index data using the <parameter>IFINDMAPPINGS</parameter>),
/// this parameter overrides the naming of those classes, using this parameter's value instead of the default
/// [<i>class_name</i>]_[<i>index_name</i>] prefix. The projections will still be created in the
/// [<i>package_name</i>]_[<i>class_name</i>] package.</p>
Parameter IFINDADVANCEDSQLPREFIX As STRING;

/// This parameter enables specifying whether words, entities and similar data should be written
/// to the shared %iFind.Word, %iFind.Entity and similar tables (<parameter>IFINDSHAREDDATALOCATION</parameter>="NAMESPACE",
/// default), or whether it should be stored in index-specific tables (<parameter>IFINDSHAREDDATALOCATION</parameter>="INDEX").
/// In the latter case, mappings will be generated for these tables if <parameter>IFINDMAPPINGS</parameter>
/// is set to 1.
Parameter IFINDSHAREDDATALOCATION As STRING [ Constraint = "NAMESPACE,INDEX" ];

/// <p>This parameter defines the word transformation(s) to apply to input text, such as stemming, decompounding
/// and other operations for "normalizing" words, so searches can scan these normalized forms rather
/// than the literal forms. <br/>This parameter cannot be set in conjunction with the <parameter>INDEXOPTION</parameter>
/// and/or <parameter>STEMMINGCONFIG</parameter> parameters, which are shorthands for configuring stemming
/// and decompounding options and overriding the default configurations for those.<br />
/// This parameter also allows using custom transformations by specifying the name of a class that
/// inherits from <class>%iFind.Transformation.Abstract</class>, optionally followed by a colon and
/// string that will be passed onto the Transform method of the transformation class if it accepts
/// any parameters.</p>
Parameter TRANSFORMATIONSPEC As STRING;

/// <p>If the class you wish to add an iFind index on does not have an bitmap-compatible IDKEY
/// (composed of a single positive integer property), use this parameter to refer to another property
/// in this class that has is bitmap-compatible. This will allow you to use iFind as usual, with the
/// exception that this property (rather than %ID or ID) should be passed to the %FIND operator in
/// SQL statements querying the index:</p>
/// <example language="SQL">SELECT * FROM ThePackage.MyClass
/// 	WHERE MyIntProp %FIND search_index(MyBasicIndex, 'interesting')</example>
/// <p>Note that the regular ID column should still be used when invoking the <method>Rank</method>
/// and <method>Highlight</method> methods for these indices.</p>
Parameter INTKEYPROPERTY As STRING [ Deprecated, Internal ];

/// <p>This parameter controls whether leading and trailing punctuation is ignored in its
/// entirety or not for this index and associated searches. If set to 0, the index will also
/// track words with adjacent punctuation to enable specifically searching for those
/// occurrences.</p>
Parameter IGNOREPUNCTUATION As BOOLEAN = 1;

/// 	Inserts the iFind index for the row
/// THROW: This method throws exceptions.
ClassMethod InsertIndex(pID As %RawString, pArg... As %Binary) [ CodeMode = generator, ServerOnly = 1 ]
{
}

/// Updates the iFind index for the row
ClassMethod UpdateIndex(pID As %RawString, pArg... As %Binary) [ CodeMode = generator, GenerateAfter = InsertIndex, ServerOnly = 1 ]
{
}

/// 		Deletes the iFind index for the row
ClassMethod DeleteIndex(pID As %RawString, pArg... As %Binary) [ CodeMode = generator, GenerateAfter = InsertIndex, ServerOnly = 1 ]
{
}

/// 		Purges the iFind index
ClassMethod PurgeIndex() [ CodeMode = generator, GenerateAfter = InsertIndex, ServerOnly = 1 ]
{
}

ClassMethod SortBeginIndex() [ ServerOnly = 1 ]
{
}

ClassMethod SortEndIndex() [ ServerOnly = 1 ]
{
}

/// Searches for matches based on the iFind index. This function can be accessed more conveniently
/// through the following syntax:
/// <example language="SQL">SELECT * FROM MyPackage.Table WHERE
/// %ID %FIND search_index(<i>index_name</i>, <var>pSearch</var> [, <var>pOption</var> [, <var>pLanguage</var>]])</example>
ClassMethod Find(pSearch As %Library.Binary, pOption As %Integer = 0, pLanguage As %String = "", pSynonymOption As %String = "") As %Library.Binary [ CodeMode = generator, PublicList = (SQLCODE, %msg), ServerOnly = 1, SqlProc ]
{
}

/// This method will normalize the query of %iFind.Find.Basic based on the dictionary defined %iFind.Index.Basic
ClassMethod Normalize(pQuery As %String = "", pLanguage As %String = "") As %String [ CodeMode = generator, ServerOnly = 1 ]
{
}

/// Internal helper method for retrieving runtime index parameter values
ClassMethod GetIndexParams(Output pParams) As %Status [ CodeMode = generator, Internal, ServerOnly = 1 ]
{
}

/// Return an instance of the embedded Find class, initialized with the index' parameters
ClassMethod Embedded() As %RegisteredObject [ CodeMode = generator, ServerOnly = 1 ]
{
}

/// Retrieves the full string value processed by this index.
ClassMethod GetStringValue(pRecordID As %RawString) As %String [ CodeMode = generator, Internal, ServerOnly = 1 ]
{
}

}
