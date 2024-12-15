/// System Management Portal - System Configuration - ECP - Application Servers
Class %CSP.UI.Portal.ECPAppServers Extends %CSP.UI.Portal.Utils [ System = 4 ]
{

/// Do not switch namespace for this page: it needs to stay in %SYS
Parameter AUTONS As BOOLEAN = 0;

Parameter CSPURL = "/csp/sys/mgr/%CSP.UI.Portal.ECPAppServers.zen";

Parameter HELPADDRESS = "Home,Configuration,ECP Settings,ECP Application Servers";

Parameter EMSSERVICE = "Config";

/// Displayed name of this page.
Parameter PAGENAME = "ECP Application Servers";

Parameter PARENTPAGE = "/csp/sys/mgr/%CSP.UI.Portal.ECP.zen";

/// Security requirement
Parameter RESOURCE = "%Admin_Manage";

XData Style
{
}

XData contentPane [ XMLNamespace = "http://www.intersystems.com/zen" ]
{
}

ClientMethod doAuthorize(CN, authorize) [ Language = javascript ]
{
}

ClientMethod doDelete(CN) [ Language = javascript ]
{
}

ClientMethod updateView(InTimer) [ Language = javascript ]
{
}

ClassMethod AuthorizeCN(CN As %String, authorize As %Integer) As %String [ ZenMethod ]
{
}

ClassMethod DeleteCN(CN As %String) As %String [ ZenMethod ]
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

Method OnDrawRibbon() As %Status
{
}

/// Get the (localized) name of the page.
/// This should be implemented in a subclass.
Method %OnGetPageName() As %String
{
}

Method DrawECPSSL() As %Integer [ ZenMethod ]
{
}

}
