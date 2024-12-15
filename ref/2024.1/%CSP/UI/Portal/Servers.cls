/// System Management Portal - Security Management - Superservers
Class %CSP.UI.Portal.Servers Extends %CSP.UI.Portal.Utils [ System = 4 ]
{

/// Do not switch namespace for this page: it needs to stay in %SYS
Parameter AUTONS As BOOLEAN = 0;

Parameter CSPURL = "/csp/sys/sec/%CSP.UI.Portal.Servers.zen";

Parameter HELPADDRESS = "System Administration,Security,Servers";

Parameter EMSSERVICE = "Security";

/// Displayed name of this page.
Parameter PAGENAME = "Superservers";

/// Security requirement
Parameter RESOURCE = "%Admin_Secure";

/// Store translated targetCol linkCaption for <condition>
Property colDelete As %ZEN.Datatype.caption [ InitialExpression = {$$$Text("Delete")} ];

XData Style
{
}

XData contentPane [ XMLNamespace = "http://www.intersystems.com/zen" ]
{
}

ClientMethod filterChanged(value, tableID) [ Language = javascript ]
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

/// Add to the contents of the tool ribbon.
Method OnDrawRibbon() As %Status
{
}

/// Delete selected Server
ClientMethod doDelete(Port, BindAddress) [ Language = javascript ]
{
}

ClientMethod doEdit(Port, BindAddress) [ Language = javascript ]
{
}

/// Delete selected Server now.
ClassMethod Delete(Port As %String, BindAddress As %String) As %String [ ZenMethod ]
{
}

}
