/// <p>The InterSystems IRIS NLP iKnow technology is now deprecated. Please see the
/// <a href="https://docs.intersystems.com/irislatest/csp/docbook/DocBook.UI.Page.cls?KEY=GIKNOW">product
/// documentation</a> for more detail.</p>
///  Main Query class for retrieving Entities.
Class %iKnow.Queries.EntityAPI Extends %iKnow.Queries.AbstractAPI [ Deprecated, System = 4 ]
{

/// <p>Returns the entity string value corresponding to the specified entity ID, if any.</p>
ClassMethod GetValue(domainid As %Integer, entityid As %Integer, vSrcId As %Integer = 0, Output pSC As %Status) As %String
{
}

/// Returns the string value of the stem identified by <var>pStemUniId</var>
ClassMethod GetStemValue(pDomainId As %Integer, pStemUniId As %Integer, vSrcId As %Integer = 0, Output pSC As %Status) As %String
{
}

/// Internal version of <method>GetValue</method>, skipping security checks.
ClassMethod GetValueInternal(pDomainId As %Integer, pEntUniId As %Integer, vSrcId As %Integer = 0, pUseStem As %Boolean = 0) As %String [ Internal ]
{
}

/// Retrieves all entities corresponding to a certain stem identified by <var>pStemUniId</var> in an array: pResult(tEntUniId)="".
ClassMethod GetByStemArray(ByRef pResult, pDomainId As %Integer, pStemUniId As %Integer, vSrcId As %Integer = 0, pLanguageId As %Integer = 0) As %Status
{
}

Parameter GetByStemRT = "EntUniId:%Integer,EntityValue:%String";

/// Retrieves all entities corresponding to a certain stem identified by <var>pStemUniId</var>.
ClassMethod GetByStem(ByRef pResult, pDomainId As %Integer, pStemUniId As %Integer, vSrcId As %Integer = 0, pLanguage As %String = "") As %Status
{
}

/// Returns the stemmed form of the supplied string <var>pString</var>.
/// If <var>pDomainId</var> is non-null, any domain-level configuration settings will be used
/// for the stemming operation.
ClassMethod GetStem(pDomainId As %Integer = "", pString As %String, pLanguage As %String = "", Output pSC As %Status = {$$$OK}) As %String
{
}

/// Returns the representation form for the given stem and language
ClassMethod GetStemRepresentationForm(pDomainId As %Integer, pStemUniId As %Integer, pLanguage As %String = "en", vSrcId As %Integer = 0, Output pSC As %Status = {$$$OK}) As %String
{
}

/// Returns the first stem ID found for the supplied entity.
ClassMethod GetStemIdByEntityId(pDomainId As %Integer, pEntUniId As %Integer, vSrcId As %Integer = 0, pLanguage As %Integer = 0) As %Integer [ Internal ]
{
}

ClassMethod GetRepresentationFormId(pDomainId As %Integer, pStemUniId As %Integer, vSrcId As %Integer = 0, pLanguageId As %Integer = 0) As %Integer [ Internal ]
{
}

///  <p>Returns the entity ID corresponding to the specified entity value, if any.</p>
///  <p>When specifying a Virtual Source ID, it will treat the entity as a virtual one,
///  in the context of that vSrcId.</p>
ClassMethod GetId(domainid As %Integer, entityvalue As %String, vSrcId As %Integer = 0) As %Integer
{
}

/// Internal version of <method>GetId</method>.
/// <var>stripPunctuation</var> should be set to 0 when called for user-supplied input (e.g. from <method>GetId</method>)
ClassMethod GetIdInternal(domainid As %Integer, ByRef entityvalue As %String, vSrcId As %Integer = 0, stripPunctuation As %Integer = 1) As %Integer [ Internal ]
{
}

///  <p>Returns the stem ID corresponding to the specified stem value, if any.</p>
///  <p>When specifying a Virtual Source ID, it will treat the stem as a virtual one,
///  in the context of that vSrcId.</p>
ClassMethod GetStemId(pDomainId As %Integer, pStemValue As %String, vSrcId As %Integer = 0) As %Integer
{
}

/// Internal version of <method>GetStemId</method>.
/// <var>pStripPunctuation</var> should be set to 0 when called for user-supplied input (e.g. from <method>GetStemId</method>)
ClassMethod GetStemIdInternal(pDomainId As %Integer, ByRef pStemValue As %String, vSrcId As %Integer = 0, pStripPunctuation As %Boolean = 1) As %Integer [ Internal ]
{
}

///  <p>Returns the frequency of the entity corresponding to the supplied <var>entUniId</var>, occurring
///  in a concept role (if <var>enttype</var> = $$$ENTTYPECONCEPT), a relationship role (if
///  <var>enttype</var> = $$$ENTTYPERELATION) or both (<var>enttype</var> = $$$ENTTYPEANY).</p>
///  <p>When specifying a Virtual Source ID, the frequency within the virtual source will be returned.</p>
ClassMethod GetFrequency(domainId As %Integer, entUniId As %Integer, enttype As %Integer = {$$$ENTTYPEANY}, vSrcId As %Integer = 0, filter As %iKnow.Filters.Filter = "", Output sc As %Status = {$$$OK}) As %Integer
{
}

///  <p>Returns the frequency of the stem corresponding to the supplied <var>pStemUniId</var>, occurring
///  in a concept role (if <var>pEntType</var> = $$$ENTTYPECONCEPT), a relationship role (if
///  <var>pEntType</var> = $$$ENTTYPERELATION) or both (<var>pEntType</var> = $$$ENTTYPEANY).</p>
///  <p>When specifying a Virtual Source ID, the frequency within the virtual source will be returned.</p>
ClassMethod GetStemFrequency(pDomainId As %Integer, pStemUniId As %Integer, pEntType As %Integer = {$$$ENTTYPEANY}, vSrcId As %Integer = 0, pFilter As %iKnow.Filters.Filter = "", Output pSC As %Status = {$$$OK}) As %Integer
{
}

///  <p>Returns the spread of the entity corresponding to the supplied <var>entUniId</var>, occurring
///  in a concept role (if <var>enttype</var> = $$$ENTTYPECONCEPT), a relationship role (if
///  <var>enttype</var> = $$$ENTTYPERELATION) or both (<var>enttype</var> = $$$ENTTYPEANY).</p>
ClassMethod GetSpread(domainId As %Integer, entUniId As %Integer, enttype As %Integer = {$$$ENTTYPEANY}, filter As %iKnow.Filters.Filter = "", Output sc As %Status = {$$$OK}) As %Integer
{
}

///  <p>Returns the spread of the stem corresponding to the supplied <var>pStemUniId</var>, occurring
///  in a concept role (if <var>pEntType</var> = $$$ENTTYPECONCEPT), a relationship role (if
///  <var>pEntType</var> = $$$ENTTYPERELATION) or both (<var>pEntType</var> = $$$ENTTYPEANY).</p>
ClassMethod GetStemSpread(pDomainId As %Integer, pStemUniId As %Integer, pEntType As %Integer = {$$$ENTTYPEANY}, pFilter As %iKnow.Filters.Filter = "", Output pSC As %Status = {$$$OK}) As %Integer
{
}

/// <p>Returns the literal value for a particular <i>Part ID</i>, as it
/// occurred in the original text.</p>
ClassMethod GetLiteral(pDomainId As %Integer, pPartId As %Integer, vSrcId As %Integer = 0) As %String
{
}

///  <p>Returned column summary for <method>GetSimilar</method>.</p>
Parameter GetSimilarRT = "entUniId:%Integer,entity:%String,frequency:%Integer,spread:%Integer";

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
ClassMethod GetSimilar(ByRef result, domainid As %Integer, part As %String, page As %Integer = 1, pagesize As %Integer = 10, filter As %iKnow.Filters.Filter = "", filtermode As %Integer = {$$$FILTERONLY}, mode As %Integer = {$$$USEDOMAINDEFAULT}, skipListIds As %List = "", pEntRole As %Integer = {$$$ENTTYPEANY}, pUseStems As %Boolean = 0) As %Status
{
}

/// Internal method used by <class>%iKnow.DeepSee.Dimensions.SimilarEntities</class>
ClassMethod GetSimilarBits(pGlobalName As %String, pDomainId As %Integer, pString As %String, pFilter As %iKnow.Filters.Filter = "", pMode As %Integer = {$$$USEDOMAINDEFAULT}, pSkipListIds As %List = "", pUseStems As %Boolean = 0) As %Status [ Internal ]
{
}

/// Note: this method always returns all results and only writes to a global (no return var)
ClassMethod GetSimilarIds(pGlobalName As %String, pDomainId As %Integer, pString As %String, pFilter As %iKnow.Filters.Filter = "", pMode As %Integer = {$$$USEDOMAINDEFAULT}, pSkipListIds As %List = "", pEntRole As %Integer = {$$$ENTTYPEANY}, pUseStems As %Boolean = 0) As %Status [ Internal ]
{
}

///  <p>Returned column summary for <method>GetSimilarCounts</method>.</p>
Parameter GetSimilarCountsRT = "distinctEntities:%Integer,totalFrequency:%Integer,totalSpread:%Integer";

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
ClassMethod GetSimilarCounts(domainid As %Integer, part As %String, filter As %iKnow.Filters.Filter = "", mode As %Integer = {$$$USEDOMAINDEFAULT}, skipListIds As %List = "", Output sc As %Status = {$$$OK}, entType As %Integer = {$$$ENTTYPEANY}, pUseStems As %Boolean = 0) As %List
{
}

///  <p>Returned column summary for <method>GetTop</method>.</p>
Parameter GetTopRT = "entUniId:%Integer,entity:%String,frequency:%Integer,spread:%Integer";

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
ClassMethod GetTop(ByRef result, domainid As %Integer, page As %Integer = 1, pagesize As %Integer = 10, filter As %iKnow.Filters.Filter = "", filtermode As %Integer = {$$$FILTERONLY}, sorttype As %Integer = {$$$SORTBYDOMAINDEFAULT}, enttype As %Integer = {$$$ENTTYPECONCEPT}, vSrcId As %Integer = 0, skipListIds As %List = "", pUseStems As %Boolean = 0) As %Status
{
}

///  <p>Returned column summary for <method>GetByFilter</method>.</p>
Parameter GetByFilterRT = "entUniId:%Integer,entity:%String,frequency:%Integer,spread:%Integer";

///  <p>Returns all entities appearing in any source satisfying the supplied <var>filter</var>
///  objects criteria, with their frequencies and spread recalculated to comply with the filter
///  depending on the value of <var>filtermode</var>, but the result is NOT re-sorted, regardless
///  of the value for <var>filtermode</var> (use <method>GetTop</method> if you want sorted results).</p>
///  <p>Depending on the value of <var>enttype</var> parameter, this method will only return concepts
///  ($$$ENTTYPECONCEPT, default), relations ($$$ENTTYPERELATION) or both ($$$ENTTYPEANY).</p>
///  <p>Through the <var>skipListIds</var> parameter, a user can supply one or more lists of (to the user)
///  insignificant terms that should be excluded from the result.</p>
ClassMethod GetByFilter(ByRef result, domainid As %Integer, filter As %iKnow.Filters.Filter = "", filtermode As %Integer = {$$$FILTERONLY}, enttype As %Integer = {$$$ENTTYPECONCEPT}, skipListIds As %List = "", pUseStems As %Boolean = 0) As %Status
{
}

///  sortIndex = -1 means regular output, otherwise an additional first subscript will be introduced
///  to sort by frequency ($$$SORTBYFREQUENCY) or spread ($$$SORTBYSPREAD): result(-sort, entUniId)
///  WARNING: for internal use only, no input checking is performed and Skiplists must have been set up!
ClassMethod GetByFilterInternal(ByRef result, domainid As %Integer, filter As %iKnow.Filters.Filter, filtermode As %Integer = {$$$FILTERONLY}, enttype As %Integer = {$$$ENTTYPECONCEPT}, skipListIds As %List = "", sortIndex As %Integer = -1, pUseStems As %Boolean = 0, pTopConcepts As %Boolean = 0) As %Status [ Internal ]
{
}

ClassMethod GetByFilterInternal20121(ByRef result, domainid As %Integer, filter As %iKnow.Filters.Filter = "", filtermode As %Integer = {$$$FILTERONLY}, enttype As %Integer = {$$$ENTTYPECONCEPT}, skipListIds As %List = "", sortIndex As %Integer = -1) As %Status [ Internal ]
{
}

///  <p>Returned column summary for <method>GetBySource</method>.</p>
Parameter GetBySourceRT = "entUniId:%Integer,entity:%String,frequency:%Integer,spread:%Integer";

///  <p>Returns the unique entities appearing in the sources specified.</p>
///  <p>To get the unique entities of a virtual source, only a single virtual source can be supplied using
///  its negative ID value.</p>
ClassMethod GetBySource(ByRef result, domainid As %Integer, sourceidlist As %List, page As %Integer = 1, pagesize As %Integer = 10, enttype As %Integer = {$$$ENTTYPEANY}, skipListIds As %List = "", pUseStems As %Boolean = 0) As %Status
{
}

///  <p>Returns the total number of distinct entities for this domain, optionally filtered to a set of
///  sources satisfying the <class>%iKnow.Filters.Filter</class> object supplied through <var>filter</var>.
///  Depending on the value of <var>includeZeroFrequency</var>, entities not appearing in any source (but
///  registered in the domain for other purposes) are included or excluded from the result.</p>
///  <p>Through the <var>skipListIds</var> parameter, a user can supply one or more lists of (to the user)
///  insignificant terms that should be excluded from the result.</p>
ClassMethod GetCountByDomain(domainid As %Integer, filter As %iKnow.Filters.Filter = "", Output sc As %Status = {$$$OK}, skipListIds As %List = "", includeZeroFrequency As %Boolean = 0, pUseStems As %Boolean = 0) As %Integer
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
ClassMethod GetCountBySource(domainid As %Integer, sourceidlist As %List, setop As %Integer = {$$$UNION}, Output sc As %Status = {$$$OK}, skipListIds As %List = "", enttype As %Integer = {$$$ENTTYPEANY}, pUseStems As %Boolean = 0) As %Integer
{
}

///  <p>Returns the total number of entity occurrences for the given list of sources. Use negative source
///  IDs to refer to virtual sources.</p>
ClassMethod GetOccurrenceCountBySource(domainid As %Integer, sourceidlist As %List, Output sc As %Status = {$$$OK}, enttype As %Integer = {$$$ENTTYPEANY}) As %Integer
{
}

///  <p>Returns the total number of entity occurrences in a domain.</p>
ClassMethod GetOccurrenceCountByDomain(pDomainId As %Integer, pFilter As %iKnow.Filters.Filter = "", pEntType As %Integer = {$$$ENTTYPEANY}, Output pSC As %Status = {$$$OK}) As %Integer
{
}

///  <p>Returned column summary for <method>GetRelated</method>.</p>
Parameter GetRelatedRT = "entUniId:%Integer,entity:%String,frequency:%Integer,spread:%Integer";

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
ClassMethod GetRelated(ByRef result, domainid As %Integer, entitylist As %List, page As %Integer = 1, pagesize As %Integer = 10, filter As %iKnow.Filters.Filter = "", filtermode As %Integer = {$$$FILTERONLY}, positionstomatch As %Integer = {$$$USEPOSHT}, aggregationtype As %Integer = {$$$AGGSUM}, setop As %Integer = {$$$UNION}, sorttype As %Integer = {$$$SORTBYDOMAINDEFAULT}, skipListIds As %List = "") As %Status
{
}

///  <p>Returned column summary for <method>GetRelatedById</method>.</p>
Parameter GetRelatedByIdRT = "entUniId:%Integer,entity:%String,frequency:%Integer,spread:%Integer";

///  <p>Returns the entities directly related to a supplied list of entity IDs.</p>
///  <p>See <method>GetRelated</method> for a description of the parameters.</p>
ClassMethod GetRelatedById(ByRef result, domainid As %Integer, entityidlist As %List, page As %Integer = 1, pagesize As %Integer = 10, filter As %iKnow.Filters.Filter = "", filtermode As %Integer = {$$$FILTERONLY}, positionstomatch As %Integer = {$$$USEPOSHT}, aggregationtype As %Integer = {$$$AGGSUM}, setop As %Integer = {$$$UNION}, sorttype As %Integer = {$$$SORTBYDOMAINDEFAULT}, skipListIds As %List = "") As %Status
{
}

ClassMethod GetRelatedInternal(ByRef result, domainid As %Integer, ByRef entIdList, page As %Integer, pagesize As %Integer, filter As %iKnow.Filters.Filter, filtermode As %Integer, positionstomatch As %Integer, aggregationtype As %Integer, setop As %Integer, sorttype As %Integer, skipListIds As %List) As %Status [ Internal ]
{
}

ClassMethod GetRelatedInternal20121(ByRef result, domainid As %Integer, ByRef entIdList, page As %Integer, pagesize As %Integer, filter As %iKnow.Filters.Filter, filtermode As %Integer, positionstomatch As %Integer, aggregationtype As %Integer, setop As %Integer, sorttype As %Integer, skipListIds As %List) As %Status [ Internal ]
{
}

///  <p>Returns the number of related entities for a given list of entities.</p>
///  <p>See <method>GetRelated</method> for a description of the parameters.</p>
ClassMethod GetRelatedCount(domainid As %Integer, entitylist As %List, filter As %iKnow.Filters.Filter = "", positionstomatch As %Integer = {$$$USEPOSHT}, setop As %Integer = {$$$UNION}, Output sc As %Status = {$$$OK}, pIncludeActualForms As %Boolean = 0) As %Integer
{
}

///  <p>Returns the number of related entities for a given list of entity ids.</p>
///  <p>See <method>GetRelated</method> for a description of the parameters.</p>
ClassMethod GetRelatedCountById(domainid As %Integer, entityidlist As %List, filter As %iKnow.Filters.Filter = "", positionstomatch As %Integer = {$$$USEPOSHT}, setop As %Integer = {$$$UNION}, Output sc As %Status = {$$$OK}, pIncludeActualForms As %Boolean = 0) As %Integer
{
}

ClassMethod GetRelatedCountInternal(domainid As %Integer, ByRef entityIdList, filter As %iKnow.Filters.Filter, positionstomatch As %Integer, setop As %Integer, Output sc As %Status = {$$$OK}) As %Integer [ Internal ]
{
}

ClassMethod GetRelatedCountInternal20121(domainid As %Integer, ByRef entityIdList, filter As %iKnow.Filters.Filter, positionstomatch As %Integer, setop As %Integer, Output sc As %Status = {$$$OK}) As %Integer [ Internal ]
{
}

///  <p>Returned column summary for <method>GetNewBySource</method>.</p>
Parameter GetNewBySourceRT = "entUniId:%Integer,entity:%String,freqInNew:%Integer,freqInOld:%Integer,relFreqInNew:%Numeric,relFreqInOld:%Numeric";

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
ClassMethod GetNewBySource(ByRef result, domainid As %Integer, sourceidlist As %List, page As %Integer = 1, pagesize As %Integer = 10, filter As %iKnow.Filters.Filter = "", entType As %Integer = {$$$ENTTYPECONCEPT}, algorithm As %String = {$$$NEWENTSIMPLE}, algorithmParams As %List = "", skipListIds As %List = "", pUseStems As %Boolean = 0) As %Status
{
}

/// translate a list of entities to EntUniIds, removing inexistent entities and duplicates
/// 	pForms values for domains with stemming:
/// 		- 0 does no translation
/// 		- 1 includes other actual forms stemming to the same stem as the supplied entities
/// 		- 2 returns a two-level array with stems at level 1 and entities at level 2 (ids([stemUniId],[entUniId])
ClassMethod TranslateEntityList(domainid As %Integer, entitylist As %List, Output ids, vSrcId As %Integer = 0, Output unMatchedCount As %Integer, pForms As %Integer = 0) As %Status [ Internal ]
{
}

///  clean a list of EntUniIds from duplicates and inexistent ids
/// 	pForms values:
/// 		- 0 does no translation
/// 		- 1 includes other actual forms stemming to the same stem as the supplied entities
/// 		- 2 returns a two-level array with stems at level 1 and entities at level 2 (ids([stemUniId],[entUniId])
ClassMethod TranslateEntityIdList(domainid As %Integer, entIdList As %List, Output ids, vSrcId As %Integer = 0, Output unMatchedCount As %Integer, pForms As %Integer = 0) As %Status [ Internal ]
{
}

Parameter GetTopGroupsRT [ Internal ] = "string:%String,similarCount:%Integer,totFreq:%Integer,totSpread:%Integer";

ClassMethod GetTopGroups(ByRef result, domainId As %Integer, page As %Integer = 1, pageSize As %Integer = 10, filter As %iKnow.Filters.Filter = "", skipListIds As %List = "", language As %String = "en", entType As %Integer = {$$$ENTTYPECONCEPT}, pUseStems As %Boolean = 0) As %Status [ Internal ]
{
}

Parameter GetOccurrenceAttributesRT = "attTypeId:%Integer,attType:%String,level:%Integer,wordPositions:%String,properties:%String";

/// <p>Returns all attributes for a given part. Any named attribute properties are also
/// included through sub-nodes (not available through SQL or SOAP):
/// <blockquote>pResult(<i>rowNumber</i>, <i>propertyName</i>) = <i>propertyValue</i></blockquote></p>
/// <p>The returned <var>wordPositions</var> only extend to the last attributed word position
/// (there might be more words within the entity).</p>
ClassMethod GetOccurrenceAttributes(ByRef pResult, pDomainId As %Integer, pPartId As %Integer, vSrcId As %Integer = 0) As %Status
{
}

/// Checks if a given entity occurrence has the requested attribute <var>pAttTypeId</var>.
ClassMethod IsAttributed(pDomainId As %Integer, pEntOccId As %Integer, pAttTypeId As %Integer, vSrcId As %Integer = 0, Output pSC As %Status = {$$$OK}) As %Boolean
{
}

ClassMethod IsAttributedInternal(pDomainId As %Integer, pEntOccId As %Integer, pAttTypeId As %Integer, pEntOccInfo As %List = "", vSrcId As %Integer = 0, pLevel As %Integer = {$$$IKATTLVLANY}) As %Boolean [ Internal ]
{
}

Parameter GetTopBM25RT = "entUniId:%Integer,entityValue:%String,bm25:%Numeric";

/// Returns the top entities for a given domain (optionally filtered through <var>pFilter</var>)
/// calculated using a metric based on the Okapi BM25 standard, which combines an entity's frequency
/// with its Inverse Document Frequency, taking into account document length.
ClassMethod GetTopBM25(ByRef pResult, pDomainId As %Integer, pPage As %Integer = 1, pPageSize As %Integer = 10, pFilter As %iKnow.Filters.Filter = "", pEntType As %Integer = {$$$ENTTYPECONCEPT}, pUseStems As %Boolean = 0) As %Status
{
}

Parameter GetTopTFIDFRT = "entUniId:%Integer,entityValue:%String,TFIDF:%Numeric";

/// Returns the top entities for a given domain (optionally filtered through <var>pFilter</var>)
/// by multiplying their Term Frequency with their Inverse Document Frequency:
/// IDF(e) = $zlog( [ SourceCount - spread(e) + 0.5 ] / [ spread(e) + 0.5 ] )
ClassMethod GetTopTFIDF(ByRef pResult, pDomainId As %Integer, pPage As %Integer = 1, pPageSize As %Integer = 10, pFilter As %iKnow.Filters.Filter = "", pEntType As %Integer = {$$$ENTTYPECONCEPT}, pUseStems As %Boolean = 0) As %Status
{
}

ClassMethod GetNBProbabilityInternal(pDomainId As %Integer, pEntUniId As %Integer, pFilter As %iKnow.Filters.Filter, pReferenceSetFilter As %iKnow.Filters.Filter = "", Output pSC As %Status, pUseStems As %Boolean = 0) As %Double [ Internal ]
{
}

Parameter GetOccurrencesByIdRT = "EntOccId:%Integer,EntUniId:%Integer,Type:%Integer,SentenceId:%Integer,SourceId:%Integer,IsAttributed:%Integer";

/// <p>Returns all occurrences for any of the given unique entities in <var>pEntUniIds</var>,
/// including whether the attribute <var>pAttributeId</var> is applicable to this occurrence.</p>
/// <p>If this domain is configured for stemming using $$$IKPSTEMMING, any actual entities corresponding
/// to <var>pEntUniIds</var> elements will be returned.</p>
ClassMethod GetOccurrencesById(ByRef pResult, pDomainId As %Integer, pEntUniIds As %List, pPage As %Integer = 1, pPageSize As %Integer = 10, pFilter As %iKnow.Filters.Filter = "", pAttributeId As %Integer = {$$$IKATTNEGATION}, vSrcId As %Integer = 0, pIncludeActualForms As %Boolean = 0) As %Status
{
}

ClassMethod GetLevenshteinDistance(pString1 As %String, pString2 As %String, Output pSC As %Status, pDomainId As %Integer = "") As %Double [ Internal ]
{
}

/// Given an attribute type (ID) and a list of stored properties, build a key/value array
/// with the right names for each position.
ClassMethod BuildAttributePropArray(pAttributeTypeId As %Integer, pPropList As %List, Output pPropArray) As %Status [ Internal ]
{
}

/// backward compatibility support for $$$IKATTTYPEPROPS macro.
/// Use <method>BuildAttributeProps</method> for any new development
ClassMethod AttributePropNames(pAttributeTypeId As %Integer, pCount As %Integer = 10) As %List [ Deprecated, Internal ]
{
}

}
