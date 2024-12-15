/// <p>This is a read-only object representation wrapping the internal iKnow data structures for
/// CRC Occurrences in a Virtual Source.</p>
/// <p>This class can be used from ObjectScript or SQL to access a single or small number of
/// entries, but the storage mappings are not meant to support elaborate or complex queries
/// targeting this SQL table.</p>
/// <p>Please use the predefined queries in <class>%iKnow.Queries.CrcAPI</class> and other query classes
/// to consult CRC data as the internal global structures are designed to optimize performance for
/// these queries rather than general-purpose access.</p>
Class %iKnow.Objects.VirtualCrcOccurrence Extends %Persistent [ Deprecated, StorageStrategy = iKnowStorage, System = 4 ]
{

Parameter READONLY = 1;

Property DomainId As %Integer;

Property VirtualSourceId As %Integer;

Property CrcOccurrenceId As %Integer;

Property CrcUniId As %Integer;

Property HeadOccId As %Integer;

Property MasterOccId As %Integer [ Calculated, Deprecated, Internal, SqlComputeCode = { set {MasterOccId} = {HeadOccId} }, SqlComputed ];

Property RelationOccId As %Integer;

Property TailOccId As %Integer;

Property SlaveOccId As %Integer [ Calculated, Deprecated, Internal, SqlComputeCode = { set {SlaveOccId} = {TailOccId} }, SqlComputed ];

Property SentenceId As %Integer;

Property PosInSentence As %Integer;

Property CrcUnique As %iKnow.Objects.VirtualCrcUnique [ Calculated, SqlComputeCode = { set {CrcUnique} = {DomainId} _"||"_ {VirtualSourceId} _"||"_ {CrcUniId} }, SqlComputed ];

Property Sentence As %iKnow.Objects.VirtualSentence [ Calculated, SqlComputeCode = {set {Sentence} = {DomainId} _"||"_ {VirtualSourceId} _ "||" _ {SentenceId}}, SqlComputed ];

}
