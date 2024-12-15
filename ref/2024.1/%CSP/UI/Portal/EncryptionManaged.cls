/// Data Element Encryption Key. You may activate or deactivate a data element encryption key.
Class %CSP.UI.Portal.EncryptionManaged Extends %CSP.UI.Portal.Template [ System = 4 ]
{

/// Do not switch namespace for this page: it needs to stay in %SYS
Parameter AUTONS As BOOLEAN = 0;

/// Displayed name of this page.
Parameter PAGENAME = "Data Element Encryption";

Parameter CSPURL = "/csp/sys/sec/%CSP.UI.Portal.EncryptionManaged.zen";

Parameter HELPADDRESS = "System Administration,Encryption,Data Element Encryption";

/// Security requirement
Parameter RESOURCE = "%Admin_Secure";

Property browseselect As %String;

Property LocatorHeader As %ZEN.Datatype.caption [ InitialExpression = {$$$Text("Data Element Encryption")} ];

Property PageURL As %ZEN.Datatype.string;

Property lblDeactivate As %ZEN.Datatype.caption [ InitialExpression = {$$$TextJS("Are you sure you want to deactivate key %1?")} ];

/// This is the max number allowed to be activated.
Property MaxAllowed As %ZEN.Datatype.integer;

/// This is the actual number already activated.
Property CurrentlyActivated As %ZEN.Datatype.integer;

XData Style
{
}

XData contentPane [ XMLNamespace = "http://www.intersystems.com/zen" ]
{
}

Method %OnAfterCreatePage() As %Status
{
}

ClientMethod onloadHandler() [ Language = javascript ]
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

/// User clicked the "Activate Key" button. Show the form to Activate.
ClientMethod doActivate() [ Language = javascript ]
{
}

/// Hide edit forms.
ClientMethod doCancel() [ Language = javascript ]
{
}

/// User clicked the "Deactivate". Process only if confirmed.
ClientMethod doDeactivate(MKEncKeyID) [ Language = javascript ]
{
}

ClientMethod validate() As %Boolean [ Language = javascript ]
{
}

/// Get user selection and send to server to activate key.
ClientMethod doSave() [ Language = javascript ]
{
}

ClientMethod refreshPage() [ Language = javascript ]
{
}

/// Save general data to server
ClassMethod ActivateKey(KeyFile, Username, Password) As %ZEN.proxyObject [ ZenMethod ]
{
}

/// This client event, if present, is fired when the a popup page
/// launched from this page fires an action.
ClientMethod onPopupAction(popupName, action, value) [ Language = javascript ]
{
}

Method DrawIDs(pSeed As %String) As %Status
{
}

/// Save general data to server
ClassMethod DeactivateKey(MKEncKeyID) As %ZEN.proxyObject [ ZenMethod ]
{
}

/// Get information to display in the ribbon bar.
Method OnGetRibbonInfo(Output pDisplay As %Boolean, Output pViewIcons As %List, Output pSortOptions As %List, Output pSearchBox As %Boolean, Output pRibbonTitle As %String, Output pCommands As %List) As %Status
{
}

}
