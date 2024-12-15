/// This dialog creates a new widget for a dashboard.
Class %DeepSee.UI.Dialog.WidgetWizard Extends %DeepSee.UI.Dialog.standardDialog [ System = 4 ]
{

Parameter APPLYBUTTON = 0;

/// Dashboard name.
Property dashboardName As %ZEN.Datatype.string(ZENURL = "DASHBOARD");

/// Data source name.
Property dataSource As %ZEN.Datatype.string;

/// Local data source name (if any).
Property localDataSource As %ZEN.Datatype.string;

/// Drill down data source name.
Property drillDownDataSource As %ZEN.Datatype.string;

/// Data link name.
Property dataLink As %ZEN.Datatype.string;

/// Name of widget (on the dashboard).
Property widgetName As %ZEN.Datatype.string(ZENURL = "WIDGETNAME");

/// Key for widget (if editing).
Property widgetKey As %ZEN.Datatype.string(ZENURL = "KEY");

/// Current selected widget type.
Property widgetType As %ZEN.Datatype.string;

/// Current selected widget subtype.
Property widgetSubtype As %ZEN.Datatype.string;

/// List of data series definitions for the widget.
Property dataSeriesDefs As list Of %DeepSee.Component.dataSeriesDefinition;

/// List of control definitions for the widget.
Property controlDefs As list Of %DeepSee.Component.controlDefinition;

/// List of data property definitions for the widget.
Property dataPropertyDefs As list Of %DeepSee.Component.dataPropertyDefinition;

/// Name used to save this widget to the catalog!
Property widgetTemplateName As %ZEN.Datatype.string;

/// Description of the widget (if any).
Property widgetDescription As %ZEN.Datatype.string;

/// Widget owner.
Property widgetOwner As %ZEN.Datatype.string(MAXLEN = 255);

/// Widget resource.
Property widgetResource As %ZEN.Datatype.string(MAXLEN = 255);

/// Keywords of the saved widget (if any).
Property widgetKeywords As %ZEN.Datatype.string;

/// Additional name/value pairs for the widget.
Property widgetPropertyArray As array Of %ZEN.Datatype.string;

/// List of current widget names on dashboard.
Property widgetNames As %ZEN.Datatype.csv(ZENURL = "NAMES");

/// Number of widgets on dashboard.
Property widgetCount As %ZEN.Datatype.csv(ZENURL = "COUNT");

/// Should dialog show the widget preview.
Property showPreview As %ZEN.Datatype.boolean [ InitialExpression = 1 ];

/// Name of dashboard used to hold preview copy.
Property previewName As %ZEN.Datatype.string;

XData Style
{
}

/// Contents of the dialog body.
XData dialogBody [ XMLNamespace = "http://www.intersystems.com/zen" ]
{
}

/// Apply changes to page.
Method %OnAfterCreatePage() As %Status
{
}

/// Get the (localized) title string for the dialog.
/// This should be implemented in a subclass.
Method %OnGetTitle() As %String
{
}

/// Get the (localized) subtitle string for the dialog.
/// This should be implemented in a subclass.
Method %OnGetSubtitle() As %String
{
}

ClientMethod getDialogValue() [ Language = javascript ]
{
}

/// This callback, if defined, is called when the dialog page is loaded.
ClientMethod ondialogStart() [ Language = javascript ]
{
}

/// This callback, if defined, is called when the user presses the OK or Apply action buttons.
/// If this returns false, then the action is cancelled.<br>
ClientMethod ondialogFinish(action) As %Boolean [ Language = javascript ]
{
}

/// Add a widget to the given dashboard definition.
/// If <var>pPreview</var>, then save to the private preview dashboard.
Method AddWidgetToDashboard(pDashboardName As %String, pWidgetName As %String, pInfo As %ZEN.proxyObject, pPreview As %Boolean = 0) As %String [ ZenMethod ]
{
}

/// User edit of dataSource.
ClientMethod dataSourceChange() [ Language = javascript ]
{
}

/// Clear the data source.
/// If there is a local override, first clear it and restore the original value.
ClientMethod clearDataSource() [ Language = javascript ]
{
}

/// Launch the data source finder.
ClientMethod browseDataSources() [ Language = javascript ]
{
}

/// Launch the data source finder.
ClientMethod browseDrillDataSources() [ Language = javascript ]
{
}

/// Clear the data source.
ClientMethod clearDrillDataSource() [ Language = javascript ]
{
}

/// Launch the pivot finder dialog.
ClientMethod loadPivot() [ Language = javascript ]
{
}

/// Launch the KPI finder dialog.
ClientMethod loadKPI() [ Language = javascript ]
{
}

/// Launch the worksheet finder dialog.
ClientMethod loadWorksheet() [ Language = javascript ]
{
}

/// This client event is fired when the a popup page launched from this page fires an action.
ClientMethod onPopupAction(popupName, action, value) [ Language = javascript ]
{
}

/// Adjust size and position of components on this page.
ClientMethod adjustSize() [ Language = javascript ]
{
}

/// Show data source finder for widget property control
ClientMethod chooseDataSource(id) [ Language = javascript ]
{
}

/// User selected a widget type.
ClientMethod selectWidgetType(key) [ Language = javascript ]
{
}

/// Get info on the selected widget.
ClassMethod GetWidgetInfo(pKey As %String, pInfo As %ZEN.proxyObject) As %String [ ZenMethod ]
{
}

/// Return JSON array of widget types.<br/>
Method GetWidgetTypeList(ByRef pParameters, Output pMetaData, Output pData) As %Status
{
}

}
