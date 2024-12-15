/// Implements a simple HTML5 toolbar component.<br/>
/// This is an HTML5 component; it will only correctly run on HTML5 compliant browsers.
///
/// A toolbar can show drop down menu choice, tabs, messages, choice boxes and other items.
/// It is controlled by a JSON data model.
///
Class %ZEN.Component.toolbar Extends (component, dataView) [ Deprecated, System = 3 ]
{

/// Do not include in "form" module.
Parameter SYSMODULE;

Parameter DEFAULTENCLOSINGCLASS = "ztb-menu";

/// onselect event handler:
/// If defined, this event is fired when
/// the user clicks on a item within the menu.
/// This is passed: <var>key</var>, <var>action</var>, and <var>targetId</var>
/// from the data element associated with the menu choice.
Property onselect As %ZEN.Datatype.eventHandler;

/// onchange event handler:
/// Notification that a control within the toolbar (such as a "choice") has changed value.
/// This event is passed 3 arguments: <var>key</var>, <var>value</var>, and <var>final</var>.
/// <var>final</var> is true when a value is finished changing.
Property onchange As %ZEN.Datatype.eventHandler;

/// ongetdata event handler:
/// If defined, this event is returns an array of items to be displayed within the menu.
Property ongetdata As %ZEN.Datatype.eventHandler;

/// onpagechange event handler:
/// If defined, this event is fired when
/// the user selects a new page number from a "pages" item.
/// This is passed: <var>key</var> and <var>page</var> (selected page, 1-based).
/// from the data element associated with the menu choice.
Property onpagechange As %ZEN.Datatype.eventHandler;

/// Additional style to apply to items in the menu.<br/>
Property style As %ZEN.Datatype.style;

/// Additional style to apply to images in the menu.<br/>
/// Use this to change the size of images.
Property imageStyle As %ZEN.Datatype.style;

/// Index (0-based) of selected item within the top-level menu.<br/>
Property selectedIndex As %ZEN.Datatype.integer [ InitialExpression = -1 ];

/// Index (0-based) first top-level item to display when scrolled.<br/>
Property scrollOffset As %ZEN.Datatype.integer [ InitialExpression = 0 ];

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
ClientMethod getMenuHTML(content, menuId) [ Internal, Language = javascript ]
{
}

/// Get HTML for one top-level menu item.
ClientMethod getTopItemHTML(info, index) [ Language = javascript ]
{
}

/// GetHTML for a "page" item.
ClientMethod getPagingHTML(index, pageNo) [ Language = javascript ]
{
}

/// User click on scroll button.
ClientMethod scrollClickHandler(evt, which) [ Language = javascript ]
{
}

/// User click on a menu item.
ClientMethod menuClickHandler(evt, type, id, key, action, targetId) [ Language = javascript ]
{
}

/// Hide all dropdowns
ClientMethod hideAll() [ Language = javascript ]
{
}

/// Action handler for menu item.
ClientMethod menuActionHandler(itemId, type, key, action, targetId) [ Language = javascript ]
{
}

/// Click handler for paging item.
ClientMethod pageChangeHandler(evt, itemId, key, page) [ Language = javascript ]
{
}

/// Select a tab item given its key.
ClientMethod selectTab(key) [ Language = javascript ]
{
}

/// Set the value of a named property.
ClientMethod setProperty(property, value, value2) [ Language = javascript ]
{
}

/// Set the width (in pixels) of this component.
ClientMethod setWidth(width) [ Language = javascript ]
{
}

/// Mouse click handler for choice control.
ClientMethod choiceClick(evt, index, choiceNo, newValue) [ Language = javascript ]
{
}

/// Focus handler for text control.
ClientMethod controlFocus(id) [ Language = javascript ]
{
}

/// Change handler for text control.
ClientMethod controlChange(id, index) [ Language = javascript ]
{
}

/// Key press handler for text control.
ClientMethod controlKeyPress(evt, id, index) [ Language = javascript ]
{
}

}
