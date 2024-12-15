/// <p>The InterSystems IRIS NLP iKnow technology is now deprecated. Please see the
/// <a href="https://docs.intersystems.com/irislatest/csp/docbook/DocBook.UI.Page.cls?KEY=GIKNOW">product
/// documentation</a> for more detail.</p>
///  This is the main Query API to retrieve Concept-Relation-Concept triples (CRCs).
///  In a CRC, the first concept is called the Head and the last the Tail, which are linked to
///  one another through the Relation element.
Class %iKnow.Queries.CrcAPI Extends %iKnow.Queries.AbstractAPI [ Deprecated, System = 4 ]
{

Parameter GetValueRT = "head:%String,relation:%String,tail:%String";

///  <p>Returns the entity values this CRC is composed of.</p>
///  <p>When specifying a Virtual Source ID, it will treat the crcid as a virtual one,
///  in the context of that vSrcId.</p>
ClassMethod GetValue(domainid As %Integer, crcid As %Integer, vSrcId As %Integer = 0) As %List
{
}

/// Internal version of <method>GetValue</method>, skipping security checks.
ClassMethod GetValueInternal(domainid As %Integer, crcid As %Integer, vSrcId As %Integer = 0) As %List [ Internal ]
{
}

///  <p>Returns, if any, the CRC ID for the combination of Head, Relation and Tail specified.</p>
///  <p>When specifying a Virtual Source ID, it will treat the head, relation and tails as virtual
///  entities, in the context of that vSrcId.</p>
ClassMethod GetId(domainid As %Integer, head As %String, relation As %String, tail As %String, vSrcId As %Integer = 0) As %Integer
{
}

/// Internal version of <method>GetId</method>
ClassMethod GetIdInternal(domainid As %Integer, ByRef head As %String, ByRef relation As %String, ByRef tail As %String, vSrcId As %Integer = 0, stripPunctuation As %Boolean = 1) As %Integer [ Internal ]
{
}

///  <p>Returns the frequency of the CRC corresponding to the supplied <var>crcUniId</var>.</p>
///  <p>When specifying a Virtual Source ID, the frequency within the virtual source will be returned.</p>
ClassMethod GetFrequency(domainId As %Integer, crcUniId As %Integer, vSrcId As %Integer = 0, filter As %iKnow.Filters.Filter = "", Output sc As %Status = {$$$OK}) As %Integer
{
}

///  <p>Returns the spread of the CRC corresponding to the supplied <var>crcUniId</var>.</p>
ClassMethod GetSpread(domainId As %Integer, crcUniId As %Integer, filter As %iKnow.Filters.Filter = "", Output sc As %Status = {$$$OK}) As %Integer
{
}

Parameter GetByEntitiesRT = "crcId:%Integer,head:%String,relation:%String,tail:%String,frequency:%Integer,spread:%Integer";

///  <p>This method will return all CRC triples in which any of the entities supplied in the <var>entitylist</var>
///  participate, within the boundaries of the supplied domain.</p>
///  <p>The scope of this query can be limited through supplying a <class>%iKnow.Filters.Filter</class> object for the <var>filter</var>
///  parameter to restrict the result to those CRCs occurring in any source satisfying the filter
///  criteria. When using a filter, the <var>filtermode</var> parameter will control whether or not the
///  frequency and spread of returned records should be recalculated and whether results should be
///  resorted along these recalculated numbers.</p>
///  <p>Specifying a value for <var>positionstomatch</var> will limit the result to
///  those CRCs in which the supplied entities are in the Head (with <var>positionstomatch</var> = $$$USEPOSH),
///  Relation (with <var>positionstomatch</var> = $$$USEPOSR) or Tail (with <var>positionstomatch</var> = $$$USEPOST) role
///  of the CRC, or in any combination of these (with <var>positionstomatch</var> = $$$USEPOSHT, $$$USEPOSHR,
///  $$$USEPOSRT, $$$USEPOSALL (the default)).</p>
/// <p>If stemming is enabled for this domain through $$$IKPSTEMMING, CRCs containing any actual
/// form of the entities in <var>entityList</var> will be returned. Use <var>pActualFormOnly</var>=1
/// to retrieve only those CRCs containing the actual forms in <var>entitylist</var>. This
/// argument is ignored if stemming is not enabled.</p>
ClassMethod GetByEntities(ByRef result, domainid As %Integer, entitylist As %List, page As %Integer = 1, pagesize As %Integer = 10, filter As %iKnow.Filters.Filter = "", filtermode As %Integer = {$$$FILTERONLY}, positionstomatch As %Integer = {$$$USEPOSALL}, pActualFormOnly As %Boolean = 0) As %Status
{
}

Parameter GetByEntityIdsRT = "crcId:%Integer,head:%String,relation:%String,tail:%String,frequency:%Integer,spread:%Integer";

///  <p>Returns the CRCs in this domain containing any or all of a list of entity IDs.</p>
///  <p>See also <method>GetByEntities</method> for a description of the parameters.</p>
ClassMethod GetByEntityIds(ByRef result, domainid As %Integer, entityidlist As %List, page As %Integer = 1, pagesize As %Integer = 10, filter As %iKnow.Filters.Filter = "", filtermode As %Integer = {$$$FILTERONLY}, positionstomatch As %Integer = {$$$USEPOSALL}, pActualFormOnly As %Boolean = 0) As %Status
{
}

ClassMethod GetByEntitiesInternal(ByRef result, domainid As %Integer, ByRef entitylist, page As %Integer, pagesize As %Integer, filter As %iKnow.Filters.Filter, filtermode As %Integer, positionstomatch As %Integer) As %Status [ Internal ]
{
}

Parameter GetTopRT = "crcId:%Integer,head:%String,relation:%String,tail:%String,freq:%Integer,spread:%Integer";

///  <p>Returns the most frequently occurring CRCs for this domain, sorted by descending frequency
///  (with <var>sorttype</var> $$$SORTBYFREQUENCY), spread (with <var>sorttype</var> $$$SORTBYSPREAD) or the
///  domain default (with <var>sorttype</var> $$$SORTBYDOMAINDEFAULT).</p>
///  <p>The scope of this query can be limited through supplying a <class>%iKnow.Filters.Filter</class> object for the <var>filter</var>
///  parameter to restrict the result to those CRCs occurring in any source satisfying the filter
///  criteria. When using a filter, the <var>filtermode</var> parameter will control whether or not the
///  frequency and spread of returned records should be recalculated and whether results should be
///  resorted along these recalculated numbers.</p>
///  <p>If a Virtual Source ID is provided, only the entities in that virtual source will be considered,
///  filters are ignored and the sort type will always be $$$SORTBYFREQUENCY.</p>
ClassMethod GetTop(ByRef result, domainid As %Integer, page As %Integer = 1, pagesize As %Integer = 10, filter As %iKnow.Filters.Filter = "", filtermode As %Integer = {$$$FILTERONLY}, sorttype As %Integer = {$$$SORTBYDOMAINDEFAULT}, vSrcId As %Integer = 0) As %Status
{
}

Parameter GetByFilterRT = "crcId:%Integer,head:%String,relation:%String,tail:%String,frequency:%Integer,spread:%Integer";

///  <p>Returns all CRCs appearing in any source satisfying the supplied <var>filter</var>
///  objects criteria, with their frequencies and spread recalculated to comply with the filter
///  depending on the value of <var>filtermode</var>, but the result is NOT re-sorted, regardless
///  of the value for <var>filtermode</var> (use <method>GetTop</method> if you want sorted results).</p>
ClassMethod GetByFilter(ByRef result, domainid As %Integer, filter As %iKnow.Filters.Filter = "", filtermode As %Integer = {$$$FILTERONLY}) As %Status
{
}

///  sortIndex = -1 means regular output, otherwise an additional first subscript will be introduced
///  to sort by frequency ($$$SORTBYFREQUENCY) or spread ($$$SORTBYSPREAD): result(-sort, entUniId)
///  WARNING: for internal use only, no input checking is performed!
ClassMethod GetByFilterInternal(ByRef result, domainid As %Integer, filter As %iKnow.Filters.Filter = "", filtermode As %Integer = {$$$FILTERONLY}, sortIndex As %Integer = -1) As %Status [ Internal ]
{
}

ClassMethod GetByFilterInternal20121(ByRef result, domainid As %Integer, filter As %iKnow.Filters.Filter = "", filtermode As %Integer = {$$$FILTERONLY}, sortIndex As %Integer = -1) As %Status [ Internal ]
{
}

Parameter GetBySourceRT = "crcId:%Integer,head:%String,relation:%String,tail:%String,frequency:%Integer,spread:%Integer";

///  <p>Returns the unique CRCs appearring in the specified sources.</p>
///  <p>To get the unique CRCs of a virtual source, only a single virtual source can be supplied using
///  its negative ID value (otherwise, -1 is returned).</p>
ClassMethod GetBySource(ByRef result, domainid As %Integer, sourceidlist As %List, page As %Integer = 1, pagesize As %Integer = 10) As %Status
{
}

///  <p>Returns the total number of unique CRCs in a domain, optionally limited through supplying a
///  <class>%iKnow.Filters.Filter</class> object as the <var>filter</var> parameter to restrict the result to
///  those CRCs occurring in any source satisfying the filter criteria.</p>
ClassMethod GetCountByDomain(domainid As %Integer, filter As %iKnow.Filters.Filter = "", Output sc As %Status = {$$$OK}, includeZeroFrequency As %Boolean = 0) As %Integer
{
}

///  <p>Returns the total number of unique CRCs appearing in either (if <var>setop</var> = $$$UNION) or
///  all (if <var>setop</var> = $$$INTERSECT) of the sources specified by ID in <var>sourceidlist</var>.</p>
///  <p>To get the unique CRCs of a virtual source, only a single virtual source can be supplied using
///  its negative ID value (otherwise, -1 is returned).</p>
ClassMethod GetCountBySource(domainid As %Integer, sourceidlist As %List, setop As %Integer = {$$$UNION}, Output sc As %Status = {$$$OK}) As %Integer
{
}

///  <p>Returns the total number of CRC occurrences in the specified sources.</p>
///  <p>Use negative source IDs to refer to virtual sources</p>
ClassMethod GetOccurrenceCountBySource(domainid As %Integer, sourceidlist As %List, Output sc As %Status = {$$$OK}) As %Integer
{
}

Parameter GetOccurrencesBySourceRT = "crcOccId:%Integer,crcUniId:%Integer,head:%String,relation:%String,tail:%String,sentenceId:%Integer,posInSent:%Integer";

///  <p>Returns the CRC occurrences for a given source, in the order in which they appear.</p>
ClassMethod GetOccurrencesBySource(ByRef result, domainid As %Integer, srcid As %Integer, page As %Integer = 1, pagesize As %Integer = 10) As %Status
{
}

///  <p>Returns the number of CRCs in this domain, based on a list of entities.</p>
///  <p>See also <method>GetByEntities</method> for a description of the parameters.</p>
ClassMethod GetCountByEntities(domainid As %Integer, entitylist As %List, filter As %iKnow.Filters.Filter = "", positionstomatch As %Integer = {$$$USEPOSALL}, Output sc As %Status = {$$$OK}, pActualFormOnly As %Boolean = 0) As %Integer
{
}

///  <p>Returns the number of CRCs in this domain, based on a list of entity IDs.</p>
///  <p>See also <method>GetByEntities</method> for a description of the parameters.</p>
ClassMethod GetCountByEntityIds(domainid As %Integer, entityidlist As %List, filter As %iKnow.Filters.Filter = "", positionstomatch As %Integer = {$$$USEPOSALL}, Output sc As %Status = {$$$OK}, pActualFormOnly As %Boolean = 0) As %Integer
{
}

ClassMethod GetCountByEntitiesInternal(domainid As %Integer, ByRef entityIdList, filter As %iKnow.Filters.Filter, positionstomatch As %Integer, Output sc As %Status = {$$$OK}) As %Integer [ Internal ]
{
}

///  translate a list of CRCs in their full-text $lb representation to CrcUniIds,
///  removing inexistent crcs and duplicates
ClassMethod TranslateCrcList(domainid As %Integer, crclist As %List, globName As %String = "^||%IK.CrcIds", vSrcId As %Integer = 0, Output unMatchedCount As %Integer) As %Status [ Internal ]
{
}

///  clean a list of CrcUniIds from duplicates and inexistent ids
ClassMethod TranslateCrcIdList(domainid As %Integer, crcIdList As %List, globName As %String = "^||%IK.CrcIds", vSrcId As %Integer = 0, Output unMatchedCount As %Integer) As %Status [ Internal ]
{
}

ClassMethod TranslateMRSMaskToCrcIdList(domainid As %Integer, head As %String = {$$$WILDCARD}, relation As %String = {$$$WILDCARD}, tail As %String = {$$$WILDCARD}, globName As %String = "^||%IK.CrcIds", vSrcId As %Integer = 0, pIncludeAllForms As %Boolean = 0) As %Status [ Internal ]
{
}

}
