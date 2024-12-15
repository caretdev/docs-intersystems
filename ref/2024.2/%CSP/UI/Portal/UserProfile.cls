/// System Management Portal - Security Management - User Profile
Class %CSP.UI.Portal.UserProfile Extends %CSP.UI.Portal.Template [ System = 4 ]
{

/// Do not switch namespace for this page: it needs to stay in %SYS
Parameter AUTONS As BOOLEAN = 0;

Parameter CSPURL = "/csp/sys/sec/%CSP.UI.Portal.UserProfile.zen";

Parameter HELPADDRESS = "System Administration,Security,Users,User Profile";

/// Displayed name of this page.
Parameter PAGENAME = "User Profile";

Parameter PARENTPAGE = "/csp/sys/sec/%CSP.UI.Portal.Users.zen";

Parameter RECENT = 0;

/// Security requirement
Parameter RESOURCE = "%Admin_Secure";

XData Style
{
}

XData contentPane [ XMLNamespace = "http://www.intersystems.com/zen" ]
{
}

Method DrawProfile(pSeed As %String) As %Status
{
}

ClientMethod onloadHandler() [ Language = javascript ]
{
}

ClientMethod doEdit(user) [ Language = javascript ]
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
