/// Zen page for System Management Portal - Reports Excel Servers
Class %CSP.UI.Portal.ReportsExcelServers Extends (%CSP.UI.Portal.Template, %CSP.UI.Portal.UtilsNav) [ System = 4 ]
{

/// Do not switch namespace for this page: it needs to stay in %SYS
Parameter AUTONS As BOOLEAN = 0;

/// Displayed name of this page.
Parameter PAGENAME = "Reports Excel Servers";

Parameter CSPURL = "/csp/sys/mgr/%CSP.UI.Portal.ReportsExcelServers.zen";

Parameter HELPADDRESS = "Home,Configuration,Reports Excel Servers";

/// Security requirement
Parameter RESOURCE = "%Admin_Manage";

XData Style
{
}

XData contentPane [ XMLNamespace = "http://www.intersystems.com/zen" ]
{
}

Method %OnAfterCreatePage() As %Status
{
}

ClientMethod doAdd() [ Language = javascript ]
{
}

/// User double clicked a row. Go to the manage page.
ClientMethod doEditD() [ Language = javascript ]
{
}

/// User clicked the "Manage" link.
ClientMethod doManage(PID) [ Language = javascript ]
{
}

///  Get information to display in the ribbon bar.
Method OnGetRibbonInfo(Output pDisplay As %Boolean, Output pViewIcons As %List, Output pSortOptions As %List, Output pSearchBox As %Boolean, Output pRibbonTitle As %String, Output pCommands As %List) As %Status
{
}

}