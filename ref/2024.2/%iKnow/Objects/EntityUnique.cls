/// <p>Note: the use of this class is no longer recommended for accessing elements of a specific domain.
/// For those scenarios, <class>%iKnow.Tables.Utils</class> offers a more flexible and customizable
/// way of projecting iKnow domain data to SQL</p>
///  <p>This is a read-only object representation wrapping the internal iKnow data structures for
///  unique Entities.</p>
///  <p>This class can be used from ObjectScript or SQL to access a single or small number of
///  entries, but the storage mappings are not meant to support elaborate or complex queries
///  targeting this SQL table.</p>
///  <p>Please use the predefined queries in <class>%iKnow.Queries.EntityAPI</class> and other query classes
///  to consult Entity data as the internal global structures are designed to optimize performance for
///  these queries rather than general-purpose access.</p>
///  <p>Note: the <index>EntUni</index> index only works for entities up to 150 characters.</p>
///  <p>NOTE: This object assumes all underlying data structures are present. Use domain-specific
///  copies of these objects for domains where not all indices are built. See also the
///  GenerateAllObjectsForDomain() method in <class>%iKnow.Objects.Utils</class>.</p>
Class %iKnow.Objects.EntityUnique Extends %Persistent [ Deprecated, StorageStrategy = iKnowStorage, System = 4 ]
{

Parameter READONLY = 1;

Property DomainId As %Integer;

Property EntUniId As %Integer;

Property EntityValue As %String(MAXLEN = 2000);

Property CorpusFrequency As %Integer [ Calculated, SqlComputeCode = {set {CorpusFrequency} = {CorpusFrequencyAsConcept} + {CorpusFrequencyAsRelation}}, SqlComputed ];

Property CorpusFrequencyAsConcept As %Integer [ Calculated, SqlComputeCode = {set {CorpusFrequencyAsConcept} = +$lg($g(^IRIS.IK.EntUniDetails({DomainId},{EntUniId})),1) }, SqlComputed ];

Property CorpusFrequencyAsRelation As %Integer [ Calculated, SqlComputeCode = {set {CorpusFrequencyAsRelation} = +$lg($g(^IRIS.IK.EntUniDetails({DomainId},{EntUniId})),2) }, SqlComputed ];

Property CorpusSpread As %Integer [ Calculated, SqlComputeCode = {set {CorpusSpread} = +$lg($g(^IRIS.IK.EntUniDetails({DomainId},{EntUniId})),3) }, SqlComputed ];

Property CorpusSpreadAsConcept As %Integer [ Calculated, SqlComputeCode = {set {CorpusSpreadAsConcept} = +$lg($g(^IRIS.IK.EntUniDetails({DomainId},{EntUniId})),4) }, SqlComputed ];

Property CorpusSpreadAsRelation As %Integer [ Calculated, SqlComputeCode = {set {CorpusSpreadAsRelation} = +$lg($g(^IRIS.IK.EntUniDetails({DomainId},{EntUniId})),5) }, SqlComputed ];

Property CorpusDominanceAsConcept As %Numeric [ Calculated, SqlComputeCode = {set {CorpusDominanceAsConcept} = ##class(%iKnow.Semantics.DominanceAPI).GetDomainValue({DomainId},{EntUniId},$$$SDCONCEPT) }, SqlComputed ];

Property CorpusDominanceAsRelation As %Numeric [ Calculated, SqlComputeCode = {set {CorpusDominanceAsRelation} = ##class(%iKnow.Semantics.DominanceAPI).GetDomainValue({DomainId},{EntUniId},$$$SDRELATION) }, SqlComputed ];

/// This Index only works for strings of up to 150 ($$$IKHASHIZE) characters
}
