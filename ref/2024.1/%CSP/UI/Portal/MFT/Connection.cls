/// Page to define Managed File Transfer Connections.
Class %CSP.UI.Portal.MFT.Connection Extends %CSP.UI.Portal.Template [ System = 4 ]
{

/// Do not switch namespace for this page: it needs to stay in %SYS
Parameter AUTONS As BOOLEAN = 0;

/// Displayed name of this page.
Parameter PAGENAME = "Managed File Transfer Connection";

Parameter CSPURL = "/csp/sys/sec/%CSP.UI.Portal.MFT.Connection.zen";

Parameter HELPADDRESS = "System Administration,Security,Managed File Transfer Connections,Managed File Transfer Connection";

Parameter PARENTPAGE = "/csp/sys/sec/%CSP.UI.Portal.MFT.ConnectionList.zen";

Parameter RECENT = 0;

/// Security requirement
Parameter RESOURCE = "%Admin_Secure";

Property IsEditForm As %Boolean [ InitialExpression = 1 ];

Property isNew As %ZEN.Datatype.boolean(ZENURL = "isNew") [ InitialExpression = "0" ];

/// ID for edit. Null if adding new configuration.
Property PID As %String(ZENURL = "PID");

XData Style
{
}

XData contentPane [ XMLNamespace = "http://www.intersystems.com/zen" ]
{
}

/// End Add/Edit and return to list page.
ClientMethod doFinish() [ Language = javascript ]
{
}

/// Get user input and send to server to save settings.
ClientMethod doSave() [ Language = javascript ]
{
}

/// Initialize.
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

/// Get redirect URL upon user changing any of server address/port/prefix.
ClientMethod getRedirectURL() [ Language = javascript ]
{
}

ClassMethod GetRedirectURLforUI(pAddress, pPort, pPrefix, pSSL) As %String [ ZenMethod ]
{
}

/// Used when Editing an existing connection. Load previously defined values into fields.
Method LoadData(PID As %String, Output sys) As %Status
{
}

/// Save general association data to server
/// Test can only be done for client, not server.
ClassMethod SaveData(pValueProxy As %ZEN.proxyObject) As %ZEN.proxyObject [ ZenMethod ]
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
