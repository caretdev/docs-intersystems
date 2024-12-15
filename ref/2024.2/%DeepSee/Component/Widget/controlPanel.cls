/// A specialized DeepSee Dashboard widget that displays controls without attached content. The widget does not
/// require a dataSource to allow definition of controls. Some controls themselves require a dataSource to add information,
/// for example the filter controls.
Class %DeepSee.Component.Widget.controlPanel Extends %DeepSee.Component.Widget.widget [ System = 4 ]
{

/// This widget can override the title bar display.
Property showTitleBar As %ZEN.Datatype.boolean [ InitialExpression = 1 ];

/// Specify whether to display the separator between the toolbar and widget content
Property showToolbarBottomBorder As %ZEN.Datatype.boolean [ InitialExpression = 0 ];

/// Style for widget sections
XData Style
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

/// This callback is responsible for creating the contents of the widget.
Method %OnCreateWidget(pGroup As %ZEN.Component.group) As %Status
{
}

/// If this widget has a data source, create a data controller that
/// will serve this data to the client.<br/>
/// The controller's id is "controller" (within the scope of this widget).
Method %CreateController(pGroup As %ZEN.Component.abstractGroup, Output pController As %ZEN.Auxiliary.abstractController) As %Status
{
}

Method %OnAddToPageBefore() As %Status
{
}

ClientMethod navSelectItem(key, value, final) [ Language = javascript ]
{
}

ClientMethod extractTDNodes(tableRoot, tdArray) [ Internal, Language = javascript ]
{
}

/// Called when page is loaded or widget is resized.
ClientMethod adjustContentSize(load, width, height) [ Language = javascript ]
{
}

/// Apply the given filter to this widget.
ClientMethod applyFilter(name, value) [ Language = javascript ]
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

/// Test if this widget is ready to be resized.
ClientMethod isReady() [ Internal, Language = javascript ]
{
}

/// This callback is called just before controls are added to the top of the widget.
/// <var>pGroup</var> is the header in which new Zen control can be added.
Method %OnCreateControls(pGroup As %ZEN.Component.group) As %Status
{
}

}
