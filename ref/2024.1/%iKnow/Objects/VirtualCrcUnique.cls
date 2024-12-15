/// <p>This is a read-only object representation wrapping the internal iKnow data structures for
/// unique CRCs in a Virtual Source.</p>
/// <p>This class can be used from ObjectScript or SQL to access a single or small number of
/// entries, but the storage mappings are not meant to support elaborate or complex queries
/// targeting this SQL table.</p>
/// <p>Please use the predefined queries in <class>%iKnow.Queries.CrcAPI</class> and other query classes
/// to consult CRC data as the internal global structures are designed to optimize performance for
/// these queries rather than general-purpose access.</p>
Class %iKnow.Objects.VirtualCrcUnique Extends %Persistent [ Deprecated, StorageStrategy = iKnowStorage, System = 4 ]
{

Parameter READONLY = 1;

Property DomainId As %Integer;

Property VirtualSourceId As %Integer;

Property CrcUniId As %Integer;

Property RealCrcUniId As %Integer [ Calculated, SqlComputeCode = { set {RealCrcUniId} = $lg(^IRIS.IKV.CrcUniDetails({DomainId},{VirtualSourceId},{CrcUniId}),2) }, SqlComputed ];

Property HeadId As %Integer;

Property MasterId As %Integer [ Calculated, Deprecated, Internal, SqlComputeCode = { set {MasterId} = {HeadId} }, SqlComputed ];

Property RelationId As %Integer;

Property TailId As %Integer;

Property SlaveId As %Integer [ Calculated, Deprecated, Internal, SqlComputeCode = { set {SlaveId} = {TailId}}, SqlComputed ];

Property Frequency As %Integer [ Calculated, SqlComputeCode = { set {Frequency} = $lg(^IRIS.IK.CrcUniDetails({DomainId},{VirtualSourceId},{CrcUniId}),1) }, SqlComputed ];

Property Head As %iKnow.Objects.VirtualEntityUnique [ Calculated, SqlComputeCode = { set {Head} = {DomainId} _"||"_ {VirtualSourceId} _"||"_ {HeadId} }, SqlComputed ];

Property Master As %iKnow.Objects.VirtualEntityUnique [ Calculated, Deprecated, Internal, SqlComputeCode = { set {Master} = {DomainId} _"||"_ {VirtualSourceId} _"||"_ {MasterId} }, SqlComputed ];

Property Relation As %iKnow.Objects.VirtualEntityUnique [ Calculated, SqlComputeCode = { set {Relation} = {DomainId} _"||"_ {VirtualSourceId} _"||"_ {RelationId} }, SqlComputed ];

Property Tail As %iKnow.Objects.VirtualEntityUnique [ Calculated, SqlComputeCode = { set {Tail} = {DomainId} _"||"_ {VirtualSourceId} _"||"_ {TailId} }, SqlComputed ];

Property Slave As %iKnow.Objects.VirtualEntityUnique [ Calculated, Deprecated, Internal, SqlComputeCode = { set {Slave} = {DomainId} _"||"_ {VirtualSourceId} _"||"_ {SlaveId} }, SqlComputed ];

}
