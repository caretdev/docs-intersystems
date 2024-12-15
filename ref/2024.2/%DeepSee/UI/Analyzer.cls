/// DeepSee Analyzer page.
///
Class %DeepSee.UI.Analyzer Extends %DeepSee.UI.standardPage [ System = 4 ]
{

Parameter RESOURCE = "%DeepSee_Analyzer,%DeepSee_AnalyzerEdit";

Parameter PAGENAME = "Analyzer";

/// If this page has multiple views, this is its initial display mode.
Parameter DEFAULTVIEWMODE = "pivot";

/// If true, we are launched from the USER portal.
Parameter USERMODE As BOOL = 0;

/// URL for Analyzer.
Parameter ANALYZERURL As STRING = "_DeepSee.UI.Analyzer.zen";

Parameter DOCBOOKID = "D2ANLY_ch_intro";

/// Token to load unsaved pivot state.
Property autosave As %ZEN.Datatype.string(ZENURL = "AUTOSAVE");

/// Token to load unsaved pivot state.
Property autosaveOverride As %ZEN.Datatype.string(ZENURL = "AUTOSAVEOVERRIDE");

/// Token to load unsaved pivot state.
Property lastLeftWidth As %ZEN.Datatype.integer [ InitialExpression = 300 ];

/// Name of Cube (with extension).
Property cubeFullName As %ZEN.Datatype.string(ZENURL = "CUBE");

/// Name of cube to explore.
Property cubeName As %ZEN.Datatype.string;

/// If true, user cannot modify the current pivot.
Property readOnly As %ZEN.Datatype.boolean [ InitialExpression = 0 ];

/// If true, user can modify (non-read-only) pivots.
Property canWrite As %ZEN.Datatype.boolean [ InitialExpression = 1 ];

/// Name of saved pivotTable to view (overrides CUBE if present).
Property pivotName As %ZEN.Datatype.string(ZENURL = "PIVOT");

/// Description of the saved pivot (if any).
Property pivotDescription As %ZEN.Datatype.string;

/// Resource of the saved pivot (if any).
Property pivotResource As %ZEN.Datatype.string;

/// Owner of the saved pivot (if any).
Property pivotOwner As %ZEN.Datatype.string;

/// Locked state of the saved pivot.
Property pivotLocked As %ZEN.Datatype.boolean;

/// Public state of the saved pivot.
Property pivotPublic As %ZEN.Datatype.boolean;

/// Keywords of the saved pivot (if any).
Property pivotKeywords As %ZEN.Datatype.string;

/// Category of the saved pivot.
Property pivotCategory As %ZEN.Datatype.string;

/// URL for Analyzer.
Property analyzerURL As %ZEN.Datatype.string [ InitialExpression = {..#ANALYZERURL} ];

/// If true, send e-mail using client-side mailto application.
Property useClientEmail As %ZEN.Datatype.boolean [ InitialExpression = 0 ];

/// If true, show one chart for each data series.
Property multiChart As %ZEN.Datatype.boolean [ InitialExpression = 0 ];

/// If true, use the new analysis dialog.
Property hasAnalysis As %ZEN.Datatype.boolean [ InitialExpression = 0 ];

/// If true, show the print/pdf option.
Property hasPDF As %ZEN.Datatype.boolean [ InitialExpression = 0 ];

/// Current CSP session.
Property sessionCookie As %ZEN.Datatype.string;

/// Initial value of autoexec setting for pivot table.
Property autoExec As %ZEN.Datatype.boolean(ZENURL = "EXEC") [ InitialExpression = 1 ];

/// Initial value of previewMode setting for the Analyzer.
Property previewMode As %ZEN.Datatype.boolean(ZENURL = "PREVIEW") [ InitialExpression = 0 ];

/// List of names for any actions for the current cube.
Property actionNames As list Of %ZEN.Datatype.string;

/// List of captions for any actions for the current cube.
Property actionCaptions As list Of %ZEN.Datatype.string;

/// Convenience property. Setting this true is equivalent to
/// NOTITLE=1
Property isEmbedded As %ZEN.Datatype.boolean(ZENURL = "EMBED");

/// If true, then do not display the title area of this page.
Property noTitle As %ZEN.Datatype.boolean(ZENURL = "NOTITLE");

/// If true, show the dimensions tree.
Property showDimensions As %ZEN.Datatype.boolean [ InitialExpression = 1 ];

/// Location of the autosave items
Property tempStorageRoot As %ZEN.Datatype.string [ InitialExpression = "$Temp/Analyzer/" ];

/// What to show in the dimensions tree.
Property treeMode As %ZEN.Datatype.string;

/// Chart series color scheme.
Property chartSeriesScheme As %ZEN.Datatype.string;

/// Chart series color list.
Property chartSeriesColors As %ZEN.Datatype.string;

/// Flag to indicate whether or not the cube can use the special %SQLRESTRICT dimension.
Property cubeSupportsSqlRestrict As %ZEN.Datatype.boolean [ InitialExpression = 0 ];

/// Flag to indicate whether to warn user of unsaved changes on page unload
Property warnUser As %ZEN.Datatype.boolean [ InitialExpression = 1 ];

XData Style
{
}

/// This XML defines the contents of the contents pane for this page.
XData contentPane [ XMLNamespace = "http://www.intersystems.com/zen" ]
{
}

/// Get the (localized) title string for the page.
Method %OnGetTitle() As %String
{
}

Method GetTitle() As %String [ ZenMethod ]
{
}

/// Get the title string to add to the locator row.
/// This should be implemented in a subclass.
ClientMethod getPageTitle() As %String [ Language = javascript ]
{
}

/// Get the name for the page.
Method %OnGetPageName() As %String
{
}

/// Get the product name for the page.
Method %OnGetProductName() As %String
{
}

/// Get information to display in the ribbon bar.
Method OnGetRibbonInfo(Output pDisplay As %Boolean, Output pViewIcons As %List, Output pSortOptions As %List, Output pSearchBox As %Boolean, Output pRibbonTitle As %String, Output pCommands As %List) As %Status
{
}

/// Draw additional stuff in the ribbon bar
Method OnDrawRibbon() As %Status
{
}

/// Draw cube name above member tree.
Method DrawCubeName(pSeed As %String) As %Status
{
}

/// Launch the subject area finder dialog.
ClientMethod changeSubjectArea() [ Language = javascript ]
{
}

/// Launch the calculated member dialog..
ClientMethod addCalculatedMember() [ Language = javascript ]
{
}

/// Launch the add named filter dialog..
ClientMethod addNamedFilter() [ Language = javascript ]
{
}

/// Launch the add pivot variable dialog.
ClientMethod addPivotVariable() [ Language = javascript ]
{
}

/// Test if the current item in the tree is a calculated member.
/// If so, return the index of the item within the calculatedMembers array.
ClientMethod isCalculatedMember() [ Language = javascript ]
{
}

/// Test if the current item in the tree is a named filter.
/// If so, return the filter name else return ''.
ClientMethod isNamedFilter() [ Language = javascript ]
{
}

/// Test if the current item in the tree is a pivot variable.
/// If so, return the variable name else return ''.
ClientMethod isPivotVariable() [ Language = javascript ]
{
}

/// Launch the show query dialog.
ClientMethod showQuery() [ Language = javascript ]
{
}

/// Launch the chart options dialog.
ClientMethod showChartOptions() [ Language = javascript ]
{
}

/// Launch the cell format options dialog.
ClientMethod showFormatOptions() [ Language = javascript ]
{
}

/// Launch the pivot options dialog.
ClientMethod showPivotOptions() [ Language = javascript ]
{
}

/// Launch the pdf options dialog.
ClientMethod showPDFOptions() [ Language = javascript ]
{
}

/// Launch the pivot analysis dialog.
ClientMethod showBreakdown() [ Language = javascript ]
{
}

/// This client event is fired when a popup page launched from this page fires an action.
ClientMethod onPopupAction(popupName, action, value) [ Language = javascript ]
{
}

/// WAL053
ClientMethod restorePivot() [ Language = javascript ]
{
}

/// Create a new saved pivot.
ClientMethod newPivot() [ Language = javascript ]
{
}

Method GetOverrideValue(pToken) As %String [ ZenMethod ]
{
}

Method CheckAutosaveSetting() As %Boolean [ ZenMethod ]
{
}

/// Launch the open saved pivot finder dialog.
ClientMethod loadPivot() [ Language = javascript ]
{
}

/// Launch the save pivot dialog.
ClientMethod savePivot(showDialog) [ Language = javascript ]
{
}

/// Save and manage a temp version of this table and a "Last" copy for autosave
Method SaveTempTables() As %String [ ZenMethod ]
{
}

/// Save the pivot table. If the optional <var>pPivotName</var> is supplied, a copy of the pivot definition currently open will be filed under
/// that identifier. If no such custom identifier is supplied, the table will be saved under the name currently in use.
Method SavePivotTable(pPivotName As %String = "") As %String [ ZenMethod ]
{
}

/// Delete the pivot table.
ClientMethod deletePivot() [ Language = javascript ]
{
}

/// Delete the pivot table.
Method DeletePivotTable() As %String [ ZenMethod ]
{
}

/// pivot
ClientMethod pivot() [ Language = javascript ]
{
}

ClientMethod setDim(dim, val) [ Language = javascript ]
{
}

/// Provide contents of the dimension tree.
ClassMethod GetDimensionInfo(pRoot As %String, Output pTree, ByRef pParms) As %Status
{
}

/// Provide contents of the saved pivot dimension tree.
ClassMethod GetPivotInfo(pRoot As %String, Output pTree, ByRef pParms) As %Status
{
}

/// Provide contents of the quality measures dimension tree.
ClassMethod GetQMSRInfo(pRoot As %String, Output pTree, ByRef pParms) As %Status
{
}

/// Provide contents of the listing fields dimension tree.
ClassMethod GetListingFieldsInfo(pRoot As %String, Output pTree, ByRef pParms) As %Status
{
}

/// Return the array of links to show in the locator bar.<br/>
/// pLink(n)=$LB(caption,link)
Method %GetLocatorLinks(Output pLink) As %Status
{
}

/// Adjust sizes of components on the page.
ClientMethod onlayoutHandler(load) [ Language = javascript ]
{
}

ClientMethod positionResizeHandles(initial) [ Language = javascript ]
{
}

ClientMethod getFirstTableRow(div) [ Language = javascript ]
{
}

/// Callback to initiate window resize event
ClientMethod startDrag(engine, wrapper) [ Language = javascript ]
{
}

/// Callback to wrap up window resize event
ClientMethod endDrag(engine, wrapper) [ Language = javascript ]
{
}

/// Callback to limit horizontal resizing
ClientMethod constrainDragX(engine, wrapper, intendedX) [ Language = javascript ]
{
}

/// Callback to limit vertical resizing
ClientMethod constrainDragY(engine, wrapper, intendedY) [ Language = javascript ]
{
}

/// Adjust sizes of components on the page.
ClientMethod adjustSizes(load) [ Language = javascript ]
{
}

/// Return the current chart, if any.
ClientMethod getCurrentChart() [ Language = javascript ]
{
}

/// Return the current pivot table.
ClientMethod getPivot() [ Language = javascript ]
{
}

/// Get the type of the current chart.
ClientMethod getChartType() [ Language = javascript ]
{
}

/// Get the grid type of the current chart.
ClientMethod getGridType() [ Language = javascript ]
{
}

/// Apply the chart dialog options to the current chart.
ClientMethod setChartOptions(type, grid, textSize, title, min, max) [ Language = javascript ]
{
}

/// This class method callback is called just before the server-side page
/// object is created.
Method %OnAfterCreatePage() As %Status
{
}

/// Do the actual work of updating the view to match the current view mode.
ClientMethod setViewModeHandler(mode) [ Language = javascript ]
{
}

/// User has clicked on a chart element.
ClientMethod chartElementClick(chart) [ Language = javascript ]
{
}

/// User has selected a new element in the tree control.
ClientMethod treeChange(tree) [ Language = javascript ]
{
}

/// Delete the selected Calculated Member, named filter, or pivot variable.
ClientMethod deleteCalculatedMember(force) [ Language = javascript ]
{
}

/// User has double-clicked on an element in the tree control.
ClientMethod treeDoubleClick(tree) [ Language = javascript ]
{
}

/// User has selected a new element in the pivot tree control.
ClientMethod pivotTreeChange(tree) [ Language = javascript ]
{
}

/// User has double-clicked on an element in the pivot tree control.
ClientMethod pivotTreeDoubleClick(tree) [ Language = javascript ]
{
}

/// Zen page notification of an HTTP request. This method can be overwritten
/// by subclasses.<br/>
/// This is called <em>before</em> the standard Zen pre-HTTP processing occurs.
ClassMethod %OnPreHTTP() As %Boolean [ ServerOnly = 1 ]
{
}

/// Add include files to support color schemes.
Method %OnDrawHTMLHead() As %Status
{
}

/// Called from client to delete a named filter.
ClassMethod DeleteNamedFilter(pCubeName As %String, pFilterName As %String) As %String [ ZenMethod ]
{
}

/// Called from client to delete a shared calculated member.
ClassMethod DeleteSharedCalcMember(pCubeName, pCalcMbrName, pDimension) As %String [ ZenMethod ]
{
}

/// Called from client to delete a pivot variable.
ClassMethod DeletePivotVariable(pCubeName As %String, pVariableName As %String) As %String [ ZenMethod ]
{
}

/// Called from client to update list of filters.
ClassMethod UpdateFilterControls(pCubeName As %String, pGroup As %ZEN.Component.group, pPivotTable As %DeepSee.Component.pivotTable) As %String [ ZenMethod ]
{
}

/// Create the set of filter controls along the top of the pivot table.<br/>
/// <var>pGroup</var> is the parent group containing the filter controls.<br/>
/// <var>pPivot</var> is the pivot table supplying the filter definitions.<br/>
ClassMethod %CreateFilterControls(pCubeName As %String, pGroup As %ZEN.Component.abstractGroup, pPivot As %DeepSee.Component.pivotTable = "") As %Status
{
}

/// Get list of pivot variables within the given collection.
ClassMethod %FindPivotVariables(pList As %Collection.AbstractList, ByRef pVariables) As %Status
{
}

/// User has changed a pivot variable control value.
ClientMethod pivotVariableChangeHandler(ctrl, varName, varType) [ Language = javascript ]
{
}

/// User has changed a filter control value.
ClientMethod filterChangeHandler(ctrl, filterNo) [ Language = javascript ]
{
}

/// Drop down is about to appear for filter control.
ClientMethod filterDropDown(ctrl) [ Language = javascript ]
{
}

ClientMethod toggleExportMenu(menuId) [ Language = javascript ]
{
}

ClientMethod closeExportMenu(menuId) [ Language = javascript ]
{
}

/// Export current query to excel
ClientMethod exportExcel() [ Language = javascript ]
{
}

/// Export current query to a CSV file.
ClientMethod exportCSV(simple) [ Language = javascript ]
{
}

/// Export current query to PDF.
ClientMethod exportPDF() [ Language = javascript ]
{
}

/// Collect the print parameters for this pivot container. This includes both URL parameters (ALL CAPS) and parameters specific to the
/// SVG printing utility.
ClientMethod collectPrintParameters() [ Language = javascript ]
{
}

/// Transform a set of printing parameters that are compatible with the ZenReport-based
/// %DeepSee.UI.MDXPDF, %DeepSee.UI.ChartPDF, etc, into the parameters expected by the
/// %DeepSee.Component.deepseeSvgImageProvider
ClientMethod prepareSvgPrintParameters(parms) [ Internal, Language = javascript ]
{
}

/// Define any context links for the context menu in the header.
ClassMethod GetContextLinks(Output pLinks) As %Status
{
}

/// Update the contents of the member tree.
ClientMethod updateMemberTree() [ Language = javascript ]
{
}

/// Update the contents of the qmsr tree.
ClientMethod updateQMSRTree() [ Language = javascript ]
{
}

/// Update the contents of the pivot tree.
ClientMethod updatePivotTree() [ Language = javascript ]
{
}

/// Update the contents of the listings tree.
ClientMethod updateListingsTree() [ Language = javascript ]
{
}

/// Test if the user has write privilege.
ClientMethod canUserModify() [ Language = javascript ]
{
}

/// Data drop on filter tgroup area.
ClientMethod dropOnFilterGroup(dragData) [ Internal, Language = javascript ]
{
}

/// email this pivot.
ClientMethod mailPivot() [ Language = javascript ]
{
}

/// Launch the send email dialog.
/// Copy of method in %DeepSee.UserPortal.standardPage.
ClientMethod sendMail(url, title) [ Language = javascript ]
{
}

/// Toggle autoexec mode.
ClientMethod toggleAutoExecute() [ Language = javascript ]
{
}

/// Change of auto-exec checkbox.
ClientMethod autoExecChange() [ Language = javascript ]
{
}

/// Toggle preview mode. The argument <var>id</var> is unused in the Analyzer case, but is
/// provided to match the signature of the call from the pivot component so a custom
/// page embedding multiple pivots could make use of a custom implementation of this
/// method.
ClientMethod togglePreviewMode(id) [ Language = javascript ]
{
}

/// Change of preview mode checkbox.
ClientMethod previewModeChange() [ Language = javascript ]
{
}

/// Set the state of preview mode checkbox.
ClientMethod setPreviewMode(setChecked) [ Language = javascript ]
{
}

/// Create additional charts, one per data series.
ClientMethod createChartsForSeries() [ Language = javascript ]
{
}

/// Get the value and text of the selected item in the tree (as an object).
ClientMethod getSelectedTreeValue() [ Language = javascript ]
{
}

/// User chose an action.
ClientMethod actionHandler(ctrl) [ Language = javascript ]
{
}

/// Dispatch DataSource Action back to server-side class.<br/>
/// <var>pContext</var> is a proxy object that carries the server action back to the client.
ClassMethod SendActionToDataSource(pCubeName As %String, pAction As %String, pContext As %ZEN.proxyObject, pPivotVariables As %ZEN.proxyObject = "", pFilters As %ZEN.proxyObject = "") As %String [ Internal, ZenMethod ]
{
}

ClientMethod showDimensionTree(flag) [ Language = javascript ]
{
}

/// Change display mode for dimension tree.
ClientMethod changeTreeMode(mode) [ Language = javascript ]
{
}

ClassMethod KillTempSubFolders(pFolder As %String) As %String [ ZenMethod ]
{
}

ClassMethod KillTempPivot(pPivotName As %String) As %String [ ZenMethod ]
{
}

/// Helper function to make <class>%DeepSee.Component.pivotTable</class>.DeleteLastResult() server call in asynchronous mode
ClientMethod deleteLastPivotResult() [ Language = javascript ]
{
}

///  Ensure that auto-logout is not blocked by onunloadHandler checking for unsaved changes
ClientMethod onlogoutHandler() [ Language = javascript ]
{
}

/// Override the superclass logout function to delete the last pivotTable query from the local cache before exiting
ClientMethod logout() [ Language = javascript ]
{
}

ClientMethod onunloadHandler() [ Language = javascript ]
{
}

/// Perform an autosave of the current pivot, filed under the current user. This method cotnains only asynchronous calls
ClientMethod runAutosave() [ Language = javascript ]
{
}

/// Generate a nonce for an MDX query.
ClassMethod CreateQueryNonce(pQuery As %String) As %String [ Internal, ZenMethod ]
{
}

/// Generate a nonce for parameter value. This function will perform UTF8 conversion.
ClassMethod CreateParameterNonce(pParmValue As %String) As %String [ Internal, ZenMethod ]
{
}

}
