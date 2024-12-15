///  <p>Implements a DeepSee KPI that executes an iKnow query.
///  To use this class, create a subclass and override the class parameters prefixed with "IK", which you use to specify
///  the iKnow domain (<parameter>IKDOMAINID</parameter>), query class (<parameter>IKQUERYCLASS</parameter>),
///  query (<parameter>IKQUERYNAME</parameter>), and default page size (<parameter>IKPAGESIZE</parameter>, optional).<p>
///  <p>This generic iKnow-DeepSee KPI implementation offers the following services:
///  <ul>
///     <li>Displays all query result columns as properties (columns in the KPI tab form), which can be configured at widget level. A "resultNumber" column is added as well, indicating the "rank" of the result.</li>
///     <li>Offers all query parameters as filters so they can then be added to the widget (and controlled by the user) or fixed to a specific value. Through the GetParameterValues method in <class>%iKnow.Queries.Utils</class>, a list of allowed parameter values is also made available for most common parameters.</li>
///  	<li>Adds a default Listing to this KPI, showing the iKnow sources containing the entities, CRCs or paths selected in the KPI result. (not available for every query)</li>
///     <li>Exposes all the domains public metadata fields as filters (through <class>%iKnow.DeepSee.BaseKPI</class>) </li>
///     <li>Adds previous and next buttons to browse through the query results (through <class>%iKnow.DeepSee.BaseKPI</class>)</li>
///  </ul>
Class %iKnow.DeepSee.GenericKPI Extends %iKnow.DeepSee.BaseKPI [ Abstract, Deprecated, System = 4 ]
{

///  Override this parameter to specify the iKnow ObjectScript API class that contains the query to use (primary API class, no *QAPI or *WSAPI class)
Parameter IKQUERYCLASS = "%iKnow.Queries.EntityAPI";

///  Override this parameter to specify the iKnow query to use in the class identified by <parameter>IKQUERYCLASS</parameter>.
Parameter IKQUERYNAME = "GetTop";

///  <p>Implementation of <method>%OnGetFilterList</method> method, inherited from <class>%DeepSee.KPI</class>. Do not invoke directly.</p>
///  <p>Adds a list of all valid query parameters for the query identified by <parameter>IKQUERYCLASS</parameter> and <parameter>IKQUERYNAME</parameter>.</p>
ClassMethod %OnGetFilterList(Output pFilters As %List, pDataSourceName As %String = "") As %Status
{
}

///  <p>Implementation of <method>%OnGetFilterMembers</method> method, inherited from <class>%DeepSee.KPI</class>. Do not invoke directly.</p>
///  <p>Adds the values for the IK: system filters (series name column, metadata-based filters and query parameters)</p>
ClassMethod %OnGetFilterMembers(pFilter As %String, Output pMembers As %List, pSearchKey As %String = "", pDataSourceName As %String = "") As %Status
{
}

///  <p>Implementation of <method>%OnGetKPIPropertyInfo</method> method, inherited from <class>%DeepSee.KPI</class>. Do not invoke directly.</p>
///  <p>Adds the returned columns for this KPIs query as properties if there aren't any configured
///  explicitly already, as well as a 'resultNumber' column</p>
ClassMethod %OnGetKPIPropertyInfo(ByRef pList As %String, pPropNo As %Integer, pModelId As %String = "") As %Status
{
}

///  <p>Implementation of <method>%OnExecute</method> method, inherited from <class>%DeepSee.KPI</class>. Do not invoke directly.</p>
///  <p>Configures and fires the query registered for this GenericKPI instance, given the active filter criteria.</p>
Method %OnExecute() As %Status
{
}

///  <p>Implementation of <method>%OnGetListingResultSet</method> method, inherited from <class>%DeepSee.KPI</class>. Do not invoke directly.</p>
///  <p>Triggers the applicable GetBy*** query from <class>%iKnow.Queries.SourceAPI</class>, taking into account the
///  selected values in the KPI and any active filters.</p>
ClassMethod %OnGetListingResultSet(ByRef pFilters As %String, ByRef pSelection As %String, pListingName As %String = "", Output pRS As %SQL.StatementResult) As %Status
{
}

}
