/// <p>Note: the use of this class is no longer recommended for accessing elements of a specific domain.
/// For those scenarios, <class>%iKnow.Tables.Utils</class> offers a more flexible and customizable
/// way of projecting iKnow domain data to SQL</p>
/// <p>This is a read-only object representation wrapping the internal iKnow data structures for CRC
/// Occurrences.</p>
/// <p>This class can be used from ObjectScript or SQL to access a single or small number of
/// entries, but the storage mappings are not meant to support elaborate or complex queries
/// targeting this SQL table.</p>
/// <p>Please use the predefined queries in <class>%iKnow.Queries.CrcAPI</class> and other query classes
/// to consult CRC data as the internal global structures are designed to optimize performance for
/// these queries rather than general-purpose access.</p>
///  <p>NOTE: This object assumes all underlying data structures are present. Use domain-specific
///  copies of these objects for domains where not all indices are built. See also the
///  GenerateAllObjectsForDomain() method in <class>%iKnow.Objects.Utils</class>.</p>
Class %iKnow.Objects.CrcOccurrence Extends %Persistent [ Deprecated, StorageStrategy = iKnowStorage, System = 4 ]
{

Parameter READONLY = 1;

Property DomainId As %Integer;

Property CrcOccurrenceId As %Integer;

Property CrcUniId As %Integer;

Property HeadOccId As %Integer;

Property MasterOccId As %Integer [ Calculated, Deprecated, Internal, SqlComputeCode = { set {MasterOccId} = {HeadOccId} }, SqlComputed ];

Property RelationOccId As %Integer;

Property TailOccId As %Integer;

Property SlaveOccId As %Integer [ Calculated, Deprecated, Internal, SqlComputeCode = { set {SlaveOccId} = {TailOccId} }, SqlComputed ];

Property SentenceId As %Integer;

Property PosInSentence As %Integer;

Property CcUniId As %Integer [ Calculated, SqlComputeCode = { n crc  set crc = $g(^IRIS.IK.CrcUniId({DomainId},{CrcUniId})), {CcUniId} = $g(^IRIS.IK.CcUni({DomainId},$lg(crc,1,0),$lg(crc,3,0))) }, SqlComputed ];

Property CrcUnique As %iKnow.Objects.CrcUnique [ Calculated, SqlComputeCode = { set {CrcUnique} = {DomainId} _"||"_ {CrcUniId} }, SqlComputed ];

Property CcUnique As %iKnow.Objects.CcUnique [ Calculated, SqlComputeCode = { set {CcUnique} = {DomainId} _"||"_ {CcUniId} }, SqlComputed ];

Property Sentence As %iKnow.Objects.Sentence [ Calculated, SqlComputeCode = {set {Sentence} = {DomainId} _ "||" _ {SentenceId}}, SqlComputed ];

Property SourceId As %Integer [ Calculated, SqlComputeCode = {set {SourceId} = ##class(%iKnow.Queries.SentenceAPI).GetSourceId({DomainId},{SentenceId}) }, SqlComputed ];

}
