/// <p>This is an automatically generated class, offering a functionally equivalent set of methods and queries as <class>%iKnow.Queries.PathAPI</class>, exposed as SqlProc methods.</p><p>See the classdocs for <class>%iKnow.Queries.PathAPI</class> for more information.</p>
Class %iKnow.Queries.PathQAPI Extends %iKnow.Queries.AbstractQAPI [ Deprecated, System = 4 ]
{

/// <p>Returns all attributes for a given path. Any named attribute properties are also
/// included through sub-nodes (not available through SQL or SOAP):
/// <blockquote>pResult(<i>rowNumber</i>, <i>propertyName</i>) = <i>propertyValue</i></blockquote></p>
/// <p>Please note this query only returns path-level attributes and not those attributes applying
/// to individual entities or words within entities. To retrieve these, use <method>GetOccurrenceAttributes</method>
/// in <class>%iKnow.Queries.EntityAPI</class>.</p>
ClassMethod GetAttributesExecute(ByRef qHandle As %Binary,  pDomainId As %Integer, pPathId As %Integer, vSrcId As %Integer = 0) As %Status [ Internal ]
{
}

ClassMethod GetAttributesFetch(ByRef qHandle As %Binary, ByRef Row As %List, ByRef AtEnd As %Integer = 0) As %Status [ Internal, PlaceAfter = GetAttributesExecute ]
{
}

ClassMethod GetAttributesClose(ByRef qHandle As %Binary) As %Status [ Internal, PlaceAfter = GetAttributesExecute ]
{
}

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
ClassMethod GetByEntitiesExecute(ByRef qHandle As %Binary,  domainid As %Integer, entitylist As %String(MAXLEN=32767), page As %Integer = 1, pagesize As %Integer = 10, filter As %String(MAXLEN=32767) = "", setop As %Integer = {$$$UNION}, pActualFormOnly As %Boolean = 0) As %Status [ Internal ]
{
}

ClassMethod GetByEntitiesFetch(ByRef qHandle As %Binary, ByRef Row As %List, ByRef AtEnd As %Integer = 0) As %Status [ Internal, PlaceAfter = GetByEntitiesExecute ]
{
}

ClassMethod GetByEntitiesClose(ByRef qHandle As %Binary) As %Status [ Internal, PlaceAfter = GetByEntitiesExecute ]
{
}

/// <p>Retrieves paths based on entity IDs.</p>
/// <p>See also <method>GetByEntities</method> for a description of the parameters.</p>
ClassMethod GetByEntityIdsExecute(ByRef qHandle As %Binary,  domainid As %Integer, entityidlist As %String(MAXLEN=32767), page As %Integer = 1, pagesize As %Integer = 10, filter As %String(MAXLEN=32767) = "", setop As %Integer = {$$$UNION}, pActualFormOnly As %Boolean = 0) As %Status [ Internal ]
{
}

ClassMethod GetByEntityIdsFetch(ByRef qHandle As %Binary, ByRef Row As %List, ByRef AtEnd As %Integer = 0) As %Status [ Internal, PlaceAfter = GetByEntityIdsExecute ]
{
}

ClassMethod GetByEntityIdsClose(ByRef qHandle As %Binary) As %Status [ Internal, PlaceAfter = GetByEntityIdsExecute ]
{
}

/// <p>Retrieves the paths appearing in any of the sources supplied through <i>sourceidlist</i>.</p>
/// <p>To get the paths of a virtual source, only a single virtual source can be supplied using
/// its negative ID value (otherwise, -1 is returned).</p>
ClassMethod GetBySourceExecute(ByRef qHandle As %Binary,  domainid As %Integer, sourceidlist As %String(MAXLEN=32767), page As %Integer = 1, pagesize As %Integer = 10) As %Status [ Internal ]
{
}

ClassMethod GetBySourceFetch(ByRef qHandle As %Binary, ByRef Row As %List, ByRef AtEnd As %Integer = 0) As %Status [ Internal, PlaceAfter = GetBySourceExecute ]
{
}

ClassMethod GetBySourceClose(ByRef qHandle As %Binary) As %Status [ Internal, PlaceAfter = GetBySourceExecute ]
{
}

/// <p>Returns the number of paths in a domain, optionally restricted to those appearing in a source
/// satisfying the <class>%iKnow.Filters.Filter</class> object supplied through <i>filter</i>.</p>
ClassMethod GetCountByDomain(domainid As %Integer, filter As %String(MAXLEN=32767) = "", Output scText As %String = "") As %Library.Integer [ SqlProc ]
{
}

/// <p>Retrieves the number of paths containing the specified entities.</p>
/// <p>See also <method>GetByEntities</method> for a description of the parameters.</p>
ClassMethod GetCountByEntities(domainid As %Integer, entitylist As %String(MAXLEN=32767), filter As %String(MAXLEN=32767) = "", setop As %Integer = {$$$UNION}, Output scText As %String = "", pActualFormOnly As %Boolean = 0) As %Library.Integer [ SqlProc ]
{
}

/// <p>Retrieves the number of paths containing the specified entity IDs.</p>
/// <p>See also <method>GetByEntities</method> for a description of the parameters.</p>
ClassMethod GetCountByEntityIds(domainid As %Integer, entityidlist As %String(MAXLEN=32767), filter As %String(MAXLEN=32767) = "", setop As %Integer = {$$$UNION}, Output scText As %String = "", pActualFormOnly As %Boolean = 0) As %Library.Integer [ SqlProc ]
{
}

/// <p>Returns the total number of paths in the sources specified through <i>sourceidlist</i>.
/// Use negative source IDs to refer to virtual sources.</p>
ClassMethod GetCountBySource(domainid As %Integer, sourceidlist As %String(MAXLEN=32767), Output scText As %String = "") As %Library.Integer [ SqlProc ]
{
}

/// <p>Returns a detailed overview of the entities <var>pathId</var> consists of, including their
/// unique and occurrence IDs, positions, roles and literal value.</p>
/// <p>The last two columns will only contain data if stemming is enabled for this domain through
///  the $$$IKPSTEMMING domain parameter.</p>
ClassMethod GetEntitiesExecute(ByRef qHandle As %Binary,  domainId As %Integer, pathId As %Integer, vSrcId As %Integer = 0) As %Status [ Internal ]
{
}

ClassMethod GetEntitiesFetch(ByRef qHandle As %Binary, ByRef Row As %List, ByRef AtEnd As %Integer = 0) As %Status [ Internal, PlaceAfter = GetEntitiesExecute ]
{
}

ClassMethod GetEntitiesClose(ByRef qHandle As %Binary) As %Status [ Internal, PlaceAfter = GetEntitiesExecute ]
{
}

/// <p>This method will try to find a path corresponding to the supplied list of entities in the
/// specified order. If no path is found, "" is returned.</p>
/// <p>When specifying a Virtual Source ID, it will treat the path as a virtual one,
/// in the context of that vSrcId.</p>
ClassMethod GetId(domainid As %Integer, entityList As %String(MAXLEN=32767), vSrcId As %Integer = 0, Output scText As %String = "") As %Library.Integer [ SqlProc ]
{
}

/// Left in for backwards compatibility. Use <method>GetId</method> instead.
ClassMethod GetPathId(domainid As %Integer, entityList As %String(MAXLEN=32767), vSrcId As %Integer = 0) As %Library.Integer [ Internal, SqlProc ]
{
}

/// Returns the sentence ID in which the supplied path ID occurs
ClassMethod GetSentenceId(domainId As %Integer, pathId As %Integer, Output scText As %String = "", vSrcId As %Integer = 0) As %Library.Integer [ SqlProc ]
{
}

/// Returns the source ID in which the supplied path ID occurs
ClassMethod GetSourceId(domainId As %Integer, pathId As %Integer, Output scText As %String = "") As %Library.Integer [ SqlProc ]
{
}

/// <p>Returns the sequence of entity values corresponding to the specified path as a
/// <class>%List</class>.</p>
/// <p>When specifying a Virtual Source ID, it will treat the pathId as a virtual one,
/// in the context of that vSrcId.</p>
/// <p>If stemming is enabled for this domain through the $$$IKPSTEMMING domain parameter, you can
/// use <var>pUseStems</var>=1 to get the stems rather than the entities for this path.</p>
ClassMethod GetValue(domainid As %Integer, pathid As %Integer, vSrcId As %Integer = 0, Output scText As %String = "", pUseStems As %Boolean = 0) As %String [ SqlProc ]
{
}

}