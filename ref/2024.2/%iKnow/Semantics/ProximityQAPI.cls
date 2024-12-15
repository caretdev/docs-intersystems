/// <p>This is an automatically generated class, offering a functionally equivalent set of methods and queries as <class>%iKnow.Semantics.ProximityAPI</class>, exposed as SqlProc methods.</p><p>See the classdocs for <class>%iKnow.Semantics.ProximityAPI</class> for more information.</p>
Class %iKnow.Semantics.ProximityQAPI Extends %iKnow.Queries.AbstractQAPI [ Deprecated, System = 4 ]
{

/// <p>Clusters a document to a set of proximity terms that best identify the documents content.</p>
ClassMethod GetClustersBySourceExecute(ByRef qHandle As %Binary,  domainid As %Integer, srcid As %Integer, page As %Integer = 1, pagesize As %Integer = 10) As %Status [ Internal ]
{
}

ClassMethod GetClustersBySourceFetch(ByRef qHandle As %Binary, ByRef Row As %List, ByRef AtEnd As %Integer = 0) As %Status [ Internal, PlaceAfter = GetClustersBySourceExecute ]
{
}

ClassMethod GetClustersBySourceClose(ByRef qHandle As %Binary) As %Status [ Internal, PlaceAfter = GetClustersBySourceExecute ]
{
}

/// <p>Returns the proximity profile for the entity or list of entities supplied through
/// <var>pEntity</var>. This profile is calculated based on the aggregated distance to
/// <var>pEntity</var> entries in all paths in the domain (when <var>pFilter</var>=""),
/// optionally constrained to all paths in a specific set of sources (when <var>pFilter</var>!="").</p>
/// <p>When setting <var>pUseStems</var> to 1, for a domain that has stemming enabled, the scope of
/// the profile will be expanded to include all actual forms of the supplied <var>pEntity</var>
/// (which has to be provided as a base form (stem)!), and their combined proximity profiles will be
/// grouped to the stem level again.</p>
ClassMethod GetProfileExecute(ByRef qHandle As %Binary,  pDomainId As %Integer, pEntity As %String(MAXLEN=32767), pPage As %Integer = 1, pPageSize As %Integer = 10, pFilter As %String(MAXLEN=32767) = "", pSkipListIDs As %String(MAXLEN=32767) = "", pUseStems As %Boolean = 0) As %Status [ Internal ]
{
}

ClassMethod GetProfileFetch(ByRef qHandle As %Binary, ByRef Row As %List, ByRef AtEnd As %Integer = 0) As %Status [ Internal, PlaceAfter = GetProfileExecute ]
{
}

ClassMethod GetProfileClose(ByRef qHandle As %Binary) As %Status [ Internal, PlaceAfter = GetProfileExecute ]
{
}

/// Returns the proximity profile for the entity represented by <var>pEntUniId</var>. See also <method>GetProfile</method>
/// When setting <var>pUseStems</var> to 1, the value of <var>pEntUniId</var> will be interpreted
/// as a stem ID.
ClassMethod GetProfileByIdExecute(ByRef qHandle As %Binary,  pDomainId As %Integer, pEntUniId As %Integer, pPage As %Integer = 1, pPageSize As %Integer = 10, pFilter As %String(MAXLEN=32767) = "", pSkipListIDs As %String(MAXLEN=32767) = "", pUseStems As %Boolean = 0) As %Status [ Internal ]
{
}

ClassMethod GetProfileByIdFetch(ByRef qHandle As %Binary, ByRef Row As %List, ByRef AtEnd As %Integer = 0) As %Status [ Internal, PlaceAfter = GetProfileByIdExecute ]
{
}

ClassMethod GetProfileByIdClose(ByRef qHandle As %Binary) As %Status [ Internal, PlaceAfter = GetProfileByIdExecute ]
{
}

/// Returns the proximity profile for a given entity <var>pEntity</var> in source <var>pExtId</var>.
/// See also <method>GetProfile</method> for a broader set of options.
ClassMethod GetProfileBySourceExecute(ByRef qHandle As %Binary,  pDomainId As %Integer, pEntity As %String(MAXLEN=32767), pExternalId As %String(MAXLEN=32767), pPage As %Integer = 1, pPageSize As %Integer = 10) As %Status [ Internal ]
{
}

ClassMethod GetProfileBySourceFetch(ByRef qHandle As %Binary, ByRef Row As %List, ByRef AtEnd As %Integer = 0) As %Status [ Internal, PlaceAfter = GetProfileBySourceExecute ]
{
}

ClassMethod GetProfileBySourceClose(ByRef qHandle As %Binary) As %Status [ Internal, PlaceAfter = GetProfileBySourceExecute ]
{
}

/// Returns the proximity profile for a given entity identified by <var>pEntUniId</var> in source <var>pSrcId</var>.
/// See also <method>GetProfile</method> for a broader set of options.
ClassMethod GetProfileBySourceIdExecute(ByRef qHandle As %Binary,  pDomainId As %Integer, pEntUniId As %Integer, pSrcId As %Integer, pPage As %Integer = 1, pPageSize As %Integer = 10) As %Status [ Internal ]
{
}

ClassMethod GetProfileBySourceIdFetch(ByRef qHandle As %Binary, ByRef Row As %List, ByRef AtEnd As %Integer = 0) As %Status [ Internal, PlaceAfter = GetProfileBySourceIdExecute ]
{
}

ClassMethod GetProfileBySourceIdClose(ByRef qHandle As %Binary) As %Status [ Internal, PlaceAfter = GetProfileBySourceIdExecute ]
{
}

/// <p>Returns the proximity profile for a specified entity.</p>
/// <p>The proximity profile are those elements that most likely occur in close relationship to the provided entity within the sources in a domain.</p>
/// <p>Deprecated: See also <method>GetProfile</method> for a broader set of options.</p>
ClassMethod GetProfileForEntityExecute(ByRef qHandle As %Binary,  domainid As %Integer, entId As %Integer, page As %Integer = 1, pagesize As %Integer = 10) As %Status [ Internal ]
{
}

ClassMethod GetProfileForEntityFetch(ByRef qHandle As %Binary, ByRef Row As %List, ByRef AtEnd As %Integer = 0) As %Status [ Internal, PlaceAfter = GetProfileForEntityExecute ]
{
}

ClassMethod GetProfileForEntityClose(ByRef qHandle As %Binary) As %Status [ Internal, PlaceAfter = GetProfileForEntityExecute ]
{
}

}
