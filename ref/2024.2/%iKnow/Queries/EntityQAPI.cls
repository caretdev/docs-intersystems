/// <p>This is an automatically generated class, offering a functionally equivalent set of methods and queries as <class>%iKnow.Queries.EntityAPI</class>, exposed as SqlProc methods.</p><p>See the classdocs for <class>%iKnow.Queries.EntityAPI</class> for more information.</p>
Class %iKnow.Queries.EntityQAPI Extends %iKnow.Queries.AbstractQAPI [ Deprecated, System = 4 ]
{

///  <p>Returns all entities appearing in any source satisfying the supplied <var>filter</var>
///  objects criteria, with their frequencies and spread recalculated to comply with the filter
///  depending on the value of <var>filtermode</var>, but the result is NOT re-sorted, regardless
///  of the value for <var>filtermode</var> (use <method>GetTop</method> if you want sorted results).</p>
///  <p>Depending on the value of <var>enttype</var> parameter, this method will only return concepts
///  ($$$ENTTYPECONCEPT, default), relations ($$$ENTTYPERELATION) or both ($$$ENTTYPEANY).</p>
///  <p>Through the <var>skipListIds</var> parameter, a user can supply one or more lists of (to the user)
///  insignificant terms that should be excluded from the result.</p>
ClassMethod GetByFilterExecute(ByRef qHandle As %Binary,  domainid As %Integer, filter As %String(MAXLEN=32767) = "", filtermode As %Integer = {$$$FILTERONLY}, enttype As %Integer = {$$$ENTTYPECONCEPT}, skipListIds As %String(MAXLEN=32767) = "", pUseStems As %Boolean = 0) As %Status [ Internal ]
{
}

ClassMethod GetByFilterFetch(ByRef qHandle As %Binary, ByRef Row As %List, ByRef AtEnd As %Integer = 0) As %Status [ Internal, PlaceAfter = GetByFilterExecute ]
{
}

ClassMethod GetByFilterClose(ByRef qHandle As %Binary) As %Status [ Internal, PlaceAfter = GetByFilterExecute ]
{
}

///  <p>Returns the unique entities appearing in the sources specified.</p>
///  <p>To get the unique entities of a virtual source, only a single virtual source can be supplied using
///  its negative ID value.</p>
ClassMethod GetBySourceExecute(ByRef qHandle As %Binary,  domainid As %Integer, sourceidlist As %String(MAXLEN=32767), page As %Integer = 1, pagesize As %Integer = 10, enttype As %Integer = {$$$ENTTYPEANY}, skipListIds As %String(MAXLEN=32767) = "", pUseStems As %Boolean = 0) As %Status [ Internal ]
{
}

ClassMethod GetBySourceFetch(ByRef qHandle As %Binary, ByRef Row As %List, ByRef AtEnd As %Integer = 0) As %Status [ Internal, PlaceAfter = GetBySourceExecute ]
{
}

ClassMethod GetBySourceClose(ByRef qHandle As %Binary) As %Status [ Internal, PlaceAfter = GetBySourceExecute ]
{
}

/// Retrieves all entities corresponding to a certain stem identified by <var>pStemUniId</var>.
ClassMethod GetByStemExecute(ByRef qHandle As %Binary,  pDomainId As %Integer, pStemUniId As %Integer, vSrcId As %Integer = 0, pLanguage As %String(MAXLEN=32767) = "") As %Status [ Internal ]
{
}

ClassMethod GetByStemFetch(ByRef qHandle As %Binary, ByRef Row As %List, ByRef AtEnd As %Integer = 0) As %Status [ Internal, PlaceAfter = GetByStemExecute ]
{
}

ClassMethod GetByStemClose(ByRef qHandle As %Binary) As %Status [ Internal, PlaceAfter = GetByStemExecute ]
{
}

///  <p>Returns the total number of distinct entities for this domain, optionally filtered to a set of
///  sources satisfying the <class>%iKnow.Filters.Filter</class> object supplied through <var>filter</var>.
///  Depending on the value of <var>includeZeroFrequency</var>, entities not appearing in any source (but
///  registered in the domain for other purposes) are included or excluded from the result.</p>
///  <p>Through the <var>skipListIds</var> parameter, a user can supply one or more lists of (to the user)
///  insignificant terms that should be excluded from the result.</p>
ClassMethod GetCountByDomain(domainid As %Integer, filter As %String(MAXLEN=32767) = "", Output scText As %String = "", skipListIds As %String(MAXLEN=32767) = "", includeZeroFrequency As %Boolean = 0, pUseStems As %Boolean = 0) As %Library.Integer [ SqlProc ]
{
}

///  <p>Returns the total number of distinct entities for a given list of sources. The count returned either
///  represents the entities appearing in either (with <var>setop</var> $$$UNION) or all (with <var>setop</var>
///  $$$INTERSECT) of the supplied sources. Using <var>enttype</var>, the returned count is
///  filtered to just entities ($$$ENTTYPECONCEPT), relations ($$$ENTTYPERELATION). The default
///  is unfiltered ($$$ENTTYPEANY).</p>
///  <p>To get the unique entities of a virtual source, only a single virtual source can be supplied using
///  its negative ID value (otherwise, -1 is returned).</p>
///  <p>Through the <var>skipListIds</var> parameter, a user can supply one or more lists of (to the user)
///  insignificant terms that should be excluded from the result.</p>
ClassMethod GetCountBySource(domainid As %Integer, sourceidlist As %String(MAXLEN=32767), setop As %Integer = {$$$UNION}, Output scText As %String = "", skipListIds As %String(MAXLEN=32767) = "", enttype As %Integer = {$$$ENTTYPEANY}, pUseStems As %Boolean = 0) As %Library.Integer [ SqlProc ]
{
}

///  <p>Returns the frequency of the entity corresponding to the supplied <var>entUniId</var>, occurring
///  in a concept role (if <var>enttype</var> = $$$ENTTYPECONCEPT), a relationship role (if
///  <var>enttype</var> = $$$ENTTYPERELATION) or both (<var>enttype</var> = $$$ENTTYPEANY).</p>
///  <p>When specifying a Virtual Source ID, the frequency within the virtual source will be returned.</p>
ClassMethod GetFrequency(domainId As %Integer, entUniId As %Integer, enttype As %Integer = {$$$ENTTYPEANY}, vSrcId As %Integer = 0, filter As %String(MAXLEN=32767) = "", Output scText As %String = "") As %Library.Integer [ SqlProc ]
{
}

///  <p>Returns the entity ID corresponding to the specified entity value, if any.</p>
///  <p>When specifying a Virtual Source ID, it will treat the entity as a virtual one,
///  in the context of that vSrcId.</p>
ClassMethod GetId(domainid As %Integer, entityvalue As %String(MAXLEN=32767), vSrcId As %Integer = 0) As %Library.Integer [ SqlProc ]
{
}

/// <p>Returns the literal value for a particular <i>Part ID</i>, as it
/// occurred in the original text.</p>
ClassMethod GetLiteral(pDomainId As %Integer, pPartId As %Integer, vSrcId As %Integer = 0) As %Library.String [ SqlProc ]
{
}

///  <p>Retrieves the significant entities in a list of sources supplied through <var>sourceidlist</var>,
///  as compared to the other sources in the domain (optionally filtered through a
///  <class>%iKnow.Filters.Filter</class> object specified through <var>filter</var>).</p>
///  <p>The following <var>algorithm</var> values are currently available:</p>
///  <ul>
///  		<li>$$$NEWENTSIMPLE - takes no parameters</li>
///  </ul>
///  <p>To get the significant entities of a virtual source compared to the non-virtual ones in the
///  domain, only a single virtual source can be supplied using its negative ID value.</p>
///  <p>Through the <var>enttype</var> parameter, the method can be instructed to return either concepts
///  ($$$ENTTYPECONCEPT) or relations ($$$ENTTYPERELATION).</p>
///  <p>Through the <var>skipListIds</var> parameter, a user can supply one or more lists of (to the user)
///  insignificant terms that should be excluded from the result.</p>
ClassMethod GetNewBySourceExecute(ByRef qHandle As %Binary,  domainid As %Integer, sourceidlist As %String(MAXLEN=32767), page As %Integer = 1, pagesize As %Integer = 10, filter As %String(MAXLEN=32767) = "", entType As %Integer = {$$$ENTTYPECONCEPT}, algorithm As %String(MAXLEN=32767) = {$$$NEWENTSIMPLE}, algorithmParams As %String(MAXLEN=32767) = "", skipListIds As %String(MAXLEN=32767) = "", pUseStems As %Boolean = 0) As %Status [ Internal ]
{
}

ClassMethod GetNewBySourceFetch(ByRef qHandle As %Binary, ByRef Row As %List, ByRef AtEnd As %Integer = 0) As %Status [ Internal, PlaceAfter = GetNewBySourceExecute ]
{
}

ClassMethod GetNewBySourceClose(ByRef qHandle As %Binary) As %Status [ Internal, PlaceAfter = GetNewBySourceExecute ]
{
}

/// <p>Returns all attributes for a given part. Any named attribute properties are also
/// included through sub-nodes (not available through SQL or SOAP):
/// <blockquote>pResult(<i>rowNumber</i>, <i>propertyName</i>) = <i>propertyValue</i></blockquote></p>
/// <p>The returned <var>wordPositions</var> only extend to the last attributed word position
/// (there might be more words within the entity).</p>
ClassMethod GetOccurrenceAttributesExecute(ByRef qHandle As %Binary,  pDomainId As %Integer, pPartId As %Integer, vSrcId As %Integer = 0) As %Status [ Internal ]
{
}

ClassMethod GetOccurrenceAttributesFetch(ByRef qHandle As %Binary, ByRef Row As %List, ByRef AtEnd As %Integer = 0) As %Status [ Internal, PlaceAfter = GetOccurrenceAttributesExecute ]
{
}

ClassMethod GetOccurrenceAttributesClose(ByRef qHandle As %Binary) As %Status [ Internal, PlaceAfter = GetOccurrenceAttributesExecute ]
{
}

///  <p>Returns the total number of entity occurrences in a domain.</p>
ClassMethod GetOccurrenceCountByDomain(pDomainId As %Integer, pFilter As %String(MAXLEN=32767) = "", pEntType As %Integer = {$$$ENTTYPEANY}, Output scText As %String = "") As %Library.Integer [ SqlProc ]
{
}

///  <p>Returns the total number of entity occurrences for the given list of sources. Use negative source
///  IDs to refer to virtual sources.</p>
ClassMethod GetOccurrenceCountBySource(domainid As %Integer, sourceidlist As %String(MAXLEN=32767), Output scText As %String = "", enttype As %Integer = {$$$ENTTYPEANY}) As %Library.Integer [ SqlProc ]
{
}

/// <p>Returns all occurrences for any of the given unique entities in <var>pEntUniIds</var>,
/// including whether the attribute <var>pAttributeId</var> is applicable to this occurrence.</p>
/// <p>If this domain is configured for stemming using $$$IKPSTEMMING, any actual entities corresponding
/// to <var>pEntUniIds</var> elements will be returned.</p>
ClassMethod GetOccurrencesByIdExecute(ByRef qHandle As %Binary,  pDomainId As %Integer, pEntUniIds As %String(MAXLEN=32767), pPage As %Integer = 1, pPageSize As %Integer = 10, pFilter As %String(MAXLEN=32767) = "", pAttributeId As %Integer = {$$$IKATTNEGATION}, vSrcId As %Integer = 0, pIncludeActualForms As %Boolean = 0) As %Status [ Internal ]
{
}

ClassMethod GetOccurrencesByIdFetch(ByRef qHandle As %Binary, ByRef Row As %List, ByRef AtEnd As %Integer = 0) As %Status [ Internal, PlaceAfter = GetOccurrencesByIdExecute ]
{
}

ClassMethod GetOccurrencesByIdClose(ByRef qHandle As %Binary) As %Status [ Internal, PlaceAfter = GetOccurrencesByIdExecute ]
{
}

///  <p>This method will return all entities occurring in a direct relationship with at least on (if <var>setop</var> = $$$UNION)
///  or all (if <var>setop</var> = $$$INTERSECT) of the entities in the supplied <var>entitylist</var>, anywhere within
///  the supplied domain.</p>
///  <p>The scope of this query can be limited through supplying a <class>%iKnow.Filters.Filter</class> object for the <var>filter</var>
///  parameter to restrict the result to those CRCs occurring in any source satisfying the filter
///  criteria. When using a filter, the <var>filtermode</var> parameter will control whether or not the
///  frequency and spread of returned records should be recalculated and whether results should be
///  resorted along these recalculated numbers.</p>
///  <p>Through the <var>positionstomatch</var> parameter, the user can specify whether the entities returned should be
///  occurring on the Head side ($$$USEPOSH), the Tail side ($$$USEPOST) or either ($$$USEPOSHT, default)
///  side of the relationship.</p>
///  <p>The <var>aggregationtype</var> parameter lets you choose how to aggregate the frequency and spread of results
///  related to multiple entries in the input <var>entitylist</var>.</p>
///  <p>Through the <var>skipListIds</var> parameter, a user can supply one or more lists of (to the user)
///  insignificant terms that should be excluded from the result.</p>
/// <p>Note: this method only returns entities that appear in direct relationships with the seed
/// entity. For the broader context of entities, including indirect relationships (still within
/// a single path), please refer to <class>%iKnow.Semantics.ProximityAPI</class>
ClassMethod GetRelatedExecute(ByRef qHandle As %Binary,  domainid As %Integer, entitylist As %String(MAXLEN=32767), page As %Integer = 1, pagesize As %Integer = 10, filter As %String(MAXLEN=32767) = "", filtermode As %Integer = {$$$FILTERONLY}, positionstomatch As %Integer = {$$$USEPOSHT}, aggregationtype As %Integer = {$$$AGGSUM}, setop As %Integer = {$$$UNION}, sorttype As %Integer = {$$$SORTBYDOMAINDEFAULT}, skipListIds As %String(MAXLEN=32767) = "") As %Status [ Internal ]
{
}

ClassMethod GetRelatedFetch(ByRef qHandle As %Binary, ByRef Row As %List, ByRef AtEnd As %Integer = 0) As %Status [ Internal, PlaceAfter = GetRelatedExecute ]
{
}

ClassMethod GetRelatedClose(ByRef qHandle As %Binary) As %Status [ Internal, PlaceAfter = GetRelatedExecute ]
{
}

///  <p>Returns the entities directly related to a supplied list of entity IDs.</p>
///  <p>See <method>GetRelated</method> for a description of the parameters.</p>
ClassMethod GetRelatedByIdExecute(ByRef qHandle As %Binary,  domainid As %Integer, entityidlist As %String(MAXLEN=32767), page As %Integer = 1, pagesize As %Integer = 10, filter As %String(MAXLEN=32767) = "", filtermode As %Integer = {$$$FILTERONLY}, positionstomatch As %Integer = {$$$USEPOSHT}, aggregationtype As %Integer = {$$$AGGSUM}, setop As %Integer = {$$$UNION}, sorttype As %Integer = {$$$SORTBYDOMAINDEFAULT}, skipListIds As %String(MAXLEN=32767) = "") As %Status [ Internal ]
{
}

ClassMethod GetRelatedByIdFetch(ByRef qHandle As %Binary, ByRef Row As %List, ByRef AtEnd As %Integer = 0) As %Status [ Internal, PlaceAfter = GetRelatedByIdExecute ]
{
}

ClassMethod GetRelatedByIdClose(ByRef qHandle As %Binary) As %Status [ Internal, PlaceAfter = GetRelatedByIdExecute ]
{
}

///  <p>Returns the number of related entities for a given list of entities.</p>
///  <p>See <method>GetRelated</method> for a description of the parameters.</p>
ClassMethod GetRelatedCount(domainid As %Integer, entitylist As %String(MAXLEN=32767), filter As %String(MAXLEN=32767) = "", positionstomatch As %Integer = {$$$USEPOSHT}, setop As %Integer = {$$$UNION}, Output scText As %String = "", pIncludeActualForms As %Boolean = 0) As %Library.Integer [ SqlProc ]
{
}

///  <p>Returns the number of related entities for a given list of entity ids.</p>
///  <p>See <method>GetRelated</method> for a description of the parameters.</p>
ClassMethod GetRelatedCountById(domainid As %Integer, entityidlist As %String(MAXLEN=32767), filter As %String(MAXLEN=32767) = "", positionstomatch As %Integer = {$$$USEPOSHT}, setop As %Integer = {$$$UNION}, Output scText As %String = "", pIncludeActualForms As %Boolean = 0) As %Library.Integer [ SqlProc ]
{
}

///  <p>This method will return all entities in the specified domain that are "similar" to the
///  supplied <var>part</var> string. Similarity is defined using the <var>mode</var> parameter. The default setting
///  ($$$USEPARTS), will retrieve all clusters containing at least one word starting with the supplied
///  string, whereas $$$USENGRAMS will search for any character sequence within the whole entity.
///  With mode = $$$USEWORDS, the behavior is the same as $$$USEPARTS but the supplied <var>part</var>
///  needs to occur as a whole word in the retrieved clusters.</p>
///  <p>The scope of this query can be limited through supplying a <class>%iKnow.Filters.Filter</class> object for the <var>filter</var>
///  parameter to restrict the result to those CRCs occurring in any source satisfying the filter
///  criteria. When using a filter, the <var>filtermode</var> parameter will control whether or not the
///  frequency and spread of returned records should be recalculated and whether results should be
///  resorted along these recalculated numbers.</p>
///  <p>Through the <var>skipListIds</var> parameter, a user can supply one or more lists of (to the user)
///  insignificant terms that should be excluded from the result.</p>
ClassMethod GetSimilarExecute(ByRef qHandle As %Binary,  domainid As %Integer, part As %String(MAXLEN=32767), page As %Integer = 1, pagesize As %Integer = 10, filter As %String(MAXLEN=32767) = "", filtermode As %Integer = {$$$FILTERONLY}, mode As %Integer = {$$$USEDOMAINDEFAULT}, skipListIds As %String(MAXLEN=32767) = "", pEntRole As %Integer = {$$$ENTTYPEANY}, pUseStems As %Boolean = 0) As %Status [ Internal ]
{
}

ClassMethod GetSimilarFetch(ByRef qHandle As %Binary, ByRef Row As %List, ByRef AtEnd As %Integer = 0) As %Status [ Internal, PlaceAfter = GetSimilarExecute ]
{
}

ClassMethod GetSimilarClose(ByRef qHandle As %Binary) As %Status [ Internal, PlaceAfter = GetSimilarExecute ]
{
}

///  <p>This method returns aggregated details on the entities similar to a supplied text fragment <var>part</var>.
///  The returned list contains the total number of distinct entities similar to <var>part</var> appearing
///  in sources satisfying the supplied <var>filter</var> (if defined), their total aggregated frequency
///  (with respect to <var>filter</var>, if defined) and the total number of sources containing at least one of
///  these "similar" entities (again, respecting <var>filter</var>, if defined).</p>
///  <p>See also <method>GetSimilar</method> for a description of the other parameters.</p>
///  <p>Setting the <var>entType</var> parameter to $$$ENTTYPECONCEPT or $$$ENTTYPERELATION will
///  restrict the result to only include entity occurrences of the specified type in the returned
///  number of distinct entities and aggregated frequency. If an entity occurs as both a concept
///  and a relationship (typically in &lt;1% of cases), it contributes to the aggregated spread
///  regardless of <var>entType</var>.</p>
ClassMethod GetSimilarCountsExecute(ByRef qHandle As %Binary,  domainid As %Integer, part As %String(MAXLEN=32767), filter As %String(MAXLEN=32767) = "", mode As %Integer = {$$$USEDOMAINDEFAULT}, skipListIds As %String(MAXLEN=32767) = "", Output scText As %String = "", entType As %Integer = {$$$ENTTYPEANY}, pUseStems As %Boolean = 0) As %Status [ Internal ]
{
}

ClassMethod GetSimilarCountsFetch(ByRef qHandle As %Binary, ByRef Row As %List, ByRef AtEnd As %Integer = 0) As %Status [ Internal, PlaceAfter = GetSimilarCountsExecute ]
{
}

ClassMethod GetSimilarCountsClose(ByRef qHandle As %Binary) As %Status [ Internal, PlaceAfter = GetSimilarCountsExecute ]
{
}

///  <p>Returns the spread of the entity corresponding to the supplied <var>entUniId</var>, occurring
///  in a concept role (if <var>enttype</var> = $$$ENTTYPECONCEPT), a relationship role (if
///  <var>enttype</var> = $$$ENTTYPERELATION) or both (<var>enttype</var> = $$$ENTTYPEANY).</p>
ClassMethod GetSpread(domainId As %Integer, entUniId As %Integer, enttype As %Integer = {$$$ENTTYPEANY}, filter As %String(MAXLEN=32767) = "", Output scText As %String = "") As %Library.Integer [ SqlProc ]
{
}

/// Returns the stemmed form of the supplied string <var>pString</var>.
/// If <var>pDomainId</var> is non-null, any domain-level configuration settings will be used
/// for the stemming operation.
ClassMethod GetStem(pDomainId As %Integer = "", pString As %String(MAXLEN=32767), pLanguage As %String(MAXLEN=32767) = "", Output scText As %String = "") As %Library.String [ SqlProc ]
{
}

///  <p>Returns the frequency of the stem corresponding to the supplied <var>pStemUniId</var>, occurring
///  in a concept role (if <var>pEntType</var> = $$$ENTTYPECONCEPT), a relationship role (if
///  <var>pEntType</var> = $$$ENTTYPERELATION) or both (<var>pEntType</var> = $$$ENTTYPEANY).</p>
///  <p>When specifying a Virtual Source ID, the frequency within the virtual source will be returned.</p>
ClassMethod GetStemFrequency(pDomainId As %Integer, pStemUniId As %Integer, pEntType As %Integer = {$$$ENTTYPEANY}, vSrcId As %Integer = 0, pFilter As %String(MAXLEN=32767) = "", Output scText As %String = "") As %Library.Integer [ SqlProc ]
{
}

///  <p>Returns the stem ID corresponding to the specified stem value, if any.</p>
///  <p>When specifying a Virtual Source ID, it will treat the stem as a virtual one,
///  in the context of that vSrcId.</p>
ClassMethod GetStemId(pDomainId As %Integer, pStemValue As %String(MAXLEN=32767), vSrcId As %Integer = 0) As %Library.Integer [ SqlProc ]
{
}

/// Returns the representation form for the given stem and language
ClassMethod GetStemRepresentationForm(pDomainId As %Integer, pStemUniId As %Integer, pLanguage As %String(MAXLEN=32767) = "en", vSrcId As %Integer = 0, Output scText As %String = "") As %Library.String [ SqlProc ]
{
}

///  <p>Returns the spread of the stem corresponding to the supplied <var>pStemUniId</var>, occurring
///  in a concept role (if <var>pEntType</var> = $$$ENTTYPECONCEPT), a relationship role (if
///  <var>pEntType</var> = $$$ENTTYPERELATION) or both (<var>pEntType</var> = $$$ENTTYPEANY).</p>
ClassMethod GetStemSpread(pDomainId As %Integer, pStemUniId As %Integer, pEntType As %Integer = {$$$ENTTYPEANY}, pFilter As %String(MAXLEN=32767) = "", Output scText As %String = "") As %Library.Integer [ SqlProc ]
{
}

/// Returns the string value of the stem identified by <var>pStemUniId</var>
ClassMethod GetStemValue(pDomainId As %Integer, pStemUniId As %Integer, vSrcId As %Integer = 0, Output scText As %String = "") As %Library.String [ SqlProc ]
{
}

///  <p>This method returns the most frequently occurring entities in the specified domain.</p>
///  <p>The scope of this query can be limited through supplying a <class>%iKnow.Filters.Filter</class> object for the <var>filter</var>
///  parameter to restrict the result to those CRCs occurring in any source satisfying the filter
///  criteria. When using a filter, the <var>filtermode</var> parameter will control whether or not the
///  frequency and spread of returned records should be recalculated and whether results should be
///  resorted along these recalculated numbers.</p>
///  <p>Through the <var>enttype</var> parameter, the method can be instructed to return either concepts
///  ($$$ENTTYPECONCEPT) or relations ($$$ENTTYPERELATION). When looking for top concepts, those shorter
///  than 3 characters are skipped.</p>
///  <p>Returned values are either sorted by descending frequency (with <var>sorttype</var>
///  $$$SORTBYFREQUENCY), spread (with <var>sorttype</var> $$$SORTBYSPREAD) or the
///  domain default (with <var>sorttype</var> $$$SORTBYDOMAINDEFAULT).</p>
///  <p>If a Virtual Source ID is provided, only the entities in that virtual source will be considered,
///  filters are ignored and the sort type will always be $$$SORTBYFREQUENCY.</p>
///  <p>Through the <var>skipListIds</var> parameter, a user can supply one or more lists of (to the user)
///  insignificant terms that should be excluded from the result.</p>
ClassMethod GetTopExecute(ByRef qHandle As %Binary,  domainid As %Integer, page As %Integer = 1, pagesize As %Integer = 10, filter As %String(MAXLEN=32767) = "", filtermode As %Integer = {$$$FILTERONLY}, sorttype As %Integer = {$$$SORTBYDOMAINDEFAULT}, enttype As %Integer = {$$$ENTTYPECONCEPT}, vSrcId As %Integer = 0, skipListIds As %String(MAXLEN=32767) = "", pUseStems As %Boolean = 0) As %Status [ Internal ]
{
}

ClassMethod GetTopFetch(ByRef qHandle As %Binary, ByRef Row As %List, ByRef AtEnd As %Integer = 0) As %Status [ Internal, PlaceAfter = GetTopExecute ]
{
}

ClassMethod GetTopClose(ByRef qHandle As %Binary) As %Status [ Internal, PlaceAfter = GetTopExecute ]
{
}

/// Returns the top entities for a given domain (optionally filtered through <var>pFilter</var>)
/// calculated using a metric based on the Okapi BM25 standard, which combines an entity's frequency
/// with its Inverse Document Frequency, taking into account document length.
ClassMethod GetTopBM25Execute(ByRef qHandle As %Binary,  pDomainId As %Integer, pPage As %Integer = 1, pPageSize As %Integer = 10, pFilter As %String(MAXLEN=32767) = "", pEntType As %Integer = {$$$ENTTYPECONCEPT}, pUseStems As %Boolean = 0) As %Status [ Internal ]
{
}

ClassMethod GetTopBM25Fetch(ByRef qHandle As %Binary, ByRef Row As %List, ByRef AtEnd As %Integer = 0) As %Status [ Internal, PlaceAfter = GetTopBM25Execute ]
{
}

ClassMethod GetTopBM25Close(ByRef qHandle As %Binary) As %Status [ Internal, PlaceAfter = GetTopBM25Execute ]
{
}

ClassMethod GetTopGroupsExecute(ByRef qHandle As %Binary,  domainId As %Integer, page As %Integer = 1, pageSize As %Integer = 10, filter As %String(MAXLEN=32767) = "", skipListIds As %String(MAXLEN=32767) = "", language As %String(MAXLEN=32767) = "en", entType As %Integer = {$$$ENTTYPECONCEPT}, pUseStems As %Boolean = 0) As %Status [ Internal ]
{
}

ClassMethod GetTopGroupsFetch(ByRef qHandle As %Binary, ByRef Row As %List, ByRef AtEnd As %Integer = 0) As %Status [ Internal, PlaceAfter = GetTopGroupsExecute ]
{
}

ClassMethod GetTopGroupsClose(ByRef qHandle As %Binary) As %Status [ Internal, PlaceAfter = GetTopGroupsExecute ]
{
}

/// Returns the top entities for a given domain (optionally filtered through <var>pFilter</var>)
/// by multiplying their Term Frequency with their Inverse Document Frequency:
/// IDF(e) = $zlog( [ SourceCount - spread(e) + 0.5 ] / [ spread(e) + 0.5 ] )
ClassMethod GetTopTFIDFExecute(ByRef qHandle As %Binary,  pDomainId As %Integer, pPage As %Integer = 1, pPageSize As %Integer = 10, pFilter As %String(MAXLEN=32767) = "", pEntType As %Integer = {$$$ENTTYPECONCEPT}, pUseStems As %Boolean = 0) As %Status [ Internal ]
{
}

ClassMethod GetTopTFIDFFetch(ByRef qHandle As %Binary, ByRef Row As %List, ByRef AtEnd As %Integer = 0) As %Status [ Internal, PlaceAfter = GetTopTFIDFExecute ]
{
}

ClassMethod GetTopTFIDFClose(ByRef qHandle As %Binary) As %Status [ Internal, PlaceAfter = GetTopTFIDFExecute ]
{
}

/// <p>Returns the entity string value corresponding to the specified entity ID, if any.</p>
ClassMethod GetValue(domainid As %Integer, entityid As %Integer, vSrcId As %Integer = 0, Output scText As %String = "") As %Library.String [ SqlProc ]
{
}

/// Checks if a given entity occurrence has the requested attribute <var>pAttTypeId</var>.
ClassMethod IsAttributed(pDomainId As %Integer, pEntOccId As %Integer, pAttTypeId As %Integer, vSrcId As %Integer = 0, Output scText As %String = "") As %Library.Boolean [ SqlProc ]
{
}

}
