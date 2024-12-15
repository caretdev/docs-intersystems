/// Implements a simple HTML5 accordion menu component.<br/>
/// This is an HTML5 component; it will only correctly run on HTML5 compliant browsers.
Class %ZEN.Component.accordionMenu Extends (component, dataView) [ Deprecated, System = 3 ]
{

/// Do not include in "form" module.
Parameter SYSMODULE;

Parameter DEFAULTENCLOSINGCLASS = "zam-menu";

/// onselect event handler:
/// If defined, this event is fired when
/// the user clicks on a item within the menu.
Property onselect As %ZEN.Datatype.eventHandler;

/// ongetdata event handler:
/// If defined, this event is returns an array of items to be displayed within the menu.
Property ongetdata As %ZEN.Datatype.eventHandler;

/// Additional style to apply to items in the menu.<br/>
Property style As %ZEN.Datatype.style;

/// Current selected item.<br/>
/// This is a string of the form 'index1,index2,...', where each index is the 0-based
/// ordinal position of a menu, its first level child, etc.
Property selectedIndex As %ZEN.Datatype.string;

/// defines style sheet used by this component.
XData Style
{
}

/// Client-side method to render this component.
ClientMethod renderContents() [ Language = javascript ]
{
}

/// Get the model used to drive the menu.
ClientMethod getModel() [ Language = javascript ]
{
}

/// Get HTML for a dynamic menu based on the given content object graph.
/// Each node in the graph may define <var>key</var>, <var>caption</var>,<var>action</var>,
/// <var>targetId</var>, <var>image</var>, and <var>children</var>.
ClientMethod getMenuHTML(content, menuId) [ Language = javascript ]
{
}

/// Get HTML for one array of menu content.
ClientMethod getMenuHTMLForArray(menuInfo, array, level, parentId) [ Internal, Language = javascript ]
{
}

/// User click on a menu item.
ClientMethod menuClickHandler(evt, id, key, action, targetId) [ Language = javascript ]
{
}

/// Adjust the size of a menu item's parents.
ClientMethod adjustParentMenuSize(menuId, level, id) [ Language = javascript ]
{
}

/// Action handler for menu item.
ClientMethod menuActionHandler(itemId, key, action, targetId) [ Language = javascript ]
{
}

/// Notification that the dataController associated with this grid
/// has raised an event.
ClientMethod notifyViewHandler(reason, data1, data2, data3) [ Language = javascript ]
{
}

/// Select a given menu item and expand it (if it has children).
/// <var>index</var> is the index number of the menu item (0-based).
ClientMethod selectItem(index) [ Language = javascript ]
{
}

}
