/// Zen page for System Management Portal - NLS Configured Defaults
Class %CSP.UI.Portal.NLSConfigDefs Extends %CSP.UI.Portal.Template [ System = 4 ]
{

/// Displayed name of this page.
Parameter PAGENAME = "NLS Configured Defaults";

Parameter CSPURL = "/csp/sys/mgr/%CSP.UI.Portal.NLSConfigDefs.zen";

Parameter HELPADDRESS = "Home,Configuration,Configured Defaults";

Parameter EMSSERVICE = "Config";

Parameter PARENTPAGE = "/csp/sys/mgr/%CSP.UI.Portal.NLS.zen";

Parameter RECENT = 0;

/// Security requirement
Parameter RESOURCE = "%Admin_Manage";

/// Do not switch namespace for this page: it needs to stay in %SYS
Parameter AUTONS As BOOLEAN = 0;

Property cmbLocale As %ZEN.Datatype.string(ZENURL = "cmbLocale");

XData Style
{
}

XData contentPane [ XMLNamespace = "http://www.intersystems.com/zen" ]
{
}

/// Draw All Configured Defaults
Method DrawDefaults(pSeed As %String) As %Status
{
}

/// ------------------ Utility Methods for Moving between lstboxes ------------------ ///
/// Moving a list item from one box to the next, then remove it from the original box ///
/// Return the array of links to show in the locator bar.<br/>
/// pLink(n)=$LB(caption,link)
Method %GetLocatorLinks(Output pLink) As %Status
{
}

/// Get the (localized) name of the page.
Method %OnGetPageName() As %String
{
}

}
