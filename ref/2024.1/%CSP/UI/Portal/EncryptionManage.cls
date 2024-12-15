/// Manage Existing Encryption Key File. You may view existing adminstrators defined for a key file,
/// delete or add more administrators to an existing key file.
Class %CSP.UI.Portal.EncryptionManage Extends %CSP.UI.Portal.Template [ System = 4 ]
{

/// Do not switch namespace for this page: it needs to stay in %SYS
Parameter AUTONS As BOOLEAN = 0;

/// Displayed name of this page.
Parameter PAGENAME = "Manage Encryption Key File";

Parameter CSPURL = "/csp/sys/sec/%CSP.UI.Portal.EncryptionManage.zen";

Parameter HELPADDRESS = "System Administration,Encryption,Manage Encryption Key File";

/// Security requirement
Parameter RESOURCE = "%Admin_Secure";

/// This is the current key file name after user clicked the OK button.
Property CurrentKeyFile As %String;

/// This is the current key list from the current key file.
Property CurrentKeyList As %String;

Property LocatorHeader As %ZEN.Datatype.caption [ InitialExpression = {$$$Text("Manage Encryption Key File")} ];

Property lblDefined As %ZEN.Datatype.caption [ InitialExpression = {$$$Text("Administrators Defined in Key File %1")} ];

Property lblKeyTable As %ZEN.Datatype.caption [ InitialExpression = {$$$Text("Encryption Keys Defined in Key File %1")} ];

Property lblDelete As %ZEN.Datatype.caption [ InitialExpression = {$$$TextJS("Are you sure you want to delete administrator %1 from %2?")} ];

Property lblDeleted As %ZEN.Datatype.caption [ InitialExpression = {$$$Text("Deleted administrator: ")} ];

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

ClientMethod doAdd(what) [ Language = javascript ]
{
}

ClientMethod doDelete(deleteUser) [ Language = javascript ]
{
}

ClientMethod doDeleteKey(deleteKey) [ Language = javascript ]
{
}

/// Load key file.
ClientMethod doOK() [ Language = javascript ]
{
}

/// Load or reload Key and Admin tables after user clicked OK for Key File, or after Add or Delete.
ClientMethod loadAdmin() [ Language = javascript ]
{
}

/// This client event, if present, is fired when the a popup page
/// launched from this page fires an action.
ClientMethod onPopupAction(popupName, action, value) [ Language = javascript ]
{
}

ClassMethod AdminRemove(KeyFile, Username) As %ZEN.proxyObject [ ZenMethod ]
{
}

ClassMethod KeyRemove(KeyFile, KeyID) As %ZEN.proxyObject [ ZenMethod ]
{
}

/// Load key file
ClassMethod LoadFile(KeyFile) As %ZEN.proxyObject [ ZenMethod ]
{
}

Method DrawAdmin(pSeed As %String) As %Status
{
}

Method DrawKeys(pSeed As %String) As %Status
{
}

}
