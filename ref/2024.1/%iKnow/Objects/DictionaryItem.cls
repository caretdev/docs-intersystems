/// <p>Note: the use of this class is no longer recommended for accessing elements of a specific domain.
/// For those scenarios, <class>%iKnow.Tables.Utils</class> offers a more flexible and customizable
/// way of projecting iKnow domain data to SQL</p>
/// <p>This is a read-only object representation wrapping the internal iKnow data structures for
/// Dictionary Items.</p>
/// <p>This class can be used from ObjectScript or SQL to access a single or small number of
/// entries, but the storage mappings are not meant to support elaborate or complex queries
/// targeting this SQL table.</p>
/// <p>Please use the predefined queries in <class>%iKnow.Matching.DictionaryAPI</class> and other query classes
/// to consult Dictionary data as the internal global structures are designed to optimize performance for
/// these queries rather than general-purpose access.</p>
Class %iKnow.Objects.DictionaryItem Extends %Persistent [ Deprecated, StorageStrategy = iKnowStorage, System = 4 ]
{

Parameter READONLY = 1;

Property DomainId As %Integer;

Property DictionaryItemId As %Integer;

Property DictionaryId As %Integer;

Property Name As %String(MAXLEN = 1000);

Property URI As %String(MAXLEN = 1000);

Property DefaultLanguage As %String [ Calculated, SqlComputeCode = {set {DefaultLanguage} = $s({DefaultLanguageId}:$lg($$$IKLANGUAGES,+{DefaultLanguageId}), 1:"") }, SqlComputed ];

Property DefaultLanguageId As %Integer;

Property Dictionary As %iKnow.Objects.Dictionary [ Calculated, SqlComputeCode = {set {Dictionary} = {DomainId} _"||"_ {DictionaryId}}, SqlComputed ];

/// Returns a <class>%iKnow.Objects.DictionaryItem</class> object using the supplied identifiers,
/// resolving negative dictionary Item IDs to the appropriate coordinates for a cross-domain
/// dictionary entry.
ClassMethod Open(pDomainId As %Integer, pDictionaryItemId As %Integer) As %iKnow.Objects.DictionaryItem
{
}

}
