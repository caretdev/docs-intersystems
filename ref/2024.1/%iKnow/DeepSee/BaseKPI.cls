///  <p>This is the base class for iKnow-based KPIs, offering a number of utility methods to fetch the
///  current filter and query result page settings.</p>
///  <p><i>For internal use only</i> - use <class>%iKnow.DeepSee.GenericKPI</class> or
///  <class>%iKnow.DeepSee.SourceListFilterKPI</class> instead.</p>
Class %iKnow.DeepSee.BaseKPI Extends %DeepSee.KPI [ Abstract, Deprecated, System = 4 ]
{

///  Override this parameter to specify the iKnow domain for the KPI's query to access.
Parameter IKDOMAINID As INTEGER = 1;

///  Override this parameter and <parameter>IKMEASURENAME</parameter> to specify the iKnow
///  domain linked to a particular iKnow measure for the KPI's query to access.
Parameter IKCUBENAME As STRING;

///  Override this parameter and <parameter>IKCUBENAME</parameter> to specify the iKnow
///  domain linked to a particular iKnow measure for the KPI's query to access.
Parameter IKMEASURENAME As STRING;

///  Override this parameter to specify the default page size for the KPI's query.
///  This can be overridden per widget through a filter.
Parameter IKPAGESIZE As INTEGER = 10;

///  Override this parameter to include hidden metadata fields when displaying metadata-based filters for this KPI.
Parameter IKINCLUDEHIDDENMETADATA As BOOLEAN = 0;

///  Utility method to fill up %data and %seriesNames based on an iKnow query result
Method DisplayResult(ByRef result, nameIndex As %Integer, ByRef properties) As %Status [ Private ]
{
}

///  Retrieves the value of the column identified by <i>columnIndex</i> for the row currently selected in the KPI
ClassMethod GetSelectedColumnValue(pContext As %ZEN.proxyObject, columnIndex As %Integer) As %String
{
}

///  Retrieves the cell value currently displayed at a given row and column index.
ClassMethod GetDisplayedValue(rowIndex As %Integer, columnIndex As %Integer) As %String
{
}

///  Shorthand to get the domain ID from an instance context
Method GetDomainId() As %Integer [ Final, Private ]
{
}

///  Shorthand to get the domain ID from a static context
ClassMethod GetDomainIdStatic(pContext As %ZEN.proxyObject = "") As %Integer [ Final, Private ]
{
}

///  <p>Utility method to build an <class>%iKnow.Filters.Filter</class> object based on the current DeepSee
///  dashboard-wide filter settings (fetched from <property>%filterValues</property>). This method will translate
///  all DeepSee filters for which there is a metadata field having the same name as the dimension
///  level referred to in <property>%filterValues</property>, eventually mapped through ^IRIS.IKD.DimFilterMapping</p>
Method BuildCurrentFilter(Output pSC As %Status) As %iKnow.Filters.Filter [ Final, Private ]
{
}

///  <p>Utility method to translate the array of DeepSee filter specs in <i>pFilters</i> into an
///  iKnow <class>%iKnow.Filters.Filter</class> object. For DeepSee-managed domains, this will
///  result in a <class>%iKnow.DeepSee.MDXFilter</class> object.</p>
ClassMethod BuildCurrentFilterStatic(ByRef pFilters, Output pSC As %Status) As %iKnow.Filters.Filter [ Final, Private ]
{
}

///  Returns the currently displayed result page (see iKnow query paging)
ClassMethod GetCurrentPage(domainId As %Integer) As %Integer [ Final, Private ]
{
}

///  Resets the current page
ClassMethod ResetPage(domainId As %Integer) As %Status [ Final, Private ]
{
}

///  Advances the current query page by 1
ClassMethod NextPage(pContext As %ZEN.proxyObject) As %Status [ Final, Private ]
{
}

///  Decreases the current query page by 1, with a minimum of 1 (first query result page)
ClassMethod PreviousPage(pContext As %ZEN.proxyObject) As %Status [ Final, Private ]
{
}

///  <p>Implementation of <method>%OnGetFilterList</method> method, inherited from <class>%DeepSee.KPI</class>. Do not invoke directly.</p>
///  <p>Unless this KPI is linked to a DeepSee-managed domain (through
///  <parameter>IKCUBENAME</parameter> and <parameter>IKMEASURENAME</parameter>,
///  adds all public metadata fields for this KPIs domain at the end of the <i>pFilters</i> list.
///  Also adds a Value and Name column to be controlled through dashboard filters.</p>
ClassMethod %OnGetFilterList(Output pFilters As %List, pDataSourceName As %String = "") As %Status
{
}

///  <p>Implementation of <method>%OnGetFilterMembers</method> method, inherited from <class>%DeepSee.KPI</class>. Do not invoke directly.</p>
///  <p>When querying for an iKnow metadata-based filter (prefixed with "IK:MDFIELD:"), it will retrieve
///  the available values for that metadata field in the current iKnow domain.</p>
ClassMethod %OnGetFilterMembers(pFilter As %String, Output pMembers As %List, pSearchKey As %String = "", pDataSourceName As %String = "") As %Status
{
}

///  <p>Implementation of <method>%OnDashboardAction</method> method, inherited from <class>%DeepSee.KPI</class>. Do not invoke directly.</p>
///  <p>Takes care of the nextPage and previousPage <i>pAction</i> values.</p>
ClassMethod %OnDashboardAction(pAction As %String, pContext As %ZEN.proxyObject, pDataSourceName As %String = "") As %Status
{
}

///  <p>Implementation of <method>%OnGetFilterList</method> method, inherited from <class>%DeepSee.KPI</class>. Do not invoke directly.</p>
///  <p>Adds nextPage and prevPage actions.</p>
ClassMethod %OnGetActionList(ByRef pActions As %List, pDataSourceName As %String = "") As %Status
{
}

}
