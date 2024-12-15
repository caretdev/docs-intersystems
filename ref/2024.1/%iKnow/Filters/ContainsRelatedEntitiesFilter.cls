/// <p><class>%iKnow.Filters.Filter</class> implementation selecting sources based on whether they
/// contain a particular set of entities in a single context. This means they appear in the same CRC
/// (direct relationship) or path (any relationship) in the sources to be included. Optionally,
/// any entities similar to the supplied ones are also accepted.</p>
///
/// <p><b>Filter parameters</b>:
/// <ol>
/// 	<li><b>pDomainId</b> As <class>%Integer</class></li>
/// 	<li><b>pEntityList</b> As <class>%List</class> - entities to check for, appearing in a relationship with one another.</li>
/// 	<li><b>pDirectRelation</b> As <class>%Boolean</class> (default 0) - if true, the entities in <var>pEntityList</var> should appear in a direct relationship (within the same CRC) with one another. Otherwise, having the entities appear in the same path is enough for a source to be included.</li>
/// 	<li><b>pIncludeSimilar</b> As <class>%Boolean</class> (default 0) - if true, entities similar to the strings in <var>pEntityList</var> are also considered.</li>
/// </ol>
Class %iKnow.Filters.ContainsRelatedEntitiesFilter Extends %iKnow.Filters.Filter [ Deprecated, System = 4 ]
{

Property Entities As %List;

Property DirectRelation As %Boolean;

Property IncludeSimilar As %Boolean;

Method %OnNew(pDomainId As %Integer, pEntityList As %List, pDirectRelation As %Boolean = 0, pIncludeSimilar As %Boolean = 0) As %Status [ Private, ServerOnly = 1 ]
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

Method EntitiesSet(pEntities As %List) As %Status [ Internal, ServerOnly = 1 ]
{
}

Method IncludeSimilarSet(pIncludeSimilar As %Boolean) As %Status [ Internal, ServerOnly = 1 ]
{
}

Method DirectRelationSet(pDirectRelation As %Boolean) As %Status [ Internal, ServerOnly = 1 ]
{
}

}
