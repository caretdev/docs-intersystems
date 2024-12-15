/// Zen page for System Management Portal - Edit an External Language Server
Class %CSP.UI.Portal.ExternalLanguageServer Extends %CSP.UI.Portal.Template [ System = 4 ]
{

/// Do not switch namespace for this page: it needs to stay in %SYS
Parameter AUTONS As BOOLEAN = 0;

/// Displayed name of this page.
Parameter PAGENAME = "Object Gateway";

Parameter CSPURL = "/csp/sys/mgr/%CSP.UI.Portal.ExternalLanguageServer.zen";

Parameter HELPADDRESS = "System Administration, Configuration, Connectivity, External Language Servers";

Parameter PARENTPAGE = "/csp/sys/mgr/%CSP.UI.Portal.ExternalLanguageServers.zen";

/// Security requirement
Parameter RESOURCE = {$$$AdminExternalLanguageServerEditResourceName};

Parameter RECENT = 0;

/// ID for edit.
Property PID As %String(ZENURL = "PID");

Property isNew As %ZEN.Datatype.boolean(ZENURL = "isNew") [ InitialExpression = "0" ];

Property IsEditForm As %Boolean(ZENURL = "IsEditForm") [ InitialExpression = 1 ];

/// Is this a Unix system
Property IsUnix As %Boolean [ InitialExpression = "0" ];

Property msgActionsDisplay As %String [ InitialExpression = {$$$Text("None,Restart,Alert,Restart and Alert")} ];

Property msgActionsValue As %String [ InitialExpression = "N,R,A,RA" ];

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

/// This client event, if present, is fired when the a popup page
/// launched from this page fires an action.
ClientMethod onPopupAction(popupName, action, value) [ Language = javascript ]
{
}

Method %OnAfterCreatePage() As %Status
{
}

ClassMethod RemoveType(Type As %String, pListIn As %String) As %String
{
}

///  Get information to display in the ribbon bar.
Method OnGetRibbonInfo(Output pDisplay As %Boolean, Output pViewIcons As %List, Output pSortOptions As %List, Output pSearchBox As %Boolean, Output pRibbonTitle As %String, Output pCommands As %List) As %Status
{
}

Method %OnGetPageName() As %String
{
}

ClientMethod toggleAdvancedSettings() [ Language = javascript ]
{
}

/// User changed Type. Show/hide client/server credentials related fields.
ClientMethod changeType() [ Language = javascript ]
{
}

/// Validation handler for form.
ClientMethod formValidationHandler() [ Language = javascript ]
{
}

/// Get user input and send to server to save settings.
ClientMethod doSave() [ Language = javascript ]
{
}

ClientMethod onloadHandler() [ Language = javascript ]
{
}

/// Load values into fields.
Method LoadData(PID As %String) As %String
{
}

/// Save External Language Server definition to server
ClassMethod SaveData(pProxy As %ZEN.proxyObject, isNew As %Boolean) As %ZEN.proxyObject [ ZenMethod ]
{
}

/// Return the array of links to show in the locator bar.<br/>
/// pLink(n)=$LB(caption,link)
Method %GetLocatorLinks(Output pLink) As %Status
{
}

/// Get the title string to add to the locator row.
ClientMethod getPageTitle() As %String [ Language = javascript ]
{
}

}
