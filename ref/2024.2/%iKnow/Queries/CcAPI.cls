/// <p>The InterSystems IRIS NLP iKnow technology is now deprecated. Please see the
/// <a href="https://docs.intersystems.com/irislatest/csp/docbook/DocBook.UI.Page.cls?KEY=GIKNOW">product
/// documentation</a> for more detail.</p>
/// <p>This is the main Query API to get access to Concept-Concept pairs (CCs).
/// CCs are an abstraction of CRCs, aggregating them across relationships to focus only on those
/// concepts that are in a direct relationship with one another, without caring about the actual
/// relationship linking the two.</p>
Class %iKnow.Queries.CcAPI Extends %iKnow.Queries.AbstractAPI [ Deprecated, System = 4 ]
{

///  <p>Returns the entity values this CC is composed of.</p>
///  <p>When specifying a Virtual Source ID, it will treat the ccid as a virtual one,
///  in the context of that vSrcId.</p>
ClassMethod GetValue(pDomainId As %Integer, pCcId As %Integer, vSrcId As %Integer = 0, Output pSC As %Status = {$$$OK}) As %List
{
}

/// Internal version of <method>GetValue</method>, skipping security checks.
ClassMethod GetValueInternal(pDomainId As %Integer, pCcId As %Integer, vSrcId As %Integer = 0, Output pSC As %Status = {$$$OK}) As %List [ Internal ]
{
}

///  <p>Returns, if any, the CC ID for the combination of head and tail specified.</p>
///  <p>When specifying a Virtual Source ID, it will treat the heads and tails as virtual
///  entities, in the context of that vSrcId.</p>
ClassMethod GetId(pDomainId As %Integer, pHead As %String, pTail As %String, vSrcId As %Integer = 0, Output pSC As %Status = {$$$OK}) As %Integer
{
}

/// Internal version of <method>GetId</method>
ClassMethod GetIdInternal(pDomainId As %Integer, ByRef pHead As %String, ByRef pTail As %String, vSrcId As %Integer = 0, Output pSC As %Status = {$$$OK}, pStripPunctuation As %Boolean = 1) As %Integer [ Internal ]
{
}

/// Returns the "inverse" of a CC pair, which means the CC composed of the same
/// head and tail entity, but at inverted positions.
ClassMethod GetInverse(domainId As %Integer, ccUniId As %Integer, Output sc As %Status = {$$$OK}) As %Integer
{
}

///  <p>Returns the frequency of the CC corresponding to the supplied <var>crcUniId</var>.</p>
///  <p>When specifying a Virtual Source ID, the frequency within the virtual source will be returned.</p>
ClassMethod GetFrequency(domainId As %Integer, ccUniId As %Integer, vSrcId As %Integer = 0, filter As %iKnow.Filters.Filter = "", Output sc As %Status = {$$$OK}) As %Integer
{
}

///  <p>Returns the spread of the CC corresponding to the supplied <var>ccUniId</var>.</p>
ClassMethod GetSpread(domainId As %Integer, ccUniId As %Integer, filter As %iKnow.Filters.Filter = "", Output sc As %Status = {$$$OK}) As %Integer
{
}

Parameter GetByEntitiesRT = "HeadEntUniId:%Integer,HeadEntity:%String,TailEntUniId:%Integer,TailEntity:%String,frequency:%Integer,spread:%Integer,ccUniId:%Integer";

/// <p>This method will return all CC pairs in which any (if <i>setop</i> = $$$UNION) or all (if <i>setop</i> = $$$INTERSECT)
/// of the entities supplied in the <i>entitylist</i> participate, within the boundaries of the supplied domain.</p>
/// <p>The scope of this query can be limited through supplying a <class>%iKnow.Filters.Filter</class> object for the <i>filter</i>
/// parameter to restrict the result to those CCs occurring in any source satisfying the filter
/// criteria. When using a filter, the <i>filtermode</i> parameter will control whether or not the
/// frequency and spread of returned records should be recalculated and whether results should be
/// resorted along these recalculated numbers.</p>
/// <p>Specifying a value for <i>positionstomatch</i> will limit the result to
/// those CCs in which the supplied entities are on the Head (with <i>positionstomatch</i> = $$$USEPOSH) or
/// Tail (with <i>positionstomatch</i> = $$$USEPOST) side rather than either of the two (with
/// <i>positionstomatch</i> = $$$USEPOSHT, default setting).</p>
/// <p>If stemming is enabled for this domain through $$$IKPSTEMMING, CCs containing any actual
/// form of the entities in <var>entityList</var> will be returned. Use <var>pActualFormOnly</var>=1
/// to retrieve only those CCs containing the actual forms in <var>entitylist</var>. This
/// argument is ignored if stemming is not enabled.</p>
ClassMethod GetByEntities(ByRef result, domainid As %Integer, entitylist As %List, page As %Integer = 1, pagesize As %Integer = 10, filter As %iKnow.Filters.Filter = "", filtermode As %Integer = {$$$FILTERONLY}, positionstomatch As %Integer = {$$$USEPOSHT}, sorttype As %Integer = {$$$SORTBYDOMAINDEFAULT}, pActualFormOnly As %Boolean = 0) As %Status
{
}

Parameter GetByEntityIdsRT [ Internal ] = "HeadEntUniId:%Integer,HeadEntity:%String,TailEntUniId:%Integer,TailEntity:%String,frequency:%Integer,spread:%Integer,ccUniId:%Integer";

/// <p>This method looks up CCs based on a list of Entity IDs.</p>
/// <p>See also <method>GetByEntities</method> for a description of the parameters.</p>
ClassMethod GetByEntityIds(ByRef result, domainid As %Integer, entityidlist As %List, page As %Integer = 1, pagesize As %Integer = 10, filter As %iKnow.Filters.Filter = "", filtermode As %Integer = {$$$FILTERONLY}, positionstomatch As %Integer = {$$$USEPOSHT}, sorttype As %Integer = {$$$SORTBYDOMAINDEFAULT}, pActualFormOnly As %Boolean = 0) As %Status
{
}

ClassMethod GetByEntitiesInternal(ByRef result, domainid As %Integer, ByRef entIdList, page As %Integer, pagesize As %Integer, filter As %iKnow.Filters.Filter, filtermode As %Integer, positionstomatch As %Integer, sorttype As %Integer) As %Status [ Internal ]
{
}

ClassMethod GetByEntitiesInternal20121(ByRef result, domainid As %Integer, ByRef entIdList, page As %Integer, pagesize As %Integer, filter As %iKnow.Filters.Filter, filtermode As %Integer, positionstomatch As %Integer, sorttype As %Integer) As %Status [ Internal ]
{
}

/// <p>This method returns the number of CC pairs based on a list of entities.</p>
/// <p>See also <method>GetByEntities</method> for a description of the parameters.</p>
ClassMethod GetCountByEntities(domainid As %Integer, entitylist As %List, filter As %iKnow.Filters.Filter = "", positionstomatch As %Integer = {$$$USEPOSHT}, Output sc As %Status = {$$$OK}, pActualFormOnly As %Boolean = 0) As %Integer
{
}

/// <p>This method returns the number of CC pairs based on a list of entity ids.</p>
/// <p>See also <method>GetByEntities</method> for a description of the parameters.</p>
ClassMethod GetCountByEntityIds(domainid As %Integer, entityidlist As %List, filter As %iKnow.Filters.Filter = "", positionstomatch As %Integer = {$$$USEPOSHT}, Output sc As %Status = {$$$OK}, pActualFormOnly As %Boolean = 0) As %Integer
{
}

ClassMethod GetCountByEntitiesInternal(domainid As %Integer, ByRef entityIdList, filter As %iKnow.Filters.Filter, positionstomatch As %Integer, Output sc As %Status = {$$$OK}) As %Integer [ Internal ]
{
}

ClassMethod GetCountByEntitiesInternal20121(domainid As %Integer, ByRef entityIdList, filter As %iKnow.Filters.Filter, positionstomatch As %Integer, Output sc As %Status = {$$$OK}) As %Integer [ Internal ]
{
}

///  <p>Returns the total number of unique CCs appearing in either (if <var>setop</var> = $$$UNION) or
///  all (if <var>setop</var> = $$$INTERSECT) of the sources specified by ID in <var>sourceidlist</var>.</p>
///  <p>To get the unique CCs of a virtual source, only a single virtual source can be supplied using
///  its negative ID value (otherwise, -1 is returned).</p>
ClassMethod GetCountBySource(domainid As %Integer, sourceidlist As %List, setop As %Integer = {$$$UNION}, Output sc As %Status = {$$$OK}) As %Integer
{
}

}
