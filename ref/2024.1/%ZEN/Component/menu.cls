/// Specialized group for defining menus.
Class %ZEN.Component.menu Extends (group, menuCell) [ Deprecated, Inheritance = right, System = 3 ]
{

Parameter DEFAULTLAYOUT = "horizontal";

Parameter DEFAULTGROUPCLASS = "menuTable";

/// onactivate event handler:
/// If this menu is a submenu, then this event is fired just
/// before the submenu is made visible.
Property onactivate As %ZEN.Datatype.eventHandler;

/// onshowHelp event handler:
/// This event is fired when the user moves the mouse over this
/// menu item.
Property onshowHelp As %ZEN.Datatype.eventHandler;

/// Internal property used to keep track of state on client
Property subMenuActive As %ZEN.Datatype.boolean [ InitialExpression = 0 ];

/// Internal property used to indicate if this is a submenu
/// and, if so, how many level deep.
Property subMenuLevel As %ZEN.Datatype.integer(XMLPROJECTION = "none", ZENSETTING = 0) [ InitialExpression = 0 ];

/// Specifies how components within this group should be layed out. (VALUELIST = ",vertical,horizontal")
Property layout As %ZEN.Datatype.string(MAXLEN = 250, ZENENCRYPT = 0) [ InitialExpression = {..#DEFAULTLAYOUT} ];

XData Style
{
}

Method %DrawHTML()
{
}

/// Display the submenu.
ClientMethod showSubMenu() [ Language = javascript ]
{
}

/// Notification that this component is about to become modal.
ClientMethod onStartModalHandler(zindex) [ Language = javascript ]
{
}

/// Notification that this component is about to stop being modal.
ClientMethod onEndModalHandler(zindex) [ Language = javascript ]
{
}

/// This callback is invoked just before this menu
/// (acting as a menuItem) fires its action.
ClientMethod onActionHandler() [ Language = javascript ]
{
}

/// This callback is invoked just after a menuItem within this
/// menu fires its action.
/// <var>depth</var> indicated how many submenu levels down this
/// event originated. If 1, then it came from *this* menu.
ClientMethod onItemActionHandler(depth) [ Language = javascript ]
{
}

/// This callback is invoked when the mouse moves over (true)
/// or out of (false) this menu item.
ClientMethod onShowHelpHandler(mode) [ Language = javascript ]
{
}

ClientMethod onItemShowHelpHandler(mode, item) [ Language = javascript ]
{
}

}
