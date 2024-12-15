/// <p>The InterSystems IRIS NLP iKnow technology is now deprecated. Please see the
/// <a href="https://docs.intersystems.com/irislatest/csp/docbook/DocBook.UI.Page.cls?KEY=GIKNOW">product
/// documentation</a> for more detail.</p>
/// Main class for retrieving proximity information sources.
Class %iKnow.Semantics.ProximityAPI Extends %iKnow.Queries.AbstractAPI [ Deprecated, System = 4 ]
{

Parameter GetProfileBySourceIdRT = "entUniId:%Integer,entity:%String,score:%Integer";

/// Returns the proximity profile for a given entity identified by <var>pEntUniId</var> in source <var>pSrcId</var>.
/// See also <method>GetProfile</method> for a broader set of options.
ClassMethod GetProfileBySourceId(ByRef pResult, pDomainId As %Integer, pEntUniId As %Integer, pSrcId As %Integer, pPage As %Integer = 1, pPageSize As %Integer = 10) As %Status
{
}

Parameter GetProfileBySourceRT = "entUniId:%Integer,entity:%String,score:%Integer";

/// Returns the proximity profile for a given entity <var>pEntity</var> in source <var>pExtId</var>.
/// See also <method>GetProfile</method> for a broader set of options.
ClassMethod GetProfileBySource(ByRef pResult, pDomainId As %Integer, pEntity As %String, pExternalId As %String, pPage As %Integer = 1, pPageSize As %Integer = 10) As %Status
{
}

Parameter GetProfileRT = "entUniId:%Integer,entity:%String,score:%Integer";

/// <p>Returns the proximity profile for the entity or list of entities supplied through
/// <var>pEntity</var>. This profile is calculated based on the aggregated distance to
/// <var>pEntity</var> entries in all paths in the domain (when <var>pFilter</var>=""),
/// optionally constrained to all paths in a specific set of sources (when <var>pFilter</var>!="").</p>
/// <p>When setting <var>pUseStems</var> to 1, for a domain that has stemming enabled, the scope of
/// the profile will be expanded to include all actual forms of the supplied <var>pEntity</var>
/// (which has to be provided as a base form (stem)!), and their combined proximity profiles will be
/// grouped to the stem level again.</p>
ClassMethod GetProfile(ByRef pResult, pDomainId As %Integer, pEntity As %String, pPage As %Integer = 1, pPageSize As %Integer = 10, pFilter As %iKnow.Filters.Filter = "", pSkipListIDs As %List = "", pUseStems As %Boolean = 0) As %Status
{
}

Parameter GetProfileByIdRT = "entUniId:%Integer,entity:%String,score:%Integer";

/// Returns the proximity profile for the entity represented by <var>pEntUniId</var>. See also <method>GetProfile</method>
/// When setting <var>pUseStems</var> to 1, the value of <var>pEntUniId</var> will be interpreted
/// as a stem ID.
ClassMethod GetProfileById(ByRef pResult, pDomainId As %Integer, pEntUniId As %Integer, pPage As %Integer = 1, pPageSize As %Integer = 10, pFilter As %iKnow.Filters.Filter = "", pSkipListIDs As %List = "", pUseStems As %Boolean = 0) As %Status
{
}

/// Internal method supporting <method>GetProfile</method> and <method>GetProfileById</method>.
/// This method only accepts ENTITY IDs, no stems!
ClassMethod GetProfileInternal(ByRef pResult, pDomainId As %Integer, ByRef pEntIdList, pPage As %Integer, pPageSize As %Integer, pFilter As %iKnow.Filters.Filter, pSkipListIDs As %List, pUseStems As %Boolean = 0) As %Status [ Internal ]
{
}

ClassMethod GetProfileByIdJob(pDomainId As %Integer, ByRef pEntUniIds, pOffset As %Integer, pBits As %RawString, pJobID As %Integer, pSkipListIDs As %List = "") As %Status [ Internal ]
{
}

///  <p>Returned column summary for <method>GetClustersBySource</method>.</p>
Parameter GetClustersBySourceRT [ Deprecated, Internal ] = "entid:%Integer,entity:%String,score:%Numeric";

/// <p>Clusters a document to a set of proximity terms that best identify the documents content.</p>
ClassMethod GetClustersBySource(ByRef result, domainid As %Integer, srcid As %Integer, page As %Integer = 1, pagesize As %Integer = 10) As %Status [ Deprecated, Internal ]
{
}

///  <p>Returned column summary for <method>GetProfileForEntity</method>.</p>
Parameter GetProfileForEntityRT [ Deprecated, Internal ] = "entId:%Integer,entity:%String,proximity:%Numeric";

/// <p>Returns the proximity profile for a specified entity.</p>
/// <p>The proximity profile are those elements that most likely occur in close relationship to the provided entity within the sources in a domain.</p>
/// <p>Deprecated: See also <method>GetProfile</method> for a broader set of options.</p>
ClassMethod GetProfileForEntity(ByRef result, domainid As %Integer, entId As %Integer, page As %Integer = 1, pagesize As %Integer = 10) As %Status [ Deprecated, Internal ]
{
}

}
