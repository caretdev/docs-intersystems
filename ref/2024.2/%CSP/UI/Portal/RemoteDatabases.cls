Class %CSP.UI.Portal.RemoteDatabases Extends %CSP.UI.Portal.Utils [ System = 4 ]
{

/// Displayed name of this page.
Parameter PAGENAME = "Remote Databases";

/// Do not switch namespace for this page: it needs to stay in %SYS
Parameter AUTONS As BOOLEAN = 0;

Parameter EMSSERVICE = "Namespace";

/// Security requirement
Parameter RESOURCE = "%Admin_Manage";

Parameter CSPURL = "/csp/sys/mgr/%CSP.UI.Portal.RemoteDatabases.zen";

Parameter HELPADDRESS = "Home,Configuration,Remote Databases";

XData Style
{
}

XData contentPane [ XMLNamespace = "http://www.intersystems.com/zen" ]
{
}

/// User entered something in to the filter. Re-load the table with filter value.
ClientMethod filterChanged(value, tableID) [ Language = javascript ]
{
}

/// Subclass can override.
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
Method %OnGetPageName() As %String
{
}

ClientMethod doDelete(dir, dbname) [ Language = javascript ]
{
}

ClientMethod doEdit(dbName) [ Language = javascript ]
{
}

/// This client event, if present, is fired when the a popup page
/// launched from this page fires an action.
ClientMethod onPopupAction(popupName, action, value) [ Language = javascript ]
{
}

}
