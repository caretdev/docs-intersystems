/// This component draws a dynamic view box based on executing
/// a user-provided callback method.
Class %ZEN.Component.dynaView Extends component [ Deprecated, System = 3 ]
{

/// How to draw the contents of this view.
Property viewType As %ZEN.Datatype.string(VALUELIST = ",details,list") [ InitialExpression = "list" ];

/// Number of rows to display for list mode.
/// Default value is 5.
Property rows As %ZEN.Datatype.integer(MINVAL = 1) [ InitialExpression = 5 ];

/// Index number (0-based) of current selection.
Property selectedIndex As %ZEN.Datatype.integer(XMLPROJECTION = "none") [ InitialExpression = -1 ];

/// User-defined set of parameters. These values are passed on
/// to the user callback function that provides the contents of
/// this view. Typically this is used to hold search parameters
/// (such as current directory for a directory viewer).
Property parameters As array Of %ZEN.Auxiliary.parameter(XMLKEYNAME = "paramName", XMLNAME = "parameter", XMLPROJECTION = "ELEMENT");

/// Text (display) value of current item within the view.
/// Do not access this directly; use getProperty('text') instead.
Property text As %ZEN.Datatype.string(XMLPROJECTION = "none");

/// Logical value of current item within the view.
/// Do not access this directly; use getProperty('value') instead.
Property value As %ZEN.Datatype.string(XMLPROJECTION = "none");

/// onclick event handler:
/// If defined, this event is fired when
/// the user clicks on an item
Property onclick As %ZEN.Datatype.eventHandler;

/// If defined, this event is fired when the user clicks on one of the table headers
Property onclickHeader As %ZEN.Datatype.eventHandler;

/// onchange event handler:
/// If defined, this event is fired when the user selects a new item within the view.
Property onchange As %ZEN.Datatype.eventHandler;

/// ondblclick event handler:
/// If defined, this event is fired when
/// the user double-clicks on an item
Property ondblclick As %ZEN.Datatype.eventHandler;

/// onselect event handler:
/// If defined, this event is fired when the user selects an item
/// by either pressing the Enter key or double-clicking.
Property onselect As %ZEN.Datatype.eventHandler;

/// Name of Server-side callback method to call to create the
/// data used for this view.<br>
/// This must be the name of a server-only method in the page
/// class that contains this view component.
Property OnGetViewContents As %ZEN.Datatype.delegator(FORMALSPEC = "&pParms:%String,*pContents:%String,*pHeaders:%String", RETURNTYPE = "%Status");

/// If present, this is the number of items in the dynaView.
Property itemCount As %ZEN.Datatype.integer(XMLPROJECTION = "none", ZENSETTING = 0) [ InitialExpression = 0 ];

/// defines style sheet used by this component.
XData Style
{
}

/// Draw innerHTML for this component (without enclosing div).
Method %DrawHTML()
{
}

/// Get an array (<var>pContents</var>) containing contents of
/// the view box.<br>
/// This array is subscripted by item number; It is assumed
/// that there are no gaps in this array.
/// Each element within the array is a $List of the form:<br>
/// $LB(text,value,icon,[addition cols])<br>
/// Additional columns are displayed in "details" mode.
/// <var>pHeaders</var> should contain the labels used for the
/// columns displayed in "details" mode. For example:<br>
/// pHeaders(1)="Name"  // label for 'text' column
/// pHeaders(2)="Size"  // label for 1st extra column, etc.
Method %GetViewContents(ByRef pContents As %String, ByRef pHeaders As %String) As %Status
{
}

/// Initialize additional client-side values
ClientMethod onCreate() [ Language = javascript ]
{
}

/// Select the specified item given its index number (0-based).
/// If scroll is true, scroll new item into view.
ClientMethod selectItem(idx, scroll) [ Language = javascript ]
{
}

ClientMethod headerClicked(headerName) [ Language = javascript ]
{
}

/// User clicked on an item.
ClientMethod itemClicked(idx) [ Language = javascript ]
{
}

/// User double-clicked on an item.
ClientMethod itemDblClicked(idx) [ Language = javascript ]
{
}

/// Move to a new item in the dynaView. <var>dir</var> is "up","down","left","right"
/// Returns true if move was successful.
ClientMethod moveToItem(dir) [ Language = javascript ]
{
}

/// Client-side method to input focus to this control.
ClientMethod focus() [ Language = javascript ]
{
}

/// Focus passed to the invisible edit control.
ClientMethod dvKeyFocus() [ Language = javascript ]
{
}

/// Focus taken from the invisible edit control.
ClientMethod dvKeyBlur() [ Language = javascript ]
{
}

/// Process keydown event within the invisible edit control.
ClientMethod dvKeyDownHandler(evt) [ Language = javascript ]
{
}

/// Process keypress event within the invisible edit control.
ClientMethod dvKeyPressHandler(evt) [ Language = javascript ]
{
}

/// Set the value of a named property.<br>
ClientMethod setProperty(property, value, value2) [ Language = javascript ]
{
}

}
