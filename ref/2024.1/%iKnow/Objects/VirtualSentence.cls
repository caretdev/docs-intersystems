/// <p>This is a read-only object representation wrapping the internal iKnow data structures for
/// sentences in a Virtual Source.</p>
/// <p>This class can be used from ObjectScript or SQL to access a single or small number of
/// entries, but the storage mappings are not meant to support elaborate or complex queries
/// targeting this SQL table.</p>
/// <p>Please use the predefined queries in <class>%iKnow.Queries.SentenceAPI</class> and other query classes
/// to consult sentence data as the internal global structures are designed to optimize performance for
/// these queries rather than general-purpose access.</p>
Class %iKnow.Objects.VirtualSentence Extends %Persistent [ Deprecated, StorageStrategy = iKnowStorage, System = 4 ]
{

Parameter READONLY = 1;

Property DomainId As %Integer;

Property VirtualSourceId As %Integer;

Property SentenceId As %Integer;

Property SentenceValue As %String(MAXLEN = 32000) [ Calculated, SqlComputeCode = {set {SentenceValue} = ##class(%iKnow.Queries.SentenceAPI).GetValue({DomainId},{SentenceId},,{VirtualSourceId})}, SqlComputed ];

Property LanguageId As %Integer;

Property LanguageConfidence As %Numeric;

Property SummaryRelevance As %Numeric;

Property Source As %iKnow.Objects.VirtualSource [ Calculated, SqlComputeCode = {set {Source} = {DomainId} _"||"_ {VirtualSourceId}}, SqlComputed ];

}
