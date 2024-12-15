/// The DeepSee DashBoard viewer page.<br/>
/// This page displays a saved DeepSee dashboard.
/// Invoke this page using the URL:<br/>
/// _DeepSee.UserPortal.DashboardViewer.zen?DASHBOARD=dashboardname<br/>
/// Where <var>dashboardname</var> is the <b>full</b> name of the dashboard: e.g.,
/// "folder/name.dashboard"<br/>
/// This class should be considered as *internal*; subclassing is not supported.
Class %DeepSee.UserPortal.DashboardViewer Extends (%DeepSee.UserPortal.standardPage, %CSP.Portal.SourceControl.Base) [ System = 4 ]
{

/// Name of this page.
Parameter PAGENAME = "Dashboard Viewer";

/// Starting mode for worklist 1: html or group.
Parameter WORKLIST1MODE = "group";

/// Pick up formula code.
Parameter JSINCLUDES = "zenCSLM.js,zenESVG.js,DeepSee.js,dsparser.js";

/// Name of the currently displayed dashboard.
/// Use XDASHBOARD to use a session encrypted value for this.
Property dashboardName As %ZEN.Datatype.string(ZENURL = "DASHBOARD");

/// Token to load unsaved pivot state
Property autosave As %ZEN.Datatype.string(ZENURL = "AUTOSAVE");

/// Token to ignore autosave behavior (used with "Clear My Settings")
Property autosaveOverride As %ZEN.Datatype.string;

/// Folder for autosave items
Property tempStorageRoot As %ZEN.Datatype.string [ InitialExpression = "$Temp/Dashboard/" ];

/// Title of the currently displayed dashboard.
Property dashboardTitle As %ZEN.Datatype.string;

/// border of widgets in dashboard
Property widgetBorders As %ZEN.Datatype.string [ InitialExpression = "1px solid #F0F0F0" ];

/// Whether borders of widgets are on or off
Property widgetBordersToggle As %ZEN.Datatype.boolean [ InitialExpression = 1 ];

/// Whether border is none, inherit or "width style color"
Property widgetBordersSwitch As %ZEN.Datatype.string [ InitialExpression = "edit" ];

/// color of widgets border
Property widgetBordersColor As %ZEN.Datatype.string [ InitialExpression = "#F0F0F0" ];

/// style of widgets border, e.g. solid, dashed, dotted
Property widgetBordersStyle As %ZEN.Datatype.string [ InitialExpression = "solid" ];

/// width of widgets border
Property widgetBordersWidth As %ZEN.Datatype.string [ InitialExpression = "1" ];

/// Localized title of the currently displayed dashboard.
Property dashboardTitleLocal As %ZEN.Datatype.string;

/// Description of the currently displayed dashboard.
Property dashboardDescription As %ZEN.Datatype.string;

/// Locked state of the currently displayed dashboard.
Property dashboardLocked As %ZEN.Datatype.boolean [ InitialExpression = 0 ];

/// Public state of the currently displayed dashboard.
Property dashboardPublic As %ZEN.Datatype.boolean [ InitialExpression = 1 ];

/// If true, the dashboard uses the new snapGrid desktop and ignores the
/// the <property>dashboardSnapTo</property> property.
Property dashboardSnapGrid As %ZEN.Datatype.boolean [ InitialExpression = 0 ];

/// Is dashboard in "snap to" mode.
Property dashboardSnapTo As %ZEN.Datatype.boolean [ InitialExpression = 1 ];

/// Is dashboard uses snap grid, then this is then number of grid rows.
Property dashboardGridRows As %ZEN.Datatype.integer [ InitialExpression = 2 ];

/// Is dashboard uses snap grid, then this is then number of grid columns.
Property dashboardGridCols As %ZEN.Datatype.integer [ InitialExpression = 2 ];

/// Does this dashboard allow the user to move and resize widgets.
Property dashboardResize As %ZEN.Datatype.boolean(ZENURL = "RESIZE") [ InitialExpression = 1 ];

/// Does this dashboard allow the user to modify widgets.
Property dashboardModify As %ZEN.Datatype.boolean(ZENURL = "MODIFY") [ InitialExpression = 1 ];

/// Keywords for the currently displayed dashboard.
Property dashboardKeywords As %ZEN.Datatype.string;

/// Owner of the currently displayed dashboard.
Property dashboardOwner As %ZEN.Datatype.string;

/// Resource for the currently displayed dashboard.
Property dashboardResource As %ZEN.Datatype.string;

/// Book cover spec of the currently displayed dashboard.
Property dashboardBookCover As %ZEN.Datatype.string;

/// Category for the currently displayed dashboard.
Property dashboardCategory As %ZEN.Datatype.string;

/// Current user name.
Property userName As %ZEN.Datatype.string(MAXLEN = 160) [ InitialExpression = {$UserName} ];

/// If true, user cannot modify the current dashboard.
Property readOnly As %ZEN.Datatype.boolean [ InitialExpression = 0 ];

/// Instance of dashboard definition.
Property %dashboard As %DeepSee.Dashboard.Definition(XMLPROJECTION = "none");

/// If true, show alert message to trace filter events.
Property trace As %ZEN.Datatype.boolean(ZENURL = "TRACE") [ InitialExpression = 0 ];

/// If true, widgets display a title bar.
Property showTitleBar As %ZEN.Datatype.boolean [ InitialExpression = 1 ];

/// Specify opacity of title bars.
Property titleBarOpacity As %ZEN.Datatype.float(XMLPROJECTION = "attribute");

/// Specify color of title bars.
Property titleBarColor As %ZEN.Datatype.color(XMLPROJECTION = "attribute");

/// Specify opacity of title bars for selected widgets.
Property selectedTitleBarOpacity As %ZEN.Datatype.float(XMLPROJECTION = "attribute");

/// Specify color of title bar for selected widgets.
Property selectedTitleBarColor As %ZEN.Datatype.color(XMLPROJECTION = "attribute");

/// Specify color of title bar text.
Property titleBarTextColor As %ZEN.Datatype.color(XMLPROJECTION = "attribute");

/// Specify color of title bar text for selected widgets.
Property selectedTitleBarTextColor As %ZEN.Datatype.color(XMLPROJECTION = "attribute");

/// Specify font of title bar text
Property titleBarFont As %ZEN.Datatype.string(XMLPROJECTION = "attribute");

/// Copy of db settings saved for this dashboard.
Property dbsettings As %ZEN.Datatype.string [ Internal, MultiDimensional ];

/// This is used when launching a dashboard from an email alert.
Property nonce As %ZEN.Datatype.string(ZENURL = "NONCE");

/// Track any activeWhen values for widget controls.
Property activeWhenArray As array Of %ZEN.Datatype.string [ Internal ];

/// Key of selected widget.
Property currWidgetKey As %ZEN.Datatype.string [ Internal ];

/// Name used to save a widget to the catalog!
Property widgetTemplateName As %ZEN.Datatype.string;

/// Description of the widget (if any). Used for save to catalog.
Property widgetDescription As %ZEN.Datatype.string;

/// Widget owner. Used for save to catalog.
Property widgetOwner As %ZEN.Datatype.string(MAXLEN = 255);

/// Widget resource. Used for save to catalog.
Property widgetResource As %ZEN.Datatype.string(MAXLEN = 255);

/// Keywords of the saved widget (if any). Used for save to catalog.
Property widgetKeywords As %ZEN.Datatype.string;

/// Container for the current save mode for source control.
Property saveAction As %ZEN.Datatype.string;

/// If the dashboard is in multi-print mode, there is master widget which defines the
/// page margins and other overall settings in the pdf report. This property is the container
/// for the reference to that widget.
Property printMasterWidgetId As %ZEN.Datatype.string;

/// Container for the page size when printing widgets in multi-print mode.
Property printPageSize As %ZEN.Datatype.string [ InitialExpression = "8.5x11 in" ];

/// Container for the page orientation when printing widgets in multi-print mode.
Property printPageOrientation As %ZEN.Datatype.string [ InitialExpression = "portrait" ];

/// Container for the page's left margin when printing widgets in multi-print mode.
Property printMarginLeft As %ZEN.Datatype.string [ InitialExpression = "0.5in" ];

/// Container for the page's right margin when printing widgets in multi-print mode.
Property printMarginRight As %ZEN.Datatype.string [ InitialExpression = "0.5in" ];

/// Container for the page's top margin when printing widgets in multi-print mode.
Property printMarginTop As %ZEN.Datatype.string [ InitialExpression = "0.5in" ];

/// Container for the page's bottom margin when printing widgets in multi-print mode.
Property printMarginBottom As %ZEN.Datatype.string [ InitialExpression = "0.5in" ];

/// When creating multiple temp files, a token is generated that is unique to the
/// CSP session. Temporary files incoporate this token to avoid concurrency problems.
Property tempFileToken As %ZEN.Datatype.string;

/// Debugging property. Setting this to true will prevent the pdf viewer from deleting
/// temporary files used for printing when launched.
Property pdfPreserveTempFiles As %ZEN.Datatype.boolean [ InitialExpression = 0 ];

/// Indicates whether or not the page had to generate widget names on load.
Property widgetNamesAdded As %ZEN.Datatype.boolean [ InitialExpression = 0 ];

XData Style
{
}

/// This XML defines the menu for this page.
XData menuPane [ XMLNamespace = "http://www.intersystems.com/zen" ]
{
}

/// This XML defines the main display area.
XData contentsRightPane [ XMLNamespace = "http://www.intersystems.com/zen" ]
{
}

/// Translate encrypted URL parameters
ClassMethod %OnPreHTTP() As %Boolean [ ServerOnly = 1 ]
{
}

/// Decorate the page.
Method %OnAfterCreatePage() As %Status
{
}

/// Helper method to remove a menu option.
/// Used to remove edit/save options in read-only mode.
Method removeMenuOption(option As %String)
{
}

/// Return list of options for work list 1.
Method %OnGetWorklistOptions1(Output pOptions, Output pDefaultMode) As %Status
{
}

/// Return list of options for work list 2.
Method %OnGetWorklistOptions2(Output pOptions, Output pDefaultMode) As %Status
{
}

/// Open (or create) an instance of dashboard definition that defines the contents
/// of this dashboard.
Method %LoadDashboard(Output pDashboard As %DeepSee.Dashboard.Definition, pDashboardName As %String) As %Status
{
}

/// Create the dashboard widgets and add them to the desktop.<br/>
/// <var>pURLSettings</var> is an array of settings values pulled out of the URL.<br/>
/// <var>pDBSettings</var> is an array of saved dashboard settings values.
Method %CreateWidgets(pDashboard As %DeepSee.Dashboard.Definition, pDesktop As %ZEN.Component.desktop, ByRef pURLSettings As %String, ByRef pDBSettings As %String, ByRef pAddedWidget As %String) As %Status
{
}

/// Nofication that <method>%CreateWidgets</method> was called.
Method %OnCreateWidgets(pDashboard As %DeepSee.Dashboard.Definition, pDesktop As %ZEN.Component.desktop) As %Status
{
}

/// Utility method. Create a set of controls from the given list and add them to the given group.
/// <var>pWidget</var> is the name of the widget the controls are in.<br/>
/// If <var>pWhich</var> is "dashboard", then add the controls to the dashboard.<br/>
ClassMethod %CreateControls(pWhich As %String, pControls As %ListOfObjects, pGroup As %ZEN.Component.group, pWidget As %DeepSee.Component.Widget.widget = "") As %Status [ Internal ]
{
}

/// Nofication that <method>CreateControls</method> was called.
Method %OnCreateControls(pDashboard As %DeepSee.Dashboard.Definition, pGroup As %ZEN.Component.group) As %Status
{
}

/// Get the (localized) title string for the page.
/// This should be implemented in a subclass.
Method %OnGetTitle() As %String
{
}

/// Get the (localized) name of the page.
/// This should be implemented in a subclass.
Method %OnGetPageName() As %String
{
}

/// Adjust sizes of content area.
ClientMethod onAdjustSizes(load, contentWidth, contentHeight) [ Language = javascript ]
{
}

/// Expand or contract of navigator.
ClientMethod navExpand() [ Language = javascript ]
{
}

/// For the given widget, return a list of all widgets linked to it.
ClientMethod getSlaveList(masterWidget) [ Internal, Language = javascript ]
{
}

/// Central handler for control events on this dashboard.
/// This is called whenever a control is modified (or otherwise activated).
/// This is also called when a widget raises an event.<br/>
/// <var>sourceWidget</var> is the widget that raised the event.<br/>
/// <var>which</var> is either 'control' for controls or 'click' for click on widget element.
/// Return true if the event was handled.
ClientMethod dashboardEventHandler(sourceWidget, which, control, action, target, targetProperty, varType) [ Language = javascript ]
{
}

/// Dispatch the given action to all widgets in the list <var>target</var>.
/// <var>currWidget</var> is the current widget (used to resolve empty target names).
ClientMethod dispatchAction(which, currWidget, target, action, targetProperty, value, text) [ Internal, Language = javascript ]
{
}

/// This handles any actions that were not handled by the widgets on the dashboard.
/// This is done by sending the event to the server-side dataSource.
ClientMethod actionHandler(widget, dataSource, action) [ Language = javascript ]
{
}

/// Dispatch DataSource Action back to server-side class.<br/>
/// <var>pContext</var> is a proxy object that carries the server action back to the client.
ClassMethod SendActionToDataSource(pDataSource As %String, pAction As %String, pContext As %ZEN.proxyObject, pPivotVariables As %ZEN.proxyObject = "", pFilters As %ZEN.proxyObject = "") As %String [ Internal, ZenMethod ]
{
}

/// Utility method. Find the display method for a given filter value.
ClassMethod %GetDisplayValue(pDataSource As %String, pFilterName As %String, pValue As %String) As %String [ Internal ]
{
}

/// Delete this dashboard.
ClientMethod deleteDashboard() [ Language = javascript ]
{
}

/// Launch the dashboard finder.
ClientMethod openDashboard() [ Language = javascript ]
{
}

/// Create a new dashboard.
ClientMethod newDashboard() [ Language = javascript ]
{
}

/// Save the dashboard settings for the current user (save my settings).
ClientMethod saveSettings(user) [ Language = javascript ]
{
}

/// Clear saved dashboard settings.
ClientMethod clearSettings() [ Language = javascript ]
{
}

/// Remove any autosave state associated with this dashboard -- the dashboard
/// should load fresh
ClientMethod clearAutosaveState() [ Language = javascript ]
{
}

Method ClearDashboardAutosaveState(pAutosaveItems As %ZEN.proxyObject, pDashboardName As %String, pAutosave As %String) As %Status [ ZenMethod ]
{
}

/// Launch the save dialog.
/// If <var>show</var> is true, show the dialog.
ClientMethod saveDashboard(show, autosaveDashboard) [ Language = javascript ]
{
}

/// Perform an autosave of the current dashboard, filed under the current user
ClientMethod runAutosave() [ Language = javascript ]
{
}

/// Launch the save as dialog.
ClientMethod saveCopyOfDashboard() [ Language = javascript ]
{
}

/// Invoke widget catalog dialog.
ClientMethod addWidgetFromCatalog() [ Language = javascript ]
{
}

/// Invoke the widget wizard dialog to add a new widget to the dashboard.
ClientMethod newWidget() [ Language = javascript ]
{
}

/// Invoke dialog-version of Analyzer.
ClientMethod showAnalyzerDialog(key, datasource, local) [ Internal, Language = javascript ]
{
}

/// Submit handler for the dashboard definition.
/// This is called when the dashboard is saved.
Method SubmitDashboardDef(pCommand As %String, pProvider As %ZEN.Auxiliary.jsonProvider, pSubmitObject As %DeepSee.Dashboard.Definition, ByRef pResponseObject As %RegisteredObject) As %Status
{
}

/// Clear settings for the current dashboard.
Method ClearDashboardSettings() As %String [ ZenMethod ]
{
}

/// Save settings for the current dashboard.
Method SaveDashboardSettings(pUser As %String = "") As %String [ ZenMethod ]
{
}

/// Get array of "dashboard" settings for this dashboard.
Method %GetDashboardSettings(ByRef pDBSettings As %String) As %Status
{
}

/// Change the local datasource for one widget and save it to local settings.
Method SaveWidget(pWidgetKey As %String, pLocalDataSource As %String) As %String [ ZenMethod ]
{
}

/// This client event is fired when the a popup page launched from this page fires an action.
ClientMethod onPopupAction(popupName, action, value) [ Language = javascript ]
{
}

/// Find a widget given its key.
ClientMethod findWidgetByKey(key) [ Internal, Language = javascript ]
{
}

/// Update the title for the dashboard.
ClientMethod updateWorklistTitle() [ Language = javascript ]
{
}

/// Get the current size and position of each widget and place it within the widget.
/// Also make sure that the subtype class is current.
ClientMethod getWidgetLayout() [ Language = javascript ]
{
}

/// Add this dashboard to the favorites list.
ClientMethod addThisToFavorites() [ Language = javascript ]
{
}

/// Show the analyzer page.
ClientMethod gotoAnalyzer() [ Language = javascript ]
{
}

/// Execute a drill down for the given widget.
ClientMethod drillDown(widget, dataSource) [ Language = javascript ]
{
}

/// Test if this page is in read only mode.
ClientMethod isReadOnly() [ Language = javascript ]
{
}

/// Drop down is about to appear for searchBox control.
ClientMethod filterDropDown(ctrl, widgetKey, dataSource) [ Language = javascript ]
{
}

/// Utility method.<br/>
/// Pull apart a filter spec, as we may get from a URL, into a spec and key or value:<br/>
/// [Outlet].[Country].[France] ==> "[Outlet].[Country]","[France]"<br/>
/// {[HOMED].[H1].[ZIP].[32006],[HOMED].[H1].[ZIP].[32007]} ==> "[HOMED].[H1].[ZIP]","{&[32006],&[32007]}" <br/>
/// Note that an array of results is returned. If the spec contains a tuple, each piece is
/// put into its own array node (pIndex is used to track how many pieces there are).<br/>
ClassMethod %ParseFilterSpec(pSpec As %String, Output pFSpec As %String, Output pFKey As %String, Output pFValue As %String, ByRef pIndex As %Integer = 0) As %Status
{
}

/// email this dashboard.
ClientMethod mailDashboard() [ Language = javascript ]
{
}

/// Reload the dashboard (show current saved state)
ClientMethod reloadDashboard() [ Language = javascript ]
{
}

/// Provide contents of the dimension tree.
/// Used by pivot widget.
ClassMethod GetDimensionInfo(pRoot As %String, Output pTree, ByRef pParms) As %Status
{
}

/// Notification that this widget is being closed.
ClientMethod widgetClosing() [ Internal, Language = javascript ]
{
}

/// Raise the resize method for all widgets except <var>skip</var>.
ClientMethod invokeAdjustSizes(skip) [ Internal, Language = javascript ]
{
}

/// Turn title bars on or off.
ClientMethod setTitleBar(flag) [ Internal, Language = javascript ]
{
}

/// Return an object describing what to display for this level within the navigator.
ClientMethod navGetContentForLevel(level, key, value) [ Language = javascript ]
{
}

/// Arrange of data list in navigator.
ClientMethod navDataArrange(key, swap, final) [ Language = javascript ]
{
}

/// Change of data value in navigator.
ClientMethod navDataChange(key, value, final) [ Language = javascript ]
{
}

/// Apply color and opacity to all available widgets
ClientMethod setTitleBarColorAndOpacity() [ Language = javascript ]
{
}

/// Select of item within the navigator.
ClientMethod navSelectItem(key, value, which) [ Language = javascript ]
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

Method deleteWidget(pIndex) As %String [ ZenMethod ]
{
}

/// Popup action in navigator.
ClientMethod navPopupAction(key, value) [ Language = javascript ]
{
}

/// Set number of grid rows in the desktop.
ClientMethod setGridRows(rows) [ Language = javascript ]
{
}

ClientMethod setBorder(value) [ Language = javascript ]
{
}

ClientMethod setFromBorderValues() [ Language = javascript ]
{
}

ClientMethod setBackground(attr, value) [ Language = javascript ]
{
}

/// Set number of grid columns in the desktop.
ClientMethod setGridColumns(cols) [ Language = javascript ]
{
}

/// Number of grid rows in the desktop.
ClientMethod getGridRows() [ Language = javascript ]
{
}

/// Number of grid columns in the desktop.
ClientMethod getGridColumns() [ Language = javascript ]
{
}

/// User has selected a widget on the dashboard.
ClientMethod widgetSelected(evt, key) [ Language = javascript ]
{
}

/// If there is a selected widget, return it.
ClientMethod getCurrWidget() [ Language = javascript ]
{
}

/// Set the value of a named property.<br>
ClientMethod setProperty(property, value, value2) [ Language = javascript ]
{
}

/// Make a poor man's grid to show the drop zones and add it to the wallpaper
ClientMethod showCurrentGrid() [ Internal, Language = javascript ]
{
}

/// Return json data to drive the toolbar. !!!
ClientMethod getToolbarData() [ Language = javascript ]
{
}

/// Launch the book cover editor.
ClientMethod designBookCover() [ Internal, Language = javascript ]
{
}

/// Get the array of available widget types.
ClientMethod getWidgetTypes() [ Internal, Language = javascript ]
{
}

/// Return JSON array of widget types.<br/>
Method GetWidgetTypeList(ByRef pParameters, Output pMetaData, Output pData) As %Status
{
}

/// Get the dashboard definition object.
ClientMethod getDefinition() [ Internal, Language = javascript ]
{
}

/// Get the widget definition within the dashaboard definition object.
ClientMethod getWidgetDefinition(widgetKey) [ Internal, Language = javascript ]
{
}

/// Get the definition of this dashboard for the JSON provider.
Method GetDbDefinition(ByRef pParms, Output pObject As %RegisteredObject) As %Status
{
}

/// Update the definition of a widget on the server.
ClassMethod UpdateWidget(pWidget As %DeepSee.Component.Widget.widget, pJSON As %String, pWorkList As %ZEN.Component.group, pAction As %String, pControlLocation As %String, pControlIndex As %String, pWidgetControlIndex As %String) As %String [ Internal, ZenMethod ]
{
}

/// Set the modified state of this page.
/// Modified flag only appears when user permissions are NOT read-only.
ClientMethod setModified(flag) [ Internal, Language = javascript ]
{
}

/// Recreate the given widget on the server and reload it.
ClientMethod recreateWidget(widgetKey, action, controlIndex) [ Internal, Language = javascript ]
{
}

/// Called after a widget is recreated.
ClientMethod recreateHandler(widgetKey) [ Language = javascript ]
{
}

/// Fetch the given list of options from the server.
ClientMethod fetchOptionList(which, spec, properties) [ Language = javascript ]
{
}

/// Return JSON array of options.<br/>
Method GetOptionList(ByRef pParameters, Output pMetaData, Output pData) As %Status
{
}

/// Launch the new control wizard.
ClientMethod addControlDef() [ Language = javascript ]
{
}

/// Launch the new data property wizard.
ClientMethod addDataPropertyDef() [ Language = javascript ]
{
}

/// Save the selected widget to the widget catalog.
ClientMethod saveWidgetToCatalog() [ Language = javascript ]
{
}

ClientMethod getPreviewImage() [ Language = javascript ]
{
}

/// Launch the pdf options dialog.
ClientMethod showPDFOptions() [ Language = javascript ]
{
}

/// Save the selected widget styles to the theme catalog.
ClientMethod saveWidgetToTheme() [ Language = javascript ]
{
}

/// Save the given style overrides to the named theme. Create the theme if is does not exist.
ClassMethod SaveTheme(pThemeName As %String, pOverrides As %ZEN.proxyObject) As %String [ Internal, ZenMethod ]
{
}

/// Delete the named theme.
ClassMethod DeleteTheme(pThemeName As %String) As %String [ Internal, ZenMethod ]
{
}

/// Get a list of system resources.
ClassMethod %GetResourceList(Output pList) As %Status [ Internal ]
{
}

/// Launch the color chooser.
ClientMethod launchColorChooser() [ Language = javascript ]
{
}

/// Set the data source for the given widget.
ClassMethod SetDataSource(pWidget As %DeepSee.Component.Widget.widget, pPivotTable As %DeepSee.Component.pivotTable, pDataSource As %String, pOverrides As %String = "") As %String [ Internal, ZenMethod ]
{
}

/// Get the contents of the small menu in the title area.
Method %OnGetSmallMenu(Output pMenu)
{
}

/// Generate a nonce for an MDX query or XML payload.
ClassMethod CreateQueryNonce(pQuery As %String, pMode As %String = "MDX") As %String [ Internal, ZenMethod ]
{
}

/// Generate a nonce for parameter value. This function will perform UTF8 conversion.
ClassMethod CreateParameterNonce(pParmValue As %String) As %String [ Internal, ZenMethod ]
{
}

///  Ensure that auto-logout is not blocked by onunloadHandler checking for unsaved changes
ClientMethod onlogoutHandler() [ Language = javascript ]
{
}

ClientMethod onunloadHandler() [ Language = javascript ]
{
}

ClientMethod onloadHandler() [ Language = javascript ]
{
}

/// Return the internal name of the current document, including the three letter
/// extension in upper-case. For example, MyPackage.MyClass.CLS would be the internal name
/// for the class MyPackage.MyClass.
/// Subclasses MUST override this method.
Method GetInternalName() As %String
{
}

/// Get the jsonProvider object on the client.
/// Subclasses MUST override this method to return the jsonProvider.
ClientMethod getClientModel() [ Language = javascript ]
{
}

/// Return the current name of the class/object being modified.
/// Subclasses MUST override this method to return the correct name.
ClientMethod getCurrentName() [ Language = javascript ]
{
}

/// Set <property>readOnly</property> to the value of <var>readOnly</var>.
/// Subclasses MUST implement this method to update the controls on the page
/// so that the page's behaviour actually matches the value of the readOnly flag.
ClientMethod setReadOnly(readOnly) [ Language = javascript ]
{
}

/// Add include files to support color schemes.
Method %OnDrawHTMLHead() As %Status
{
}

/// Save the pivot table so we have an autosaved version
ClassMethod SavePivotTable(pPivot As %DeepSee.Component.pivotTable, autoSavePivotName As %String) As %String [ ZenMethod ]
{
}

/// Return the string used as the command when sending JSON content to the server.
/// The OnSubmitContent handler for the jsonProvider MUST support two action types.
ClientMethod getSaveAction(force) [ Language = javascript ]
{
}

/// Return the extension used by Studio for the class/object.
/// This is ".CLS" by default, but subclasses should override this method
/// if a different extension is in use.
ClientMethod getCurrentExtension() [ Language = javascript ]
{
}

ClientMethod setConnectivityStatusMsg(msg) [ Language = javascript ]
{
}

/// Handle a source control menu selection.
ClientMethod chooseSCMenu(menuName, commandName, saveFlags) [ Language = javascript ]
{
}

}
