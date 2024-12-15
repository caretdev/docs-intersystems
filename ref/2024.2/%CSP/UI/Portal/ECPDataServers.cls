/// System Management Portal - System Configuration - ECP - Data Servers
Class %CSP.UI.Portal.ECPDataServers Extends %CSP.UI.Portal.Utils [ System = 4 ]
{

/// Do not switch namespace for this page: it needs to stay in %SYS
Parameter AUTONS As BOOLEAN = 0;

Parameter CSPURL = "/csp/sys/mgr/%CSP.UI.Portal.ECPDataServers.zen";

Parameter HELPADDRESS = "Home,Configuration,ECP Settings,ECP Data Servers";

Parameter EMSSERVICE = "Namespace";

/// Displayed name of this page.
Parameter PAGENAME = "ECP Data Servers";

Parameter PARENTPAGE = "/csp/sys/mgr/%CSP.UI.Portal.ECP.zen";

/// Security requirement
Parameter RESOURCE = "%Admin_Manage";

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

ClientMethod onPopupAction(popupName, action, value) [ Language = javascript ]
{
}

ClientMethod doEdit(action, serverName) [ Language = javascript ]
{
}

ClientMethod doDelete(serverName) [ Language = javascript ]
{
}

ClassMethod DeleteServer(serverName As %String) As %String [ ZenMethod ]
{
}

Method %OnAfterCreatePage() As %Status
{
}

/// Return the array of links to show in the locator bar.<br/>
/// pLink(n)=$LB(caption,link) <br/>
Method %GetLocatorLinks(Output pLink) As %Status
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

/// Add to the contents of the tool ribbon.
Method OnDrawRibbon() As %Status
{
}

}
