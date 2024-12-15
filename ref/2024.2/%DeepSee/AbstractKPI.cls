/// This is a common base class to different types of KPI.
Class %DeepSee.AbstractKPI Extends (%CSP.Page, %ZEN.DataModel.ObjectDataModel, %DeepSee.QuerySource) [ Abstract, System = 4 ]
{

/// KPI cannot be modified from a client (part of DataModel API).
Parameter READONLYMODEL = 1;

/// If true, this KPI is available for public use within dashboard (subject also
/// to the RESOURCE parameter).<br/>
/// If false  it is not listed as an available KPI within the dashboard tools, but it
/// can be used within pivot tables and may be visible within the Analyzer.
Parameter PUBLIC As BOOL = 1;

/// The resource needed to use this KPI:<br/>
/// If defined and the current user holds the USE privilege on this resource, then
/// the user may view (run queries against) this item.<br/>
Parameter RESOURCE As STRING;

/// If true, always recompute the value of this KPI when used within an MDX query.<br/>
/// Typically a KPI (especially a plug-in) used within an MDX query does not need to be
/// recalculated unless the class defining the KPI is recompiled. For KPIs that depend on
/// external data, it may be convenient to always recompute the KPI value.
/// Setting this parameter to true has the same effect as recompiling the KPI class before
/// each use.
Parameter FORCECOMPUTE As BOOL = 0;

/// Lower threshold value for any meters connected to this KPI.
Property %thresholdLower As %Double(ZENHIDDEN = 1);

/// Upper threshold value for any meters connected to this KPI.
Property %thresholdUpper As %Double(ZENHIDDEN = 1);

/// Lower range value for any meters connected to this KPI.
Property %rangeLower As %Double(ZENHIDDEN = 1);

/// Upper range value for any meters connected to this KPI.
Property %rangeUpper As %Double(ZENHIDDEN = 1);

/// Message to be displayed by dashboard widget.
Property %message As %String(ZENHIDDEN = 1);

/// Proxy object containing filter values from the client.
Property %filterValues As %ZEN.proxyObject(ZENHIDDEN = 1);

/// Set true if the current results are from the cache.
Property %fromCache As %String(ZENHIDDEN = 1) [ InitialExpression = 0 ];

/// Cache key used for this query.
Property %cacheKey As %String(ZENHIDDEN = 1) [ Internal ];

/// Internal property that holds the current cube name used by this KPI (if any).
/// Used for caching.
Property %cubeName As %String(ZENHIDDEN = 1) [ Internal ];

/// Internal property that holds the current MDX query key used by this KPI (if any).
/// Used for caching.
Property %queryKey As %String(ZENHIDDEN = 1) [ Internal ];

/// Internal property that holds the current cell context when this KPI is invoked from
/// within an MDX statement.<br/>
/// (Note: type is an object to prevent MVC code generation).
Property %cellContext As %ZEN.proxyObject(ZENHIDDEN = 1) [ Internal, MultiDimensional ];

/// Return true if this KPI is public.
ClassMethod %IsPublic() As %Boolean
{
}

/// Draw the test page.
ClassMethod OnPage() As %Status
{
}

/// Test if the current user has access to this KPI.
ClassMethod %CheckResource() As %Boolean
{
}

/// Return the logical name in its original form for this KPI.
/// <var>pName</var> is the canonic form of the name.
ClassMethod %GetKPIName(pName As %String = "") As %String
{
}

/// Return the caption as defined in the XML for this KPI.
ClassMethod %GetKPICaptionName(pName As %String = "") As %String
{
}

/// Return the caption for this KPI.<br/>
/// This is either: (a) the value returned by <method>%OnGetKPICaption</method>,
/// (b) the value of the caption attribute in the KPI definition, or (c) the name of the KPI,
/// in that order.
ClassMethod %GetKPICaption() As %String [ Final ]
{
}

/// This callback can return the (localized) caption for this KPI.
ClassMethod %OnGetKPICaption() As %String
{
}

/// This callback, if implemented, returns the text of an SQL query used to provide
/// a "detail listing" for this KPI.<br/>
/// <var>pFilters</var> is an array of current filter values: pFilters(name)=value.<br/>
/// <var>pSelection</var> is an array containing information about the current selected items in the pivot.
/// It contains 2 values:<br/>
/// pSelection("selectedRange") contains the current selected cells in the pivot as a string in the form
/// "startRow,startCol,endRow,endCol" (1-based). "" if no cells are selected.<br/>
/// pSelection("rowValues") contains a csv-list of "row" values for the selected rows in the pivot (similar
/// to the $$$VALUELIST value used for OpenWindow URLs. This may contain "\," for "," within the data values.<br/>
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

/// Return the sourceType for this KPI
ClassMethod %GetSourceType() As %String
{
}

/// Apply property defaults from the KPI model.
Method %ApplyDefaults()
{
}

/// This callback method does the actual work of loading values from the source object.
Method %OnLoadModel(pSource As %RegisteredObject) As %Status
{
}

/// Notify subclass that KPI is has just be executed.
/// This is a good place to override properties, such as range and threshold.
Method %OnLoadKPI() As %Status
{
}

/// Return the display name for a property within this KPI.
ClassMethod %GetKPIPropertyCaption(pProperty As %String) As %String
{
}

/// Return list of properties. This is part of the DataModel API; this version returns the set of properties
/// defined by this KPI.
ClassMethod %OnGetPropertyInfo(pIndex As %Integer, ByRef pList As %String, pExtended As %Boolean = 0, pModelId As %String = "") As %Status [ Final ]
{
}

/// Return information on properties defined in the KPI block.
/// This takes the form:<br/>
/// pList(n) = name<br/>
/// pList(n,"caption") = displayed caption<br/>
/// pList(n,"defaultValue") = value<br/>
/// pList(n,"columnNo") = #<br/>
ClassMethod %GetKPIPropertyInfo(Output pList As %String, pModelId As %String = "") As %Status [ Internal ]
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

/// Get data for this KPI manually.
/// This is implemented by subclasses that provide manual data.
Method %OnExecute() As %Status
{
}

/// Return list of possible filters for this KPI.
/// This drives the list of filter selections for widget connected to this KPI.
/// This takes the form:<br/>
/// pFilters(n)=$LB(name,caption,filterProperty,multiSelect,dependsOn)<br/>
ClassMethod %GetFilterList(Output pFilters As %List, pDataSourceName As %String = "") As %Status [ Internal ]
{
}

/// Callback to get additional possible filters for this KPI.
/// This drives the list of filter selections for widget connected to this KPI.
/// This takes the form:<br/>
/// pFilters($I(pFilters))=$LB(name,caption,value,multiSelect,dependsOn)<br/>
ClassMethod %OnGetFilterList(Output pFilters As %List, pDataSourceName As %String = "") As %Status
{
}

/// Return a list of possible filter values for a given filter.
/// This takes the form:<br/>
/// pMembers(n)=$LB(text,value)<br/>
ClassMethod %GetFilterMembers(pFilter As %String, Output pMembers As %List, Output pDefaultValue As %String, pSearchKey As %String = "", pDataSourceName As %String = "", ByRef pFilterValues As %String) As %Status [ Internal ]
{
}

/// Callback to get additional members for a KPI filter.
/// This takes the form:<br/>
/// pMembers($I(pMembers))=$LB(text,value)<br/>
/// <var>pSearchKey</var> is the search key entered by the user, if applicable.<br/>
/// <var>pFilterValues</var> is an array of all current filter values.<br/>
ClassMethod %OnGetFilterMembers(pFilter As %String, Output pMembers As %List, pSearchKey As %String = "", pDataSourceName As %String = "", ByRef pFilterValues As %String) As %Status
{
}

/// Given a filter and its logical value, return its display value.
ClassMethod %GetFilterDisplayValue(pFilter As %String, pValue As %String, pDataSourceName As %String = "") As %String
{
}

/// Given a filter and its display value (<var>pText</var>), return its logical value.
/// If there is not a one-to-one correspondence for logic and display values, then the result
/// of this call is indeterminate.
ClassMethod %GetFilterLogicalValue(pFilter As %String, pText As %String, pDataSourceName As %String = "", ByRef pFilterValues) As %String
{
}

/// Return list of possible actions for this KPI.
/// This drives the list of action selections for widget connected to this KPI.
/// This takes the form:<br/>
/// pActions(n)=$LB(name,caption)<br/>
ClassMethod %GetActionList(ByRef pActions As %List, pDataSourceName As %String = "") As %Status [ Internal ]
{
}

/// Callback to get additional actions for a KPI.
/// This takes the form:<br/>
/// pActions($I(pActions))=$LB(name,caption)<br/>
ClassMethod %OnGetActionList(ByRef pActions As %List, pDataSourceName As %String = "") As %Status
{
}

/// Internal method that gets invoked from a client dashboard and dispatches to a user callback.
ClassMethod %InvokeDashboardAction(pAction As %String, pContext As %ZEN.proxyObject, pDataSourceName As %String = "") As %Status [ Internal ]
{
}

/// This callback is invoked from a dashboard when an action defined by this dashboard is invoked.<br/>
/// <var>pAction</var> is the logical name of the action.<br/>
/// <var>pContext</var> is a proxy object that contains various information about the action and
/// provides a way for the method to return information to the client.
ClassMethod %OnDashboardAction(pAction As %String, pContext As %ZEN.proxyObject, pDataSourceName As %String = "") As %Status
{
}

/// Return true if this kpi should be computed asynchronously (for plug-ins).
ClassMethod %IsAsync() As %Boolean
{
}

/// Return the cube this KPI is based on.
ClassMethod %IsCacheable() As %String
{
}

/// Get a specific value from this KPI.<br/>
/// This is best used with simple KPIs implemented in manual mode as it can be expensive otherwise.<br/>
/// On return, <var>pPctComplete</var> indicates whether this value is completely computed (100) or
/// in progress (that is, it is being computed by a background agent).<br/>
/// <var>pCacheKey</var> is the cache key associated with this request in the case of an
/// asynchronous KPI. This is returned by reference.<br/>
/// <var>pFilters</var> is an array of filters and their (display) values.<br/>
/// <var>pCellContext</var> is the cell context passed in by the %KPI function.<br/>
ClassMethod %GetKPIValue(pKPIName As %String, Output pValue As %String, pKPIProperty As %String = "", pSeries As %String = "", ByRef pFilters As %String, pCellContext As %String = "", ByRef pCacheKey As %String, Output pPctComplete As %Integer, pParentQueryKey As %String = "", Output pKPIStatus As %Status) As %Status
{
}

/// Get the value of the given KPI property and print it to the console.<br/>
/// This is provided as a diagnostic aid for KPIs.
/// The KPI is forced to execute in the foreground, even if it is defined to be asynchronous,
/// unless <var>pAsync</var> is set to true (1).
ClassMethod %PrintValue(pKPIProperty As %String = "", pSeries As %String = "", ByRef pFilters As %String, pAsync As %Boolean = 0) As %Status
{
}

/// Set up the context for and execute this KPI.
/// Return the instance of data controller used to drive the KPI.
ClassMethod %CreateKPIController(Output pController As %ZEN.Auxiliary.dataController, pKPIName As %String, ByRef pFilters As %String, pCellContext As %String = "", pParentQueryKey As %String = "") As %Status
{
}

/// Get an array of values from this KPI.<br/>
/// <var>pPropertyList</var> is a $List of property names: $LB(prop1,prop2).
/// On return, <var>pValues</var> contains an array of values of the properties listed in <var>pPropertyList</var>:
/// pValues(n) = $LB(prop1,prop2)<br/>
/// Use "%series" in property list to get the series name<br/>.
ClassMethod %GetKPIValueArray(pKPIName As %String, Output pValues As %String, pPropertyList As %List, ByRef pFilters As %String) As %Status
{
}

/// Return an MDX statement to provide the KPI data.
Method %GetMDX(Output pMDX As %String) As %Status [ Internal ]
{
}

/// Return an MDX statement to provide the KPI data.
Method %GetSQL(Output pSQL As %String) As %Status [ Internal ]
{
}

/// Utility method.
/// Clear all KPI cache entries for this KPI.
ClassMethod %ClearKPICache() As %Status
{
}

/// Utility method.
/// Compute a hash code based on the current filter values for this KPI.
/// This is used for caching KPI results.
Method %GetFilterKey() As %String
{
}

/// Utility method.
/// Create a local instance of data controller to drive the KPI.
/// This is used to get values from a KPI on the server.
ClassMethod %CreateLocalController(Output pController As %ZEN.Auxiliary.dataController, pModelClass As %String, pModelId As %String, pCriteria As %ZEN.proxyObject) As %Status [ Internal ]
{
}

/// Return the last modified date for this KPI class.
ClassMethod %GetKPIClassTimeStamp() As %String
{
}

}
