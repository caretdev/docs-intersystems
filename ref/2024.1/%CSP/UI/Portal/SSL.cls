/// Zen page for System Management Portal - Edit SSL/TLS configuration
Class %CSP.UI.Portal.SSL Extends %CSP.UI.Portal.Template [ System = 4 ]
{

/// Do not switch namespace for this page: it needs to stay in %SYS
Parameter AUTONS As BOOLEAN = 0;

/// Displayed name of this page.
Parameter PAGENAME = "SSL/TLS Configuration";

Parameter CSPURL = "/csp/sys/sec/%CSP.UI.Portal.SSL.zen";

Parameter HELPADDRESS = "System Administration,Security,SSL/TLS Configurations";

Parameter PARENTPAGE = "/csp/sys/sec/%CSP.UI.Portal.SSLList.zen";

Parameter RECENT = 0;

/// Security requirement
Parameter RESOURCE = "%Admin_Secure";

/// Flag to indicate what to do with the Test and Save button.
/// -1 = Both disabled; 0 = Test disabled; -10 = Test hidden; 1 = Test enabled
Property AllowTest As %Integer [ InitialExpression = 1 ];

Property IsEditForm As %Boolean [ InitialExpression = 1 ];

Property isNew As %ZEN.Datatype.boolean(ZENURL = "isNew") [ InitialExpression = "0" ];

/// isMirror is 1 if this window is called from Mirroring Settings
Property isMirror As %ZEN.Datatype.boolean(ZENURL = "isMirror") [ InitialExpression = "0" ];

/// ID for edit. Null if adding new configuration.
Property PID As %String(ZENURL = "PID");

/// Indicate if password is modified. If pwModified is 0 then at save time we won't save password.
Property pwModified As %ZEN.Datatype.boolean [ InitialExpression = "0" ];

/// Keep TLSMinVersion
Property Min As %String;

/// Keep TLSMinVersion
Property Max As %String;

/// Default Ciphersuites value
Property CipherDefault As %String;

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

/// End Add/Edit and return to list page. If this page is called from Mirror then close window.
ClientMethod doFinish() [ Language = javascript ]
{
}

/// User changed CAFile. If not null, enable CRL file. OW, disable
ClientMethod changedCAFile() [ Language = javascript ]
{
}

/// User changed CertificateFile. If not null, enable Private password fields. OW, disable
ClientMethod changedFile() [ Language = javascript ]
{
}

/// User changed Peer certificate verification level.
/// If this is Type Server, and the Peer level is None then disable CAFile field. OW enable.
ClientMethod changePeer() [ Language = javascript ]
{
}

/// User changed Type. Show/hide client/server credentials related fields.
ClientMethod changeType() [ Language = javascript ]
{
}

/// User changed password. Update flag.
ClientMethod changePW() [ Language = javascript ]
{
}

/// User changed PWOptions option. If they want to enter new password, show password fields. Otherwise hide them.
ClientMethod togglePW() [ Language = javascript ]
{
}

/// User changed OCSP option.
ClientMethod toggleOCSP() [ Language = javascript ]
{
}

/// Change Min or Max Version
ClientMethod changeVersion(MinVersion) [ Language = javascript ]
{
}

ClientMethod getVersion(value) [ Language = javascript ]
{
}

/// Get user input and send to server to save settings.
/// If isTest is 1, user clicked the Test button. Then after saving, we'll do a TestConnection.
ClientMethod doSave(isTest) [ Language = javascript ]
{
}

/// This client event, if present, is fired when the a popup page
/// launched from this page fires an action.
ClientMethod onPopupAction(popupName, action, value) [ Language = javascript ]
{
}

/// Set focus to the Name field.
ClientMethod onloadHandler() [ Language = javascript ]
{
}

/// -1 = Both disabled; 0 = Test disabled; -10 = Test hidden; 1 = Test enabled
ClientMethod testButtons() [ Language = javascript ]
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

/// Used when Editing an existing SSL/TLS configuration. Load previously defined values into fields.
Method LoadData(PID As %String) As %Status
{
}

/// Save general association data to server
/// Test can only be done for client, not server.
ClassMethod SaveData(PID, isTest, Name, Description, Enabled, Type, VerifyPeer, CAFile, CRLFile, CertificateFile, PrivateKeyFile, PrivateKeyType, PrivateKeyPassword, CipherList, Ciphersuites, TLSMinVersion, TLSMaxVersion, TestHost, TestPort, pwModified, PWOptions, OCSP, OCSPIssuer, OCSPResp, OCSPTimeout, DHBits) As %ZEN.proxyObject [ ZenMethod ]
{
}

Method OnGetRibbonInfo(Output pDisplay As %Boolean, Output pViewIcons As %List, Output pSortOptions As %List, Output pSearchBox As %Boolean, Output pRibbonTitle As %String, Output pCommands As %List) As %Status
{
}

/// Get the title string to add to the locator row.
ClientMethod getPageTitle() As %String [ Language = javascript ]
{
}

}
