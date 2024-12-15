/// Subclasses of this class are used to define KPIs (key performance indicators).
/// A KPI defines a set of related values that can be used to drive widgets on a DeepSee dashboard.<br/>
/// A KPI can define a set of actions that can be called from control buttons on a dashboard widget.<br/>
/// Each KPI class is also also a %CSP page; if you view it as a Web Page, you can view a test page
/// for the KPI (you must hold Developer privileges to do this).
Class %DeepSee.KPI Extends %DeepSee.AbstractKPI [ Abstract, System = 4 ]
{

/// This projection is used to keep track of when KPI classes are compiled or deleted.
/// If true, then results for this KPI can be cached.
Parameter CACHEABLE As BOOL = 0;

/// If true, then this KPI can be executed asychronously.
Parameter ASYNC As BOOL = 0;

/// For MDX-based KPIs, use this character when concatenating labels for nested rows.
Parameter LABELCONCAT As STRING = "/";

/// Use this parameter to limit the number of losting rows displayed in pivot tables.
/// This setting is ignored for exports.
Parameter MAXLISTINGROWS As INTEGER;

/// This XData definition defines the KPI.
XData KPI [ XMLNamespace = "http://www.intersystems.com/deepsee/kpi" ]
{
}

/// Return true if this KPI can interact with the cache.
ClassMethod %IsCacheable() As %String
{
}

/// Return true if this kpi can be computed asynchronously.
ClassMethod %IsAsync() As %Boolean
{
}

ClassMethod %GetMaxListingRows() As %Integer
{
}

/// Process the xml definition for this KPI and generate meta data.
ClassMethod %Generate() As %Status [ CodeMode = objectgenerator, Final, Internal ]
{
}

/// Return the logical name for this KPI.
ClassMethod %GetKPIName(pName As %String = "") As %String [ CodeMode = objectgenerator, GenerateAfter = %Generate ]
{
}

/// Return the caption as defined in the XML for this KPI.
ClassMethod %GetKPICaptionName(pName As %String = "") As %String [ CodeMode = objectgenerator, GenerateAfter = %Generate ]
{
}

/// This callback, if implemented, returns the text of an SQL query used to provide
/// a "detail listing" for this KPI.<br/>
/// <var>pFilters</var> is an array of current filter values: pFilters(name)=value.<br/>
/// <var>pSelection</var> is an array containing information about the current selected items in the pivot.
/// It contains several values:<br/>
/// pSelection("selectedRange") contains the current selected cells in the pivot as a string in the form
/// "startRow,startCol,endRow,endCol" (1-based). "" if no cells are selected.<br/>
/// pSelection("rowValues") contains a csv-list of "row" values for the selected rows in the pivot (similar
/// to the $$$VALUELIST value used for OpenWindow URLs. This may contain "\," for "," within the data values.<br/>
/// pSelection("sortColumn") is the number of the column to sort on (or 0 for no sort).<br/>
/// pSelection("sortDir") is the sort direction ("ASC" or "DESC").<br/>
/// <var>pListingName</var> is the name of the listing to display. This is reserved for future use.<br/>
/// This method is simply a convenient alternative to the <method>%OnGetListingResultSet</method> method.
/// It takes precedence over the <method>%OnGetListingResultSet</method> method.
ClassMethod %OnGetListingSQL(ByRef pFilters As %String, ByRef pSelection As %String, pListingName As %String = "") As %String
{
}

/// This callback, if implemented, can prepare and execute
/// a listing query used to provide a "detail listing" for this KPI.
/// <var>pFilters</var> is an array of current filter values.<br/>
/// <var>pListingName</var> is the name of the listing to display. This is reserved for future use.<br/>
ClassMethod %OnGetListingResultSet(ByRef pFilters As %String, ByRef pSelection As %String, pListingName As %String = "", Output pRS As %SQL.StatementResult) As %Status
{
}

/// This method is used to get the "detail listing" result set for this KPI, if any.<br/>
/// <var>pSelection</var> is an array of values that can be used to control the listings:<br/>
/// pSelection("rowValues") contains a csv-list of selected row values.<br/>
/// 	pSelection("selectedRange") contains the selected range of cells in the pivot table: startRow,startCol,endRow,endCol (1-based).<br/>
/// 	pSelection("sortColumn") is the number of the column to sort by (or 0).<br/>
/// 	pSelection("sortDir") is the direction to sort in, "ASC" or "DESC".<br/>
ClassMethod %GetListingResultSet(ByRef pFilters As %String, ByRef pSelection As %String, pListingName As %String = "", Output pRS As %SQL.StatementResult) As %Status [ Final, Internal ]
{
}

/// Return the sourceType for this KPI
ClassMethod %GetSourceType() As %String [ CodeMode = objectgenerator, GenerateAfter = %Generate ]
{
}

/// Return the default SQL statement for this KPI.
ClassMethod %GetSQLText() As %String [ CodeMode = objectgenerator, Final, GenerateAfter = %Generate ]
{
}

/// Return the default MDX statement for this KPI.
ClassMethod %GetMDXText() As %String [ CodeMode = objectgenerator, Final, GenerateAfter = %Generate ]
{
}

/// Apply property defaults from the KPI model.
Method %ApplyDefaults() [ CodeMode = objectgenerator, GenerateAfter = %Generate, Internal ]
{
}

/// This callback method does the actual work of loading values from the source object.
Method %OnLoadModel(pSource As %RegisteredObject) As %Status [ Final ]
{
}

/// Add a request to compute this KPI to the background agent queue.
Method %QueueKPI() As %Status [ Final, Internal ]
{
}

/// This is called by a task master background agent that wants to compute the value of this KPI.
ClassMethod %ComputeKPI(pCacheKey As %String) As %Status [ Final, Internal ]
{
}

/// Test if the data cached for this KPI is up-to-date.
/// If not, clear the cached data.
Method %ValidateKPICache(pSourceType As %String, pQueryText As %String = "") As %Status [ Final ]
{
}

/// Test if this KPI has cached data.
Method %TestKPICache(Output pIsCached As %Boolean, pSourceType As %String, pQueryText As %String = "") As %Status [ Final ]
{
}

/// Compute the kpi cache key for the current KPI result.
/// Place the result in <property>%cacheKey</property>.
Method %ComputeKPICacheKey(pSourceType As %String, pQueryText As %String = "") As %Status [ Final ]
{
}

/// Runs after the KPI loads and runs
Method %OnKPICleanup() As %Status [ Internal ]
{
}

/// Compute the kpi cache timestamp for the current KPI result.
/// Overridden by subclasses.
Method %OnComputeKPICacheKey(Output pCacheKey As %String, pQueryText As %String = "") As %Status [ Internal ]
{
}

/// Compute the kpi cache timestamp for the current KPI result.
Method %ComputeKPITimestamp(Output pTimestamp As %String, pSourceType As %String, pQueryText As %String = "") As %String [ Final ]
{
}

/// Compute and return the KPI cache timestamp for the current KPI result.
/// Typically this is the timestamp of the cube this KPI depends on.
Method %OnComputeKPITimestamp(ByRef pTimestamp As %String, pSourceType As %String, pQueryText As %String = "") As %Status
{
}

/// Load this KPI from cached data.
Method %LoadKPIFromCache() As %Status [ Final ]
{
}

/// Notification that we are loading this KPI from cached data.
Method %OnLoadKPIFromCache() As %Status
{
}

/// For a KPI running in the background, set the percentage complete.
Method %SetPercentComplete(pPctComplete As %Integer, pErrorCode As %Status = "") As %Status [ Final ]
{
}

/// Save this KPI to the KPI cache.
Method %SaveKPIToCache(pSourceType As %String, pQueryText As %String = "") As %Status [ Final ]
{
}

/// Notification that we are saving this KPI to the cache.
Method %OnSaveKPIToCache() As %Status
{
}

/// Return information on properties defined in the KPI block.
/// This takes the form:<br/>
/// pList(n) = name<br/>
/// pList(n,"defaultValue") = value<br/>
/// pList(n,"columnNo") = #<br/>
ClassMethod %GetKPIPropertyInfo(Output pList As %String, pModelId As %String = "") As %Status [ CodeMode = objectgenerator, Final, GenerateAfter = %Generate, Internal ]
{
}

/// Add additional properties beyond those defined in the KPI block.
/// This takes the form:<br/>
/// pList(n) = name<br/>
/// pList(n,"defaultValue") = value<br/>
/// pList(n,"columnNo") = #<br/>
/// <var>pPropNo</var> is the number of next open slot in the list.
ClassMethod %OnGetKPIPropertyInfo(ByRef pList As %String, pPropNo As %Integer, pModelId As %String = "") As %Status
{
}

/// Return an MDX statement to provide the KPI data.
Method %GetMDX(Output pMDX As %String) As %Status [ Final, Internal ]
{
}

/// This callback, if implemented, lets a subclass provide an MDX statement to fetch data for this KPI.
/// If there are filter values, they will be within the <var>%filterValues</var> property (an object).
Method %OnGetMDX(ByRef pMDX As %String) As %Status
{
}

/// Return a series of %FILTER clauses (as a single string) based on the "%CONTEXT"
/// of the %KPI or %MDX function that invoked this KPI.
/// This behavior is automatic; you can override this method and return "" if you do
/// not want this to happen.
Method %GetMDXContextFilter() As %String
{
}

/// Execute an MDX statement and use the results to provide the KPI data.
Method %ExecuteMDX(pMDX As %String) As %Status [ Final, Internal ]
{
}

/// Return an SQL statement to provide the KPI data.
Method %GetSQL(Output pSQL As %String) As %Status [ Final, Internal ]
{
}

/// Return an SQL statement to provide the KPI's listing data.
Method %GetListingSQL(Output pSQL As %String, ByRef pFilters, ByRef pSelection, pListingName) As %Status [ Final, Internal ]
{
}

/// This callback, if implemented, lets a subclass provide an SQL statement to fetch data for this KPI.
/// If there are filter values, they will be within the <var>%filterValues</var> property (an object).
Method %OnGetSQL(ByRef pSQL As %String) As %Status
{
}

/// Execute an SQL statement and use the results to provide the KPI data.
Method %ExecuteSQL(pSQL As %String) As %Status [ Final, Internal ]
{
}

/// Get data for this KPI manually.
/// This is implemented by subclasses that provide manual data.
Method %OnExecute() As %Status
{
}

/// Return list of possible filters for this KPI.
/// This drives the list of filter selections for widget connected to this KPI.
/// This takes the form:<br/>
/// pFilters(n)=$LB(name,caption,filterProperty,multiSelect,dependsOn,searchType)<br/>
ClassMethod %GetFilterList(Output pFilters As %List, pDataSourceName As %String = "") As %Status [ CodeMode = objectgenerator, Final, GenerateAfter = %Generate, Internal ]
{
}

/// Callback to get additional possible filters for this KPI.
/// This drives the list of filter selections for widget connected to this KPI.
/// This takes the form:<br/>
/// pFilters($I(pFilters))=$LB(name,caption,value,multiSelect)<br/>
ClassMethod %OnGetFilterList(Output pFilters As %List, pDataSourceName As %String = "") As %Status
{
}

/// Return a list of possible filter values for a given filter.
/// This takes the form:<br/>
/// pMembers(n)=$LB(text,value)<br/>
ClassMethod %GetFilterMembers(pFilter As %String, Output pMembers As %List, Output pDefaultValue As %String, pSearchKey As %String = "", pDataSourceName As %String = "", ByRef pFilterValues As %String) As %Status [ CodeMode = objectgenerator, Final, GenerateAfter = %Generate, Internal ]
{
}

/// Return list of possible actions for this KPI.
/// This drives the list of action selections for widget connected to this KPI.
/// This takes the form:<br/>
/// pActions(n)=$LB(name,caption)<br/>
ClassMethod %GetActionList(ByRef pActions As %List, pDataSourceName As %String = "") As %Status [ CodeMode = objectgenerator, Final, GenerateAfter = %Generate, Internal ]
{
}

/// Internal method that gets invoked from a client dashboard and dispatches to a user callback.
ClassMethod %InvokeDashboardAction(pAction As %String, pContext As %ZEN.proxyObject, pDataSourceName As %String = "") As %Status [ CodeMode = objectgenerator, Final, GenerateAfter = %Generate, Internal ]
{
}

/// Convenience method.
/// For a given DeepSee cube and filter spec, return a list of members in the form:<br/>
/// pMembers(n)=$LB(text,value)<br/>
/// This list contains both the display names (text) of the filter items
/// and the logical names (value).<br/>
/// <var>pCube</var> is the logical name of the cube with .cube appended,
/// for example: "holefoods.cube"<br/>
/// <var>pFilterSpec</var> is the COMPLETE name of a level within the cube:<br/>
/// "[DateOfSale].[Actual].[YearSold]"<br/>
/// <var>pSearchKey</var> is any search text entered by the user.
ClassMethod %GetMembersForFilter(pCube As %String, pFilterSpec As %String, Output pMembers, pSearchKey As %String = "") As %Status
{
}

/// Given a filter name, <var>pFilterName</var>, and an SQL field name, <var>pFieldName</var>, return an SQL expression
/// based on the filter value(s) that can be used within an SQL WHERE clause.
/// Returns "" if there is no filter value.<br/>
/// For example: if you have a SQL-based KPI class based on a table with a YearSold field,
/// you can get an SQL expression for it:<br/>
/// 	Set tYearExpr = ..%GetSQLForFilter("YearSold","Year")<br/>
/// 	If tYearExpr is not "", then you can add it to your SQL WHERE clause to add the filtering:<br/>
/// 	Set tSQL = tSQL _ " WHERE " _ tYearExpr<br/>
/// 	or if your query already has a WHERE clause:<br/>
/// 	Set tSQL = tSQL _ " AND " _ tYearExpr<br/>
///
Method %GetSQLForFilter(pFieldName As %String, pFilterName As %String) As %String
{
}

/// Given a filter name, <var>pFilterName</var>, and a level specification, <var>pLevelSpec</var>,
/// return an MDX expression
/// based on the filter value(s) that can be used within an MDX WHERE or %FILTER clause.<br/>
/// Returns "" if there is no filter value.<br/>
/// For example: if you have a MDX-based KPI class with a YearSold level within a
/// DateOfSale dimension and a filter named Year, you can get an MDX filter expression for it:<br/>
/// 	Set tYearFilter = ..%GetMDXForFilter("[DateOfSale].[YearSold]","Year")<br/>
/// 	If tYearFilter is not "", then you can add it to your MDX query to add the filtering:<br/>
/// 	Set tMDX = tMDX _ " %FILTER " _ tYearFilter<br/>
///
Method %GetMDXForFilter(pLevelSpec As %String, pFilterName As %String) As %String
{
}

/// Given a value, test if it has multiple values and return a list of them.
/// For example, "Apple" returns "Apple" and a count of 1. "{[2001],[2002]}" returns
/// "[2001]","[2002]", and count of 2. This method assumes that enclosing {} have already been removed.<br/>
/// Return number of items in the value.
ClassMethod %SplitList(pValue As %String, Output pList) As %Integer [ Internal ]
{
}

}
