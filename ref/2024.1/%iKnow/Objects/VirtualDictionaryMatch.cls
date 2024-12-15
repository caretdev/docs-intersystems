/// <p>This is a read-only object representation wrapping the internal iKnow data structures for
/// Dictionary Matches in a Virtual Source.</p>
/// <p>This class can be used from ObjectScript or SQL to access a single or small number of
/// entries, but the storage mappings are not meant to support elaborate or complex queries
/// targeting this SQL table.</p>
/// <p>Please use the predefined queries in <class>%iKnow.Matching.MatchingAPI</class> and other query classes
/// to consult entity data as the internal global structures are designed to optimize performance for
/// these queries rather than general-purpose access.</p>
Class %iKnow.Objects.VirtualDictionaryMatch Extends %Persistent [ Deprecated, StorageStrategy = iKnowStorage, System = 4 ]
{

Parameter READONLY = 1;

Property DomainId As %Integer;

Property VirtualSourceId As %Integer;

Property DictionaryMatchId As %Integer;

Property DictionaryId As %Integer;

Property DictionaryItemId As %Integer;

Property DictionaryTermId As %Integer;

Property TargetType As %Integer;

Property TargetTypeString As %String [ Calculated, SqlComputeCode = { set {TargetTypeString} = $case({TargetType}, $$$DMTARGETENTITY:"entity", $$$DMTARGETCRC:"crc", $$$DMTARGETPATH:"path")}, SqlComputed ];

Property TargetId As %Integer;

Property MatchScore As %Numeric;

Property MatchedConceptCount As %Integer;

Property MatchedRelationCount As %Integer;

Property PartialMatchCount As %Integer;

Property FirstMatchedPositionInPath As %Integer;

Property LastMatchedPositionInPath As %Integer;

Property IsOrdered As %Boolean;

Property NegatedEntityCount As %Integer;

Property MatchedEntityCount As %Integer [ Calculated, SqlComputeCode = {set {MatchedEntityCount} = {MatchedConceptCount} + {MatchedRelationCount} }, SqlComputed ];

Property MatchedPathSectionLength As %Integer [ Calculated, SqlComputeCode = {set {MatchedPathSectionLength} = {LastMatchedPositionInPath} - {FirstMatchedPositionInPath} + 1 }, SqlComputed ];

Property Dictionary As %iKnow.Objects.Dictionary [ Calculated, SqlComputeCode = {set {Dictionary} = $s({DictionaryId}<0:0, 1:{DomainId}) _"||"_ $zabs({DictionaryId})}, SqlComputed ];

Property DictionaryItem As %iKnow.Objects.DictionaryItem [ Calculated, SqlComputeCode = {set {DictionaryItem} = $s({DictionaryId}<0:0, 1:{DomainId}) _"||"_ $zabs({DictionaryItemId})}, SqlComputed ];

Property DictionaryTerm As %iKnow.Objects.DictionaryTerm [ Calculated, SqlComputeCode = {set {DictionaryTerm} = $s({DictionaryId}<0:0, 1:{DomainId}) _"||"_ $zabs({DictionaryTermId})}, SqlComputed ];

Property MatchedEntityOccurrence As %iKnow.Objects.VirtualEntityOccurrence [ Calculated, SqlComputeCode = {set {MatchedEntityOccurrence} = $s({TargetType}=0:{DomainId}_"||"_{VirtualSourceId}_"||"_{TargetId}, 1:"")}, SqlComputed ];

Property MatchedCrcOccurrence As %iKnow.Objects.VirtualCrcOccurrence [ Calculated, SqlComputeCode = {set {MatchedCrcOccurrence} = $s({TargetType}=1:{DomainId}_"||"_{VirtualSourceId}_"||"_{TargetId}, 1:"")}, SqlComputed ];

}
