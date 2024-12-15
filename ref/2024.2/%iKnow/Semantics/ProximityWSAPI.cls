/// <p>This is an automatically generated class, offering a functionally equivalent set of methods and queries as <class>%iKnow.Semantics.ProximityAPI</class>, exposed as WebMethod methods.</p><p>See the classdocs for <class>%iKnow.Semantics.ProximityAPI</class> for more information.</p>
Class %iKnow.Semantics.ProximityWSAPI Extends %iKnow.Queries.AbstractWSAPI [ Deprecated, System = 4 ]
{

/// <p>Clusters a document to a set of proximity terms that best identify the documents content.</p>
ClassMethod GetClustersBySource(domainid As %Integer, srcid As %Integer, page As %Integer = 1, pagesize As %Integer = 10) As %XML.DataSet [ Internal, WebMethod ]
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
ClassMethod GetProfile(pDomainId As %Integer, pEntity As %String, pPage As %Integer = 1, pPageSize As %Integer = 10, pFilter As %String(MAXLEN=32767) = "", pSkipListIDs As %ListOfDataTypes = "", pUseStems As %Boolean = 0) As %XML.DataSet [ WebMethod ]
{
}

/// Returns the proximity profile for the entity represented by <var>pEntUniId</var>. See also <method>GetProfile</method>
/// When setting <var>pUseStems</var> to 1, the value of <var>pEntUniId</var> will be interpreted
/// as a stem ID.
ClassMethod GetProfileById(pDomainId As %Integer, pEntUniId As %Integer, pPage As %Integer = 1, pPageSize As %Integer = 10, pFilter As %String(MAXLEN=32767) = "", pSkipListIDs As %ListOfDataTypes = "", pUseStems As %Boolean = 0) As %XML.DataSet [ WebMethod ]
{
}

/// Returns the proximity profile for a given entity <var>pEntity</var> in source <var>pExtId</var>.
/// See also <method>GetProfile</method> for a broader set of options.
ClassMethod GetProfileBySource(pDomainId As %Integer, pEntity As %String, pExternalId As %String, pPage As %Integer = 1, pPageSize As %Integer = 10) As %XML.DataSet [ WebMethod ]
{
}

/// Returns the proximity profile for a given entity identified by <var>pEntUniId</var> in source <var>pSrcId</var>.
/// See also <method>GetProfile</method> for a broader set of options.
ClassMethod GetProfileBySourceId(pDomainId As %Integer, pEntUniId As %Integer, pSrcId As %Integer, pPage As %Integer = 1, pPageSize As %Integer = 10) As %XML.DataSet [ WebMethod ]
{
}

/// <p>Returns the proximity profile for a specified entity.</p>
/// <p>The proximity profile are those elements that most likely occur in close relationship to the provided entity within the sources in a domain.</p>
/// <p>Deprecated: See also <method>GetProfile</method> for a broader set of options.</p>
ClassMethod GetProfileForEntity(domainid As %Integer, entId As %Integer, page As %Integer = 1, pagesize As %Integer = 10) As %XML.DataSet [ Internal, WebMethod ]
{
}

Parameter NAMESPACE = "http://www.intersystems.com/iKnow/Semantics/ProximityWSAPI";

Parameter SERVICENAME = "iKnow.Semantics.ProximityWSAPI";

Parameter USECLASSNAMESPACES = 1;

}
