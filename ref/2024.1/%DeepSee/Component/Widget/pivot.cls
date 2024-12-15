/// A specialized DeepSee Dashboard widget that displays a pivot table (either as a table or a chart).
Class %DeepSee.Component.Widget.pivot Extends (%DeepSee.Component.Widget.widget, %ZEN.Auxiliary.ChartContent, %DeepSee.Component.PivotContent) [ System = 4 ]
{

/// Hold onto the name of the saved pivot (or KPI) that drives this widget.
Property pivotName As %ZEN.Datatype.string(XMLPROJECTION = "none");

/// Remember the legend position.
Property legendPosition As %ZEN.Datatype.string(VALUELIST = "top,left,bottom,right,none", XMLPROJECTION = "none");

/// Remember if chart labels are visible.
/// When the widget is too small, we will hide these.
Property labelsVisible As %ZEN.Datatype.boolean(XMLPROJECTION = "none");

/// Remember the chartToggle state.
/// If "none", show either a chart or a table.
/// If "chart", show the current chart type initially and a button to toggle.
/// If "table", show the table initially and a button to toggle.
Property chartToggle As %ZEN.Datatype.string(VALUELIST = "table,chart,none", XMLPROJECTION = "none") [ InitialExpression = "none" ];

/// Indicates the current display of the widget: "pivot" or "listing".
Property viewType As %ZEN.Datatype.string(XMLPROJECTION = "none") [ InitialExpression = "pivot", Internal ];

/// When pivot is displayed, indicates how it should be displayed: "table" or "chart".
Property pivotView As %ZEN.Datatype.string(XMLPROJECTION = "none") [ InitialExpression = "table", Internal ];

/// When listing is displayed, indicates how it should be displayed: "table" or "map".
Property listingView As %ZEN.Datatype.string(XMLPROJECTION = "none") [ InitialExpression = "table", Internal ];

/// When true, there is a dimension tree on this widget.
Property hasDimTree As %ZEN.Datatype.boolean(XMLPROJECTION = "none") [ InitialExpression = 1, Internal ];

/// If there is a dimension tree, this indicates if it is visible.
Property showDimTree As %ZEN.Datatype.boolean(XMLPROJECTION = "none") [ InitialExpression = 0, Internal ];

/// List of chart properties that are saved to a theme.
Property themeChartProperties As %ZEN.Datatype.string(XMLPROJECTION = "none") [ InitialExpression = "backgroundStyle,plotAreaStyle,plotEdgeStyle,titleAlign,titleStyle,subtitleStyle,titleBoxStyle,borderStyle,stripesVisible,stripeStyle,seriesColorsOverride,seriesColorScheme,gridStyle,labelStyle,maxLabelLen,axisTitleStyle,valueLabelStyle,valueBoxStyle,plotStyle,lineStyle,markerStyle", Internal ];

/// Array of "data-based" colors keyed by name.
/// Loaded from termlist.
Property dataColors As array Of %ZEN.Datatype.string(XMLPROJECTION = "none") [ Internal ];

Property hasDataColors As %ZEN.Datatype.boolean(XMLPROJECTION = "none") [ Internal ];

/// Original value for chart title (before localization is applied).
Property origChartTitle As %ZEN.Datatype.string(XMLPROJECTION = "none") [ Internal ];

/// Original value for chart subtitle (before localization is applied).
Property origChartSubtitle As %ZEN.Datatype.string(XMLPROJECTION = "none") [ Internal ];

/// Original value for chart xAxis title (before localization is applied).
Property origChartXAxisTitle As %ZEN.Datatype.string(XMLPROJECTION = "none") [ Internal ];

/// Original values for chart yAxis titles (before localization is applied).
Property origChartYAxisTitles As list Of %ZEN.Datatype.string(XMLPROJECTION = "none") [ Internal ];

/// Return information used to list this widget within the "widget catalog".
ClassMethod %GetCatalogInfo(Output pInfo As %List, Output pSubtypeList As %List) As %Status
{
}

/// Return information on additional "properties" supported by this widget for the given subtype.
ClassMethod %GetWidgetPropertyInfo(pSubtype As %String, Output pInfo As %List) As %Status
{
}

/// This callback is called just before controls are added to the top of the widget.
/// <var>pGroup</var> is the header in which new Zen control can be added.
Method %OnCreateControls(pGroup As %ZEN.Component.group) As %Status
{
}

/// Get html to create an icon with an Excel/CSV dropdown menu.
Method %CreateExportDropdown(id, enabled, imgId, help, options) As %String
{
}

/// Toggle the state of the target Excel/CSV export menu dropdown. When causing the menu
/// to be displayed, the zenMouseTrap is also activated behind the menu to prevent other
/// interactions.
ClientMethod toggleExportMenu(menuId) [ Language = javascript ]
{
}

/// Close the Excel/CSV export menu and remove the mouse trap.This does nothing if the target
/// menu is not open.
ClientMethod closeExportMenu(menuId) [ Language = javascript ]
{
}

/// This callback is responsible for creating the contents of the widget.
Method %OnCreateWidget(pGroup As %ZEN.Component.group) As %Status
{
}

/// Load the saved pivot information into the pivot table.
Method %LoadPivotInfo(pPivotName As %String, pPivotTable As %DeepSee.Component.pivotTable, pOverrideString As %String = "") As %Status [ Internal ]
{
}

/// Called when page is loaded or widget is resized.
ClientMethod adjustContentSize(load, width, height) [ Language = javascript ]
{
}

/// Perform a showListing action, if supported.
ClientMethod showListing(listing) [ Language = javascript ]
{
}

/// Perform a showGeoListing action.
ClientMethod showGeoListing(listing) [ Language = javascript ]
{
}

/// Perform a showDimensions action, if supported. This toggles the visibility
/// of the dimensions tree control
ClientMethod showDimensions() [ Language = javascript ]
{
}

/// Launch the pivot analysis dialog.
ClientMethod showBreakdown(analysisClass) [ Language = javascript ]
{
}

/// If this widget contains a data controller, return it.
ClientMethod getDataController() [ Language = javascript ]
{
}

/// If this widget contains a data controller, return it.
Method %GetDataController() As %ZEN.Auxiliary.abstractController
{
}

/// Select element handler for pivot chart.
ClientMethod chartClickHandler(chart) [ Language = javascript ]
{
}

/// Drill state change handler for pivot table.
ClientMethod drillHandler(pivot) [ Language = javascript ]
{
}

/// Listing select handler for pivot table.
ClientMethod listingSelectHandler(pivot) [ Language = javascript ]
{
}

/// Cell click handler for pivot table.
ClientMethod cellClickHandler(pivot) [ Language = javascript ]
{
}

/// Cell click handler for pivot table.
ClientMethod realCellClickHandler() [ Language = javascript ]
{
}

/// Update the display current controls for this widget.
ClientMethod updateControlState() [ Internal, Language = javascript ]
{
}

/// Toggle between chart and table view.
ClientMethod toggleChart() [ Internal, Language = javascript ]
{
}

/// Export current query to excel
ClientMethod exportExcel() [ Language = javascript ]
{
}

/// Export current query to a CSV file
ClientMethod exportCSV(simple) [ Language = javascript ]
{
}

/// Export current query to pdf.
/// If we are in chart mode, export the chart.
ClientMethod exportPDF(printMultiple, preserveTempFiles, filename) [ Language = javascript ]
{
}

/// Create an XSLFO file used for merging many exports into a single report.
Method GenerateXSLFO(pWidgetID, pUrl, pMode, pFileName = "") As %Status [ ZenMethod ]
{
}

/// Apply the given setting value to this widget.
ClientMethod applySetting(action, value) [ Internal, Language = javascript ]
{
}

ClientMethod changeChartType(value) [ Internal, Language = javascript ]
{
}

/// Find the value of the given parameter value.
ClientMethod getParameterValue(parm) [ Internal, Language = javascript ]
{
}

/// Return the current state of filters for this widget as one serialized string.
ClientMethod getPivotVariableState(delim1, delim2) [ Internal, Language = javascript ]
{
}

/// Called when user clicks on a marker in a geolisting.
ClientMethod markerClicked(marker) [ Internal, Language = javascript ]
{
}

/// Notification to subclasses that filter has changed.
ClientMethod onApplyFilters(refresh) [ Internal, Language = javascript ]
{
}

/// Go back to the previous pivot state.
ClientMethod resetPivot() [ Language = javascript ]
{
}

/// Return an object describing what to display for this level within the navigator.
/// Invoked from dashboard viewer.
ClientMethod navGetContentForLevel(level, key, value) [ Internal, Language = javascript ]
{
}

/// Click on header button in navigator.
ClientMethod navHeaderButtonClick(key) [ Language = javascript ]
{
}

/// Click on close button in navigator.
ClientMethod navCloseButtonClick(key) [ Language = javascript ]
{
}

/// Popup action in navigator.
ClientMethod navPopupAction(key, value) [ Language = javascript ]
{
}

/// Change of data value in navigator.
ClientMethod navDataChange(key, value, final) [ Language = javascript ]
{
}

/// Test if there are any style overrides for this widget.
ClientMethod hasOverrides() [ Language = javascript ]
{
}

/// Reset any style overrides for this widget.
ClientMethod resetOverrides(themeOnly, recreate) [ Language = javascript ]
{
}

/// Return an array of current style overrides for this widget.
/// Used to save to a theme.
ClientMethod getOverrides() [ Language = javascript ]
{
}

/// Return the actual type used for a widget subtype (such as "barChart").
ClientMethod getSubtypeClass() [ Language = javascript ]
{
}

/// Change of time range selector control.
ClientMethod chartRangeChange(final) [ Language = javascript ]
{
}

/// Find the pivot table within this widget.
ClientMethod getPivot() [ Language = javascript ]
{
}

/// ongetSeriesColor handler for pivot chart.
ClientMethod chartGetSeriesColor(series) [ Internal, Language = javascript ]
{
}

/// ongetSeriesColor handler for pivot chart.
ClientMethod chartGetSeriesColorsAsString(chart) [ Internal, Language = javascript ]
{
}

/// RenderData handler for pivot chart.
ClientMethod chartRenderHandler() [ Language = javascript ]
{
}

/// Perform a local drill down for a target widget.
ClientMethod executeDrillDown(dataSource) [ Internal, Language = javascript ]
{
}

/// Perform a local drill up for a target widget.
ClientMethod executeDrillUp() [ Internal, Language = javascript ]
{
}

/// This client event, if present, is fired when the page is loaded.
ClientMethod onloadHandler() [ Language = javascript ]
{
}

ClientMethod setBkgOpacity(opacity) [ Language = javascript ]
{
}

/// Set the value of a named property.
ClientMethod setProperty(property, value, value2) [ Language = javascript ]
{
}

/// Test if this pivot widget is a chart
ClientMethod subtypeIsChart(subtype) [ Language = javascript ]
{
}

/// This is an API that can be called from a timer to perform a delayed disable/enable
/// of a prticular component. The target component is referenced by <var>componentId</var>
/// and if that component exists in the DOM, the method will call its<br>
/// setDisabled(flag)
ClientMethod componentSetDisabled(componentId, flag) [ Language = javascript ]
{
}

}
