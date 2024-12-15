/// Database Encryption Keys. Activate, Deactivate database encryption key and configure startup options.
Class %CSP.UI.Portal.EncryptionDatabase Extends %CSP.UI.Portal.Template [ System = 4 ]
{

/// Do not switch namespace for this page: it needs to stay in %SYS
Parameter AUTONS As BOOLEAN = 0;

/// Displayed name of this page.
Parameter PAGENAME = "Database Encryption";

Parameter CSPURL = "/csp/sys/sec/%CSP.UI.Portal.EncryptionDatabase.zen";

Parameter HELPADDRESS = "System Administration,Encryption,Database Encryption";

/// Security requirement
Parameter RESOURCE = "%Admin_Secure";

Property browseselect As %String;

Property LocatorHeader As %ZEN.Datatype.caption [ InitialExpression = {$$$Text("Database Encryption")} ];

Property PageURL As %ZEN.Datatype.string;

Property lblDeactivate As %ZEN.Datatype.caption [ InitialExpression = {$$$TextJS("Are you sure you want to deactivate key %1?")} ];

/// Current activated default key.
Property DefaultKey As %String;

/// Current activated key for journals.
Property JournalKey As %String;

/// List of Current activated keys delimited by commas.
Property KeyList As %String;

/// List of currently activated key lengths, comma delimited.
Property KeyLenList As %String;

/// Key File for Unattended.
Property KeyFileName As %String;

/// Wheter to allow multiple DB Encryption (restrict it in 2013.2 and allow for 2014.1+)
Property AllowMultiDB As %Boolean [ InitialExpression = 1 ];

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

Method DrawWarning(pSeed As %String) As %Status
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

/// User clicked the "Deactivate Key" button. Process only if confirmed.
ClientMethod doDeactivate(KeyID) [ Language = javascript ]
{
}

/// User changed Key File. Enable fields if file name is changed.
ClientMethod doFileChange() [ Language = javascript ]
{
}

/// User selected a Startup option. Show or hide related fields based on selection.
ClientMethod doOptions(option) [ Language = javascript ]
{
}

/// User clicked the "Configure Startup Settings" button. Show the form to configure.
ClientMethod doConfigure() [ Language = javascript ]
{
}

/// User clicked the "Set Default" button to change default key id.
ClientMethod doDefault(KeyID, use) [ Language = javascript ]
{
}

/// Reload page.
ClientMethod refreshPage() [ Language = javascript ]
{
}

/// Get user selection and send to server to activate key.
ClientMethod doSave() [ Language = javascript ]
{
}

/// Get user selection and send to server to save.
ClientMethod doSaveStartup() [ Language = javascript ]
{
}

/// Hide edit forms.
ClientMethod doCancel() [ Language = javascript ]
{
}

/// Multiple DB Encryption is allowed starting from 2014.1.
/// And Configure Startup Settings is always allowed.
ClientMethod onloadHandler() [ Language = javascript ]
{
}

/// This client event, if present, is fired when the a popup page
/// launched from this page fires an action.
ClientMethod onPopupAction(popupName, action, value) [ Language = javascript ]
{
}

/// Save general data to server
ClassMethod DeactivateKey(pKeyID) As %ZEN.proxyObject [ ZenMethod ]
{
}

/// Save general data to server
ClassMethod ActivateKey(pKeyFile, pUsername, pPassword) As %ZEN.proxyObject [ ZenMethod ]
{
}

/// Save startup settings to server.
ClassMethod SaveStartup(pMode, pJournalFile, pIRISTemp, pAuditEncrypt, pKeyFile, pUsername, pPassword) As %ZEN.proxyObject [ ZenMethod ]
{
}

/// Set new default key to server.
ClassMethod SetDefaultKey(pKeyID, use) As %ZEN.proxyObject [ ZenMethod ]
{
}

/// Draw activated databases encryption key identifier table
Method DrawIDs(pSeed As %String) As %Status
{
}

/// Get information to display in the ribbon bar.
Method OnGetRibbonInfo(Output pDisplay As %Boolean, Output pViewIcons As %List, Output pSortOptions As %List, Output pSearchBox As %Boolean, Output pRibbonTitle As %String, Output pCommands As %List) As %Status
{
}

/// Get the title string to add to the locator row.
ClientMethod getPageTitle() As %String [ Language = javascript ]
{
}

}
