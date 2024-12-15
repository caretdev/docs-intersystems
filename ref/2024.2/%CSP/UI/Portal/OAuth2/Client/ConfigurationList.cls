/// Zen page for System Management Portal - OAuth2 List page
Class %CSP.UI.Portal.OAuth2.Client.ConfigurationList Extends (%CSP.UI.Portal.Template, %CSP.UI.Portal.UtilsNav) [ System = 4 ]
{

/// Do not switch namespace for this page: it needs to stay in %SYS
Parameter AUTONS As BOOLEAN = 0;

/// Displayed name of this page.
Parameter PAGENAME = "OAuth 2.0 Client Configurations";

Parameter CSPURL = "/csp/sys/sec/%CSP.UI.Portal.OAuth2.Client.ConfigurationList.zen";

Parameter HELPADDRESS = "System Administration,Security,OAuth 2.0 Client Configurations,Client Configurations";

Parameter PARENTPAGE = "/csp/sys/sec/%CSP.UI.Portal.OAuth2.Client.ServerList.zen";

/// Security requirement
Parameter RESOURCE = "%Admin_OAuth2_Client";

Property EditPage As %String [ InitialExpression = {..Link("%25CSP.UI.Portal.OAuth2.Client.Configuration.zen",,1)} ];

/// IssuerEndpointID of the Server for client list.
Property IssuerEndpointID As %String(ZENURL = "IssuerEndpointID");

/// IssuerEndpoint of the Server for client list.
Property IssuerEndpoint As %String(ZENURL = "IssuerEndpoint");

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

ClientMethod doNew(IssuerEndpointID, IssuerEndpoint) [ Language = javascript ]
{
}

ClientMethod doEdit(ApplicationName, IssuerEndpointID, IssuerEndpoint) [ Language = javascript ]
{
}

/// Delete existing configuration.
ClientMethod deleteSetting(PID) [ Language = javascript ]
{
}

/// Call server delete method.
ClassMethod DeleteItem(PID) As %String [ ZenMethod ]
{
}

}
