/// A specialized DeepSee Dashboard widget that displays a worksheet.
Class %DeepSee.Component.Widget.worksheet Extends %DeepSee.Component.Widget.widget [ System = 4 ]
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

/// This callback is called just before controls are added to the top of the widget.
/// <var>pGroup</var> is the header in which new Zen control can be added.
Method %OnCreateControls(pGroup As %ZEN.Component.group) As %Status
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

/// Export to pdf.
ClientMethod exportPDF() [ Language = javascript ]
{
}

/// Get content object for JSON provider.
ClassMethod GetWorksheetContent(ByRef pParameters, Output pObject As %RegisteredObject) As %Status
{
}

/// Return an array of row descriptors (or null).
ClientMethod getRowDescriptors() [ Language = javascript ]
{
}

/// Return an array of column descriptors (or null).
ClientMethod getColumnDescriptors() [ Language = javascript ]
{
}

/// Controller API
ClientMethod getDimSize(dim) [ Language = javascript ]
{
}

/// dataSet API
/// Get the label at position n (0-based) in the given
/// dimension (1,2, or 3).
ClientMethod getLabel(n, dim) [ Language = javascript ]
{
}

/// dataSet API
/// Return the data contained in the specified location.
/// Location is 0-based;
ClientMethod getData(d1, d2, d3) [ Language = javascript ]
{
}

/// dataBag API
/// Get a data value, by property name, from this dataController.
ClientMethod getDataByName(prop, series) [ Language = javascript ]
{
}

/// Given a 0-based index, return the corresponding property name.
ClientMethod getPropertyName(n) [ Language = javascript ]
{
}

/// Notification from the dataGrid.
ClientMethod notifyController(source, reason, prop, value, row) [ Language = javascript ]
{
}

/// Get the json-supplied data model.
ClientMethod getModel() [ Language = javascript ]
{
}

/// Get the grid control.
ClientMethod getGrid() [ Language = javascript ]
{
}

/// Apply saved attributes to the grid component.
ClientMethod applyModelToGrid() [ Language = javascript ]
{
}

/// Apply the current filters to this widget.
ClientMethod applyFilters(refresh) [ Internal, Language = javascript ]
{
}

/// Get cell override.
ClientMethod getCellOverride(row, col) [ Language = javascript ]
{
}

}
