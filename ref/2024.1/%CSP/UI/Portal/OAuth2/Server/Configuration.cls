/// Page to define OAuth2 authorization server configuration
Class %CSP.UI.Portal.OAuth2.Server.Configuration Extends (%CSP.UI.Portal.Template, %CSP.UI.Component.SelectBoxUtils) [ System = 4 ]
{

/// Do not switch namespace for this page: it needs to stay in %SYS
Parameter AUTONS As BOOLEAN = 0;

/// Displayed name of this page.
Parameter PAGENAME = "OAuth 2.0 Authorization Server Configuration";

Parameter CSPURL = "/csp/sys/sec/%CSP.UI.Portal.OAuth2.Server.Configuration.zen";

Parameter HELPADDRESS = "System Administration,Security,OAuth2,Server Configuration";

Parameter RECENT = 0;

/// Security requirement
Parameter RESOURCE = "%Admin_OAuth2_Server";

Property IsEditForm As %Boolean [ InitialExpression = 1 ];

Property NAMESPACE As %ZEN.Datatype.string(ZENURL = "$NAMESPACE");

Property isNew As %Boolean;

Property ClientPage As %String [ InitialExpression = {..Link("%25CSP.UI.Portal.OAuth2.Server.ClientList.zen",,1)} ];

Property AvaRoles As %String;

Property SelectedRoles As %String;

Property currIndex As %Integer;

Property NumTabs As %Integer [ InitialExpression = 5 ];

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

ClientMethod createJWT(checked) [ Language = javascript ]
{
}

ClientMethod modified() [ Language = javascript ]
{
}

ClientMethod tabChanged(index) [ Language = javascript ]
{
}

/// User clicked an existing redirect url from the listbox.<br>
/// Set the value into the textbox for editing or removing.
ClientMethod selectSupportedScope(currIndex) [ Language = javascript ]
{
}

/// User clicked the Add URL button to add a new Redirect URL.<br>
/// Clear the textbox to allow user to enter a new one.
ClientMethod newSupportedScope() [ Language = javascript ]
{
}

/// User clicked the OK button to save a Redirect URL.<br>
/// Clear list selection and hide the edit fields afterwards.
ClientMethod saveSupportedScope() [ Language = javascript ]
{
}

ClientMethod cancelRedirectURL() [ Language = javascript ]
{
}

/// User clicked the Remove button to remove an entry from the listbox.
ClientMethod removeSupportedScope() [ Language = javascript ]
{
}

ClientMethod showJWT(flag) [ Language = javascript ]
{
}

ClientMethod validatePage() [ Language = javascript ]
{
}

/// This client event, if present, is fired when the page is loaded.
ClientMethod onloadHandler() [ Language = javascript ]
{
}

/// This method is necessary for the svgTabArea and tabBar to show properly.
ClientMethod onlayoutHandler(load) [ Language = javascript ]
{
}

ClientMethod doDelete(action) As %Boolean [ Language = javascript ]
{
}

/// Rotate keys of JWKS
ClientMethod doRotate() [ Language = javascript ]
{
}

/// This callback, if defined, is called when the user presses the OK or Apply action buttons.
/// If this returns false, then the action is cancelled.<br>
ClientMethod doSave(action) As %Boolean [ Language = javascript ]
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

/// Get redirect URL upon user changing any of server address/port/prefix.
ClientMethod getRedirectURL() [ Language = javascript ]
{
}

ClassMethod GetRedirectURLforUI(pAddress, pPort, pPrefix) As %String [ ZenMethod ]
{
}

/// Used when Editing existing OAuth2 authantication server configuration. Load previously defined values into fields or set defaults.
Method LoadData(sys) As %Status
{
}

Method DrawRoleBoxes(pSeed As %String) As %Status
{
}

ClassMethod DrawPageTitle(pSeed As %String) As %Status
{
}

/// Call RotateKeys method
ClassMethod Rotate(pValueProxy As %ZEN.proxyObject) As %ZEN.proxyObject [ ZenMethod ]
{
}

ClassMethod SaveData(pValueProxy As %ZEN.proxyObject) As %ZEN.proxyObject [ ZenMethod ]
{
}

ClassMethod DeleteConfiguration() As %String [ ZenMethod ]
{
}

ClientMethod doClient() [ Language = javascript ]
{
}

/// Get the (localized) name of the page.
///  This should be implemented in a subclass.
Method %OnGetPageName() As %String
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

/// Manually draw html table for Supported Scopes.
/// %session.Data($Username,"SupportedScopes") represents the current supported scopes. Initially it is sys.SupportedScopes and
/// then it may be edited/added/removed.
/// pSeed represents [Action]/indexnumber/scope/scopeDescription
/// because pSeed can only be %String, we'll have to split it after arriving here. Delimiter is ^
/// Examples: <br>
///    add^^newscope name^newscope description
///    edit^1^newscope name^newscope description
///    remove^1^^
Method DrawSupportedScopes(pSeed As %String) As %Status
{
}

ClassMethod GetScopeData(pIndex) As %ZEN.proxyObject [ ZenMethod ]
{
}

/// Check to see if the scope name user entering is a duplicate
ClassMethod CheckScopeData(pScope) As %String [ ZenMethod ]
{
}

/// Check to see if at least one scope is defined. Return 1 if there is.
ClassMethod SupportedScopeExists() [ ZenMethod ]
{
}

/// Get the title string to add to the locator row.
ClientMethod getPageTitle() As %String [ Language = javascript ]
{
}

}
