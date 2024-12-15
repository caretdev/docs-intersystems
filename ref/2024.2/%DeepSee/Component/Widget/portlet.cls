/// A specialized DeepSee Dashboard widget that displays a user-defined "portlet".
/// A portlet serves users defined HTML or SVG content that is displayed within the widge.
/// The portlet type is specified by the <property>subtype</property> property.<br/>
/// If you wish to create your own portlet, do NOT subclass this component; instead,
/// create a subclass of the <class>%DeepSee.Component.Portlet.abstractPortlet</class> class.
Class %DeepSee.Component.Widget.portlet Extends %DeepSee.Component.Widget.widget [ System = 4 ]
{

/// Style for widget sections
XData Style
{
}

/// Return information used to list this widget within the "widget catalog".
ClassMethod %GetCatalogInfo(Output pInfo As %List, Output pSubtypeList As %List) As %Status
{
}

/// Return information on additional "properties" supported by this widget for the given subtype.
ClassMethod %GetWidgetPropertyInfo(pSubtype As %String, Output pInfo As %List, ByRef pSettings) As %Status
{
}

/// This callback is responsible for creating the contents of the widget.
Method %OnCreateWidget(pGroup As %ZEN.Component.group) As %Status
{
}

/// This callback is called just before controls are added to the top of the widget.
/// <var>pGroup</var> is the header in which new Zen control can be added.
Method %OnCreateControls(pGroup As %ZEN.Component.group) As %Status
{
}

/// If this widget has a data source, create a data controller that
/// will serve this data to the client.<br/>
/// The controller's id is "controller" (within the scope of this widget).
Method %CreateController(pGroup As %ZEN.Component.abstractGroup, Output pController As %ZEN.Auxiliary.abstractController) As %Status
{
}

/// Called when page is loaded or widget is resized.
ClientMethod adjustContentSize(load, width, height) [ Language = javascript ]
{
}

/// Notification that a filter has changed.
ClientMethod onApplyFilters(refresh) [ Language = javascript ]
{
}

/// If this widget contains a data controller, return it.
/// This allows for generic capabilities in this base class.
ClientMethod getDataController() [ Language = javascript ]
{
}

/// Export current query to excel
ClientMethod exportExcel() [ Language = javascript ]
{
}

/// Export current query to pdf.
/// If we are in chart mode, export the chart.
ClientMethod exportPDF() [ Language = javascript ]
{
}

}
