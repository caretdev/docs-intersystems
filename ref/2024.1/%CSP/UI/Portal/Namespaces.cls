/// System Management Portal - System Administration - Namespaces
Class %CSP.UI.Portal.Namespaces Extends %CSP.UI.Portal.Utils [ System = 4 ]
{

/// Do not switch namespace for this page: it needs to stay in %SYS
Parameter AUTONS As BOOLEAN = 0;

Parameter CSPURL = "/csp/sys/mgr/%CSP.UI.Portal.Namespaces.zen";

Parameter HELPADDRESS = "Home,Configuration,Namespaces";

Parameter EMSSERVICE = "Namespace";

/// Displayed name of this page.
Parameter PAGENAME = "Namespaces";

/// Security requirement
Parameter RESOURCE = "%Admin_Manage";

/// Store translated targetCol linkCaption for <condition>
Property colDelete As %ZEN.Datatype.caption [ InitialExpression = {$$$Text("Delete")} ];

XData Style
{
}

XData contentPane [ XMLNamespace = "http://www.intersystems.com/zen" ]
{
}

/// This client event, if present, is fired when the a popup page
/// launched from this page fires an action.
ClientMethod onPopupAction(popupName, action, value) [ Language = javascript ]
{
}

/// User entered something in to the filter. Re-load the table with filter value.
ClientMethod filterChanged(value, tableID) [ Language = javascript ]
{
}

Method %OnAfterCreatePage() As %Status
{
}

Method OnDrawRibbon() As %Status
{
}

/// Get information to display in the ribbon bar.
Method OnGetRibbonInfo(Output pDisplay As %Boolean, Output pViewIcons As %List, Output pSortOptions As %List, Output pSearchBox As %Boolean, Output pRibbonTitle As %String, Output pCommands As %List) As %Status
{
}

/// Get the (localized) name of the page.
/// This should be implemented in a subclass.
Method %OnGetPageName() As %String
{
}

ClientMethod doMap(mapType, ns) [ Language = javascript ]
{
}

ClientMethod doDataLocation(ns) [ Language = javascript ]
{
}

ClientMethod doDelete(ns) [ Language = javascript ]
{
}

ClientMethod doEdit(ns) [ Language = javascript ]
{
}

ClientMethod doNew() [ Language = javascript ]
{
}

}
