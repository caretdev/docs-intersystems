/// Management Portal - Configure a Report Server via the Logi Report Server portal
Class %CSP.UI.Portal.ReportServerConfiguration Extends (%CSP.UI.Portal.Template, %CSP.UI.Portal.UtilsNav) [ System = 4 ]
{

/// Displayed name of this page.
Parameter PAGENAME = "Configure Report Server";

Parameter CSPURL = "/csp/sys/mgr/%CSP.UI.Portal.ReportServerConfiguration.zen";

Parameter HELPADDRESS = "Home,Configuration,Reports (Logi Analytics)";

Parameter PARENTPAGE = "/csp/sys/mgr/%CSP.UI.Portal.ReportServers.zen";

Property rsName As %ZEN.Datatype.string;

Property rsHost As %ZEN.Datatype.string;

Property rsPort As %ZEN.Datatype.string;

Property rsSSO As %ZEN.Datatype.boolean;

Property session As %ZEN.Datatype.string;

Property defaultURI As %ZEN.Datatype.string;

///
/// Security requirement
Parameter RESOURCE = "%Admin_Manage";

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

///     Return the array of links to show in the locator bar.<br/>
///     pLink(n)=$LB(caption,link)
Method %GetLocatorLinks(Output pLink) As %Status
{
}

///     Edit the current row
ClientMethod doSelect(pReportUser) [ Language = javascript ]
{
}

Method issueToken(pReportUser) As %String [ ZenMethod ]
{
}

Method formatURI(PID = -1) As %String [ ZenMethod ]
{
}

Method getToken(PID = -1) As %String [ ZenMethod ]
{
}

///     Get information to display in the ribbon bar.
Method OnGetRibbonInfo(Output pDisplay As %Boolean, Output pViewIcons As %List, Output pSortOptions As %List, Output pSearchBox As %Boolean, Output pRibbonTitle As %String, Output pCommands As %List) As %Status
{
}

}
