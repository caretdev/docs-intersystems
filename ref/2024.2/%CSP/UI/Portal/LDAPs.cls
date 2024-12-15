/// System Management Portal - Security Management - LDAPs
Class %CSP.UI.Portal.LDAPs Extends (%CSP.UI.Portal.Template, %CSP.UI.Portal.UtilsNav) [ System = 4 ]
{

/// Do not switch namespace for this page: it needs to stay in %SYS
Parameter AUTONS As BOOLEAN = 0;

Parameter CSPURL = "/csp/sys/sec/%CSP.UI.Portal.LDAPs.zen";

Parameter HELPADDRESS = "Home,Security Management,Security LDAP configurations";

Parameter EMSSERVICE = "Users";

/// Displayed name of this page.
Parameter PAGENAME = "Security LDAP Configs";

/// Security requirement
Parameter RESOURCE = "%Admin_Secure";

XData Style
{
}

XData contentPane [ XMLNamespace = "http://www.intersystems.com/zen" ]
{
}

/// User entered something in to the filter. Re-load the table with filter value.
ClientMethod filterChanged(value) [ Language = javascript ]
{
}

ClientMethod doTest(LDAP) [ Language = javascript ]
{
}

ClientMethod doEdit(LDAP) [ Language = javascript ]
{
}

ClientMethod doDelete(LDAP) [ Language = javascript ]
{
}

ClassMethod Delete(LDAP As %String) As %ZEN.proxyObject [ ZenMethod ]
{
}

Method %OnAfterCreatePage() As %Status
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

/// Return the array of links to show in the locator bar.<br/>
/// pLink(n)=$LB(caption,link) <br/>
Method %GetLocatorLinks(Output pLink) As %Status
{
}

}
