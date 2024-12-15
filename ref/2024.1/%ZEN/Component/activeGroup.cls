/// This is the base class for all groups whose geometry is managed by
/// the client geometry manager.
Class %ZEN.Component.activeGroup Extends abstractGroup [ Deprecated, System = 3 ]
{

/// Subclasses can set this to change default css class for a group.
Parameter DEFAULTENCLOSINGCLASS = "activeGroup";

XData Style
{
}

Method %DrawHTML()
{
}

/// This client event, if present, is fired when the page is loaded.
ClientMethod onloadHandler() [ Language = javascript ]
{
}

/// Set the value of a named property.
ClientMethod setProperty(property, value, value2) [ Language = javascript ]
{
}

}
