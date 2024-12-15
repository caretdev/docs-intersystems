/// Base class for DeepSee Dashboard widgets.<br/>
/// Instances of this class, or its subclasses, represent graphical items within a
/// DeepSee Dashboard (such as a pivot, chart, or meter).
Class %DeepSee.Component.Widget.widget Extends %ZEN.Component.dragGroup [ Abstract, System = 4 ]
{

Parameter JSINCLUDES = "zenCSLM.js,zenESVG.js,DeepSee.js";

Parameter DOMAIN = "%DeepSee";

Parameter NAMESPACE = "http://www.intersystems.com/deepsee";

/// Set this to false to prevent this widget from being listed.
Parameter PUBLISHED As Boolean = 1;

/// Default header layout pattern.
/// N.B. Overridden in code.
Parameter DEFAULTHEADERLAYOUT = "CIFT";

/// Default image for close group button.
Parameter DEFAULTCLOSEIMAGE = "images/MacCloseX.png";

/// Default image for maximize group button.
Parameter DEFAULTMAXIMAGE = "images/MacFullScreenPlus.png";

/// Default image for minimize group button.
Parameter DEFAULTMINIMAGE = "images/MacIconifyDash.png";

/// Default image for contract group button.
Parameter DEFAULTCONTRACTIMAGE = "images/MacIconifyDash.png";

/// Default image for expand group button.
Parameter DEFAULTEXPANDIMAGE = "images/MacIconifyDash.png";

/// Default image for maximize group button.
Parameter DEFAULTRESIZEIMAGE = "images/grayDragResize.png";

/// Default resize icon size in pixels
Parameter DEFAULTRESIZEICONSIZE = 16;

/// Specify which specific sub-type of widget to display. The interpretation of this
/// is up to subclasses to implement.
Property subtype As %ZEN.Datatype.string;

/// HTML content of sidebar.
Property sidebarContent As %ZEN.Datatype.html;

/// Specify whether to display a toolbar.
Property showToolbar As %ZEN.Datatype.boolean [ InitialExpression = 1 ];

/// Specify whether to display the separator between the toolbar and widget content
Property showToolbarBottomBorder As %ZEN.Datatype.boolean [ InitialExpression = 1 ];

/// Specify whether to display a toolbar.
Property showToolbarOnlyWhenMaximized As %ZEN.Datatype.boolean(XMLPROJECTION = "attribute") [ InitialExpression = 0 ];

/// Specify whether to display a sidebar.
Property showSidebar As %ZEN.Datatype.boolean [ InitialExpression = 0 ];

/// Width of sidebar area.
Property sidebarWidth As %ZEN.Datatype.length [ InitialExpression = "25%" ];

/// Used to hold a reference to the widget definition that defined this widget.
Property %definition As %DeepSee.Dashboard.Widget(XMLPROJECTION = "none");

/// A string containing the layout state for this widget:
/// "key:top:left:width:height:max"
/// This is used by "SaveSettings"
Property widgetLayout As %ZEN.Datatype.string;

/// Identifying key for the widget.
Property widgetKey As %ZEN.Datatype.integer;

/// If true, then render in preview mode.
Property previewMode As %ZEN.Datatype.boolean [ InitialExpression = 0 ];

/// Holder for dataSource.
Property dataSource As %ZEN.Datatype.string(XMLPROJECTION = "NONE");

/// If this widget is linked, then this is the key of the widget we are linked to.
/// Set when the page is created.
Property linkWidgetKey As %ZEN.Datatype.integer(XMLPROJECTION = "NONE");

/// Names of target widgets to send click events to.
Property clickTargets As list Of %ZEN.Datatype.string(XMLPROJECTION = "NONE");

/// Names of actions to raise for click events.
Property clickActions As list Of %ZEN.Datatype.string(XMLPROJECTION = "NONE");

/// Names of target properties for click events.
Property clickTargetProperties As list Of %ZEN.Datatype.string(XMLPROJECTION = "NONE");

/// Array of component indices for controls created by this widget.
Property controlIndices As list Of %ZEN.Datatype.integer(XMLPROJECTION = "NONE");

/// Special filter value applied to this widget in response to a click event.
/// Also used to handle filters passed in as part of the URL that are not mapped to
/// a filter control.<br/>
/// If this starts with "%FILTER ", then this is one or more %FILTER clauses.
Property clickFilterSpec As %ZEN.Datatype.string(XMLPROJECTION = "NONE");

/// Array of logical names of filters on this widget and their current values.<br/>
/// Each name is of the form: [DIM].[HIER].[LEVEL]<br/>
/// Each value is an MDX key value.
Property filterState As array Of %ZEN.Datatype.string(XMLPROJECTION = "NONE");

/// Array of logical names of filters on this widget and their current display value.<br/>
/// This augments the <property>filterState</property> property.
Property filterText As array Of %ZEN.Datatype.string(XMLPROJECTION = "NONE");

/// Array of default values of filters on this widget.<br/>
/// This is used to prevent saving of default values for widgets.
/// This augments the <property>filterState</property> property.
Property filterDefault As array Of %ZEN.Datatype.string(XMLPROJECTION = "NONE");

/// Settings applied to this widget.
/// These are pulled from the URL of the dashboard viewer.
Property settings As array Of %ZEN.Datatype.string(XMLPROJECTION = "NONE");

/// Value of most recently selected item on this widget, if applicable.
Property currValue As %ZEN.Datatype.string(XMLPROJECTION = "NONE");

/// Value name for most recently selected item on this widget, if applicable.
Property currValueName As %ZEN.Datatype.string(XMLPROJECTION = "NONE");

/// Filter spec for most recently selected item on this widget, if applicable.
/// If this starts with "%FILTER ", then it contains one or more "%FILTER" clauses.
Property currFilterSpec As %ZEN.Datatype.string(XMLPROJECTION = "NONE");

/// Item number for most recently selected item on this widget, if applicable.
Property currItemNo As %ZEN.Datatype.integer(XMLPROJECTION = "NONE");

/// Series number for most recently selected item on this widget, if applicable.
Property currSeriesNo As %ZEN.Datatype.integer(XMLPROJECTION = "NONE");

/// If true, then there are filter values that have to be applied.
Property hasInitialFilters As %ZEN.Datatype.boolean(XMLPROJECTION = "NONE") [ InitialExpression = 0 ];

/// If true, then this widget should be maximized when it is initially displayed.
Property maximized As %ZEN.Datatype.boolean(XMLPROJECTION = "NONE") [ InitialExpression = 0 ];

/// color of toolbar
Property colorToolbar As %ZEN.Datatype.color(XMLPROJECTION = "NONE") [ InitialExpression = "#F0F0F0" ];

Property opacityToolbar As %ZEN.Datatype.float(XMLPROJECTION = "NONE") [ InitialExpression = 1.0 ];

/// color of widget background
Property backgroundColor As %ZEN.Datatype.color(XMLPROJECTION = "NONE") [ InitialExpression = "#F0F0F0" ];

/// opacity of widget background
Property opacity As %ZEN.Datatype.float(XMLPROJECTION = "NONE") [ InitialExpression = 1.0 ];

/// Prevent the user from changing the settings for show toolbar.
Property forceToolbar As %ZEN.Datatype.boolean [ InitialExpression = 0 ];

/// Current CSP session.
Property sessionCookie As %ZEN.Datatype.string;

/// Names of activeWhen values for click events.
Property clickActive As list Of %ZEN.Datatype.string(XMLPROJECTION = "NONE");

/// homeRow value before a widget is dragged
Property prevHomeRow As %ZEN.Datatype.integer;

/// homeCol value before a widget is dragged
Property prevHomeCol As %ZEN.Datatype.integer;

/// isClosed stores the state of a widget
Property isClosed As %ZEN.Datatype.boolean [ InitialExpression = 0 ];

/// Style for widget sections
XData Style
{
}

/// Override dragGroup behavior.
Method %DrawHTML()
{
}

/// Create an id value for an component within this widget.
Method %MakeWidgetId(pString As %String) As %String
{
}

/// Return information used to list this widget within the "widget catalog".
ClassMethod %GetCatalogInfo(Output pInfo As %List, Output pSubtypeList As %List) As %Status
{
}

/// Return information on additional "properties" supported by this widget for the given subtype.
ClassMethod %GetWidgetPropertyInfo(pSubtype As %String, Output pInfo As %List) As %Status
{
}

/// If implemented, this callback method is called at page render-time
/// when this component is added to a page but before any of its children
/// have been created.
Method %OnAddToPageBefore() As %Status
{
}

/// Add a sidebar to the <var>pMainGroup</var> of this widget.
Method %AddSidebar(pMainGroup) As %Status
{
}

/// Add a footer to this widget.
Method %AddFooter() As %Status
{
}

/// Create the "command" buttons for this widget.
Method %CreateCommandButtons(pGroup As %ZEN.Component.group, pCanWrite As %Boolean = 1) As %Status [ Internal ]
{
}

/// This callback is called just before controls are added to the top of the widget.
/// <var>pGroup</var> is the header in which new Zen control can be added.
Method %OnCreateControls(pGroup As %ZEN.Component.group) As %Status
{
}

/// This callback is responsible for creating the contents of the widget.
/// <var>pGroup</var> is the group to which new Zen components should be added.
Method %OnCreateWidget(pGroup As %ZEN.Component.group) As %Status
{
}

/// This client event, if present, is fired when the page is loaded.
ClientMethod onloadHandler() [ Language = javascript ]
{
}

/// Find a component within this widget with the given sub id.
ClientMethod findComponent(id) [ Language = javascript ]
{
}

/// Find a component within this widget with the given sub id.
Method %FindComponent(id As %String) As %ZEN.Component.component
{
}

/// Test if this widget is ready to be resized.
ClientMethod isReady() [ Internal, Language = javascript ]
{
}

/// Called when page is loaded or widget is resized.
ClientMethod adjustSizes(load) [ Language = javascript ]
{
}

/// Sets the "Modified" flag when a widget is dragged.
/// Called in the onwindowdrop callback.
ClientMethod setModifiedIfDragged() [ Language = javascript ]
{
}

/// Stores previous values of homeRow and homeCol (widget coordinates).
/// Called in the onwindowgrab callback.
ClientMethod initializeHomeRowCol() [ Language = javascript ]
{
}

/// Dynamically update Open/Hidden lists in the menu bar when a widget is closed/reopened.
ClientMethod updateMenuBar() [ Language = javascript ]
{
}

/// Hide a widget. Called in onclosepending callback of this widget.
ClientMethod closeWidget() [ Language = javascript ]
{
}

/// Open a closed widget. Called in an onclick callback in <class>%ZEN.Component.navigator</class>.
ClientMethod openWidget() [ Language = javascript ]
{
}

/// Called when page is loaded (<var>load</var> will be true) or the widget is resized.
/// This lets a subclass adjust the size of any components it has placed in
/// the contents area.
/// <var>width</var> and <var>height</var> contain the size of the content area.
ClientMethod adjustContentSize(load, width, height) [ Language = javascript ]
{
}

/// This method is called when a control event is sent to this widget.
/// A control event is raised by filter controls.<br/>
/// <var>text</var> is optional display value for <var>value</var>.
ClientMethod controlEventHandler(which, action, targetProp, value, text) [ Language = javascript ]
{
}

/// Make sure all filter controls show the same value.<br/>
/// <var>text</var> is optional text value of the filter (used when server actions
/// drive the filter change!).
ClientMethod syncFilters(targetProp, value, text) [ Internal, Language = javascript ]
{
}

/// This method is called an event on this widget (such as click on a chart series)
/// occurs and it needs to be dispatched.
ClientMethod raiseEventHandler(action) [ Language = javascript ]
{
}

/// Perform a showListing action, if supported.
ClientMethod showListing(listing) [ Language = javascript ]
{
}

/// Perform a showGeoListing action, if supported.
ClientMethod showGeoListing(listing) [ Language = javascript ]
{
}

/// Perform a showDimensions action, if supported.
ClientMethod showDimensions() [ Language = javascript ]
{
}

/// Perform a showBreakdown action, if supported.
ClientMethod showBreakdown(analysisClass) [ Language = javascript ]
{
}

/// If this widget contains a data controller, return it.
/// This allows for generic capabilities in this base class.
ClientMethod getDataController() [ Language = javascript ]
{
}

/// If this widget contains a data controller, return it.
Method %GetDataController() As %ZEN.Auxiliary.abstractController
{
}

/// Apply the given setting value to this widget.
/// For example, this is used to set the row count for a pivot.
ClientMethod applySetting(action, value) [ Internal, Language = javascript ]
{
}

/// Apply the current filters to this widget.
ClientMethod applyFilters(refresh) [ Internal, Language = javascript ]
{
}

/// Notification to subclasses that filter has changed.
ClientMethod onApplyFilters(refresh) [ Internal, Language = javascript ]
{
}

/// Get the array of filter state information.
Method %GetFilterStateArray() As %ListOfObjects [ Internal ]
{
}

/// Get the array of filter text information.
Method %GetFilterTextArray() As %ListOfObjects [ Internal ]
{
}

/// Get the array of filter default information.
Method %GetFilterDefaultArray() As %ListOfObjects [ Internal ]
{
}

/// Apply the current filters to the widget.
/// This is called when the page is first rendered to set the current filter values.
/// It is called by the %CreateWidgets method of the DashboardViewer.
Method %ApplyFilters() As %Status [ Internal ]
{
}

/// Return the current state of filters for this widget as one serialized string.
ClientMethod getFilterState(delim1, delim2) [ Internal, Language = javascript ]
{
}

/// Set the current state of filters from a serialized string.
ClientMethod setFilterState(state) [ Internal, Language = javascript ]
{
}

/// Given an MDX member expression and key value expression, return a clause that
/// can be used as a filter spec.
ClientMethod constructMDXClause(filter, value) [ Internal, Language = javascript ]
{
}

/// Update the display current controls for this widget.
/// Implemented by subclasses.
ClientMethod updateControlState() [ Internal, Language = javascript ]
{
}

/// Perform a local drill down for a target widget.
ClientMethod executeDrillDown(dataSource) [ Internal, Language = javascript ]
{
}

/// Find the value of the given parameter value.
ClientMethod getParameterValue(parm) [ Internal, Language = javascript ]
{
}

/// Get array of "dashboard" settings for this widget.
Method %GetWidgetSettings(ByRef pSettings As %String) As %Status
{
}

/// If this is a slave to another widget, return the master.
/// Otherwise return null.
ClientMethod getMasterWidget() [ Internal, Language = javascript ]
{
}

/// Get the array of filter state information for this widget.
ClientMethod getFilterStateArray() [ Internal, Language = javascript ]
{
}

/// Get the array of filter text information for this widget.
ClientMethod getFilterTextArray() [ Internal, Language = javascript ]
{
}

/// Called on a master widget from a slave when the data source or filters are changed.
ClientMethod syncMaster(slave) [ Internal, Language = javascript ]
{
}

/// Called on a slave widget from a master when data source or filters are changed.
ClientMethod syncSlave(master, dataChange) [ Internal, Language = javascript ]
{
}

/// Called on a slave widget from a master when its data source is changed.
ClientMethod syncSlaveData(master) [ Internal, Language = javascript ]
{
}

/// Intercept call to make sure all widgets get resize event!
ClientMethod normalize(event) [ Internal, Language = javascript ]
{
}

/// Set the style of this widget to indicate that it is selected.
ClientMethod setHighlight(flag) [ Internal, Language = javascript ]
{
}

/// Notification that this widget is selected / unselected.
ClientMethod onSetHighlight(flag) [ Internal, Language = javascript ]
{
}

/// Hide/show the drag header for this widget.
ClientMethod showDragHeader(flag) [ Internal, Language = javascript ]
{
}

/// Hide/show the toolbar for this widget.
ClientMethod hideToolbar(flag) [ Internal, Language = javascript ]
{
}

/// Select this widget.
ClientMethod selectWidget(evt) [ Language = javascript ]
{
}

/// Return an object describing what to display for this level within the navigator.
/// Invoked from dashboard viewer.
ClientMethod navGetContentForLevel(level, key, value) [ Internal, Language = javascript ]
{
}

/// Re-arrange of a list in navigator.
ClientMethod navDataArrange(key, swap, final) [ Language = javascript ]
{
}

/// Change of data value in navigator.
ClientMethod navDataChange(key, value, final) [ Language = javascript ]
{
}

/// Select of item in navigator.
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

/// Popup action in navigator.
ClientMethod navPopupAction(key, value) [ Language = javascript ]
{
}

/// Set the value of a named property.
ClientMethod setProperty(property, value, value2) [ Language = javascript ]
{
}

/// Resize the active group to the given geometry.
ClientMethod resize(width, height) [ Language = javascript ]
{
}

/// Utility method.
/// Convert a component instance <var>obj</var> to JavaScript object literal syntax (JSON).
/// This is used to get user modifications to components.
ClientMethod componentToJSON(obj, level, skip) [ Internal, Language = javascript ]
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

/// Return a list of items that should not be saved in override JSON arrays.
/// The return is passed to <method>componentToJSON</method>.
ClientMethod getOverrideSkipList(type) [ Language = javascript ]
{
}

/// Return the definition object for a given widget, if available. Use this widget by default.
ClientMethod getDefinition(key) [ Language = javascript ]
{
}

/// Apply the given pivot variable value to the pivot.
ClientMethod applyPivotVariable(varName, value) [ Internal, Language = javascript ]
{
}

ClientMethod setToolbarProperty(property, value) [ Language = javascript ]
{
}

ClientMethod setOpacity(opacity) [ Language = javascript ]
{
}

/// This is called by dragGroupManager when it is given 'processAppMessage' method
ClientMethod processAppMessage(value) [ Language = javascript ]
{
}

ClientMethod getSVGFrame() [ Language = javascript ]
{
}

ClientMethod getSettingLists(setting) [ Language = javascript ]
{
}

ClientMethod getSettingDisplayValue(setting, value) [ Language = javascript ]
{
}

/// Print SVG content using the svgImageProvider. Parameters specific to the widget type may be passed in
/// via the parms object, and those parameters will be augmented using settings common to all widgets in
/// this clientMethod.<br>
/// The target content may be looked up in the current svgFrameId, or printable content can be passed in
/// directly as svgContent.
ClientMethod printSVGContent(svgFrameId, parms, svgContent, filename) [ Language = javascript ]
{
}

/// Find the filters defined for the current widget and return them in a JSON table
/// fit for consumption by the SVG printer.
ClientMethod getFilterTableForPrinting(parms) [ Language = javascript ]
{
}

ClientMethod isMasterWidget(widgetId) [ Language = javascript ]
{
}

/// Lookup a filter caption for a KPI
ClassMethod GetKpiFilterCaption(pKPIName, pSpec) As %String [ ZenMethod ]
{
}

/// Transform a set of printing parameters that are compatible with the ZenReport-based
/// %DeepSee.UI.MDXPDF, %DeepSee.UI.ChartPDF, etc, into the parameters expected by the
/// %DeepSee.Component.deepseeSvgImageProvider
ClientMethod prepareSvgPrintParameters(parms) [ Internal, Language = javascript ]
{
}

/// Client-visible wrapper for the <method>%ResolveText</method> method to translate title text.
Method ResolveText(pEncodedText) As %String [ ZenMethod ]
{
}

}
