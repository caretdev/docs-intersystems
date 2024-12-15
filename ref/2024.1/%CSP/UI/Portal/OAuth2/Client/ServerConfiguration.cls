/// Zen page for System Management Portal - Edit OAuth 2.0 client configuration
Class %CSP.UI.Portal.OAuth2.Client.ServerConfiguration Extends %CSP.UI.Portal.Template [ System = 4 ]
{

/// Do not switch namespace for this page: it needs to stay in %SYS
Parameter AUTONS As BOOLEAN = 0;

/// Displayed name of this page.
Parameter PAGENAME = "OAuth 2.0 Client Configuration";

Parameter CSPURL = "/csp/sys/sec/%CSP.UI.Portal.OAuth2.Client.ServerConfiguration.zen";

Parameter HELPADDRESS = "System Administration,Security,OAuth 2.0,Client,Server Descriptions";

Parameter PARENTPAGE = "/csp/sys/sec/%CSP.UI.Portal.OAuth2.Client.ServerList.zen";

Parameter RECENT = 0;

/// Security requirement
Parameter RESOURCE = "%Admin_OAuth2_Client";

Property IsEditForm As %Boolean [ InitialExpression = 1 ];

Property isNew As %ZEN.Datatype.boolean(ZENURL = "isNew") [ InitialExpression = "0" ];

/// ID for edit. Null if adding new configuration.
Property PID As %String(ZENURL = "PID");

/// MetadataID of the server metadata.
Property MetadataID As %String;

Property jwksAvailable As %Boolean;

XData Style
{
}

XData contentPane [ XMLNamespace = "http://www.intersystems.com/zen" ]
{
}

/// Show/hide fields after user selected a JWT option
ClientMethod doJWTChange(selection) [ Language = javascript ]
{
}

/// User clicked one of the Browse buttons.
/// Save the name of the textfield so that when you return you know which textfield to update.
ClientMethod browseSelect(name) [ Language = javascript ]
{
}

/// This client event, if present, is fired when the a popup page
/// launched from this page fires an action.
ClientMethod onPopupAction(popupName, action, value) [ Language = javascript ]
{
}

/// Retrieve an updated public JWKS
ClientMethod doUpdateJWKS() [ Language = javascript ]
{
}

/// End Add/Edit and return to list page.
ClientMethod doFinish() [ Language = javascript ]
{
}

/// Get user input and send to server to save settings.
ClientMethod doSave(isDiscovery) [ Language = javascript ]
{
}

/// Enable fields that are only allowed for manual
ClientMethod doManual() [ Language = javascript ]
{
}

ClientMethod doHidden(flag) [ Language = javascript ]
{
}

/// Get server metadata from OpenID Connect Discovery endpoint of authorization server..
ClientMethod doDiscovery() [ Language = javascript ]
{
}

/// Set focus to the Name field.
ClientMethod onloadHandler() [ Language = javascript ]
{
}

/// Enable server fields only if user clicked Edit button
ClientMethod disableServer(flag) [ Language = javascript ]
{
}

Method %OnAfterCreatePage() As %Status
{
}

Method %OnGetPageName() As %String
{
}

/// Return the array of links to show in the locator bar.<br/>
/// pLink(n)=$LB(caption,link)
Method %GetLocatorLinks(Output pLink) As %Status
{
}

/// Used when Editing an existing OAuth2 client configuration. Load previously defined values into fields.
Method LoadData(PID As %String, Output sys) As %Status
{
}

/// Call UpdateJWKS method
ClassMethod UpdateJWKS(pValueProxy As %ZEN.proxyObject) As %ZEN.proxyObject [ ZenMethod ]
{
}

/// Save general association data to server
/// Test can only be done for client, not server.
ClassMethod SaveData(pValueProxy As %ZEN.proxyObject) As %ZEN.proxyObject [ ZenMethod ]
{
}

/// Get metadata from authorization discovery endpoint.
ClassMethod Discovery(pValueProxy As %ZEN.proxyObject) As %ZEN.proxyObject [ ZenMethod ]
{
}

Method OnGetRibbonInfo(Output pDisplay As %Boolean, Output pViewIcons As %List, Output pSortOptions As %List, Output pSearchBox As %Boolean, Output pRibbonTitle As %String, Output pCommands As %List) As %Status
{
}

/// Get the (localized) title string for the page.
/// Overrid Edit: id as text on tab display below Menu
Method %OnGetTitle() As %String
{
}

/// Get the title string to add to the locator row.
ClientMethod getPageTitle() As %String [ Language = javascript ]
{
}

}
