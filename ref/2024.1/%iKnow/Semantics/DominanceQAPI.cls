/// <p>This is an automatically generated class, offering a functionally equivalent set of methods and queries as <class>%iKnow.Semantics.DominanceAPI</class>, exposed as SqlProc methods.</p><p>See the classdocs for <class>%iKnow.Semantics.DominanceAPI</class> for more information.</p>
Class %iKnow.Semantics.DominanceQAPI Extends %iKnow.Queries.AbstractQAPI [ Deprecated, System = 4 ]
{

/// <p>Calculates the overlapping overlap of two sets of documents. First the overlap within <var>set1</var> is calculated, then the overlap within
/// 	<var>set2</var>. Finally those are compared and the most overlapping elements within those 2 sets are returned.</p>
ClassMethod GetAggregateOverlapsExecute(ByRef qHandle As %Binary, domainid As %Integer, type As %Integer, set1 As %String(MAXLEN=32767) = "", set2 As %String(MAXLEN=32767) = "", page As %Integer = 1, pagesize As %Integer = 10) As %Status [ Internal ]
{
}

ClassMethod GetAggregateOverlapsFetch(ByRef qHandle As %Binary, ByRef Row As %List, ByRef AtEnd As %Integer = 0) As %Status [ Internal, PlaceAfter = GetAggregateOverlapsExecute ]
{
}

ClassMethod GetAggregateOverlapsClose(ByRef qHandle As %Binary) As %Status [ Internal, PlaceAfter = GetAggregateOverlapsExecute ]
{
}

/// <p>Returns the list of most breaking sources in a domain. The <var>type</var> parameter defines on which type of element you want the
/// list of breaking documents to be based. This can be:
/// 	<ul>
/// 	<li>$$$SDCONCEPT</li>
/// 	<li>$$$SDRELATION</li>
/// 	<li>$$$SDENTITY</li>
/// 	<li>$$$SDCRC</li>
/// 	</ul>.</p>
ClassMethod GetBreakingSourcesExecute(ByRef qHandle As %Binary, domainid As %Integer, page As %Integer = 1, pagesize As %Integer = 10, type As %Integer = {$$$SDCONCEPT}, filter As %String(MAXLEN=32767) = "") As %Status [ Internal ]
{
}

ClassMethod GetBreakingSourcesFetch(ByRef qHandle As %Binary, ByRef Row As %List, ByRef AtEnd As %Integer = 0) As %Status [ Internal, PlaceAfter = GetBreakingSourcesExecute ]
{
}

ClassMethod GetBreakingSourcesClose(ByRef qHandle As %Binary) As %Status [ Internal, PlaceAfter = GetBreakingSourcesExecute ]
{
}

/// 	<p>Returns all dominant elements for a specific source. The type of elements returned can be set by the <var>type</var> parameter.
/// 	Available types are <var>$$$SDCONCEPT</var>, <var>$$$SDRELATION</var>, <var>$$$SDENTITY</var>, <var>$$$SDCRC</var>, <var>$$$SDPATH</var> and <var>$$$SDAGGREGATE</var>.</p>
/// 	<p>The elements returned can be limited to those with a dominance value above average by setting the <var>cutoff</var> parameter to <var>$$$SDABOVEAVERAGE</var>.</p>
ClassMethod GetBySourceExecute(ByRef qHandle As %Binary, domainid As %Integer, srcid As %Integer, page As %Integer = 1, pagesize As %Integer = 10, type As %Integer = {$$$SDCONCEPT}, cutoff As %Integer = {$$$SDALL}) As %Status [ Internal ]
{
}

ClassMethod GetBySourceFetch(ByRef qHandle As %Binary, ByRef Row As %List, ByRef AtEnd As %Integer = 0) As %Status [ Internal, PlaceAfter = GetBySourceExecute ]
{
}

ClassMethod GetBySourceClose(ByRef qHandle As %Binary) As %Status [ Internal, PlaceAfter = GetBySourceExecute ]
{
}

/// <p>Returns the number of dominant terms found in a specific source. The type of elements counted can be set by the <var>type</var> parameter.
/// 	Available types are <var>$$$SDCONCEPT</var>, <var>$$$SDRELATION</var>, <var>$$$SDENTITY</var>, <var>$$$SDCRC</var>, <var>$$$SDPATH</var> and <var>$$$SDAGGREGATE</var>.</p>
/// 	<p>The number of elements counted can be limited to those with a dominance value above average by setting the <var>cutoff</var> parameter to <var>$$$SDABOVEAVERAGE</var>.</p>
ClassMethod GetCountBySource(domainid As %Integer, srcid As %Integer, type As %Integer = {$$$SDCONCEPT}, cutoff As %Integer = {$$$SDALL}, Output scText As %String = "") As %Library.Integer [ SqlProc ]
{
}

ClassMethod GetCountBySourceInternal(domainid As %Integer, srcid As %Integer, type As %Integer = {$$$SDCONCEPT}, cutoff As %Integer = {$$$SDALL}, pUseProfile As %Boolean = 1, Output scText As %String = "") As %Library.Integer [ SqlProc ]
{
}

/// <p>Returns the dominance value of an element within a specified domain. The <var>id</var> parameter takes either an entityId, crcId or pathId and the
/// <var>type parameter</var> defines of what type the <var>id</var> parameter is. Thus valid types are <var>$$$SDCONCEPT</var>, <var>$$$SDCRC</var> and
/// 	<var>$$$SDPATH</var>.</p>
ClassMethod GetDomainValue(domainid As %Integer, id As %Integer, type As %Integer = {$$$SDCONCEPT}, Output scText As %String = "") As %Library.Numeric [ SqlProc ]
{
}

/// <p>Returns the most overlapping elements in a domain. This can be restricted by type by setting the <var>type</var> parameter to any of those values:
/// 	<ul>
/// 	<li>$$$SDCONCEPT</li>
/// 	<li>$$$SDRELATION</li>
/// 	<li>$$$SDENTITY</li>
/// 	<li>$$$SDCRC</li>
/// 	</ul>.</p>
ClassMethod GetOverlapExecute(ByRef qHandle As %Binary, domainid As %Integer, page As %Integer = 1, pagesize As %Integer = 10, type As %Integer = {$$$SDCONCEPT}, filter As %String(MAXLEN=32767) = "") As %Status [ Internal ]
{
}

ClassMethod GetOverlapFetch(ByRef qHandle As %Binary, ByRef Row As %List, ByRef AtEnd As %Integer = 0) As %Status [ Internal, PlaceAfter = GetOverlapExecute ]
{
}

ClassMethod GetOverlapClose(ByRef qHandle As %Binary) As %Status [ Internal, PlaceAfter = GetOverlapExecute ]
{
}

/// <p>Returns the overlap details of an element in a domain. The type of the element must be specified through the <var>type</var> parameter to any of those values:
/// 	<ul>
/// 	<li>$$$SDCONCEPT</li>
/// 	<li>$$$SDRELATION</li>
/// 	<li>$$$SDENTITY</li>
/// 	<li>$$$SDCRC</li>
/// 	</ul>.</p>
ClassMethod GetOverlapDetailsExecute(ByRef qHandle As %Binary, domainid As %Integer, id As %Integer, page As %Integer = 1, pagesize As %Integer = 10, type As %Integer = {$$$SDCONCEPT}, filter As %String(MAXLEN=32767) = "") As %Status [ Internal ]
{
}

ClassMethod GetOverlapDetailsFetch(ByRef qHandle As %Binary, ByRef Row As %List, ByRef AtEnd As %Integer = 0) As %Status [ Internal, PlaceAfter = GetOverlapDetailsExecute ]
{
}

ClassMethod GetOverlapDetailsClose(ByRef qHandle As %Binary) As %Status [ Internal, PlaceAfter = GetOverlapDetailsExecute ]
{
}

/// 	<p>Returns the dominance profile for a complete domain. The type of elements returned can be set by the <var>type</var> parameter.
/// 	Available types are <var>$$$SDCONCEPT</var>, <var>$$$SDRELATION</var>, <var>$$$SDENTITY</var>, <var>$$$SDCRC</var> and <var>$$$SDAGGREGATE</var>.</p>
ClassMethod GetProfileByDomainExecute(ByRef qHandle As %Binary, domainid As %Integer, page As %Integer = 1, pagesize As %Integer = 10, type As %Integer = {$$$SDCONCEPT}) As %Status [ Internal ]
{
}

ClassMethod GetProfileByDomainFetch(ByRef qHandle As %Binary, ByRef Row As %List, ByRef AtEnd As %Integer = 0) As %Status [ Internal, PlaceAfter = GetProfileByDomainExecute ]
{
}

ClassMethod GetProfileByDomainClose(ByRef qHandle As %Binary) As %Status [ Internal, PlaceAfter = GetProfileByDomainExecute ]
{
}

/// 	<p>Returns the dominance profile for a specific source. The type of elements returned can be set by the <var>type</var> parameter.
/// 	Available types are <var>$$$SDCONCEPT</var>, <var>$$$SDRELATION</var>, <var>$$$SDENTITY</var>, <var>$$$SDCRC</var>, <var>$$$SDPATH</var> and <var>$$$SDAGGREGATE</var>.</p>
/// 	<p>The elements returned can be limited to those with a dominance value above average by setting the <var>cutoff</var> parameter to <var>$$$SDABOVEAVERAGE</var>.</p>
ClassMethod GetProfileBySourceExecute(ByRef qHandle As %Binary, domainid As %Integer, srcid As %Integer, page As %Integer = 1, pagesize As %Integer = 10, type As %Integer = {$$$SDCONCEPT}, cutoff As %Integer = {$$$SDALL}) As %Status [ Internal ]
{
}

ClassMethod GetProfileBySourceFetch(ByRef qHandle As %Binary, ByRef Row As %List, ByRef AtEnd As %Integer = 0) As %Status [ Internal, PlaceAfter = GetProfileBySourceExecute ]
{
}

ClassMethod GetProfileBySourceClose(ByRef qHandle As %Binary) As %Status [ Internal, PlaceAfter = GetProfileBySourceExecute ]
{
}

/// <p>Returns the number of dominant terms in the profile of a complete domain. The type of elements counted can be set by the <var>type</var> parameter.
/// 	Available types are <var>$$$SDCONCEPT</var>, <var>$$$SDRELATION</var>, <var>$$$SDENTITY</var>, <var>$$$SDCRC</var> and <var>$$$SDAGGREGATE</var>.</p>
ClassMethod GetProfileCountByDomain(domainid As %Integer, type As %Integer = {$$$SDCONCEPT}, Output scText As %String = "") As %Library.Integer [ SqlProc ]
{
}

/// <p>Returns the number of dominant terms in the profile of a specific source. The type of elements counted can be set by the <var>type</var> parameter.
/// 	Available types are <var>$$$SDCONCEPT</var>, <var>$$$SDRELATION</var>, <var>$$$SDENTITY</var>, <var>$$$SDCRC</var>, <var>$$$SDPATH</var> and <var>$$$SDAGGREGATE</var>.</p>
/// 	<p>The number of elements counted can be limited to those with a dominance value above average by setting the <var>cutoff</var> parameter to <var>$$$SDABOVEAVERAGE</var>.</p>
ClassMethod GetProfileCountBySource(domainid As %Integer, srcid As %Integer, type As %Integer = {$$$SDCONCEPT}, cutoff As %Integer = {$$$SDALL}, Output scText As %String = "") As %Library.Integer [ SqlProc ]
{
}

/// <p>Returns the dominance value of an element within a specified source. The <var>id</var> parameter takes either an entityId, crcId or pathId and the
/// <var>type parameter</var> defines of what type the <var>id</var> parameter is. Thus valid types are <var>$$$SDCONCEPT</var>, <var>$$$SDRELATIONM</var>,
/// 	<var>$$$SDENTITY</var>, <var>$$$SDCRC</var> and	<var>$$$SDPATH</var>.</p>
ClassMethod GetSourceValue(domainid As %Integer, srcid As %Integer, id As %Integer, type As %Integer = {$$$SDCONCEPT}, Output scText As %String = "") As %Library.Numeric [ SqlProc ]
{
}

/// <p>Returns a set of documents wich correlate closely to the input set (<var>entids</var>) of entities based on the dominance values of those entities
/// within the documents.</p>
ClassMethod GetSourcesByCorrelationExecute(ByRef qHandle As %Binary, domainid As %Integer, entids As %String(MAXLEN=32767) = "", page As %Integer = 1, pagesize As %Integer = 10, filter As %String(MAXLEN=32767) = "") As %Status [ Internal ]
{
}

ClassMethod GetSourcesByCorrelationFetch(ByRef qHandle As %Binary, ByRef Row As %List, ByRef AtEnd As %Integer = 0) As %Status [ Internal, PlaceAfter = GetSourcesByCorrelationExecute ]
{
}

ClassMethod GetSourcesByCorrelationClose(ByRef qHandle As %Binary) As %Status [ Internal, PlaceAfter = GetSourcesByCorrelationExecute ]
{
}

/// <p>Returns the top entities for this domain, sorted by their aggregated dominance values.
/// <p><var>pAggregation</var> defines how to aggregate the source-level values. Currently the only
/// supported value is "AVG", which just calculates a regular average as a fast approximation.
/// Future versions will offer more advanced aggregation modes (which may be slower to calculate). </p>
ClassMethod GetTopExecute(ByRef qHandle As %Binary, pDomainId As %Integer, pPage As %Integer = 1, pPageSize As %Integer = 10, pFilter As %String(MAXLEN=32767) = "", pAggregation As %String(MAXLEN=32767) = "AVG", pEntRole As %Integer = {$$$SDCONCEPT}, pSkipLists As %String(MAXLEN=32767) = "") As %Status [ Internal ]
{
}

ClassMethod GetTopFetch(ByRef qHandle As %Binary, ByRef Row As %List, ByRef AtEnd As %Integer = 0) As %Status [ Internal, PlaceAfter = GetTopExecute ]
{
}

ClassMethod GetTopClose(ByRef qHandle As %Binary) As %Status [ Internal, PlaceAfter = GetTopExecute ]
{
}

/// <p>Returns the list of most typical sources in a domain. The <var>type</var> parameter defines on which type of element you want the
/// list of typical documents to be based. This can be:
/// 	<ul>
/// 	<li>$$$SDCONCEPT</li>
/// 	<li>$$$SDRELATION</li>
/// 	<li>$$$SDENTITY</li>
/// 	<li>$$$SDCRC</li>
/// 	</ul>.</p>
ClassMethod GetTypicalSourcesExecute(ByRef qHandle As %Binary, domainid As %Integer, page As %Integer = 1, pagesize As %Integer = 10, type As %Integer = {$$$SDCONCEPT}, filter As %String(MAXLEN=32767) = "") As %Status [ Internal ]
{
}

ClassMethod GetTypicalSourcesFetch(ByRef qHandle As %Binary, ByRef Row As %List, ByRef AtEnd As %Integer = 0) As %Status [ Internal, PlaceAfter = GetTypicalSourcesExecute ]
{
}

ClassMethod GetTypicalSourcesClose(ByRef qHandle As %Binary) As %Status [ Internal, PlaceAfter = GetTypicalSourcesExecute ]
{
}

}
