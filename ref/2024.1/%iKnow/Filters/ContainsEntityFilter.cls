/// <p><class>%iKnow.Filters.Filter</class> implementation selecting sources based on whether they
/// contain a particular entity or (optionally) any entities similar to the supplied string(s).</p>
///
/// <p><b>Filter parameters</b>:
/// <ol>
/// 	<li><b>pDomainId</b> As <class>%Integer</class></li>
/// 	<li><b>pEntityList</b> As <class>%List</class> - entity values to check for. At least one needs to occur in the source for it to be included in the filter. Values can also be provided as an array, in which case the top node is ignored.</li>
/// 	<li><b>pIncludeSimilar</b> As <class>%Boolean</class> (default 0) - if true, any sources containing an entity "similar" to the supplied ones is also withheld.</li>
/// 	<li><b>pExcludeList</b> As <class>%List</class> - if <var>pIncludeSimilar</var>=1, exclude any entity IDs in this list. Can also be provided as an array, in which case the top node is ignored.</li>
/// 		<li><b>pUseIDs</b> As <class>%Boolean</class> (default 0) - if 1, entity IDs are provided for pEntityList rather than entity values (cannot be combined with pIncludeSimilar=1).</li>
/// </ol>
Class %iKnow.Filters.ContainsEntityFilter Extends %iKnow.Filters.Filter [ Deprecated, System = 4 ]
{

Property Entities As %List [ MultiDimensional ];

Property IncludeSimilar As %Boolean;

Property ExcludeList As %List [ MultiDimensional ];

Property UseIDs As %Boolean;

Method %OnNew(pDomainId As %Integer, ByRef pEntityList As %List, pIncludeSimilar As %Boolean = 0, ByRef pExcludeList As %List = "", pUseIDs As %Boolean = 0) As %Status [ Private, ServerOnly = 1 ]
{
}

Method BuildSourceFilter(maxOffset As %Integer) As %Status [ Private ]
{
}

ClassMethod RestoreFilterFromStringInternal(filterParams As %String) As %iKnow.Filters.Filter [ Private ]
{
}

Method ToString() As %String
{
}

Method EntitiesSet(ByRef pEntities As %List) As %Status [ Internal, ServerOnly = 1 ]
{
}

Method ExcludeListSet(ByRef pExcludeList As %List) As %Status [ Internal, ServerOnly = 1 ]
{
}

Method IncludeSimilarSet(pIncludeSimilar As %Boolean) As %Status [ Internal, ServerOnly = 1 ]
{
}

Method UseIDsSet(pUseIDs As %Boolean) As %Status [ Internal, ServerOnly = 1 ]
{
}

}
