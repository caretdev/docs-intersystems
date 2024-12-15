/// <p>Simple implementation of the <class>%iKnow.Filters.Filter</class> interface, building
/// a simple equality condition on External ID.</p>
///
/// <p><b>Filter parameters</b>:
/// <ol>
/// 	<li><b>domainId</b> As <class>%Integer</class></li>
/// 	<li><b>externalIds</b> As <class>%List</class> - List of the external IDs that should be included by this filter. Can also be supplied as an array, in which case the top node is ignored.</li>
/// </ol>
Class %iKnow.Filters.ExternalIdFilter Extends %iKnow.Filters.Filter [ Deprecated, System = 4 ]
{

Property ExternalIds [ MultiDimensional ];

/// <p>See also <method>BuildSourceFilter</method> in <class>%iKnow.Filters.Filter</class>.</p>
Method BuildSourceFilter(maxOffset As %Integer) As %Status [ Private ]
{
}

Method %OnNew(domainId As %Integer, ByRef extIds As %List) As %Status [ Private, ProcedureBlock = 1, ServerOnly = 1 ]
{
}

Method ToString() As %String
{
}

ClassMethod RestoreFilterFromStringInternal(filterParams As %String) As %iKnow.Filters.Filter [ Internal, Private ]
{
}

Method ExternalIdsSet(extIds As %List) As %Status [ Internal, ServerOnly = 1 ]
{
}

}
