/// System Management Portal - Security Management - Mobile Phone Service Providers
Class %CSP.UI.Portal.PhoneProviders Extends (%CSP.UI.Portal.Template, %CSP.UI.Portal.UtilsNav) [ System = 4 ]
{

/// Do not switch namespace for this page: it needs to stay in %SYS
Parameter AUTONS As BOOLEAN = 0;

Parameter CSPURL = "/csp/sys/sec/%CSP.UI.Portal.PhoneProviders.zen";

Parameter HELPADDRESS = "System Administration,Security,Mobile Phone";

Parameter EMSSERVICE = "Users";

/// Displayed name of this page.
Parameter PAGENAME = "Mobile Phone Service Providers";

/// Security requirement
Parameter RESOURCE = "%Admin_Secure";

XData Style
{
}

XData contentPane [ XMLNamespace = "http://www.intersystems.com/zen" ]
{
}

/// Delete selected provider
ClientMethod doDelete(provider) [ Language = javascript ]
{
}

ClientMethod doEdit(provider) [ Language = javascript ]
{
}

/// Delete selected provider now.
Method Delete(provider) As %String [ ZenMethod ]
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

}
