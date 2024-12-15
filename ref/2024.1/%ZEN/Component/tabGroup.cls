/// A specialized group used to enclose a set of overlayed <i>tabs</i>.
/// One tab is visible at a time.
/// This group does not support standard layout as it simply overlays
/// each of its children.
Class %ZEN.Component.tabGroup Extends group [ Deprecated, System = 3 ]
{

/// Number (1-based) of current tab displayed within tabGroup.
Property currTab As %ZEN.Datatype.integer(ZENEXPRESSION = 1) [ InitialExpression = 1 ];

/// If true, display a set of tab buttons along the top of this group.
/// The default is false.
Property showTabBar As %ZEN.Datatype.boolean [ InitialExpression = 0 ];

/// If true (the default), render the div containing the tab's bodys. If false, the content
/// will still be rendered, but not contained in a div.
Property showBody As %ZEN.Datatype.boolean [ InitialExpression = 1 ];

/// If true, remember most recent tab in a session cookie.
Property remember As %ZEN.Datatype.boolean [ InitialExpression = 0 ];

/// onshowTab event handler:
/// This event is fired when a new tab is made visible.
Property onshowTab As %ZEN.Datatype.eventHandler;

/// onhideTab event handler:
/// This event is fired when a new tab is hidden.
Property onhideTab As %ZEN.Datatype.eventHandler;

/// defines style sheet used by this component
XData CSS3Style
{
}

/// defines style sheet used by this component
XData Style
{
}

Method %DrawHTML()
{
}

/// Notification that children have been added or removed from this group.
Method %OnMutateChildren(pAdd As %Boolean) As %Boolean
{
}

/// Return index (1-based) of current tab within the tabGroup.
ClientMethod getCurrTabNo() [ Language = javascript ]
{
}

/// Return number of tabs within the tabGroup.
ClientMethod getTabCount() [ Language = javascript ]
{
}

/// Return the HTML DIV element for the tab body.
ClientMethod getTabBodyElement() [ Language = javascript ]
{
}

/// Return the HTML TABLE element for the tab bar.
ClientMethod getTabBarElement() [ Language = javascript ]
{
}

/// Set the size of the tab body and all tabs.
/// <var>width</var> and <var>height</var> are in pixels.<br/>
/// You must override the CSS min-height for the tabBody for this to be effective.
ClientMethod setBodySize(height, width) [ Language = javascript ]
{
}

/// Notification to subclasses that a child has been added or removed
/// from this group.
ClientMethod childrenMutated() [ Language = javascript ]
{
}

/// Look for the given tab object within this tabGroup's set of
/// tabs and return its 1-based index number.<br>
/// Returns -1 if unable to find the tab.
ClientMethod getTabIndex(tab) [ Language = javascript ]
{
}

/// Server-only method: Find the specified tab by index number (1-based).
Method %GetTab(pIndex As %Integer) [ CodeMode = expression ]
{
}

/// Server-side method to set current tab of this tabGroup
/// to <var>pTab</var>.
Method %SetCurrTab(pTab As %ZEN.Component.tab)
{
}

/// Display the specified tab (given its 1-based tab number)
/// and hide the current tab.
ClientMethod showTab(tabno) [ Language = javascript ]
{
}

/// IE does not properly support the min-height CSS property.  This routine forces a
/// correction to the size of the tabBody should it be rendered too small.
ClientMethod ieResizeBody() [ Language = javascript ]
{
}

/// Called after refreshContents.
ClientMethod onRefreshContents() [ Language = javascript ]
{
}

/// This client event, if present, is fired when the page is loaded.
ClientMethod onloadHandler() [ Language = javascript ]
{
}

/// Class-specific notification that a new tab has been selected.
/// Implemented by subclasses.
ClientMethod onshowTabHandler(tabno) [ Abstract, Language = javascript ]
{
}

/// Called by tabs of this group to notify that they have
/// changed their disabled state.
ClientMethod tabDisabledHandler(tab) [ Language = javascript ]
{
}

/// Class-specific notification that a tab has been hidden.
/// Implemented by subclasses.
ClientMethod onhideTabHandler(tabno) [ Abstract, Language = javascript ]
{
}

/// Display the next tab in the tabGroup.
ClientMethod showNextTab(skipDisabled) [ Language = javascript ]
{
}

/// Display the previous tab in the tabGroup.
ClientMethod showPreviousTab(skipDisabled) [ Language = javascript ]
{
}

/// Set the value of a named property.<br>
/// Assume that subclasses that simply wrap HTML controls
/// have named the control 'control' or else have overridden
/// this method.
ClientMethod setProperty(property, value, value2) [ Language = javascript ]
{
}

}
