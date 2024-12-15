/// Create Encryption Key and Key File.
Class %CSP.UI.Portal.EncryptionCreate Extends %CSP.UI.Portal.Template [ System = 4 ]
{

/// Do not switch namespace for this page: it needs to stay in %SYS
Parameter AUTONS As BOOLEAN = 0;

/// Displayed name of this page.
Parameter PAGENAME = "Create New Encryption Key File";

Parameter CSPURL = "/csp/sys/sec/%CSP.UI.Portal.EncryptionCreate.zen";

Parameter HELPADDRESS = "System Administration,Encryption,Create New Encryption Key";

/// Security requirement
Parameter RESOURCE = "%Admin_Secure";

Property IsEditForm As %Boolean [ InitialExpression = 1 ];

Property LocatorHeader As %ZEN.Datatype.caption [ InitialExpression = {$$$Text("Create Encryption Key File")} ];

Property msgPassword As %ZEN.Datatype.caption [ InitialExpression = {$$$Text("The two Passwords are not the same. Please type them again.")} ];

XData Style
{
}

XData contentPane [ XMLNamespace = "http://www.intersystems.com/zen" ]
{
}

Method %OnAfterCreatePage() As %Status
{
}

/// Return the array of links to show in the locator bar.<br/>
/// pLink(n)=$LB(caption,link) <br/>
Method %GetLocatorLinks(Output pLink) As %Status
{
}

/// User clicked one of the Browse buttons.
/// Save the name of the textfield so that when you return you know which textfield to update.
ClientMethod browseSelect(name, wildcard) [ Language = javascript ]
{
}

/// This client event, if present, is fired when the page is loaded.
ClientMethod onloadHandler() [ Language = javascript ]
{
}

ClientMethod validate() As %Boolean [ Language = javascript ]
{
}

/// Get user selection and send to server to save settings.
ClientMethod doSave() [ Language = javascript ]
{
}

/// This client event, if present, is fired when the a popup page
/// launched from this page fires an action.
ClientMethod onPopupAction(popupName, action, value) [ Language = javascript ]
{
}

/// Save general data to server
ClassMethod SaveData(pProxy As %ZEN.proxyObject) As %ZEN.proxyObject [ ZenMethod ]
{
}

Method DrawNote(pSeed As %String) As %Status
{
}

Method DrawWarning(pSeed As %String) As %Status
{
}

/// Get the title string to add to the locator row.
ClientMethod getPageTitle() As %String [ Language = javascript ]
{
}

}
