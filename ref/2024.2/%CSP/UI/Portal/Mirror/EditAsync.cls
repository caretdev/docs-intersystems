/// Zen page for System Management Portal - Edit Async
Class %CSP.UI.Portal.Mirror.EditAsync Extends (%CSP.UI.Portal.Template, %CSP.UI.Portal.Mirror.Utils) [ System = 4 ]
{

/// Do not switch namespace for this page: it needs to stay in %SYS
Parameter AUTONS As BOOLEAN = 0;

/// Security requirement
Parameter RESOURCE = "%Admin_Manage";

/// Displayed name of this page.
Parameter PAGENAME = "Edit Async Configurations";

Parameter CSPURL = "/csp/sys/mgr/%CSP.UI.Portal.Mirror.EditAsync.zen";

Parameter HELPADDRESS = "Home,Configuration,Edit Mirror";

Property MirrorName As %String;

Property MemberName As %String;

Property OldMemberType As %Integer;

Property OldPurgeSetting As %Boolean;

Property NoFilter As %Boolean;

/// Keep track of the number of databases whose FailoverDB flags we could clear
Property NumFlagSetDBs As %Integer;

/// Store translated targetCol linkCaption for <condition>
Property colAuthorize As %ZEN.Datatype.caption [ InitialExpression = {$$$Text("Authorize Pending DN Updates")} ];

/// Check if user has manage privilege
Property CanManage As %ZEN.Datatype.boolean [ InitialExpression = {$System.Security.Check("%Admin_Manage","USE")} ];

Property lblText2 As %String;

XData Style
{
}

XData contentPane [ XMLNamespace = "http://www.intersystems.com/zen" ]
{
}

ClientMethod onloadHandler() [ Language = javascript ]
{
}

/// If we are currently a DR member, keep track of whether we're changing to reporting
ClientMethod updateType(newVal) [ Language = javascript ]
{
}

/// Overriding for DN redraw
ClientMethod onPopupAction(popupName, action, value) [ Language = javascript ]
{
}

ClientMethod doEdit(mirrorName) [ Language = javascript ]
{
}

ClientMethod doStopTracking(mirrorName) [ Language = javascript ]
{
}

ClientMethod doDNUpdates(mirrorName) [ Language = javascript ]
{
}

ClientMethod EditDejrnFilter(mirrorName) [ Language = javascript ]
{
}

ClientMethod doRemove() [ Language = javascript ]
{
}

ClientMethod doJoin() [ Language = javascript ]
{
}

ClientMethod doClearFlag(dbName, dir) [ Language = javascript ]
{
}

ClientMethod doClearAll() [ Language = javascript ]
{
}

ClientMethod doSave() [ Language = javascript ]
{
}

ClientMethod verifySSL() [ Language = javascript ]
{
}

ClientMethod validateSave(proxy) [ Language = javascript ]
{
}

Method UpdateDN() As %Status [ ZenMethod ]
{
}

Method UpdateDejrnFilter(mirname As %String, Filter As %String) As %Status [ ZenMethod ]
{
}

ClassMethod CanClear() As %Boolean [ ZenMethod ]
{
}

ClassMethod ClearFailoverDBFlag(dir As %String) As %String [ ZenMethod ]
{
}

ClassMethod ClearFailoverDBFlagAll() As %String [ ZenMethod ]
{
}

ClassMethod DRMemberValidation(SystemName) As %String [ ZenMethod ]
{
}

ClassMethod CheckDejournalFilter(SystemName) As %String [ ZenMethod ]
{
}

Method DrawClearLink(pTable As %ZEN.Component.tablePane, pName As %String, pSeed As %String) As %Status
{
}

ClassMethod DrawFailoverDB(pTable As %ZEN.Component.tablePane, pName As %String, pSeed As %String) As %Status
{
}

///  Save general association data to server.<br/>
///  Returns proxy.ok = 1 (save successful) or 0 (error occurred)<br/>
///  proxy.ErrorMessage (save failed and display this error message).
///  If proxy.ok is 1 and no messages returned then we return to SMP home.
ClassMethod SaveData(pProxy As %ZEN.proxyObject) As %ZEN.proxyObject [ ZenMethod ]
{
}

/// Set Locator bar and determine whether to show change password option.
Method %OnAfterCreatePage() As %Status
{
}

Method %OnGetPageName() As %String
{
}

/// Get information to display in the ribbon bar.
Method OnGetRibbonInfo(Output pDisplay As %Boolean, Output pViewIcons As %List, Output pSortOptions As %List, Output pSearchBox As %Boolean, Output pRibbonTitle As %String, Output pCommands As %List) As %Status
{
}

Method RefreshPendingMessage() As %Status [ ZenMethod ]
{
}

/// Return server info per validation checks for failure.
Method GetValidationInfo(ByRef pParms, Output pObject As %RegisteredObject) As %Status
{
}

/// Get the title string to add to the locator row.
ClientMethod getPageTitle() As %String [ Language = javascript ]
{
}

}
