/// Pivot table controller.<br/>
/// This component is linked to a pivotTable and displays a set of lists that
/// can be used to specify the data that is to be plotted by the pivotTable (such
/// as rows and columns).<br/>
Class %DeepSee.Component.pivotController Extends %ZEN.Component.component [ System = 3 ]
{

Parameter NAMESPACE = "http://www.intersystems.com/deepsee";

/// Set this to the correct domain.
Parameter DOMAIN = "%DeepSee";

/// id of <class>%DeepSee.Component.pivotTable</class> component this
/// controller is associated with.<br>
/// Note: if this component is placed within a composite element, then the
/// pivotTable must be within the same composite element.
Property pivotTableId As %ZEN.Datatype.id(COMPONENTTYPE = "pivotTable");

Property miniAnalyzer As %ZEN.Datatype.boolean [ InitialExpression = 0 ];

/// Name of column with selected item.
Property selectedColumn As %ZEN.Datatype.string(XMLPROJECTION = "none");

/// Path (idx1_idx2_idx3) of selected item or ''.
Property selectedItem As %ZEN.Datatype.string(XMLPROJECTION = "none");

Property rowsHeight As %ZEN.Datatype.string(XMLPROJECTION = "none") [ InitialExpression = "75px" ];

/// defines style sheet used by this component
XData Style
{
}

Method %DrawHTML()
{
}

/// Return the pivotTable this controller is currently connected to.
ClientMethod getPivotTable() [ Language = javascript ]
{
}

/// Client-side method to render this control.
ClientMethod renderContents() [ Language = javascript ]
{
}

/// Get html for the fields column.
ClientMethod getFieldsHTML() [ Internal, Language = javascript ]
{
}

/// Get html for the rows column.
ClientMethod getRowsHTML() [ Internal, Language = javascript ]
{
}

/// Get html for the columns column.
ClientMethod getColumnsHTML() [ Internal, Language = javascript ]
{
}

/// Get html for the measures column.
ClientMethod getMeasuresHTML() [ Internal, Language = javascript ]
{
}

/// Get html for the filters column.
ClientMethod getFiltersHTML() [ Internal, Language = javascript ]
{
}

/// Get html to create an icon.
ClientMethod getIconHTML(id, enabled, imgId, help, click) [ Internal, Language = javascript ]
{
}

/// Get html to create an icon with a dropdown menu.
ClientMethod getDropdownIconHTML(id, enabled, imgId, help, options) [ Internal, Language = javascript ]
{
}

/// Fill an array of HTML with the contents of the header area.
ClientMethod getHeaderHTML() [ Internal, Language = javascript ]
{
}

/// Toggle the drillThrough mode of the table.
ClientMethod drillThrough() [ Internal, Language = javascript ]
{
}

/// Get drill level HTML.
ClientMethod getDrillLevelHTML() [ Internal, Language = javascript ]
{
}

/// Fill an array of HTML with the contents of the given level list.
ClientMethod getLevelHTML(which, dropMsg, array, drillLevel, depth, parent) [ Internal, Language = javascript ]
{
}

/// Set the value of a named property.
ClientMethod setProperty(property, value, value2) [ Language = javascript ]
{
}

/// Called by the associated pivotTable when it changes state.
ClientMethod updateState(which) [ Internal, Language = javascript ]
{
}

/// Update a toolbar icon.
ClientMethod updateIcon(id, enabled, image, hlp) [ Internal, Language = javascript ]
{
}

/// Update state of buttons in toolbar.
ClientMethod updateToolbar() [ Internal, Language = javascript ]
{
}

/// Click handler for add button.
ClientMethod addLevel(which) [ Language = javascript ]
{
}

/// Click handler for remove level button.
ClientMethod removeLevel(which, key) [ Language = javascript ]
{
}

/// Click handler for axis options button.
ClientMethod setAxisOptions(which) [ Language = javascript ]
{
}

/// Click handler for filter options button.
ClientMethod setFilterOptions(idx) [ Language = javascript ]
{
}

/// Click handler for level options button.
ClientMethod setLevelOptions(which, key) [ Language = javascript ]
{
}

/// This client event is fired when the a popup page launched from this component fires an action.
ClientMethod onPopupAction(popupName, action, value) [ Language = javascript ]
{
}

/// Click handler for drill level.
ClientMethod gotoDrillLevel(idx) [ Language = javascript ]
{
}

/// Click handler for drill level remove.
ClientMethod removeDrillLevel(idx) [ Language = javascript ]
{
}

/// Click handler for clear button.
ClientMethod clearLevels(which) [ Language = javascript ]
{
}

/// Click handler for add selected item button.
/// If nothing selected, adds a space.
ClientMethod addBlankLevel(which) [ Language = javascript ]
{
}

/// Test if a spec can be used as a filter. Return '' if ok else return an error message.
ClientMethod isValidFilter(dimName, value) [ Language = javascript ]
{
}

/// This client event, if present, is fired when the page is loaded.
ClientMethod onloadHandler() [ Language = javascript ]
{
}

/// Drop handler. This is called when an item is dropped onto the controller.
ClientMethod dropStartHandler(dragData) [ Language = javascript ]
{
}

/// Hide the message box.
ClientMethod hideMessage() [ Language = javascript ]
{
}

/// Display the pivot status message box.
ClientMethod showMessage(pivot, msg, pct, listing, units) [ Language = javascript ]
{
}

/// Select the given item.
ClientMethod selectItem(which, item) [ Language = javascript ]
{
}

/// Enable the given item.
ClientMethod enableItem(evt, which, item) [ Language = javascript ]
{
}

/// Move the current item up.
ClientMethod moveItemUp(which) [ Language = javascript ]
{
}

/// Move the current item down.
ClientMethod moveItemDown(which) [ Language = javascript ]
{
}

/// Test if an item can move up.
ClientMethod itemCanMoveUp(which, key) [ Language = javascript ]
{
}

/// Test if an item can move down.
ClientMethod itemCanMoveDown(which, key) [ Language = javascript ]
{
}

/// Copy pivot level item.
ClientMethod copyItem() [ Language = javascript ]
{
}

/// Paste pivot level item.
ClientMethod pasteItem(where) [ Language = javascript ]
{
}

/// Reset the pivot table.
ClientMethod resetTable() [ Language = javascript ]
{
}

/// Build the list of icons used by this component.
ClientMethod buildIconList() [ Language = javascript ]
{
}

/// Return the url of the icon with the given id.
ClientMethod getIcon(id) [ Language = javascript ]
{
}

/// User pressed on the swap button.
ClientMethod swapRows() [ Internal, Language = javascript ]
{
}

/// User click on "join" arrow.
ClientMethod addChildToElement(which, key) [ Internal, Language = javascript ]
{
}

}
