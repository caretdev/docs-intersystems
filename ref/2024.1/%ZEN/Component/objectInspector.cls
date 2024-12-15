/// Displays contents of a given client component.<br>
/// This is used by ZEN tools.
Class %ZEN.Component.objectInspector Extends dynaGrid [ Deprecated, SqlRowIdPrivate, System = 3 ]
{

/// Subclasses can set this to change default css class used for grids.
Parameter DEFAULTGRIDCLASS = "inspectorGrid";

Parameter DEFAULTGRIDLABEL = "Property";

Parameter DEFAULTROWLABELWIDTH = 150;

/// If true show all properties of component, else just show
/// settable properties.
Property showAll As %ZEN.Datatype.boolean [ InitialExpression = 0 ];

/// If true, values in the inspector cannot be edited.
Property readOnly As %ZEN.Datatype.boolean [ InitialExpression = 0 ];

/// If true, then the id property can be edited.
Property idEditable As %ZEN.Datatype.boolean [ InitialExpression = 0 ];

/// onselect event handler:
/// This event is fired when the user selects a property in the inspector.
Property onselect As %ZEN.Datatype.eventHandler;

/// onedit event handler:<br>
/// This event is fired when the user presses the edit property button in the inspector.
/// If not present, then the default action of launching the <class>%ZEN.Dialog.componentValueEditor</class>
/// popup window is carried out.
Property onedit As %ZEN.Datatype.eventHandler;

/// Client property that holds name of current property.
Property currMember As %ZEN.Datatype.string(XMLPROJECTION = "none");

/// Client property that holds type of current property.
Property currMemberType As %ZEN.Datatype.string(XMLPROJECTION = "none");

/// defines style sheet used by this component
XData Style
{
}

/// Initialize additional client-side variables
ClientMethod onCreate() [ Language = javascript ]
{
}

/// Return current object.
ClientMethod getCurrObject() [ Language = javascript ]
{
}

/// Update the values displayed within the inspector.
ClientMethod update() [ Language = javascript ]
{
}

/// Make given component the current inspector target.
ClientMethod setCurrObject(obj) [ Language = javascript ]
{
}

/// Return name of selected object member.
ClientMethod getCurrMember() [ Language = javascript ]
{
}

/// Return type of selected object member.
ClientMethod getCurrMemberType() [ Language = javascript ]
{
}

/// Set selected object member (given its name).
ClientMethod setCurrMember(name) [ Language = javascript ]
{
}

/// Redraw contents of object inspector
ClientMethod renderInspector() [ Language = javascript ]
{
}

/// User click on edit member button within inspector.
ClientMethod editMember(name) [ Language = javascript ]
{
}

/// This client event, if present, is fired when a popup page has specified
/// this component as its parent and fires an action.<br>
/// <var>popupName</var> is the name of the popup window sending the action.<br>
/// <var>action</var> is the name of the action.<br>
/// <var>value</var> is the value associated with the action.<br>
ClientMethod onPopupAction(popupName, action, value) [ Language = javascript ]
{
}

/// Apply a value to the target object.
ClientMethod applyValue(property, value) [ Language = javascript ]
{
}

/// Return the dataSet object associated with this grid.
/// The inspector will serve as its own dataSet.
ClientMethod getDataSet() [ Language = javascript ]
{
}

/// Get the properties and values from the target object.
ClientMethod acquireData() [ Language = javascript ]
{
}

/// Get the string to display for a given value.
ClientMethod getDisplayValue(val) [ Language = javascript ]
{
}

/// Return the number of dimensions in the dataSet.
ClientMethod getDimensions() [ Language = javascript ]
{
}

/// Return the number of items in the specified dimension
/// (dim is 1,2, or 3).
ClientMethod getDimSize(dim) [ Language = javascript ]
{
}

/// Get the label at position n (0-based) in the given
/// dimension (1,2, or 3).
ClientMethod getLabel(n, dim) [ Language = javascript ]
{
}

/// Return the data contained in the specified location.
/// Location is 0-based;
ClientMethod getData(d1, d2, d3) [ Language = javascript ]
{
}

/// Set the data contained in the specified location.
/// Location is 0-based;
ClientMethod setData(value, d1, d2, d3) [ Language = javascript ]
{
}

/// Set the value of grid cell; Row and column are 1-based.
ClientMethod setCellValue(value, r, c) [ Language = javascript ]
{
}

/// If this method is defined, and returns true, then a button is
/// displayed within the selected cell.
ClientMethod showCellButton(r, c) [ Language = javascript ]
{
}

/// Return an object containing display information for column <var>c</var>
/// (0-based).
ClientMethod getColumnInfo(c) [ Language = javascript ]
{
}

/// Notification that user is about to move to a new cell.
ClientMethod selectCellHandler(r, c) [ Language = javascript ]
{
}

/// Prepares data for display within a given cell.
/// If there is an <method>ondrawcell</method> callback,
/// it is invoked. This callback has a chance to chance the contents
/// that will be displayed within the cell.
ClientMethod getCellContents(data, r, c) [ Language = javascript ]
{
}

/// Return an object containing display information for row <var>r</var>
/// (0-based).
ClientMethod getRowInfo(r) [ Language = javascript ]
{
}

/// Find the property name associated with row <var>r</var> (0-based).
ClientMethod getRowMemberName(r) [ Language = javascript ]
{
}

/// Find what type of data should be in row <var>r</var> (0-based).
ClientMethod getRowType(r) [ Language = javascript ]
{
}

/// Return the HTML that renders the cell editor for the given cell.
/// <var>r</var> and <var>c</var> are 1-based.
/// Override to provide custom-behavior.
ClientMethod getEditCellHTML(r, c, value) [ Language = javascript ]
{
}

/// User double click on a cell.
ClientMethod dblClickHandler() [ Language = javascript ]
{
}

}
