/// <p>The InterSystems IRIS NLP iKnow technology on which this output type is based is now deprecated. Please see the
/// <a href="https://docs.intersystems.com/irislatest/csp/docbook/DocBook.UI.Page.cls?KEY=GIKNOW">product
/// documentation</a> for more detail. The <class>%iKnow.Index.Basic</class> and <class>%iKnow.Index.Minimal</class>
/// index types, which only generate word-level content, remain fully supported.</p>
/// This table contains all entities identified by iFind Semantic or Analytic indices in this namespace
/// using namespace-wide shared storage (cf the IFINDSHAREDSTORAGELOCATION parameter in
/// <class>%iFind.Index.Basic</class>).
Class %iFind.Entity Extends %Persistent [ Deprecated, Final, StorageStrategy = iFind, System = 4 ]
{

Parameter READONLY = 1;

///  String value for this entity
Property Value As %String(COLLATION = "EXACT", MAXLEN = "");

Property EntityId As %Integer;

/// Calculated property returning the entity ID of the entity corresponding to this row, with all words
/// stripped of leading and trailing punctuation. If no such entity exists, this
/// record's entity ID is returned.
Property StrippedEntityId As %iFind.Entity [ Calculated, SqlComputeCode = { set {StrippedEntityId}=##class(%iFind.Entity).GetStrippedEntityId({Value},{ID})}, SqlComputed ];

///  Returns the Entity ID corresponding to the supplied string, after stripping off punctuation.
///  If no such entity exists, <var>pOriginalId</var> is returned.
ClassMethod GetStrippedEntityId(pEntity As %String, pOriginalId As %Integer = "", pKeepChars As %String = {$$$STRIPKEEP}) As %Integer [ SqlName = GetStrippedEntityId, SqlProc ]
{
}

///  Returns the Entity ID corresponding to the supplied string
ClassMethod GetEntityId(pValue As %String) As %Integer [ SqlName = GetEntityId, SqlProc ]
{
}

/// Returns the internal key of the supplied entity value, which is calculated by concatenating the
/// word IDs of all words in the entity value.
ClassMethod GetWordKey(pValue As %String) As %String [ Internal ]
{
}

}
