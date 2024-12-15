/// Management Portal - Create or edit/manage a Report Server
Class %CSP.UI.Portal.ReportServer Extends %CSP.UI.Portal.Template [ System = 4 ]
{

/// Class name of application this page belongs to.
Parameter APPLICATION = "%CSP.UI.Portal.Application";

///
/// Displayed name of this page.
Parameter PAGENAME = "InterSystems Reports";

Parameter CSPURL = "/csp/sys/mgr/%CSP.UI.Portal.ReportServer.zen";

Parameter HELPADDRESS = "Home,Configuration,InterSystems Reports,New Report Server";

Parameter PARENTPAGE = "/csp/sys/mgr/%CSP.UI.Portal.ReportServers.zen";

///
/// Security requirement
Parameter RESOURCE = "%Admin_Manage";

///
/// Do not switch namespace for this page: it needs to stay in %SYS
Parameter AUTONS As BOOLEAN = 0;

Parameter RECENT = 0;

Property IsEditForm As %Boolean [ InitialExpression = 1 ];

Property isNew As %ZEN.Datatype.boolean(ZENURL = "isNew") [ InitialExpression = 0 ];

Property disableDelete [ InitialExpression = 0 ];

XData Style
{
}

XData contentPane [ XMLNamespace = "http://www.intersystems.com/zen" ]
{
}

ClientMethod onloadHandler() [ Language = javascript ]
{
}

Method %OnAfterCreatePage() As %Status
{
}

Method %OnGetTitle() As %String
{
}

/// Validation handler for form.
ClientMethod formValidationHandler() [ Language = javascript ]
{
}

/// Load values into fields.
Method LoadData(PID As %String) As %String
{
}

/// Get user input and send to server to save settings.
ClientMethod doSave() [ Language = javascript ]
{
}

/// Save Reports Render Server definition.
ClassMethod SaveData(PID, name, host, port, sso) As %ZEN.proxyObject [ ZenMethod ]
{
}

/// Delete render server definition and return to the list of render servers.
ClientMethod doDelete() [ Language = javascript ]
{
}

/// Delete Reports Render Server definition.
ClassMethod DeleteServer(PID As %String) As %String [ ZenMethod ]
{
}

/// Return the array of links to show in the locator bar.<br/>
/// pLink(n)=$LB(caption,link)
Method %GetLocatorLinks(Output pLink) As %Status
{
}

/// Get information to display in the ribbon bar.
Method OnGetRibbonInfo(Output pDisplay As %Boolean, Output pViewIcons As %List, Output pSortOptions As %List, Output pSearchBox As %Boolean, Output pRibbonTitle As %String, Output pCommands As %List) As %Status
{
}

/// Get the title string to add to the locator row.
ClientMethod getPageTitle() As %String [ Language = javascript ]
{
}

}
