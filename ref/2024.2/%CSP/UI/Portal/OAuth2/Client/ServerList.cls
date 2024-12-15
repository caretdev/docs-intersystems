/// Zen page for System Management Portal - OAuth2 List page
Class %CSP.UI.Portal.OAuth2.Client.ServerList Extends (%CSP.UI.Portal.Template, %CSP.UI.Portal.UtilsNav) [ System = 4 ]
{

/// Do not switch namespace for this page: it needs to stay in %SYS
Parameter AUTONS As BOOLEAN = 0;

/// Displayed name of this page.
Parameter PAGENAME = "OAuth 2.0 Client Descriptions";

Parameter CSPURL = "/csp/sys/sec/%CSP.UI.Portal.OAuth2.Client.ServerList.zen";

Parameter HELPADDRESS = "System Administration,Security,OAuth 2.0,Client";

/// Security requirement
Parameter RESOURCE = "%Admin_OAuth2_Client";

Property EditPage As %String [ InitialExpression = {..Link("%25CSP.UI.Portal.OAuth2.Client.ServerConfiguration.zen",,1)} ];

Property ClientPage As %String [ InitialExpression = {..Link("%25CSP.UI.Portal.OAuth2.Client.ConfigurationList.zen",,1)} ];

/// Store translated targetCol linkCaption for <condition>
Property colDelete As %ZEN.Datatype.caption [ InitialExpression = {$$$Text("Delete")} ];

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

ClientMethod doEdit(IssuerEndpointID, IssuerEndpoint) [ Language = javascript ]
{
}

ClientMethod showClients(IssuerEndpointID, IssuerEndpoint) [ Language = javascript ]
{
}

/// Delete existing configuration.
ClientMethod deleteSetting(IssuerEndpointID) [ Language = javascript ]
{
}

/// Call server delete method.
ClassMethod DeleteItem(PID) As %String [ ZenMethod ]
{
}

}
