/// <p>Note: the use of this class is no longer recommended for accessing elements of a specific domain.
/// For those scenarios, <class>%iKnow.Tables.Utils</class> offers a more flexible and customizable
/// way of projecting iKnow domain data to SQL</p>
/// <p>This is a read-only object representation wrapping the internal iKnow data structures for
/// Paths.</p>
/// <p>This class can be used from ObjectScript or SQL to access a single or small number of
/// entries, but the storage mappings are not meant to support elaborate or complex queries
/// targeting this SQL table.</p>
/// <p>Please use the predefined queries in <class>%iKnow.Queries.PathAPI</class> and other query classes
/// to consult Path data as the internal global structures are designed to optimize performance for
/// these queries rather than general-purpose access.</p>
///  <p>NOTE: This object assumes all underlying data structures are present. Use domain-specific
///  copies of these objects for domains where not all indices are built. See also the
///  GenerateAllObjectsForDomain() method in <class>%iKnow.Objects.Utils</class>.</p>
Class %iKnow.Objects.Path Extends %Persistent [ Deprecated, StorageStrategy = iKnowStorage, System = 4 ]
{

Parameter READONLY = 1;

Property DomainId As %Integer;

Property PathId As %Integer;

Property Entities As %List [ Calculated, SqlComputeCode = { set {Entities} = ##class(%iKnow.Queries.PathAPI).GetEntIds({DomainId},{PathId}) }, SqlComputed ];

Property EntityOccurrences As %List;

Property SentenceId As %Integer [ Calculated, SqlComputeCode = { set {SentenceId} = ##class(%iKnow.Queries.PathAPI).GetSentenceId({DomainId},{PathId})}, SqlComputed ];

Property Sentence As %iKnow.Objects.Sentence [ Calculated, SqlComputeCode = {set {Sentence} = {DomainId} _"||"_ $list(^IRIS.IK.PathToSent({DomainId}, $order(^IRIS.IK.PathToSent({DomainId}, {PathId}),-1)))}, SqlComputed ];

Property SourceId As %Integer [ Calculated, SqlComputeCode = { set {SourceId} = ##class(%iKnow.Queries.PathAPI).GetSourceId({DomainId},{PathId})}, SqlComputed ];

Property Source As %iKnow.Objects.Source [ Calculated, SqlComputeCode = {set {Source} = {DomainId} _"||"_ $list(^IRIS.IK.PathToSrc({DomainId}, $order(^IRIS.IK.PathToSrc({DomainId}, {PathId}),-1)))}, SqlComputed ];

}
