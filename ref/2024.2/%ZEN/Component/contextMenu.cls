/// %ZEN.Component.contextMenu
Class %ZEN.Component.contextMenu Extends group [ Deprecated, System = 3 ]
{

Parameter INCLUDEFILES = "zenCSLM.js,zenMenus.js";

XData Style
{
}

Method %DrawHTML()
{
}

/// Set the value of a named property.
ClientMethod setProperty(property, value, value2) [ Language = javascript ]
{
}

/// This client event, if present, is fired when the page is loaded.
ClientMethod onloadHandler() [ Language = javascript ]
{
}

ClientMethod onRefreshContents() [ Language = javascript ]
{
}

/// Reinitialize a csMenuItem child of this menu that has been refreshed
/// from the server.  This needs to be done here (as opposed to in the
/// csMenuItem's own update hander because update event propagate DOWN the
/// DOM tree and contextMenu needs its children to be refreshed first, before
/// it can update itself.
ClientMethod reinitChildren(menuDiv) [ Language = javascript ]
{
}

/// Remove this context menu from its parent context, severing its
/// ties to local event handling.  Note that this call does not remove
/// the base logical menu structure from the client-side DOM (allowing it to
/// be reinstalled at a later time)
ClientMethod uninstall() [ Language = javascript ]
{
}

/// Reconnect a previously uninstalled context menu to a new parent context,
/// enabling its ties to local event handling. The parameter passed must be a
/// decendant of Zen.Component.group to ensure proper handling.
ClientMethod reinstall(pGroup) [ Language = javascript ]
{
}

}
