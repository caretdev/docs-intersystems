/// <p>The InterSystems IRIS NLP iKnow technology is now deprecated. Please see the
/// <a href="https://docs.intersystems.com/irislatest/csp/docbook/DocBook.UI.Page.cls?KEY=GIKNOW">product
/// documentation</a> for more detail.</p>
/// Main class for retrieving dominant terms from sources.
Class %iKnow.Semantics.DominanceAPI Extends %iKnow.Queries.AbstractAPI [ Deprecated, System = 4 ]
{

Parameter GetTopRT = "entUniId:%Integer,entity:%String,score:%Numeric";

/// <p>Returns the top entities for this domain, sorted by their aggregated dominance values.
/// <p><var>pAggregation</var> defines how to aggregate the source-level values. Currently the only
/// supported value is "AVG", which just calculates a regular average as a fast approximation.
/// Future versions will offer more advanced aggregation modes (which may be slower to calculate). </p>
ClassMethod GetTop(ByRef pResult, pDomainId As %Integer, pPage As %Integer = 1, pPageSize As %Integer = 10, pFilter As %iKnow.Filters.Filter = "", pAggregation As %String = "AVG", pEntRole As %Integer = {$$$SDCONCEPT}, pSkipLists As %List = "") As %Status
{
}

ClassMethod GetTopJob(pDomainId As %Integer, pOffset As %Integer, pBits As %RawString, pJobID As %Integer, pLP As %Integer, pUseStemming As %Boolean) As %Status [ Internal ]
{
}

///  <p>Returned column summary for <method>GetBySource</method>.</p>
Parameter GetBySourceRT = "id:%Integer,values:%List,type:%Integer,dominance:%Numeric";

/// 	<p>Returns all dominant elements for a specific source. The type of elements returned can be set by the <var>type</var> parameter.
/// 	Available types are <var>$$$SDCONCEPT</var>, <var>$$$SDRELATION</var>, <var>$$$SDENTITY</var>, <var>$$$SDCRC</var>, <var>$$$SDPATH</var> and <var>$$$SDAGGREGATE</var>.</p>
/// 	<p>The elements returned can be limited to those with a dominance value above average by setting the <var>cutoff</var> parameter to <var>$$$SDABOVEAVERAGE</var>.</p>
ClassMethod GetBySource(ByRef result, domainid As %Integer, srcid As %Integer, page As %Integer = 1, pagesize As %Integer = 10, type As %Integer = {$$$SDCONCEPT}, cutoff As %Integer = {$$$SDALL}) As %Status
{
}

///  <p>Returned column summary for <method>GetProfileBySource</method>.</p>
Parameter GetProfileBySourceRT [ Deprecated ] = "id:%Integer,values:%List,type:%Integer,dominance:%Numeric";

/// 	<p>Returns the dominance profile for a specific source. The type of elements returned can be set by the <var>type</var> parameter.
/// 	Available types are <var>$$$SDCONCEPT</var>, <var>$$$SDRELATION</var>, <var>$$$SDENTITY</var>, <var>$$$SDCRC</var>, <var>$$$SDPATH</var> and <var>$$$SDAGGREGATE</var>.</p>
/// 	<p>The elements returned can be limited to those with a dominance value above average by setting the <var>cutoff</var> parameter to <var>$$$SDABOVEAVERAGE</var>.</p>
ClassMethod GetProfileBySource(ByRef result, domainid As %Integer, srcid As %Integer, page As %Integer = 1, pagesize As %Integer = 10, type As %Integer = {$$$SDCONCEPT}, cutoff As %Integer = {$$$SDALL}) As %Status [ Deprecated ]
{
}

/// Returns the dominance profile of a particular source as an array:
/// pArray(type, -dom, id) = "" or pArray(-dom, -length, id) = ""
ClassMethod GetBySourceArray(Output pArray, pDomainId As %Integer, pSrcId As %Integer, pType As %Integer = {$$$SDCONCEPT}, pByType As %Boolean = 0, pUseProfile As %Boolean = 1) As %Status [ Internal ]
{
}

ClassMethod GetBySourceInternal(ByRef result, domainid As %Integer, srcid As %Integer, page As %Integer = 1, pagesize As %Integer = 10, type As %Integer = {$$$SDCONCEPT}, cutoff As %Integer = {$$$SDALL}, pUseProfile As %Boolean = 0) As %Status [ Internal, Private ]
{
}

/// <p>Returns the number of dominant terms found in a specific source. The type of elements counted can be set by the <var>type</var> parameter.
/// 	Available types are <var>$$$SDCONCEPT</var>, <var>$$$SDRELATION</var>, <var>$$$SDENTITY</var>, <var>$$$SDCRC</var>, <var>$$$SDPATH</var> and <var>$$$SDAGGREGATE</var>.</p>
/// 	<p>The number of elements counted can be limited to those with a dominance value above average by setting the <var>cutoff</var> parameter to <var>$$$SDABOVEAVERAGE</var>.</p>
ClassMethod GetCountBySource(domainid As %Integer, srcid As %Integer, type As %Integer = {$$$SDCONCEPT}, cutoff As %Integer = {$$$SDALL}, ByRef sc As %Status) As %Integer
{
}

/// <p>Returns the number of dominant terms in the profile of a specific source. The type of elements counted can be set by the <var>type</var> parameter.
/// 	Available types are <var>$$$SDCONCEPT</var>, <var>$$$SDRELATION</var>, <var>$$$SDENTITY</var>, <var>$$$SDCRC</var>, <var>$$$SDPATH</var> and <var>$$$SDAGGREGATE</var>.</p>
/// 	<p>The number of elements counted can be limited to those with a dominance value above average by setting the <var>cutoff</var> parameter to <var>$$$SDABOVEAVERAGE</var>.</p>
ClassMethod GetProfileCountBySource(domainid As %Integer, srcid As %Integer, type As %Integer = {$$$SDCONCEPT}, cutoff As %Integer = {$$$SDALL}, ByRef sc As %Status) As %Integer [ Deprecated ]
{
}

ClassMethod GetCountBySourceInternal(domainid As %Integer, srcid As %Integer, type As %Integer = {$$$SDCONCEPT}, cutoff As %Integer = {$$$SDALL}, pUseProfile As %Boolean = 1, ByRef sc As %Status) As %Integer
{
}

///  <p>Returned column summary for <method>GetProfileByDomain</method>.</p>
Parameter GetProfileByDomainRT [ Deprecated ] = "id:%Integer,values:%List,type:%Integer,dominance:%Numeric";

/// 	<p>Returns the dominance profile for a complete domain. The type of elements returned can be set by the <var>type</var> parameter.
/// 	Available types are <var>$$$SDCONCEPT</var>, <var>$$$SDRELATION</var>, <var>$$$SDENTITY</var>, <var>$$$SDCRC</var> and <var>$$$SDAGGREGATE</var>.</p>
ClassMethod GetProfileByDomain(ByRef result, domainid As %Integer, page As %Integer = 1, pagesize As %Integer = 10, type As %Integer = {$$$SDCONCEPT}) As %Status [ Deprecated ]
{
}

/// <p>Returns the number of dominant terms in the profile of a complete domain. The type of elements counted can be set by the <var>type</var> parameter.
/// 	Available types are <var>$$$SDCONCEPT</var>, <var>$$$SDRELATION</var>, <var>$$$SDENTITY</var>, <var>$$$SDCRC</var> and <var>$$$SDAGGREGATE</var>.</p>
ClassMethod GetProfileCountByDomain(domainid As %Integer, type As %Integer = {$$$SDCONCEPT}, ByRef sc As %Status) As %Integer [ Deprecated ]
{
}

/// <p>Returns the dominance value of an element within a specified source. The <var>id</var> parameter takes either an entityId, crcId or pathId and the
/// <var>type parameter</var> defines of what type the <var>id</var> parameter is. Thus valid types are <var>$$$SDCONCEPT</var>, <var>$$$SDRELATIONM</var>,
/// 	<var>$$$SDENTITY</var>, <var>$$$SDCRC</var> and	<var>$$$SDPATH</var>.</p>
ClassMethod GetSourceValue(domainid As %Integer, srcid As %Integer, id As %Integer, type As %Integer = {$$$SDCONCEPT}, ByRef sc As %Status) As %Numeric
{
}

/// <p>Returns the dominance value of an element within a specified domain. The <var>id</var> parameter takes either an entityId, crcId or pathId and the
/// <var>type parameter</var> defines of what type the <var>id</var> parameter is. Thus valid types are <var>$$$SDCONCEPT</var>, <var>$$$SDCRC</var> and
/// 	<var>$$$SDPATH</var>.</p>
ClassMethod GetDomainValue(domainid As %Integer, id As %Integer, type As %Integer = {$$$SDCONCEPT}, ByRef sc As %Status) As %Numeric
{
}

/// <p>Builds overlap information of the dominant terms in all profiles of the sources in a domain. This can be restricted by using a filter.</p>
/// <p>Overlap information is needed for the following methods:
/// 	<ul>
/// 	<li><method>GetOverlap</method></li>
/// 	<li><method>GetOverlapDetails</method></li>
/// 	<li><method>FindMostTypicalSources</method></li>
/// 	<li><method>FindBreakingSources</method></li>
/// 	<li><method>GetAggregateOverlaps</method></li>
/// 	<li><method>GetSourcesByCorrelation</method></li>
/// 	</ul></p>
ClassMethod BuildOverlap(domainid As %Integer, filter As %iKnow.Filters.Filter = "") As %Status [ Deprecated ]
{
}

///  <p>Returned column summary for <method>GetOverlap</method>.</p>
Parameter GetOverlapRT [ Deprecated ] = "id:%Integer,values:%Integer,type:%Integer,overlap:%Integer";

/// <p>Returns the most overlapping elements in a domain. This can be restricted by type by setting the <var>type</var> parameter to any of those values:
/// 	<ul>
/// 	<li>$$$SDCONCEPT</li>
/// 	<li>$$$SDRELATION</li>
/// 	<li>$$$SDENTITY</li>
/// 	<li>$$$SDCRC</li>
/// 	</ul>.</p>
ClassMethod GetOverlap(ByRef result, domainid As %Integer, page As %Integer = 1, pagesize As %Integer = 10, type As %Integer = {$$$SDCONCEPT}, filter As %iKnow.Filters.Filter = "") As %Status [ Deprecated ]
{
}

///  <p>Returned column summary for <method>GetOverlapDetails</method>.</p>
Parameter GetOverlapDetailsRT [ Deprecated ] = "srcid:%Integer,dominance:%Numeric,sentences:%List";

/// <p>Returns the overlap details of an element in a domain. The type of the element must be specified through the <var>type</var> parameter to any of those values:
/// 	<ul>
/// 	<li>$$$SDCONCEPT</li>
/// 	<li>$$$SDRELATION</li>
/// 	<li>$$$SDENTITY</li>
/// 	<li>$$$SDCRC</li>
/// 	</ul>.</p>
ClassMethod GetOverlapDetails(ByRef result, domainid As %Integer, id As %Integer, page As %Integer = 1, pagesize As %Integer = 10, type As %Integer = {$$$SDCONCEPT}, filter As %iKnow.Filters.Filter = "") As %Status [ Deprecated ]
{
}

Parameter FindMostTypicalSourcesExp [ Deprecated, Internal ] = 1;

/// <p>Uses the overlap information generated by <method>BuildOverlap</method> to calculate typical sources in a domain.</p>
/// <p>You can call <method>GetTypicalSources</method> to get the list of most typical sources.</p>
ClassMethod FindMostTypicalSources(domainid As %Integer) As %Status [ Deprecated ]
{
}

ClassMethod FindMostTypicalSourcesInternal(domainid As %Integer, filter As %iKnow.Filters.Filter = "") As %Status [ Internal, Private ]
{
}

///  <p>Returned column summary for <method>GetTypicalSources</method>.</p>
Parameter GetTypicalSourcesRT [ Deprecated ] = "srcid:%Integer,extid:%String,coverage:%Numeric";

/// <p>Returns the list of most typical sources in a domain. The <var>type</var> parameter defines on which type of element you want the
/// list of typical documents to be based. This can be:
/// 	<ul>
/// 	<li>$$$SDCONCEPT</li>
/// 	<li>$$$SDRELATION</li>
/// 	<li>$$$SDENTITY</li>
/// 	<li>$$$SDCRC</li>
/// 	</ul>.</p>
ClassMethod GetTypicalSources(ByRef result, domainid As %Integer, page As %Integer = 1, pagesize As %Integer = 10, type As %Integer = {$$$SDCONCEPT}, filter As %iKnow.Filters.Filter = "") As %Status [ Deprecated ]
{
}

Parameter FindBreakingSourcesExp [ Deprecated, Internal ] = 1;

/// <p>Uses the overlap information generated by <method>BuildOverlap</method> to calculate breaking sources in a domain.</p>
/// <p>You can call <method>GetBreakingSources</method> to get the list of most breaking sources.</p>
ClassMethod FindBreakingSources(domainid As %Integer) As %Status [ Deprecated ]
{
}

ClassMethod FindBreakingSourcesInternal(domainid As %Integer, filter As %iKnow.Filters.Filter = "") As %Status [ Internal, Private ]
{
}

///  <p>Returned column summary for <method>GetBreakingSources</method>.</p>
Parameter GetBreakingSourcesRT [ Deprecated ] = "srcid:%Integer,extid:%String,uniqueness:%Numeric";

/// <p>Returns the list of most breaking sources in a domain. The <var>type</var> parameter defines on which type of element you want the
/// list of breaking documents to be based. This can be:
/// 	<ul>
/// 	<li>$$$SDCONCEPT</li>
/// 	<li>$$$SDRELATION</li>
/// 	<li>$$$SDENTITY</li>
/// 	<li>$$$SDCRC</li>
/// 	</ul>.</p>
ClassMethod GetBreakingSources(ByRef result, domainid As %Integer, page As %Integer = 1, pagesize As %Integer = 10, type As %Integer = {$$$SDCONCEPT}, filter As %iKnow.Filters.Filter = "") As %Status [ Deprecated ]
{
}

///  <p>Returned column summary for <method>GetAggregateOverlaps</method>.</p>
Parameter GetAggregateOverlapsRT [ Deprecated ] = "id:%Integer,overlapSet1:%Integer,pctSet1:%Numeric,overlapSet2:%Integer,pctSet2:%Numeric,aggPct:%Numeric";

/// <p>Calculates the overlapping overlap of two sets of documents. First the overlap within <var>set1</var> is calculated, then the overlap within
/// 	<var>set2</var>. Finally those are compared and the most overlapping elements within those 2 sets are returned.</p>
ClassMethod GetAggregateOverlaps(ByRef result, domainid As %Integer, type As %Integer, set1 As %iKnow.Filters.Filter, set2 As %iKnow.Filters.Filter, page As %Integer = 1, pagesize As %Integer = 10) As %Status [ Deprecated ]
{
}

ClassMethod CalcSetOverlap(domainid As %Integer, type As %Integer, set As %iKnow.Filters.Filter = "", glob As %String) As %Status [ Internal, Private ]
{
}

///  <p>Returned column summary for <method>GetAggregateOverlaps</method>.</p>
Parameter GetSourcesByCorrelationRT [ Deprecated ] = "srcid:%Integer,extid:%String,correlation:%Numeric";

/// <p>Returns a set of documents wich correlate closely to the input set (<var>entids</var>) of entities based on the dominance values of those entities
/// within the documents.</p>
ClassMethod GetSourcesByCorrelation(ByRef result, domainid As %Integer, entids As %List = "", page As %Integer = 1, pagesize As %Integer = 10, filter As %iKnow.Filters.Filter = "") As %Status [ Deprecated ]
{
}

}
