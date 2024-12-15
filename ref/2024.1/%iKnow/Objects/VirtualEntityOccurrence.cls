/// <p>This is a read-only object representation wrapping the internal iKnow data structures for
/// Entity Occurrences in a Virtual Source.</p>
/// <p>This class can be used from ObjectScript or SQL to access a single or small number of
/// entries, but the storage mappings are not meant to support elaborate or complex queries
/// targeting this SQL table.</p>
/// <p>Please use the predefined queries in <class>%iKnow.Queries.EntityAPI</class> and other query classes
/// to consult entity data as the internal global structures are designed to optimize performance for
/// these queries rather than general-purpose access.</p>
Class %iKnow.Objects.VirtualEntityOccurrence Extends %Persistent [ Deprecated, StorageStrategy = iKnowStorage, System = 4 ]
{

Parameter READONLY = 1;

Property DomainId As %Integer;

Property VirtualSourceId As %Integer;

Property EntOccId As %Integer;

Property EntUniId As %Integer;

Property EntTypeId As %Integer;

Property SentenceId As %Integer;

Property PosInSentence As %Integer;

Property CrcOccurrenceIdM As %Integer;

Property CrcOccurrenceIdR As %Integer;

Property CrcOccurrenceIdS As %Integer;

Property PathId As %Integer;

Property PosInPath As %Integer;

Property Entity As %iKnow.Objects.VirtualEntityUnique [ Calculated, SqlComputeCode = {set {Entity} = {DomainId} _"||"_ {VirtualSourceId} _ "||" _ {EntUniId}}, SqlComputed ];

Property Sentence As %iKnow.Objects.VirtualSentence [ Calculated, SqlComputeCode = {set {Sentence} = {DomainId} _"||"_ {VirtualSourceId} _ "||" _ {SentenceId}}, SqlComputed ];

}
