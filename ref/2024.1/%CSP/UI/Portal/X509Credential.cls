/// Zen page for System Management Portal - Show Databases Freespace
Class %CSP.UI.Portal.X509Credential Extends %CSP.UI.Portal.Template [ System = 4 ]
{

/// Do not switch namespace for this page: it needs to stay in %SYS
Parameter AUTONS As BOOLEAN = 0;

/// Displayed name of this page.
Parameter PAGENAME = "Edit X509Credentials";

Parameter CSPURL = "/csp/sys/sec/%CSP.UI.Portal.X509Credential.zen";

Parameter HELPADDRESS = "Home,Security Management,X.509 Credentials";

Parameter PARENTPAGE = "/csp/sys/sec/%CSP.UI.Portal.X509Credentials.zen";

Parameter RECENT = 0;

/// Security requirement
Parameter RESOURCE = "%Admin_Secure";

Property IsEditForm As %Boolean [ InitialExpression = 1 ];

Property isNew As %ZEN.Datatype.boolean(ZENURL = "isNew") [ InitialExpression = "0" ];

Property msgPassword As %ZEN.Datatype.caption [ InitialExpression = {$$$Text("The two Passwords are not the same. Please type them again.")} ];

/// ID for edit. Null if adding new credentials.
Property PID As %String(ZENURL = "PID");

XData Style
{
}

XData contentPane [ XMLNamespace = "http://www.intersystems.com/zen" ]
{
}

/// User clicked one of the Browse buttons.
/// Save the name of the textfield so that when you return you know which textfield to update.
ClientMethod browseSelect(name, wildcard) [ Language = javascript ]
{
}

/// User changed private key. Show/hide password fields
ClientMethod changeKey() [ Language = javascript ]
{
}

/// This client event, if present, is fired when the page is loaded.
ClientMethod onloadHandler() [ Language = javascript ]
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

/// Used to draw title for this page. pHalpAddress is need to build the link for Help for this page.
ClassMethod DrawTitle1(pSeed As %String) As %Status
{
}

/// For edit, draw certificate data
Method DrawCerData(pSeed As %String) As %Status
{
}

/// Get user selection and send to server to save settings.
ClientMethod doSave() [ Language = javascript ]
{
}

ClientMethod doCancel() [ Language = javascript ]
{
}

/// This client event, if present, is fired when the a popup page
/// launched from this page fires an action.
ClientMethod onPopupAction(popupName, action, value) [ Language = javascript ]
{
}

/// Save general association data to server
ClassMethod SaveData(pid, pAlias, pCertificate, pPrivateKey, pPrivateKeyType, pPrivateKeyPassword, pOwnerList, pPeerNames, pCAFile) As %ZEN.proxyObject [ ZenMethod ]
{
}

/// This method is called when page is loaded.
/// Load data into the fields.
ClassMethod UpdateDetails(pid) As %String [ ZenMethod ]
{
}

/// Get the title string to add to the locator row.
ClientMethod getPageTitle() As %String [ Language = javascript ]
{
}

}
