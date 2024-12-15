/// Defines an item within a <class>menu</class>.
/// Note that the properties of this component are provided by the
/// class <class>menuCell</class>.
Class %ZEN.Component.menuItem Extends (component, menuCell) [ Deprecated, Inheritance = right, System = 3 ]
{

Parameter DOMAIN = "%ZEN";

XData Style
{
}

Method %DrawHTML()
{
}

/// Client-side method to get the disabled state of this menuItem.
ClientMethod getDisabled() As %Boolean [ Final, Language = javascript ]
{
}

/// Client-side method to set disabled state of this menuItem.
ClientMethod setDisabled(flag) [ Final, Language = javascript ]
{
}

/// This callback is invoked just before this menuItem
/// fires its action.
ClientMethod onActionHandler() [ Language = javascript ]
{
}

/// This callback is invoked when the mouse moves over (true)
/// or out of (false) this menu item.
ClientMethod onShowHelpHandler(mode) [ Language = javascript ]
{
}

/// No-op used for disabled links.
ClientMethod doNothing() [ Final, Language = javascript ]
{
}

}
