/// This class represents the definition of a visual widget (such as a chart) within a user-defined DeepSee dashboard.
/// This is what is saved to disk, not the actual visual component.
Class %DeepSee.Dashboard.Widget Extends (%SerialObject, %XML.Adaptor) [ Final, System = 4 ]
{

Parameter NAMESPACE = "http://www.intersystems.com/deepsee/library";

Parameter XMLNAME = "widget";

Parameter XMLIGNORENULL = 1;

/// Identifying name for this widget. This is used to logically identify the widget within
/// a dashboard (such as for sending filter events to it).
Property name As %String(MAXLEN = 255, XMLPROJECTION = "attribute");

/// Internal key used to track this widget instance.
Property key As %String(MAXLEN = 255, XMLPROJECTION = "none") [ Internal ];

/// Which type of widget to display.
/// This is the class name of a widget. If no class package is provided, then
/// "%DeepSee.Component.Widget" is used.
Property type As %String(MAXLEN = 255, XMLPROJECTION = "attribute");

/// Widget subtype.
/// This is used by widgets that support various subtypes (such as a meter).
Property subtype As %String(MAXLEN = 255, XMLPROJECTION = "attribute");

/// Widget subtype class.
/// If the user overrides the subtype class (such as in a chart or meter), this
/// holds the actual type.
Property subtypeClass As %String(MAXLEN = 255, XMLPROJECTION = "attribute");

/// Title to display for the widget.<br/>
/// Long titles may not display well.
Property title As %String(MAXLEN = 255, XMLPROJECTION = "attribute");

/// Name of the data source for the widget.
/// This is the name of the data source originally defined for this widget.
/// It may be the case that the widget is using a local override of the data source
/// (such as when a user uses the "analyze" button on a pivot widget).
Property dataSource As %String(MAXLEN = 255, XMLPROJECTION = "attribute");

/// Name of local datasource, if the user has made a local modification to its datasource.
/// This is stored in the dashboard settings global.
Property localDataSource As %String(MAXLEN = 255, XMLPROJECTION = "none") [ Transient ];

/// Indicates that the user-specific localDataSource for this widget should be cleared when this widget is saved.
Property resetDataSource As %Boolean(XMLPROJECTION = "none") [ InitialExpression = 0, Transient ];

/// If defined, this the name of a widget on the dashboard that provides the data for this widget.
/// This overrides <property>dataSource</property> if present.
Property dataLink As %String(MAXLEN = 255, XMLPROJECTION = "attribute");

/// Name of the drill down data source for the widget.
/// This is the name of a data source used when the user performs a "drill down" operation
/// (if supported) on the widget. (This is a dashboard to display when the user drills down on
/// a cell within a pivot widget).
Property drillDownDataSource As %String(MAXLEN = 255, XMLPROJECTION = "attribute");

/// Top position of the widget.
Property top As %Integer(MINVAL = 0, XMLPROJECTION = "attribute");

/// Left position of the widget.
Property left As %Integer(MINVAL = 0, XMLPROJECTION = "attribute");

/// Width of the widget.
Property width As %Integer(MINVAL = 0, XMLPROJECTION = "attribute");

/// Height of the widget.
Property height As %Integer(MINVAL = 0, XMLPROJECTION = "attribute");

/// HTML content of sidebar.
Property sidebarContent As %ZEN.Datatype.html(XMLPROJECTION = "attribute");

/// Specify whether to display a sidebar.
Property showSidebar As %ZEN.Datatype.boolean(XMLPROJECTION = "attribute") [ InitialExpression = 0 ];

/// Width of sidebar area.
Property sidebarWidth As %ZEN.Datatype.length(XMLPROJECTION = "attribute");

/// Set of controls displayed within this widget.
Property controls As list Of Control(XMLNAME = "control", XMLPROJECTION = "element");

/// Set of dataProperties displayed within this widget.
/// (Interpretation of this is dependent on the type of widget in use).
Property dataProperties As list Of DataProperty(XMLNAME = "dataProperty", XMLPROJECTION = "element");

/// Array of additional property values to apply to the widget.
Property properties As array Of %String(MAXLEN = 5000, XMLKEYNAME = "name", XMLNAME = "property", XMLPROJECTION = "ELEMENT");

/// Set of data series used displayed within this widget.
Property dataSeries As list Of ChartDataSeries(XMLNAME = "dataSeries", XMLPROJECTION = "element");

/// Array of filter states for the widget.
/// Each name is of the form: [DIM].[HIER].[LEVEL]<br/>
/// Each value is an MDX key value.
Property filterState As array Of %String(MAXLEN = 5000, XMLKEYNAME = "name", XMLNAME = "filterState", XMLPROJECTION = "ELEMENT");

/// Array of additional override values (such as chart state) to apply to the widget.
Property overrides As array Of %String(MAXLEN = 30000, XMLKEYNAME = "name", XMLNAME = "override", XMLPROJECTION = "ELEMENT");

/// If true, this widget should be maximized when first displayed.
Property maximized As %Boolean(XMLPROJECTION = "attribute") [ InitialExpression = 0 ];

/// homeRow position (landscape) of the widget (if in snap grid mode).
Property homeRowL As %Integer(MINVAL = 0, XMLPROJECTION = "attribute");

/// homeCol position (landscape) of the widge (if in snap grid mode)t.
Property homeColL As %Integer(MINVAL = 0, XMLPROJECTION = "attribute");

/// colSpan (landscape) of the widget (if in snap grid mode).
Property colSpanL As %Integer(MINVAL = 1, XMLPROJECTION = "attribute");

/// rowSpan (landscape) of the widget (if in snap grid mode).
Property rowSpanL As %Integer(MINVAL = 1, XMLPROJECTION = "attribute");

/// homeRow position (portrait) of the widget (if in snap grid mode).
Property homeRowP As %Integer(MINVAL = 0, XMLPROJECTION = "attribute");

/// homeCol position (portrait) of the widge (if in snap grid mode)t.
Property homeColP As %Integer(MINVAL = 0, XMLPROJECTION = "attribute");

/// colSpan (portrait) of the widget (if in snap grid mode).
Property colSpanP As %Integer(MINVAL = 1, XMLPROJECTION = "attribute");

/// rowSpan (portrait) of the widget (if in snap grid mode).
Property rowSpanP As %Integer(MINVAL = 1, XMLPROJECTION = "attribute");

/// Specify whether to display a toolbar.
Property showToolbar As %ZEN.Datatype.boolean(XMLPROJECTION = "attribute") [ InitialExpression = 1 ];

/// Specify whether to display the separator between the toolbar and widget content
Property showToolbarBottomBorder As %ZEN.Datatype.boolean(XMLPROJECTION = "attribute") [ InitialExpression = 1 ];

/// Specify whether to display a toolbar.
Property showToolbarOnlyWhenMaximized As %ZEN.Datatype.boolean(XMLPROJECTION = "attribute") [ InitialExpression = 0 ];

/// Specify color of toolbar
Property colorToolbar As %ZEN.Datatype.color(XMLPROJECTION = "attribute") [ InitialExpression = "#F0F0F0" ];

/// Specify opacity of toolbar
Property opacityToolbar As %ZEN.Datatype.float(XMLPROJECTION = "attribute") [ InitialExpression = 1.0 ];

/// JSL4483 color of widget background
Property backgroundColor As %ZEN.Datatype.color(XMLPROJECTION = "attribute") [ InitialExpression = "#F0F0F0" ];

/// JSL4483 opacity of widget background
Property opacity As %ZEN.Datatype.float(XMLPROJECTION = "attribute") [ InitialExpression = 1.0 ];

/// If defined, this the name of a theme provides the styles for this widget.
Property theme As %String(MAXLEN = 512, XMLPROJECTION = "attribute");

/// Transient array of additional override values that come from the theme for this widget.
Property themeOverrides As array Of %String(MAXLEN = 30000, XMLPROJECTION = "NONE") [ Transient ];

/// Optional. Name of termlist (with or without extension) that supplies data-driven colors
/// for chart series.
Property dataColorList As %ZEN.Datatype.string(MAXLEN = 255, XMLPROJECTION = "attribute");

/// Return the name of the data source for this widget.
/// If there is a local override, return it.
Method %GetDataSource() As %String
{
}

/// Create a visual widget component using this definition.<br/>
/// <var>pURLSettings</var> is an array of settings values pulled out of the URL.
Method %CreateVisualWidget(Output pWidget As %DeepSee.Component.Widget.widget, ByRef pURLSettings As %String, pPreviewMode As %Boolean = 0) As %Status
{
}

/// Copy contents of this widget to <var>pTarget</var>.
Method %CopyTo(ByRef pTarget) As %Status
{
}

Method %CopyToDef(ByRef pTarget As %DeepSee.Dashboard.Widget) As %Status
{
}

/// Copy the contents of this definition to an Dao.
Method %CopyToDao(ByRef pTarget As %DynamicObject = {$$$NULLOREF}) As %Status
{
}

/// Return a list of all folder items that this widget depends upon.
/// Returns a list of the form:<br/>
/// pList(ITEMNAME) = itemName<br/>
Method %GetDependencies(pList As %String) As %Status
{
}

/// Diagnostic method: display contents of this widget definition to the console.
Method %Dump() As %Status
{
}

}
