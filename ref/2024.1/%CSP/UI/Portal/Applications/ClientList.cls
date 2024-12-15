/// System Management Portal - System Administration - Client Applications
Class %CSP.UI.Portal.Applications.ClientList Extends (%CSP.UI.Portal.Template, %CSP.UI.Portal.UtilsNav, %CSP.UI.Portal.Applications.Utils) [ System = 4 ]
{

/// Do not switch namespace for this page: it needs to stay in %SYS
Parameter AUTONS As BOOLEAN = 0;

Parameter CSPURL = "/csp/sys/sec/%CSP.UI.Portal.Applications.ClientList.zen";

Parameter HELPADDRESS = "System Administration,Security,Applications,Client Applications";

/// Displayed name of this page.
Parameter PAGENAME = "Client Applications";

/// Security requirement
Parameter RESOURCE = "%Admin_Secure";

Property ApplicationType As %Integer [ InitialExpression = {$$$AppTypeExecutable} ];

Property EditPage As %String [ InitialExpression = {..Link("%25CSP.UI.Portal.Applications.Client.zen",,1)} ];

XData contentPane [ XMLNamespace = "http://www.intersystems.com/zen" ]
{
}

/// Needed to ensure that ApplicationType is an integer
Method ExecuteApplicationList(pRS As %Library.ResultSet, Output tSC As %Status, pInfo As %ZEN.Auxiliary.QueryInfo) As %Boolean
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
/// Subclasses with extra layers of locator links or other than "Configuration" please override.
Method %GetLocatorLinks(Output pLink) As %Status
{
}

}
