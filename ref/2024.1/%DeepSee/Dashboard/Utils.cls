/// Utility methods for DeepSee Dashboards.
Class %DeepSee.Dashboard.Utils Extends %RegisteredObject [ System = 4 ]
{

/// Open the dashboard definition with the given full name.
ClassMethod %OpenDashboard(pFullName As %String, Output pStatus As %Status) As Definition
{
}

/// Check if a there is a dashboard definition with the given name.
/// Returns 0 if the item does not exist; returns 1 if it exists and is visible to the
/// current user; returns 2 if it exists but is not visible to the current user.<br/>
ClassMethod %DashboardExists(pFullName As %String, Output pID As %String) As %Integer
{
}

/// Delete the dashboard definition with the given full name.
ClassMethod %DeleteDashboard(pFullName As %String) As %Boolean
{
}

/// Return list of possible dashboard actions.
/// This takes the form:<br/>
/// pAction(n)=$LB(name,caption,tooltip,type)<br/>
/// <var>type</var> specifies the data associated with the action (if any).
/// This value is passed along as the <var>targetProperty</var> of the action.<br/>
/// "filter", the action controls the given filter.<br/>
/// "url", the action requires a url.<br/>
/// "dashboard", the action requires a dashboard.<br/>
/// <br/>
/// The control for each action is determined by the %CreateControls method in the DashboardViewer class.<br/>
/// The actions are dispatched to widget by the dashboardEventHandler method in the DashboardViewer class.<br/>
///
ClassMethod %GetDashboardActionList(Output pAction As %String, pDataSource As %String = "") As %Status
{
}

/// Lookup a filter caption for a KPI
ClassMethod %GetKpiFilterCaption(pKPIName, pSpec) As %String [ ZenMethod ]
{
}

/// Return list of possible filters for a given dashboard data source.
/// This takes the form:<br/>
/// pFilters(n)=$LB(caption,value,type)<br/>
/// type is the dimension type: "" (data),"year","month","day", etc.<br/>
/// <var>pVisited</var> is used to prevent cycles when visiting related cubes.<br/>
/// <var>pMaxDepth</var> is maximum depth of relations to follow. A value of 0 means there is no limit to the depth of relationships.
ClassMethod %GetFiltersForDataSource(pDataSource As %String, Output pFilters As %List, ByRef pVisited, pParent As %String = "", pSearchKey As %String = "", pMaxDepth As %Integer = 3, pLevel As %Integer = 1) As %Status
{
}

/// Return list of possible pivot variables for a given dashboard data source.
/// This takes the form:<br/>
/// pVariables(n) = $LB(name,caption,defValue,context)<br/>
ClassMethod %GetPivotVariablesForDataSource(pDataSource As %String, Output pVariables As %List) As %Status
{
}

/// Return list of possible data properties for a given dashboard data source.
/// This takes the form:<br/>
/// pProperties(n)=name<br/>
ClassMethod %GetPropertiesForDataSource(pDataSource As %String, Output pProperties As %List) As %Status
{
}

/// Return list of possible listings for a given dashboard data source.
/// This takes the form:<br/>
/// pListings(n)=$LB(caption,value,type)<br/>
ClassMethod %GetListingsForDataSource(pDataSource As %String, Output pListings As %List, pType As %String = "") As %Status
{
}

/// Return the caption for the given target property within the given data source.
/// This is used to translate the logical name for a filter to its display value.
ClassMethod %GetCaptionForTargetProperty(pDataSource As %String, pTarget As %String, Output pCaption As %String) As %Status
{
}

/// Return list of possible filter member values for a given dashboard data source and filter.
/// This takes the form:<br/>
/// pMembers(n)=$LB(text,value,[description])<br/>
/// If <var>pSearchKey</var> is provided, then only return members that match the search key.
/// If <var>pRelatedFilters</var> is provided, it is an array of other filter values to use to
/// restrict the set of members. It takes the form:<br/>
/// pRelatedFilters(spec) = key<br/>
/// If <var>pCalcOnly</var> is true, then only return calculated members.<br/>
/// If <var>pRangeMode</var> is true, then only return members that are valid for range selection (used by searchBox).<br/>
/// If <var>pPreSelected</var> is a list of selected values; always display these items.<br/>
ClassMethod %GetMembersForFilter(pDataSource As %String, pFilter As %String, Output pMembers As %List, Output pDefaultValue As %String, pSearchKey As %String = "", ByRef pRelatedFilters, pCalcOnly As %Boolean = 0, pRangeMode As %Boolean = 0, ByRef pPreSelected As %String) As %Status
{
}

/// Tests if a given filter supports range selection (used by the searchBox control).
ClassMethod %DoesFilterSupportRange(pDataSource As %String, pFilter As %String, Output pSupportsRange As %Boolean) As %Status
{
}

/// Find the dimension type for a given dashboard data source and filter.
/// Also returns the member class.
ClassMethod %GetMemberDimensionType(pDataSource As %String, pFilter As %String, Output pType As %String, Output pMemberClass As %String, Output pOtherInfo As %String) As %Status
{
}

/// Return an array of all available widget types
/// pInfo(n) = $LB(name,caption,class,icon)
ClassMethod %GetWidgetClasses(Output pInfo As %String) As %Status
{
}

/// Find the class name for the given widget type.
ClassMethod %GetWidgetClass(pWidgetType As %String) As %String
{
}

/// Return an array of widget templates visible to the current user.
/// This list is in the form:<br/>
/// pList(n) = id
ClassMethod %GetWidgetTemplateList(Output pList As %String, Output pCount As %Integer, pMaxItems As %Integer = "") As %Status
{
}

/// Returns a list of filters for a data source.<br>
ClassMethod EnumerateFiltersExecute(ByRef qHandle As %Binary, pSearchKey As %String = "", pDataSource As %String = "") As %Status
{
}

ClassMethod EnumerateFiltersFetch(ByRef qHandle As %Binary, ByRef Row As %List, ByRef AtEnd As %Integer = 0) As %Status [ PlaceAfter = EnumerateFiltersExecute ]
{
}

ClassMethod EnumerateFiltersClose(ByRef qHandle As %Binary) As %Status [ PlaceAfter = EnumerateFiltersExecute ]
{
}

/// Return an array of saved themes visible to the current user.
/// This list is in the form:<br/>
/// pList(n) = $LG(id,fullName,name)
ClassMethod %GetThemeList(Output pList As %String, Output pCount As %Integer, pMaxItems As %Integer = "") As %Status
{
}

/// Save a set of style overrides to the given "theme".
ClassMethod %SaveTheme(pThemeName As %String, pOverrides As %ZEN.proxyObject) As %Status
{
}

/// Delete the given "theme".
ClassMethod %DeleteTheme(pThemeName As %String) As %Status
{
}

ClassMethod %GetChartTypeInfo(pParentWidgetClass As %String, Output pList As %String)
{
}

}
