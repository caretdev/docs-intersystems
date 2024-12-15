/// Displays the set of active components on a ZEN page within
/// a simple tree.<br>
/// This is used by ZEN Tools.
Class %ZEN.Component.objectBrowser Extends component [ Deprecated, System = 3 ]
{

/// If defined, this is the page object containing the objects
/// we are browsing.
Property sourcePage As %ZEN.Component.page;

/// If defined, this is the id of top-most zen component to display
/// within the object browser.
Property rootObjectId As %ZEN.Datatype.string;

/// onselect event handler:
/// This event is fired when the user selects a component in the browser.
Property onselect As %ZEN.Datatype.eventHandler;

/// defines style sheet used by this component
XData Style
{
}

Method %DrawHTML()
{
}

/// Update the values displayed within the browser.
ClientMethod update() [ Language = javascript ]
{
}

/// this client event is fired when the page is loaded.
ClientMethod renderContents() [ Language = javascript ]
{
}

/// Initialize additional client-side variables
ClientMethod onCreate() [ Language = javascript ]
{
}

/// Return current object.
ClientMethod getCurrObject() [ Language = javascript ]
{
}

/// Make given component the current browser selection.
ClientMethod setCurrObject(obj) [ Language = javascript ]
{
}

/// Redraw contents of browser to match current set of client objects
ClientMethod renderBrowser() [ Language = javascript ]
{
}

/// Get HTML for one object in client object tree.
ClientMethod renderObject(obj, html, level) [ Language = javascript ]
{
}

/// Select the given object within the object browser.
ClientMethod selectObject(index) [ Language = javascript ]
{
}

}
