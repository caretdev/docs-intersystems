/// <p>Implements a DeepSee KPI that executes an iKnow query returning a list of iKnow Sources.
/// To use this class, create a subclass and override the <parameter>IKDOMAINID</parameter> class parameter to
/// point to the domain you want to query.<p>
/// <p>This iKnow-DeepSee KPI implementation offers the following services:
/// <ul>
///    <li>Displays all metadata fields for the registered domain as properties (columns in the KPI tab form), which can be configured at widget level. The Source ID and External ID are available as well.</li>
///    <li>Offers any relevant query parameters as filters so they can then be added to the widget (and controlled by the user) or fixed to a specific value. Through the GetParameterValues method in <class>%iKnow.Queries.Utils</class>, a list of allowed parameter values is also made available for most common parameters.</li>
///    <li>Exposes all the domains public metadata fields as filters (through <class>%iKnow.DeepSee.BaseKPI</class>) </li>
///    <li>Adds previous and next buttons to browse through the query results (through <class>%iKnow.DeepSee.BaseKPI</class>)</li>
/// </ul>
Class %iKnow.DeepSee.SourceListFilterKPI Extends %iKnow.DeepSee.BaseKPI [ Abstract, Deprecated, System = 4 ]
{

/// <p>Implementation of <method>%OnExecute</method> method, inherited from <class>%DeepSee.KPI</class>. Do not invoke directly.</p>
/// <p>Configures and fires the appropriate <class>%iKnow.Queries.SourceAPI</class> query given the active filter criteria.</p>
Method %OnExecute() As %Status
{
}

/// <p>Implementation of <method>%OnGetFilterMembers</method> method, inherited from <class>%DeepSee.KPI</class>. Do not invoke directly.</p>
/// <p>Adds the values for the IK: system filters (concept filter, metadata-based filters and query parameters)</p>
ClassMethod %OnGetFilterMembers(pFilter As %String, Output pMembers As %List, pSearchKey As %String = "", pDataSourceName As %String = "") As %Status
{
}

/// <p>Implementation of <method>%OnGetKPIPropertyInfo</method> method, inherited from <class>%DeepSee.KPI</class>. Do not invoke directly.</p>
/// <p>This method will add all metadata fields supplied for this domain as columns for this KPI.</p>
ClassMethod %OnGetKPIPropertyInfo(ByRef pList As %String, pPropNo As %Integer, pModelId As %String = "") As %Status
{
}

/// <p>Implementation of <method>%OnGetFilterList</method> method, inherited from <class>%DeepSee.KPI</class>. Do not invoke directly.</p>
/// <p>Adds filters for concept, page size and set operation</p>
ClassMethod %OnGetFilterList(Output pFilters As %List, pDataSourceName As %String = "") As %Status
{
}

}
