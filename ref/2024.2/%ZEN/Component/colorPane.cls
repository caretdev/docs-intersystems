/// Color selection pane.
/// This component displays a grid containing various colored
/// cells.
Class %ZEN.Component.colorPane Extends component [ Deprecated, System = 3 ]
{

/// Current color selection.
Property value As %ZEN.Datatype.string [ InitialExpression = "#FFFFFF" ];

/// Which view of the color cube is showing: 1,2, or 3.
Property face As %ZEN.Datatype.integer [ InitialExpression = 1 ];

/// Current selected slice: 0-based.
Property currSlice As %ZEN.Datatype.integer [ InitialExpression = 0 ];

/// Row of current selected cell: 0-based.
Property currRow As %ZEN.Datatype.integer [ InitialExpression = 0 ];

/// Column of current selected cell: 0-based.
Property currCol As %ZEN.Datatype.integer [ InitialExpression = 0 ];

/// onchange event handler:
/// This event is fired when the user selects a new color.
Property onchange As %ZEN.Datatype.eventHandler;

/// ondblclick event handler:
/// This event is fired when the mouse is double-clicked.
Property ondblclick As %ZEN.Datatype.eventHandler;

/// defines style sheet used by this component
XData Style
{
}

Method %DrawHTML()
{
}

/// Client-method to draw contents of this pane.
ClientMethod renderContents() [ Language = javascript ]
{
}

/// Client-method to draw contents of the current color indicator.
ClientMethod renderIndicator() [ Language = javascript ]
{
}

/// User click on a cell.
ClientMethod selectCell(r, c) [ Language = javascript ]
{
}

/// User has entered a new rgb value.
ClientMethod rgbChanged() [ Language = javascript ]
{
}

/// User click on a new slice
ClientMethod selectSlice(slice) [ Language = javascript ]
{
}

/// User click on a rotate button
ClientMethod rotateCube(direction) [ Language = javascript ]
{
}

/// This client event, if present, is fired when the page is loaded.
ClientMethod onloadHandler() [ Language = javascript ]
{
}

/// Handler for double-clicks.
ClientMethod dblclickHandler() [ Language = javascript ]
{
}

/// Set the value of a named property.
ClientMethod setProperty(property, value, value2) [ Language = javascript ]
{
}

/// Client-side method to set the value associated with this control.
ClientMethod setValue(value) [ Final, Language = javascript ]
{
}

/// Client-side method to return the value associated with this control.
ClientMethod getValue() As %String [ Final, Language = javascript ]
{
}

}
