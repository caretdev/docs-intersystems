/// SVG tabBar control
Class %ZEN.SVGComponent.tabBar Extends svgComponent [ Deprecated, System = 3 ]
{

/// height of the total tab header
Property height As %ZEN.Datatype.length [ InitialExpression = 32 ];

/// the maximum width of the tabs (from bottom to bottom) as multiples of the height
Property maxOneTabWidth As %ZEN.Datatype.integer [ InitialExpression = 200 ];

/// the index of the selected tab
Property selectedIndex As %ZEN.Datatype.integer [ InitialExpression = 0 ];

/// The captions for the tabs. The first character is the string separator.
Property tabCaptions As %ZEN.Datatype.caption;

/// The method to call after the selected tab is changed
Property onChange As %ZEN.Datatype.eventHandler;

/// is this property is true, then users are allowed to add and remove tabs.
Property dynamic As %ZEN.Datatype.boolean;

/// The method to call after a tab is deleted
Property onDeleteTab As %ZEN.Datatype.eventHandler;

/// The method to call after a new tab is added
Property onNewTab As %ZEN.Datatype.eventHandler;

XData SVGStyle
{
}

/// Render the inner SVG contents of this component.
ClientMethod renderContents() [ Language = javascript ]
{
}

ClientMethod drawTabs() [ Language = javascript ]
{
}

ClientMethod drawOneTab(index, tabWidth, isActive) [ Language = javascript ]
{
}

ClientMethod drawPlus(tabWidth) [ Language = javascript ]
{
}

ClientMethod buttonMouseOver(index) [ Language = javascript ]
{
}

ClientMethod buttonMouseOut(index) [ Language = javascript ]
{
}

ClientMethod buttonDeleteClicked(index) [ Language = javascript ]
{
}

ClientMethod buttonNewClicked(index) [ Language = javascript ]
{
}

ClientMethod tabClicked(index) [ Language = javascript ]
{
}

/// Set the value of a named property.
ClientMethod setProperty(property, value, value2) [ Language = javascript ]
{
}

}
