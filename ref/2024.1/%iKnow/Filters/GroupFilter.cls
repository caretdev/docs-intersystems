/// <p>A generic filter to logically combine any number of <class>%iKnow.Filters.Filter</class>
/// subfilter objects using a boolean AND or OR, optionally
/// inverting the result (NOT) if <i>negated</i> is true.</p>
/// <p>After initially creating a GroupFilter instance, add subfilters to it using
/// <method>AddSubFilter</method> or <method>AddSubFilterString</method>.</p>
///
/// <p><b>Filter parameters</b>:
/// <ol>
/// 	<li><b>domainId</b> As <class>%Integer</class></li>
/// 	<li><b>groupLogic</b> As <class>%Integer</class> - either $$$GROUPFILTERAND or $$$GROUPFILTEROR.</li>
/// 	<li><b>negated</b> As <class>%Boolean</class> - indicates whether or not invert (NOT) the combined filter.</li>
/// </ol>
Class %iKnow.Filters.GroupFilter Extends %iKnow.Filters.Filter [ Deprecated, System = 4 ]
{

Property Negated As %Boolean [ Final, InitialExpression = 0 ];

Property GroupLogic As %Integer [ Final, InitialExpression = {$$$GROUPFILTERAND} ];

Property SubFilters As list Of %iKnow.Filters.Filter [ Final, Private ];

Method %OnNew(DomainId As %Integer, GroupLogic As %String = "AND", Negated As %Boolean = 0, UseCache As %Integer = 0) As %Status [ Private, ProcedureBlock = 1, ServerOnly = 1 ]
{
}

Method BuildSourceFilter(maxOffset As %Integer) As %Status [ Private ]
{
}

/// <p>Adds a <class>%iKnow.Filters.Filter</class> object to this instance as a subfilter, which will
/// be ANDed or ORed according to this instances <property>groupLogic</property> property.</p>
Method AddSubFilter(SubFilter As %iKnow.Filters.Filter) As %Status [ Final ]
{
}

/// Returns the number of subfilters currently registered in this GroupFilter instance.
Method GetSubFilterCount() As %Integer [ Final ]
{
}

/// Returns the subfilter at the specified index, if any
Method GetSubFilterAt(index As %Integer) As %iKnow.Filters.Filter [ Final ]
{
}

Method ReplaceSubFilterAt(index As %Integer, filter As %iKnow.Filters.Filter) As %Status [ Final, Internal ]
{
}

Method RemoveSubFilterAt(index As %Integer) As %Status [ Final, Internal ]
{
}

/// <p>Adds a <class>%iKnow.Filters.Filter</class> object in its <class>%String</class> format (see
/// <method>ToString</method>) to this instance as a subfilter, which will
/// be ANDed or ORed according to this instances <property>groupLogic</property> property.</p>
Method AddSubFilterString(SubFilterString As %String) As %Status [ Final ]
{
}

ClassMethod RestoreFilterFromStringInternal(filterSpec As %String) As %iKnow.Filters.Filter
{
}

Method ToString() As %String
{
}

Method GroupLogicSet(pValue As %Integer) As %Status [ Internal, ServerOnly = 1 ]
{
}

Method NegatedSet(pValue As %Boolean) As %Status [ Internal, ServerOnly = 1 ]
{
}

}
