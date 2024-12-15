/// Zen page for System Management Portal - Managed File Transfer Connection List page
Class %CSP.UI.Portal.MFT.ConnectionList Extends (%CSP.UI.Portal.Template, %CSP.UI.Portal.UtilsNav) [ System = 4 ]
{

/// Do not switch namespace for this page: it needs to stay in %SYS
Parameter AUTONS As BOOLEAN = 0;

/// Displayed name of this page.
Parameter PAGENAME = "Manager File Transfer Connections";

Parameter CSPURL = "/csp/sys/sec/%CSP.UI.Portal.MFT.ConnectionList.zen";

Parameter HELPADDRESS = "System Administration,Security,Managed File Transfer Connections";

/// Security requirement
Parameter RESOURCE = "%Admin_Secure";

Property EditPage As %String [ InitialExpression = {..Link("%25CSP.UI.Portal.MFT.Connection.zen",,1)} ];

Property ConnectionName As %ZEN.Datatype.string(ZENURL = "ConnectionName");

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

ClientMethod doNew() [ Language = javascript ]
{
}

ClientMethod doEdit(ApplicationName) [ Language = javascript ]
{
}

/// Delete existing configuration.
ClientMethod deleteSetting(name) [ Language = javascript ]
{
}

/// Call server delete method.
ClassMethod DeleteItem(name) As %String [ ZenMethod ]
{
}

ClientMethod doGetToken(name) [ Language = javascript ]
{
}

ClassMethod GetToken(name As %String) As %ZEN.proxyObject [ ZenMethod ]
{
}

ClientMethod doRevokeToken(name, isAuthorized) [ Language = javascript ]
{
}

ClassMethod RevokeToken(name As %String, isAuthorized As %String) As %String [ ZenMethod ]
{
}

}
