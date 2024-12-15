/// A specialized DeepSee Dashboard widget that displays a visual meter (such as a speedometer).
/// There may be multiple meters displayed within the widget, each corresponding to a dataProperty
/// in the widget definition's dataProperty list.
Class %DeepSee.Component.Widget.meter Extends %DeepSee.Component.Widget.widget [ System = 4 ]
{

/// Number of meters displayed in this widget (set automatically).
Property meterCount As %ZEN.Datatype.integer(XMLPROJECTION = "none") [ Internal ];

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

/// Translate a subtype into a Meter class name.
Method %SubTypeToClass(pSubtype As %String) As %String [ Private ]
{
}

/// Called when page is loaded or widget is resized.
ClientMethod adjustContentSize(load, width, height) [ Language = javascript ]
{
}

/// If this widget contains a data controller, return it.
/// This allows for generic capabilities in this base class.
ClientMethod getDataController() [ Language = javascript ]
{
}

/// Return the given meter object within this widget.
ClientMethod getMeter(n) [ Language = javascript ]
{
}

/// If this widget contains a data controller, return it.
Method %GetDataController() As %ZEN.Auxiliary.abstractController
{
}

/// Return an object describing what to display for this level within the navigator.
/// Invoked from dashboard viewer.
ClientMethod navGetContentForLevel(level, key, value) [ Internal, Language = javascript ]
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

/// Change of data value in navigator.
ClientMethod navDataChange(key, value, final) [ Language = javascript ]
{
}

/// Test if there are any style overrides for this widget.
ClientMethod hasOverrides() [ Language = javascript ]
{
}

/// Reset any style overrides for this widget.
ClientMethod resetOverrides(themeOnly) [ Language = javascript ]
{
}

/// Return an array of current style overrides for this widget.
/// Used to save to a theme.
ClientMethod getOverrides() [ Language = javascript ]
{
}

/// Return the number of meters displayed within this widget.
ClientMethod getMeterCount() [ Language = javascript ]
{
}

ClientMethod newDataProperty() [ Language = javascript ]
{
}

/// Set the type of the given meter.
ClientMethod setMeterType(svg, meter, type) [ Language = javascript ]
{
}

/// Notification that this widget is selected / unselected.
ClientMethod onSetHighlight(flag) [ Internal, Language = javascript ]
{
}

/// Notification that a meter is selected.
ClientMethod meterSelected(meter) [ Internal, Language = javascript ]
{
}

/// PDF export for SVG using the svgImageProvider
ClientMethod exportPDF(printMultiple, preserveTempFiles) [ Language = javascript ]
{
}

/// This callback is called just before controls are added to the top of the widget.
/// <var>pGroup</var> is the header in which new Zen control can be added.
Method %OnCreateControls(pGroup As %ZEN.Component.group) As %Status
{
}

}
