/// This component implements a simple Finder-like component for browsing
/// hierarchically organized data. It is similar to the original SmallTalk
/// Finder (later adopted by Mac/OS).<br/>
Class %ZEN.ComponentEx.finderPane Extends %ZEN.Component.component [ Deprecated, System = 3 ]
{

/// Localization domain
Parameter DOMAIN = "%ZEN";

/// If provided, this text is displayed as a caption
/// along the top of the finder. The text is *not*
/// HTML escaped, so that it can contain markup.
Property caption As %ZEN.Datatype.caption(ZENEXPRESSION = 1);

/// How the contents of the finder component are displayed.
Property viewType As %ZEN.Datatype.string(VALUELIST = ",icons,list,columns") [ InitialExpression = "columns" ];

/// If defined, this is a list of properties that supply the column values
/// in 'list' mode.
Property listColumns As %ZEN.Datatype.csv;

/// This is a list of numbers (0-based) indicating the current selected item(s).
/// The first number is the index in the top-most list of items;
/// the second is the index within the children of the top-most item and so on.
Property selectedList As %ZEN.Datatype.csv;

/// Width of columns in the finder when in "columns" mode.
/// The default is 200 pixels.
Property columnWidth As %ZEN.Datatype.length;

/// User-defined set of parameters. These are currently not used by the finder.
Property parameters As array Of %ZEN.Auxiliary.parameter(XMLKEYNAME = "paramName", XMLNAME = "parameter", XMLPROJECTION = "ELEMENT");

/// ondrawitem event handler:
/// If defined, this event is fired when
/// an item within the finder is about to be drawn.
/// If this event handler returns a value, then it is used
/// as DHTML to render the item contents.
Property ondrawitem As %ZEN.Datatype.eventHandler;

/// ondrawdetails event handler:
/// If defined, this event is fired when
/// an item with no children is selected.
/// If this event handler returns a value, then it is used
/// as DHTML to render the item details.
Property ondrawdetails As %ZEN.Datatype.eventHandler;

/// ondrawempty event handler:
/// If defined, this event is fired when
/// there is no data available to display within the finder.
/// If this event handler returns a value, then it is used
/// as DHTML providing content for the empty finder.
Property ondrawempty As %ZEN.Datatype.eventHandler;

/// ongetdata event handler:
/// This defines the client-side code that returns
/// an graph of javascript objects used to provide the contents
/// of the finder.
Property ongetdata As %ZEN.Datatype.eventHandler;

/// onlazyload event handler:
/// Used to partially load data into the finder.
/// This defines the client-side code that returns
/// an graph of javascript objects that are used as the children of the current node.
Property onlazyload As %ZEN.Datatype.eventHandler;

/// onselectitem event handler:
/// If defined, this event is fired when the user clicks on an item within the finder.
Property onselectitem As %ZEN.Datatype.eventHandler;

/// oncancel event handler:
/// If defined, this event is fired when the user presses the escape key within the finder.
Property oncancel As %ZEN.Datatype.eventHandler;

/// ongeticon event handler:
/// If defined, this event is fired when the finder is in "icons" view and returns the url
/// of the icon to use; if it returns "", then the default icon is used.<br/>
/// The current item is passed as <var>item</var>.
Property ongeticon As %ZEN.Datatype.eventHandler;

/// ondblclick event handler:
/// If defined, this event is fired when the user double-clicks on an item within the finder.
Property ondblclick As %ZEN.Datatype.eventHandler;

/// If true (default is true), then animate the appearance
/// of the finder.
Property animate As %ZEN.Datatype.boolean [ InitialExpression = 1 ];

/// If true (default is true), the first item is preselected on drilldown in icon
/// mode.
Property selectFirstOnIconDrillDown As %ZEN.Datatype.boolean [ InitialExpression = 1 ];

/// If true (default is false), then hilight the top-level rows in "list" mode.
Property hilightTop As %ZEN.Datatype.boolean [ InitialExpression = 0 ];

/// Default icon to display for items that do not supply an icon.
Property itemIcon As %ZEN.Datatype.uri [ InitialExpression = "portal/document_48.gif" ];

/// Default icon to display for folder items that do not supply an icon.
Property folderIcon As %ZEN.Datatype.uri [ InitialExpression = "portal/folder_48.gif" ];

/// Up icon to display in icons mode.
Property upIcon As %ZEN.Datatype.uri [ InitialExpression = "portal/up_48.gif" ];

Property msgNoPriv As %ZEN.Datatype.caption [ InitialExpression = {$$$TextJS("You do not have privilege to view this page.","%ZEN")} ];

/// defines style sheet used by this component
XData Style
{
}

/// Refresh the contents of the finder.
/// If <var>reset</var> is true, unhighlight and unscroll the contents.
ClientMethod update(reset) [ Language = javascript ]
{
}

/// Draw contents of finder.
ClientMethod renderContents() [ Language = javascript ]
{
}

/// Return HTML for list mode.
ClientMethod getListViewContent(graph) [ Language = javascript ]
{
}

/// Return HTML for rows within list mode.
/// <var>array</array> is the data model to display.<br/>
/// <var>selectedList</array> is an array containing the selected list.<br/>
/// <var>level</array> is how many levels we are nested.<br/>
/// <var>parentIdx</array> an array of indexs for all levels above this one.<br/>
ClientMethod getListRowsHTML(array, selectedList, level, parentIdx) [ Language = javascript ]
{
}

/// Return HTML for icons mode.
ClientMethod getIconsViewContent(graph) [ Language = javascript ]
{
}

/// Return HTML for columns mode.
ClientMethod getColumnsViewContent(graph) [ Language = javascript ]
{
}

/// Return the HTML to render one column of the finder.<br/>
/// <var>graph</var> is the object graph describing the contents of the finder.<br/>
/// <var>column</var> is the column number to render (0 based).<br/>
/// <var>selectedList</var> is an array containing of the selected item for each column.
ClientMethod getFinderColumnHTML(graph, column, selectedList) [ Language = javascript ]
{
}

/// Mouse disclosure click handler for items in finder (in "list" mode).
ClientMethod rowDisclosureClick(evt, idx) [ Language = javascript ]
{
}

/// Mouse click handler for items in finder (in "list" mode).
ClientMethod rowClickHandler(evt, idx) [ Language = javascript ]
{
}

/// Mouse down handler for items in finder (in "columns" mode).
ClientMethod itemClickHandler(evt, list) [ Language = javascript ]
{
}

/// Give focus to an item in the list.
ClientMethod giveFocus(list) [ Internal, Language = javascript ]
{
}

/// Swallow a mouse event.
ClientMethod cancelEvent(evt) [ Language = javascript ]
{
}

/// Mouse double-click handler for items in finder (in "columns" mode).
ClientMethod itemDblClickHandler(evt, list) [ Language = javascript ]
{
}

/// Key press handler for items in finder (in "columns" mode).
ClientMethod itemKeyPressHandler(evt, list) [ Language = javascript ]
{
}

/// Go up one level in "icon" mode.
ClientMethod iconGoUp(evt) [ Language = javascript ]
{
}

/// Mouse down handler for items in finder (in "icon" mode).
ClientMethod iconClickHandler(evt, list) [ Language = javascript ]
{
}

/// Key press handler for items in finder (in "icons" mode).
ClientMethod iconKeyPressHandler(evt, list) [ Language = javascript ]
{
}

/// Mouse double-click handler for items in finder (in "icon" mode).
ClientMethod iconDblClickHandler(evt, list) [ Language = javascript ]
{
}

/// Scroll the finder so that the right-most column is visible.
/// (in columns mode).
ClientMethod scrollFinder(which) [ Internal, Language = javascript ]
{
}

/// Apply animation to scrolling.
ClientMethod animateScroll(delta, which) [ Internal, Language = javascript ]
{
}

/// Find the item in the object graph with the given address.
/// <var>addr</var> is a list of array offsets starting with
/// the topmost array in the graph: '2,4,2'.
ClientMethod getItem(addr) [ Language = javascript ]
{
}

/// Get object graph for finder.
ClientMethod getObjectGraph() [ Language = javascript ]
{
}

/// Set the value of a named property.
ClientMethod setProperty(property, value, value2) [ Language = javascript ]
{
}

/// Set the current view type.
ClientMethod setViewType(type) [ Language = javascript ]
{
}

}
