/// Zen page for System Management Portal - Edit OAuth 2.0 client configuration
Class %CSP.UI.Portal.OAuth2.Client.Configuration Extends %CSP.UI.Portal.Template [ System = 4 ]
{

/// Do not switch namespace for this page: it needs to stay in %SYS
Parameter AUTONS As BOOLEAN = 0;

/// Displayed name of this page.
Parameter PAGENAME = "OAuth 2.0 Client Configuration";

Parameter CSPURL = "/csp/sys/sec/%CSP.UI.Portal.OAuth2.Client.Configuration.zen";

Parameter HELPADDRESS = "System Administration,Security,OAuth 2.0,Client Configurations,Client Configuration";

Parameter RECENT = 0;

/// Security requirement
Parameter RESOURCE = "%Admin_OAuth2_Client";

Property IsEditForm As %Boolean [ InitialExpression = 1 ];

Property isNew As %ZEN.Datatype.boolean(ZENURL = "isNew") [ InitialExpression = "0" ];

/// ID for edit. Null if adding new configuration.
Property PID As %String(ZENURL = "PID");

Property currIndex As %Integer;

Property NumTabs As %Integer [ InitialExpression = 4 ];

Property buttonCaption As %String [ InitialExpression = "default" ];

Property jwksAvailable As %Boolean;

/// IssuerEndpointID of the Server for client list.
Property IssuerEndpointID As %String(ZENURL = "IssuerEndpointID");

/// IssuerEndpoint of the Server for client list.
Property IssuerEndpoint As %String(ZENURL = "IssuerEndpoint");

XData Style
{
}

XData SVGStyle
{
}

XData contentPane [ XMLNamespace = "http://www.intersystems.com/zen" ]
{
}

ClientMethod modified() [ Language = javascript ]
{
}

ClientMethod tabChanged(index) [ Language = javascript ]
{
}

ClientMethod createJWT(checked) [ Language = javascript ]
{
}

/// End Add/Edit and return to list page.
ClientMethod doFinish() [ Language = javascript ]
{
}

/// User changed Type. Show/hide client/server credentials related fields.
ClientMethod changeClientType() [ Language = javascript ]
{
}

/// User changed Authentication Type. Show/hide authorization signing algorithm.
ClientMethod changeAuthType() [ Language = javascript ]
{
}

/// Rotate keys of JWKS
ClientMethod doRotate() [ Language = javascript ]
{
}

/// Get user input and send to server to save settings.
ClientMethod doSave() [ Language = javascript ]
{
}

/// Register this client using OpenID Connect Dynamic Registration.
/// Discovery of the ServerDefinition must already have been done and any client defined properties set.
ClientMethod doRegister() [ Language = javascript ]
{
}

/// Hide/show register button based on status
ClientMethod registerButtonHandler() [ Language = javascript ]
{
}

/// Get user input and prepare proxy object for save or register.
ClientMethod doPrepare(valueProxy, isRegister) [ Language = javascript ]
{
}

/// This method is necessary for the svgTabArea and tabBar to show properly.
ClientMethod onlayoutHandler(load) [ Language = javascript ]
{
}

/// Set focus to the Name field.
ClientMethod onloadHandler() [ Language = javascript ]
{
}

Method %OnAfterCreatePage() As %Status
{
}

Method %OnGetPageName() As %String
{
}

/// Get the (localized) title string for the page.
/// Overrid Edit: id as text on tab display below Menu
Method %OnGetTitle() As %String
{
}

/// Return the array of links to show in the locator bar.<br/>
/// pLink(n)=$LB(caption,link)
Method %GetLocatorLinks(Output pLink) As %Status
{
}

/// Get redirect URL upon user changing any of server address/port/prefix.
ClientMethod getRedirectURL() [ Language = javascript ]
{
}

/// Get front channel logout URL upon user changing the provided front channel logout URL
ClientMethod getFrontChannelURL() [ Language = javascript ]
{
}

/// Used when Editing an existing OAuth2 client configuration. Load previously defined values into fields.
Method LoadData(PID As %String, sys As OAuth2.Client = "") As %String
{
}

/// Call RotateKeys method
ClassMethod Rotate(pValueProxy As %ZEN.proxyObject) As %ZEN.proxyObject [ ZenMethod ]
{
}

/// Save general association data to server
/// Test can only be done for client, not server.
Method SaveData(pValueProxy As %ZEN.proxyObject) As %ZEN.proxyObject [ ZenMethod ]
{
}

/// Read the updated mnetadata from a previously dynamically registered client
Method ReadMetadata(pValueProxy As %ZEN.proxyObject) As %ZEN.proxyObject [ ZenMethod ]
{
}

/// Register this client and save its metadata
Method Register(pValueProxy As %ZEN.proxyObject) As %ZEN.proxyObject [ ZenMethod ]
{
}

/// Get the issuer endpoint
Method GetIssuerEndpointID() As %String
{
}

/// Prepare object with the client data.
Method Prepare(pValueProxy As %ZEN.proxyObject) As OAuth2.Client [ ZenMethod ]
{
}

Method OnGetRibbonInfo(Output pDisplay As %Boolean, Output pViewIcons As %List, Output pSortOptions As %List, Output pSearchBox As %Boolean, Output pRibbonTitle As %String, Output pCommands As %List) As %Status
{
}

ClassMethod GetRedirectURLforUI(pAddress, pPort, pPrefix, pSSL) As %String [ ZenMethod ]
{
}

ClassMethod GetFrontChannelURLforUI(pProvidedUrl) As %String [ ZenMethod ]
{
}

Method DrawHelpText(pSeed As %String) As %Status
{
}

/// Get the title string to add to the locator row.
ClientMethod getPageTitle() As %String [ Language = javascript ]
{
}

}
