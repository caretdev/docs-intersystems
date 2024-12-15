/// <p>Simple implementation of the <class>%iKnow.Filters.Filter</class> interface, building
/// a simple equality condition on Source IDs.</p>
///
/// <p><b>Filter parameters</b>:
/// <ol>
/// 	<li><b>domainId</b> As <class>%Integer</class></li>
/// 	<li><b>sourceIds</b> As <class>%List</class> - List of the source IDs that should be included by this filter. Can also be supplied as an array, in which case the top node is ignored.</li>
/// </ol>
Class %iKnow.Filters.SourceIdFilter Extends %iKnow.Filters.Filter [ Deprecated, System = 4 ]
{

Property SourceIds [ MultiDimensional ];

Method %OnNew(domainId As %Integer, ByRef srcIds As %List) As %Status [ Private, ServerOnly = 1 ]
{
}

Method ToString() As %String
{
}

ClassMethod RestoreFilterFromStringInternal(filterParams As %String) As %iKnow.Filters.Filter [ Internal, Private ]
{
}

/// <p>See also <method>BuildSourceFilter</method> in <class>%iKnow.Filters.Filter</class>.</p>
Method BuildSourceFilter(maxOffset As %Integer) As %Status [ Private ]
{
}

Method SourceIdsSet(ByRef srcIds As %List) As %Status [ Internal, ServerOnly = 1 ]
{
}

}
