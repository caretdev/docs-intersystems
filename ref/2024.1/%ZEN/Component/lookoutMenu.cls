/// This is a specialized type of tabGroup that implements
/// a "lookout" menu: a set of buttons stacked atop one another,
/// one for each tab. Clicking on a button makes the contents
/// of the tab visible beneath the button.
Class %ZEN.Component.lookoutMenu Extends tabGroup [ Deprecated, System = 3 ]
{

Parameter DEFAULTCELLVALIGN = "top";

Parameter DEFAULTENCLOSINGCLASS = "lookoutMenu";

/// Indicates whether this menu is expanded (children visible)
/// or contracted (children not visible).
Property expanded As %ZEN.Datatype.boolean [ InitialExpression = 1 ];

/// Indicates whether this menu supports the ability to expand and contract.
Property expandable As %ZEN.Datatype.boolean [ InitialExpression = 0 ];

/// onexpand event handler:
/// If defined and this menu is expandable, this event is fired just
/// before the children of this menu are made visible.
Property onexpand As %ZEN.Datatype.eventHandler;

/// oncontract event handler:
/// If defined and this menu is expandable, this event is fired just
/// before the children of this menu are hidden.
Property oncontract As %ZEN.Datatype.eventHandler;

/// defines style sheet used by this component
XData Style
{
}

Method %DrawHTML()
{
}

/// Set the height and width of this menu.
/// This sets the height and width of the enclosing div
/// that contains the menu. The size values should be integers without
/// "px" appended to them.
ClientMethod setSize(width, height) [ Language = javascript ]
{
}

/// Adjust the position of tabs that are not currently visible.  Note that the properties of width
/// and height for the component take precidence over the CSS attributes of the same name should
/// the assigned values differ for any reason.
///
ClientMethod adjustTabsOffscreen() [ Language = javascript ]
{
}

/// Adjust the position of the tabs.
ClientMethod adjustTabs() [ Language = javascript ]
{
}

/// Adjust the position of the visible tabs.
ClientMethod reallyAdjustTabs() [ Language = javascript ]
{
}

/// Class-specific notification that a new tab has been selected.
ClientMethod onshowTabHandler(tabno) [ Language = javascript ]
{
}

/// Called by tabs of this group to notify that they have
/// become disabled.
ClientMethod tabDisabledHandler(tab) [ Language = javascript ]
{
}

/// This client event, if present, is fired when the page is loaded.
ClientMethod onloadHandler() [ Language = javascript ]
{
}

/// onclick handler for expander grip.
ClientMethod gripClickHandler() [ Language = javascript ]
{
}

/// Returns the current expanded state of this menu.
ClientMethod getExpanded() [ Language = javascript ]
{
}

/// Set the expanded state of this menu.
ClientMethod setExpanded(flag) [ Language = javascript ]
{
}

/// Set the value of a named property.
ClientMethod setProperty(property, value, value2) [ Language = javascript ]
{
}

/// Called after refreshContents.
ClientMethod onRefreshContents() [ Internal, Language = javascript ]
{
}

}
