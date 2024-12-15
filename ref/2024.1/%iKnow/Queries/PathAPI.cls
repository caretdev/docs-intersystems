/// <p>The InterSystems IRIS NLP iKnow technology is now deprecated. Please see the
/// <a href="https://docs.intersystems.com/irislatest/csp/docbook/DocBook.UI.Page.cls?KEY=GIKNOW">product
/// documentation</a> for more detail.</p>
/// <p>This is the main Query class to retrieve Paths as identified by the engine.
/// Paths are sequences of concepts and relations that form a meaningful sub-section of a sentence.</p>
Class %iKnow.Queries.PathAPI Extends %iKnow.Queries.AbstractAPI [ Deprecated, System = 4 ]
{

/// <p>Returns the sequence of entity values corresponding to the specified path as a
/// <class>%List</class>.</p>
/// <p>When specifying a Virtual Source ID, it will treat the pathId as a virtual one,
/// in the context of that vSrcId.</p>
/// <p>If stemming is enabled for this domain through the $$$IKPSTEMMING domain parameter, you can
/// use <var>pUseStems</var>=1 to get the stems rather than the entities for this path.</p>
ClassMethod GetValue(domainid As %Integer, pathid As %Integer, vSrcId As %Integer = 0, Output pSC As %Status, pUseStems As %Boolean = 0) As %List
{
}

/// Internal method. See <method>GetPathId</method>
ClassMethod GetEntIds(pDomainId As %Integer, pPathId As %Integer, vSrcId As %Integer = 0, pUseStems As %Boolean = 0) As %List [ Internal ]
{
}

Parameter GetPathIdEXP [ Internal ] = 1;

/// Left in for backwards compatibility. Use <method>GetId</method> instead.
ClassMethod GetPathId(domainid As %Integer, entityList As %List, vSrcId As %Integer = 0) As %Integer [ Internal ]
{
}

/// <p>This method will try to find a path corresponding to the supplied list of entities in the
/// specified order. If no path is found, "" is returned.</p>
/// <p>When specifying a Virtual Source ID, it will treat the path as a virtual one,
/// in the context of that vSrcId.</p>
ClassMethod GetId(domainid As %Integer, entityList As %List, vSrcId As %Integer = 0, Output sc As %Status = {$$$OK}) As %Integer
{
}

/// Returns the sentence ID in which the supplied path ID occurs
ClassMethod GetSentenceId(domainId As %Integer, pathId As %Integer, Output sc As %Status = {$$$OK}, vSrcId As %Integer = 0) As %Integer
{
}

/// Returns the source ID in which the supplied path ID occurs
ClassMethod GetSourceId(domainId As %Integer, pathId As %Integer, Output sc As %Status = {$$$OK}) As %Integer
{
}

Parameter GetEntitiesRT = "position:%Integer,entOccId:%Integer,entUniId:%Integer,entityValue:%String,literal:%String,role:%Integer,stemUniId:%Integer,stemValue:%String";

/// <p>Returns a detailed overview of the entities <var>pathId</var> consists of, including their
/// unique and occurrence IDs, positions, roles and literal value.</p>
/// <p>The last two columns will only contain data if stemming is enabled for this domain through
///  the $$$IKPSTEMMING domain parameter.</p>
ClassMethod GetEntities(ByRef result, domainId As %Integer, pathId As %Integer, vSrcId As %Integer = 0) As %Status
{
}

Parameter GetByEntitiesRT = "pathId:%Integer,entIds:%List";

/// <p>This method will return all Paths containing any (if <i>setop</i> = $$$UNION) or all
/// (if <i>setop</i> = $$$INTERSECT) of the entities in the supplied <i>entitylist</i>.</p>
/// <p>The scope of this query can be limited through supplying a <class>%iKnow.Filters.Filter</class> object for the <i>filter</i>
/// parameter to restrict the result to those Paths occurring in any source satisfying the filter
/// criteria.</p>
/// <p>Results are sorted by decreasing path ID.</p>
/// <p>If stemming is enabled for this domain through $$$IKPSTEMMING, paths containing any actual
/// form of the entities in <var>entitylist</var> will be returned. Use <var>pActualFormOnly</var>=1
/// to retrieve only those paths containing the actual forms in <var>entitylist</var>. This
/// argument is ignored if stemming is not enabled.</p>
ClassMethod GetByEntities(ByRef result, domainid As %Integer, entitylist As %List, page As %Integer = 1, pagesize As %Integer = 10, filter As %iKnow.Filters.Filter = "", setop As %Integer = {$$$UNION}, pActualFormOnly As %Boolean = 0) As %Status
{
}

Parameter GetByEntityIdsRT = "pathId:%Integer,entIds:%List";

/// <p>Retrieves paths based on entity IDs.</p>
/// <p>See also <method>GetByEntities</method> for a description of the parameters.</p>
ClassMethod GetByEntityIds(ByRef result, domainid As %Integer, entityidlist As %List, page As %Integer = 1, pagesize As %Integer = 10, filter As %iKnow.Filters.Filter = "", setop As %Integer = {$$$UNION}, pActualFormOnly As %Boolean = 0) As %Status
{
}

ClassMethod GetByEntitiesInternal(ByRef result, domainid As %Integer, ByRef entitylist, page As %Integer, pagesize As %Integer, filter As %iKnow.Filters.Filter, setop As %Integer) As %Status [ Internal, Private ]
{
}

Parameter GetBySourceRT = "pathId:%Integer,entIds:%List";

/// <p>Retrieves the paths appearing in any of the sources supplied through <i>sourceidlist</i>.</p>
/// <p>To get the paths of a virtual source, only a single virtual source can be supplied using
/// its negative ID value (otherwise, -1 is returned).</p>
ClassMethod GetBySource(ByRef result, domainid As %Integer, sourceidlist As %List, page As %Integer = 1, pagesize As %Integer = 10) As %Status
{
}

/// <p>Returns the number of paths in a domain, optionally restricted to those appearing in a source
/// satisfying the <class>%iKnow.Filters.Filter</class> object supplied through <i>filter</i>.</p>
ClassMethod GetCountByDomain(domainid As %Integer, filter As %iKnow.Filters.Filter = "", Output sc As %Status = {$$$OK}) As %Integer
{
}

/// <p>Returns the total number of paths in the sources specified through <i>sourceidlist</i>.
/// Use negative source IDs to refer to virtual sources.</p>
ClassMethod GetCountBySource(domainid As %Integer, sourceidlist As %List, Output sc As %Status = {$$$OK}) As %Integer
{
}

/// <p>Retrieves the number of paths containing the specified entities.</p>
/// <p>See also <method>GetByEntities</method> for a description of the parameters.</p>
ClassMethod GetCountByEntities(domainid As %Integer, entitylist As %List, filter As %iKnow.Filters.Filter = "", setop As %Integer = {$$$UNION}, Output sc As %Status = {$$$OK}, pActualFormOnly As %Boolean = 0) As %Integer
{
}

/// <p>Retrieves the number of paths containing the specified entity IDs.</p>
/// <p>See also <method>GetByEntities</method> for a description of the parameters.</p>
ClassMethod GetCountByEntityIds(domainid As %Integer, entityidlist As %List, filter As %iKnow.Filters.Filter = "", setop As %Integer = {$$$UNION}, Output sc As %Status = {$$$OK}, pActualFormOnly As %Boolean = 0) As %Integer
{
}

ClassMethod GetCountByEntitiesInternal(domainid As %Integer, ByRef entitylist, filter As %iKnow.Filters.Filter, setop As %Integer, Output sc As %Status = {$$$OK}) As %Integer [ Internal, Private ]
{
}

/// clean a list of PathIds from duplicates and inexistent ids
ClassMethod TranslatePathIdList(domainid As %Integer, pathIdList As %List, Output ids, vSrcId As %Integer = 0, Output unMatchedCount As %Integer) As %Status [ Internal ]
{
}

Parameter GetAttributesRT = "attTypeId:%Integer,attType:%String,start:%Integer,span:%Integer,properties:%String";

/// <p>Returns all attributes for a given path. Any named attribute properties are also
/// included through sub-nodes (not available through SQL or SOAP):
/// <blockquote>pResult(<i>rowNumber</i>, <i>propertyName</i>) = <i>propertyValue</i></blockquote></p>
/// <p>Please note this query only returns path-level attributes and not those attributes applying
/// to individual entities or words within entities. To retrieve these, use <method>GetOccurrenceAttributes</method>
/// in <class>%iKnow.Queries.EntityAPI</class>.</p>
ClassMethod GetAttributes(ByRef pResult, pDomainId As %Integer, pPathId As %Integer, vSrcId As %Integer = 0) As %Status
{
}

}
