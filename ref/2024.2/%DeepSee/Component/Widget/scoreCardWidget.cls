/// A specialized DeepSee Dashboard widget that displays a visual scorecard.
Class %DeepSee.Component.Widget.scoreCardWidget Extends (%DeepSee.Component.Widget.widget, %DeepSee.Component.ScoreCardContent) [ System = 4 ]
{

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

/// Called when page is loaded or widget is resized.
ClientMethod adjustContentSize(load, width, height) [ Language = javascript ]
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

/// Click handler for row in scoreCard.
ClientMethod rowClickHandler(row, value) [ Internal, Language = javascript ]
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

/// Re-arrange of a list in navigator.
ClientMethod navDataArrange(key, swap, final) [ Language = javascript ]
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
ClientMethod resetOverrides() [ Language = javascript ]
{
}

/// Return an array of current style overrides for this widget.
/// Used to save to a theme.
ClientMethod getOverrides() [ Language = javascript ]
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

/// Notification to subclasses that filter has changed.
ClientMethod onApplyFilters(refresh) [ Internal, Language = javascript ]
{
}

}
