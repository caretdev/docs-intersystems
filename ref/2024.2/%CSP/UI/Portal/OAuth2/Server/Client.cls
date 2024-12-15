/// Page to define OAuth2 server clients
/// which have registered with the authorization server.
Class %CSP.UI.Portal.OAuth2.Server.Client Extends %CSP.UI.Portal.Template [ System = 4 ]
{

/// Do not switch namespace for this page: it needs to stay in %SYS
Parameter AUTONS As BOOLEAN = 0;

/// Displayed name of this page.
Parameter PAGENAME = "OAuth 2.0 Authorization Server Client Configuration";

Parameter CSPURL = "/csp/sys/sec/%CSP.UI.Portal.OAuth2.Server.Client.zen";

Parameter HELPADDRESS = "System Administration,Security,OAuth2,Server Client Configuration";

Parameter RECENT = 0;

/// Security requirement
Parameter RESOURCE = "%Admin_OAuth2_Registration";

Property IsEditForm As %Boolean [ InitialExpression = 1 ];

Property NAMESPACE As %ZEN.Datatype.string(ZENURL = "$NAMESPACE");

/// ID for edit. Null if adding new client.
Property ClientId As %String(ZENURL = "ClientId");

Property isNew As %Boolean;

Property EditPage As %String [ InitialExpression = {..Link("%25CSP.UI.Portal.OAuth2.Server.Client.zen",,1)} ];

Property addRedirectURL As %Boolean [ InitialExpression = 1 ];

Property currIndex As %Integer;

Property NumTabs As %Integer [ InitialExpression = 4 ];

Property jwksAvailable As %Boolean;

/// This Style block contains page-specific CSS style definitions.
XData Style
{
}

XData SVGStyle
{
}

/// This XML block defines the contents of this pane.
XData contentPane [ XMLNamespace = "http://www.intersystems.com/zen" ]
{
}

ClientMethod modified() [ Language = javascript ]
{
}

ClientMethod tabChanged(index) [ Language = javascript ]
{
}

/// User changed Authentication Type. Show/hide authorization signing algorithm.
ClientMethod changeAuthType() [ Language = javascript ]
{
}

/// This method is necessary for the svgTabArea and tabBar to show properly.
ClientMethod onlayoutHandler(load) [ Language = javascript ]
{
}

/// This client event, if present, is fired when the page is loaded.
ClientMethod onloadHandler() [ Language = javascript ]
{
}

ClientMethod showHide(fieldName) [ Language = javascript ]
{
}

/// User clicked an existing redirect url from the listbox.<br>
/// Set the value into the textbox for editing or removing.
ClientMethod selectRedirectURL() [ Language = javascript ]
{
}

ClientMethod ClientTypeModified() [ Language = javascript ]
{
}

/// User clicked the Add URL button to add a new Redirect URL.<br>
/// Clear the textbox to allow user to enter a new one.
ClientMethod newRedirectURL() [ Language = javascript ]
{
}

/// User clicked the OK button to save a Redirect URL.<br>
/// Clear list selection and hide the edit fields afterwards.
ClientMethod saveRedirectURL() [ Language = javascript ]
{
}

ClientMethod cancelRedirectURL() [ Language = javascript ]
{
}

/// User clicked the Remove button to remove an entry from the listbox.
ClientMethod removeRedirectURL() [ Language = javascript ]
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

/// This callback, if defined, is called when the user presses the OK or Apply action buttons.
/// If this returns false, then the action is cancelled.<br>
ClientMethod doSave(action) As %Boolean [ Language = javascript ]
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

ClientMethod doCancel() [ Language = javascript ]
{
}

/// This client event, if present, is fired when the page is resized.
ClientMethod onresizeHandler() [ Language = javascript ]
{
}

Method %OnGetPageName() As %String
{
}

/// pLink(n)=$LB(caption,link) <br/>
Method %GetLocatorLinks(Output pLink) As %Status
{
}

/// This callback is called after the server-side page
/// object and all of its children are created.<br/>
/// Subclasses can override this to add, remove, or modify
/// items within the page object model, or to provide values
/// for controls.
Method %OnAfterCreatePage() As %Status
{
}

/// Call UpdateJWKS method
ClassMethod UpdateJWKS(pValueProxy As %ZEN.proxyObject) As %ZEN.proxyObject [ ZenMethod ]
{
}

ClassMethod SaveData(pValueProxy As %ZEN.proxyObject) As %ZEN.proxyObject [ ZenMethod ]
{
}

/// Check if file exists. If it does then return the content of the file. Else return error message.
ClassMethod GetPublicJWKS(pFile, Output pFileContent) As %Boolean
{
}

Method OnGetRibbonInfo(Output pDisplay As %Boolean, Output pViewIcons As %List, Output pSortOptions As %List, Output pSearchBox As %Boolean, Output pRibbonTitle As %String, Output pCommands As %List) As %Status
{
}

}
