/// A specialized DeepSee Dashboard widget that displays a calendar.
Class %DeepSee.Component.Widget.calendar Extends %DeepSee.Component.Widget.widget [ System = 4 ]
{

/// Style for widget sections
XData Style
{
}

/// Return information used to list this widget within the "widget catalog".
ClassMethod %GetCatalogInfo(Output pInfo As %List, Output pSubtypeList As %List) As %Status
{
}

/// This callback is responsible for creating the contents of the widget.
Method %OnCreateWidget(pGroup As %ZEN.Component.group) As %Status
{
}

/// Called when page is loaded or widget is resized.
ClientMethod adjustContentSize(load, width, height) [ Language = javascript ]
{
}

/// User has selected a different view in the calendar.
ClientMethod changeViewHandler() [ Language = javascript ]
{
}

/// Apply the given filter to this widget.
ClientMethod applyFilter(name, value) [ Language = javascript ]
{
}

}
