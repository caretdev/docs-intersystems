/// Zen page for System Management Portal - Stop External Language Server
Class %CSP.UI.Portal.ExternalLanguageServerStop Extends %CSP.UI.Portal.Template [ System = 4 ]
{

/// Do not switch namespace for this page: it needs to stay in %SYS
Parameter AUTONS As BOOLEAN = 0;

/// Displayed name of this page.
Parameter PAGENAME = "Stop External Language Server";

Parameter CSPURL = "/csp/sys/mgr/%CSP.UI.Portal.ExternalLanguageServerStop.zen";

Parameter HELPADDRESS = "Home,Configuration,External Language Servers,Stop External Language Server";

Parameter PARENTPAGE = "/csp/sys/mgr/%CSP.UI.Portal.ExternalLanguageServers.zen";

Parameter RECENT = 0;

/// Security requirement
Parameter RESOURCE = {$$$AdminExternalLanguageServerEditResourceName};

/// ID for edit. Object Name for this page.
Property PID As %String(ZENURL = "PID");

/// timeout for soft shutdown
Property soft As %Integer(ZENURL = "soft") [ InitialExpression = 0 ];

XData Style
{
}

XData contentPane [ XMLNamespace = "http://www.intersystems.com/zen" ]
{
}

Method %OnAfterCreatePage() As %Status
{
}

Method %OnGetPageName() As %String
{
}

/// Used to draw title for this page. pHalpAddress is need to build the link for Help for this page.
ClassMethod DrawTitle1(pSeed As %String) As %Status
{
}

ClientMethod timeout() [ Language = javascript ]
{
}

/// This client event, if present, is fired when the page is loaded.
ClientMethod onloadHandler() [ Language = javascript ]
{
}

/// Start action and server method will pump out result.
Method DrawResult(seed As %String) As %Status
{
}

/// Return 1 if stop is done.
ClassMethod IsDone() As %Boolean [ ZenMethod ]
{
}

/// Return the array of links to show in the locator bar.<br/>
/// pLink(n)=$LB(caption,link)
Method %GetLocatorLinks(Output pLink) As %Status
{
}

}
