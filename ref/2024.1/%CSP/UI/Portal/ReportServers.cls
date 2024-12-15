/// Zen page for System Management Portal - Report Server
Class %CSP.UI.Portal.ReportServers Extends (%CSP.UI.Portal.Template, %CSP.UI.Portal.UtilsNav) [ System = 4 ]
{

/// Do not switch namespace for this page: it needs to stay in %SYS
Parameter AUTONS As BOOLEAN = 0;

/// Displayed name of this page.
Parameter PAGENAME = "Reports (Logi Analytics)";

Parameter CSPURL = "/csp/sys/mgr/%CSP.UI.Portal.ReportServers.zen";

Parameter HELPADDRESS = "Home,Configuration,Reports (Logi Analytics)";

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

/// Add a new row
ClientMethod doAdd() [ Language = javascript ]
{
}

/// Edit the current row
ClientMethod doEdit(PID) [ Language = javascript ]
{
}

ClientMethod doConfigure(PID) [ Language = javascript ]
{
}

///  Get information to display in the ribbon bar.
Method OnGetRibbonInfo(Output pDisplay As %Boolean, Output pViewIcons As %List, Output pSortOptions As %List, Output pSearchBox As %Boolean, Output pRibbonTitle As %String, Output pCommands As %List) As %Status
{
}

}
