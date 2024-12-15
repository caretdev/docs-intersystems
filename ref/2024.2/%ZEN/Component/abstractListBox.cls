/// This is an abstract base class that provides common functionality
/// to the various listBox controls.<br>
Class %ZEN.Component.abstractListBox Extends control [ Abstract, Deprecated, System = 3 ]
{

Parameter DEFAULTCONTROLCLASS = "listBox";

/// Index (0-based) of current selected option.<br>
/// This is the ordinal position of the current item within the item list.
Property selectedIndex As %ZEN.Datatype.integer [ InitialExpression = -1 ];

/// If defined, override default width of listBox.<br>
/// This is a CSS length value, e.g., "400px"
Property listWidth As %ZEN.Datatype.length;

/// If defined, override default height of listBox.<br>
/// This is a CSS length value, e.g., "400px"
Property listHeight As %ZEN.Datatype.length;

/// If true, allow this component to display horizontal scroll bars
/// if they are needed (and its current CSS style specifies them).
Property hzScroll As %ZEN.Datatype.boolean [ InitialExpression = 0 ];

/// Text (display) value of current item.
/// Do not access this directly; use getProperty('text') instead.
Property text As %ZEN.Datatype.string(XMLPROJECTION = "none");

/// defines style sheet used by this component
XData Style
{
}

/// Draw HTML for this listBox.
/// Note that the actual value is placed in a hidden control.
Method %DrawHTML()
{
}

/// Server-side method to provide contents of the list box.
/// This is implemented by a subclass. If not implemented,
/// then the listbox will render its contents on the client.
Method %DrawListContents()
{
}

/// Lookup up the display value for the listBox given
/// a logical value.<br>
/// This is called when the control is initially drawn.<br>
/// Note: this is implemented as an expression method; subclasses are
/// free to implement this as a regular method.
Method %GetDisplayValue(pValue As %String) As %String [ CodeMode = expression ]
{
}

/// Initialize additional client-side values
ClientMethod onCreate() [ Language = javascript ]
{
}

/// Client-side method to input focus to this control.
ClientMethod focus() [ Language = javascript ]
{
}

/// Focus passed to the invisible edit control.
ClientMethod lbKeyFocus() [ Language = javascript ]
{
}

/// Focus taken from the invisible edit control.
ClientMethod lbKeyBlur() [ Language = javascript ]
{
}

/// Process keydown event within the invisible edit control.
ClientMethod lbKeyDownHandler(evt) [ Language = javascript ]
{
}

/// Process keypress event within the invisible edit control.
ClientMethod lbKeyPressHandler(evt) [ Language = javascript ]
{
}

/// Return HTML element for given list item number.
ClientMethod getItemEl(idx) [ Language = javascript ]
{
}

/// Move to a new item in the listBox. <var>dir</var> is "up","down","left","right"
/// Returns true if move was successful.
ClientMethod moveToItem(dir) [ Language = javascript ]
{
}

/// User has selected an item in the list box.
ClientMethod selectItem(idx) [ Language = javascript ]
{
}

ClientMethod deferredScrollIntoView() [ Internal, Language = javascript ]
{
}

/// User has clicked an item in the list box.
ClientMethod clickItem(idx) [ Language = javascript ]
{
}

/// User has double-clicked an item in the list box.
ClientMethod dblClickItem(idx) [ Language = javascript ]
{
}

/// Mouse down handler for nodes.
ClientMethod itemMouseDown(evt, idx) [ Internal, Language = javascript ]
{
}

/// Mouse up handler for nodes.
ClientMethod itemMouseUp(evt) [ Internal, Language = javascript ]
{
}

/// Default drag handler for list components.
ClientMethod dragStartHandler(dragData) [ Language = javascript ]
{
}

/// Set the value of a named property.<br>
/// Assume that subclasses that simply wrap HTML controls
/// have named the control 'control' or else have overridden
/// this method.
ClientMethod setProperty(property, value, value2) [ Language = javascript ]
{
}

/// Return number of items in list.<br>
/// This must be overridden in subclasses.
ClientMethod getOptionCount() [ Language = javascript ]
{
}

/// Return the logical value of the given item (0-based) in the list.<br>
/// This must be overridden in subclasses.
ClientMethod getOptionValue(idx) [ Language = javascript ]
{
}

/// Return the display text for the given item (0-based) in the dropdown list.<br>
/// This must be overridden in subclasses.
ClientMethod getOptionText(idx) [ Language = javascript ]
{
}

}
