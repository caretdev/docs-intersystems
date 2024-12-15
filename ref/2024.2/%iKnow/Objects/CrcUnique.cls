/// <p>Note: the use of this class is no longer recommended for accessing elements of a specific domain.
/// For those scenarios, <class>%iKnow.Tables.Utils</class> offers a more flexible and customizable
/// way of projecting iKnow domain data to SQL</p>
///  <p>This is a read-only object representation wrapping the internal iKnow data structures for
///  unique CRCs.</p>
///  <p>This class can be used from ObjectScript or SQL to access a single or small number of
///  entries, but the storage mappings are not meant to support elaborate or complex queries
///  targeting this SQL table.</p>
///  <p>Please use the predefined queries in <class>%iKnow.Queries.CrcAPI</class> and other query classes
///  to consult CRC data as the internal global structures are designed to optimize performance for
///  these queries rather than general-purpose access.</p>
///  <p>NOTE: This object assumes all underlying data structures are present. Use domain-specific
///  copies of these objects for domains where not all indices are built. See also the
///  GenerateAllObjectsForDomain() method in <class>%iKnow.Objects.Utils</class>.</p>
Class %iKnow.Objects.CrcUnique Extends %Persistent [ Deprecated, StorageStrategy = iKnowStorage, System = 4 ]
{

Parameter READONLY = 1;

Property DomainId As %Integer;

Property CrcUniId As %Integer;

Property HeadId As %Integer;

Property MasterId As %Integer [ Calculated, Deprecated, Internal, SqlComputeCode = { set {MasterId} = {HeadId} }, SqlComputed ];

Property RelationId As %Integer;

Property TailId As %Integer;

Property SlaveId As %Integer [ Calculated, Deprecated, Internal, SqlComputeCode = { set {SlaveId} = {TailId}}, SqlComputed ];

Property CorpusFrequency As %Integer [ Calculated, SqlComputeCode = { set {CorpusFrequency} = $lg(^IRIS.IK.CrcUniDetails({DomainId},{CrcUniId}),1) }, SqlComputed ];

Property CorpusSpread As %Integer [ Calculated, SqlComputeCode = { set {CorpusSpread} = $lg(^IRIS.IK.CrcUniDetails({DomainId},{CrcUniId}),2) }, SqlComputed ];

Property CorpusDominance As %Numeric [ Calculated, SqlComputeCode = {set {CorpusDominance} = ##class(%iKnow.Semantics.DominanceAPI).GetDomainValue({DomainId},{CrcUniId},$$$SDCRC) }, SqlComputed ];

Property Head As %iKnow.Objects.EntityUnique [ Calculated, SqlComputeCode = { set {Head} = {DomainId} _"||"_ {HeadId} }, SqlComputed ];

Property Master As %iKnow.Objects.EntityUnique [ Calculated, Deprecated, Internal, SqlComputeCode = { set {Master} = {DomainId} _"||"_ {MasterId} }, SqlComputed ];

Property Relation As %iKnow.Objects.EntityUnique [ Calculated, SqlComputeCode = { set {Relation} = {DomainId} _"||"_ {RelationId} }, SqlComputed ];

Property Tail As %iKnow.Objects.EntityUnique [ Calculated, SqlComputeCode = { set {Tail} = {DomainId} _"||"_ {TailId} }, SqlComputed ];

Property Slave As %iKnow.Objects.EntityUnique [ Calculated, Deprecated, Internal, SqlComputeCode = { set {Slave} = {DomainId} _"||"_ {SlaveId} }, SqlComputed ];

Property CcUniId As %Integer [ Calculated, SqlComputeCode = { set {CcUniId} = $g(^IRIS.IK.CcUni({DomainId},+{HeadId},+{TailId})) }, SqlComputed ];

Property CcUnique As %iKnow.Objects.CcUnique [ Calculated, SqlComputeCode = { set {CcUnique} = {DomainId} _"||"_ {CcUniId} }, SqlComputed ];

}
