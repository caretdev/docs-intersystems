/// <p>This implementation of the <class>%iKnow.Filters.Filter</class> interface selects all sources
/// containing at least one of the paths supplied to it.</p>
///
/// <p><b>Filter parameters</b>:
/// <ol>
/// 	<li><b>pDomainId</b> As <class>%Integer</class></li>
/// 	<li><b>pPathIds</b> As <class>%List</class> - List of the Path IDs whose containing
/// 			 sources are to be included. Can also be supplied as an array.</li>
/// </ol>
Class %iKnow.Filters.PathFilter Extends %iKnow.Filters.Filter [ Deprecated, System = 4 ]
{

Property PathIds [ MultiDimensional, Private ];

Method %OnNew(pDomainId As %Integer, ByRef pPathIds As %List) As %Status [ Private, ServerOnly = 1 ]
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

}
