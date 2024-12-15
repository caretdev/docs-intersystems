/// Zen page for System Management Portal - Show Databases Freespace
Class %CSP.UI.Portal.X509Credentials Extends (%CSP.UI.Portal.Template, %CSP.UI.Portal.UtilsNav) [ System = 4 ]
{

Parameter CSPURL = "/csp/sys/sec/%CSP.UI.Portal.X509Credentials.zen";

Parameter HELPADDRESS = "Home,Security Management,X.509 Credentials";

/// Do not switch namespace for this page: it needs to stay in %SYS
Parameter AUTONS As BOOLEAN = 0;

/// Displayed name of this page.
Parameter PAGENAME = "X509Credentials";

/// Security requirement
Parameter RESOURCE = "%Admin_Secure";

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

Method %GetLocatorLinks(Output pLink) As %Status
{
}

/// Get information to display in the ribbon bar.
Method OnGetRibbonInfo(Output pDisplay As %Boolean, Output pViewIcons As %List, Output pSortOptions As %List, Output pSearchBox As %Boolean, Output pRibbonTitle As %String, Output pCommands As %List) As %Status
{
}

/// Used to draw title for this page. pHalpAddress is need to build the link for Help for this page.
ClassMethod DrawTitle1(pSeed As %String) As %Status
{
}

/// User clicked the "Edit" link which is there for clearity and consistency. No need to do anything here as onselectrow is going to kick in.
ClientMethod doNew() [ Language = javascript ]
{
}

/// User clicked the "Edit" link which is there for clearity and consistency. No need to do anything here as onselectrow is going to kick in.
ClientMethod editSetting(PID) [ Language = javascript ]
{
}

/// Delete existing mapping.
ClientMethod deleteSetting(PID) [ Language = javascript ]
{
}

/// Call server delete method.
ClassMethod DeleteItem(PID) As %String [ ZenMethod ]
{
}

}