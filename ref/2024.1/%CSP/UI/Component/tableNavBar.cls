/// This is a tableNavigatorBar component used by SMP.
Class %CSP.UI.Component.tableNavBar Extends %ZEN.Component.tableNavigatorBar [ System = 3 ]
{

Parameter SYSMODULE;

/// This Style block contains component-specific CSS style definitions.
XData Style
{
}

/// Client-side method to render this control.
/// The difference between this component and tableNavigatorBar is the filter. <br/>
/// In combination with %CSP.UI.Portal.UtilsNav, we use table.lastFilter to set the last filter value of the user here.
ClientMethod renderContents() [ Language = javascript ]
{
}

/// allow someone to reset the filter input.size for this component
ClientMethod setFilterSize(size) [ Language = javascript ]
{
}

}
