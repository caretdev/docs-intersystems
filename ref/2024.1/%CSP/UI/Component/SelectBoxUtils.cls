/// Utility methods for "available-selected" list box components
/// If isPage = 1, the list boxes are drawn on a page, not as part of a component
Class %CSP.UI.Component.SelectBoxUtils [ Abstract, System = 3 ]
{

Parameter DOMAIN [ Internal ] = "%Utility";

Parameter avaList = "avaList";

Parameter selList = "selList";

Property avaList As %String [ InitialExpression = {..#avaList} ];

Property selList As %String [ InitialExpression = {..#selList} ];

/// This Style block contains component-specific CSS style definitions.
XData Style
{
}

ClientMethod doSelectBoxMove(flag, isPage) [ Language = javascript ]
{
}

ClientMethod doSelectBoxMoveList(from, to) [ Language = javascript ]
{
}

ClientMethod doSelectBoxMoveAll(from, to) [ Language = javascript ]
{
}

ClientMethod doSelectBoxMoveItem(list, bUp) [ Language = javascript ]
{
}

/// Clear all options from a box (except for the first, instructional one)
ClientMethod clearList(listID, isPage) [ Language = javascript ]
{
}

/// Return a delimited string of selected items
ClientMethod getSelList(delim, includeLeadingDelim, isPage) [ Language = javascript ]
{
}

/// Draw the beginning of the Available list box
Method DrawAvailableList(index As %String = "", isPage As %Boolean = 0) As %Status
{
}

/// Draw the end of the Available list box, the arrows, and the Selected list box
Method DrawSelectList(index As %String = "", isPage As %Boolean = 0, SelectedItems As %String = "") As %Status
{
}

/// Draw arrows between Available and Selected list boxes.
ClassMethod DrawArrows(index As %String = "", isPage As %Boolean = 0) As %Status
{
}

/// Draw arrows between Available and Selected list boxes.
/// Generic method used by other wizards
ClassMethod DrawArrowsOld()
{
}

/// Draw up and down arraws next to the Selected list box
/// Generic method used by other wizards
ClassMethod DrawUpArrowsOld()
{
}

}
