/// <p>The InterSystems IRIS NLP iKnow technology is now deprecated. Please see the
/// <a href="https://docs.intersystems.com/irislatest/csp/docbook/DocBook.UI.Page.cls?KEY=GIKNOW">product
/// documentation</a> for more detail.</p>
/// <p>This class represents User Dictionaries, used to rewrite fragments of input data
/// specific to a particular use case.</p>
/// <p>When creating a User Dictionary, you can pass initial values for the following properties
/// to its <method>%New</method> method:
/// <ol>
/// 	<li><property>Name</property> (required)</li>
/// 	<li><property>Description</property></li>
/// </ol>
/// Check the respective property descriptions for more details.</p>
Class %iKnow.UserDictionary Extends %Persistent [ Deprecated, StorageStrategy = SqlStorage, System = 4 ]
{

Property Id As %Integer [ Final, ReadOnly ];

Property Name As %String [ Final, ReadOnly ];

Property Description As %String [ Final ];

/// This property is used for transient versions only
Property IsTransient As %Boolean [ InitialExpression = 0, Internal, Private, Transient ];

Property Normalizer As %iKnow.Configuration [ Internal, Private, Transient ];

Method NormalizerGet() As %iKnow.Configuration [ Internal, ServerOnly = 1 ]
{
}

Method NextEntry(pKey As %Integer) As %Integer [ Internal ]
{
}

Method GetEntry(pKey As %Integer) As %List [ Internal ]
{
}

/// <p>Returns a User Dictionary object by name. First, this method checks if <var>pName</var>
/// is a name used by any saved User Dictionary object. If none found, it is used as a file
/// path for the legacy file-based User Dictionaries. If there is no file at this path,
/// "" is returned.</p>
/// <p><b>Note</b>: file-based User Dictionaries are deprecated. Please use object-based ones
/// by using <method>%New</method>, <method>%Save</method> and <method>AddEntry</method>.</p>
ClassMethod OpenByName(pName As %String) As %iKnow.UserDictionary
{
}

/// Creates a UserDictionary instance based on a file containing comma-separated from/to
/// pairs on each line. The instance produced by this classmethod is transient and cannot
/// be saved through %Save()
ClassMethod CreateFromFile(pPath As %String) As %iKnow.UserDictionary [ Internal ]
{
}

ClassMethod CreateTransient(pName As %String = "") As %iKnow.UserDictionary [ Internal ]
{
}

Method %OnNew(pName As %String, pDescription As %String = "") As %Status [ Private, ServerOnly = 1 ]
{
}

Method %OnBeforeSave(insert As %Boolean) As %Status [ Private, ServerOnly = 1 ]
{
}

/// Removes all entries from this user dictionary (only relevant for non-transient ones)
Method ClearEntries() As %Status
{
}

ClassMethod %OnDelete(oid As %ObjectIdentity) As %Status [ Private, ServerOnly = 1 ]
{
}

///  <p>Adds a single entry to this User Dictionary at <var>position</var>. If <var>position</var> <= 0 (default=0),
///  it is added at the bottom of the list, otherwise at the requested position, shifting
///  existing entries down if it was already taken.</p>
///  <p>These changes are saved automatically. There is no need to call <method>%Save</method></p>
Method AddEntry(pRewriteFrom As %String, pRewriteTo As %String, ByRef pPosition As %Integer = 0) As %Status
{
}

Method AddNegationTerm(pWord As %String, Output pPosition As %Integer) As %Status
{
}

Method AddPositiveSentimentTerm(pWord As %String, Output pPosition As %Integer) As %Status
{
}

Method AddNegativeSentimentTerm(pWord As %String, Output pPosition As %Integer) As %Status
{
}

Method AddNumber(pWord As %String, Output pPosition As %Integer) As %Status
{
}

Method AddTime(pWord As %String, Output pPosition As %Integer) As %Status
{
}

Method AddUnit(pWord As %String, Output pPosition As %Integer) As %Status
{
}

/// Use <var>pLevel</var> to specify the level of certainty for this term (1-9).
/// A value of 1 implies a very uncertain statement, a value of 9 a very certain one.
Method AddCertaintyTerm(pWord As %String, pLevel As %Integer = 9, Output pPosition) As %Status
{
}

Method AddSentenceEnd(pToken As %String, Output pPosition) As %Status
{
}

Method AddSentenceNoEnd(pToken As %String, Output pPosition) As %Status
{
}

Method AddConcept(pWord As %String, Output pPosition) As %Status
{
}

Method AddRelation(pWord As %String, Output pPosition) As %Status
{
}

Method AddNonRelevant(pWord As %String, Output pPosition) As %Status
{
}

/// <p>Generic method to add attribute marker terms. See the attribute-specific helper methods
/// for practical entry points that avoid keyword typos:</p>
/// <ul>
/// <li><method>AddNegationTerm</method></li>
/// <li><method>AddPositiveSentimentTerm</method></li>
/// <li><method>AddNegativeSentimentTerm</method></li>
/// <li><method>AddCertaintyTerm</method></li>
/// <li><method>AddNumber</method></li>
/// <li><method>AddTime</method></li>
/// <li><method>AddUnit</method></li>
/// </ul>
/// <p>Supported metadata can be passed using <var>pMetadata</var></p>
/// <example>
///  set meta = "c=9"   // certainty level
///  do userDictionary.AddAttribute("absolutely", "UDCertainty",, meta)
/// </example>
Method AddAttribute(pWord As %String, pAttribute As %String = "UDNegation", Output pPosition, pMetadata As %String = "") As %Status [ Internal ]
{
}

///  <p>Removes the User Dictionary entry registered at <var>position</var>. This method will
///  not impact the order or position of any remaining entries.</p>
///  <p>These changes are saved automatically. There is no need to call <method>%Save</method></p>
Method RemoveEntry(pPosition As %Integer) As %Status
{
}

///  <p>Returns the contents of this User Dictionary in the form pResult(position) = $lb(rewriteFrom, rewriteTo [, metadata]).</p>
Method GetEntries(ByRef pResult) As %Status
{
}

/// Checks if the supplied User Dictionary instance is managed
ClassMethod CheckIfManaged(pUserDict As %iKnow.UserDictionary) As %Status [ Internal ]
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

}
