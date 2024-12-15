/// System Management Portal - System Operations - Mirror Monitor
Class %CSP.UI.Portal.Mirror.Monitor Extends (%CSP.UI.Portal.Utils, %CSP.UI.Portal.Mirror.Utils) [ System = 4 ]
{

/// Do not switch namespace for this page: it needs to stay in %SYS
Parameter AUTONS As BOOLEAN = 0;

Parameter CSPURL = "/csp/sys/op/%CSP.UI.Portal.Mirror.Monitor.zen";

Parameter HELPADDRESS = "Home,Mirror Monitor";

/// Displayed name of this page.
Parameter PAGENAME = "Mirror Monitor";

/// Security requirement
Parameter RESOURCE = "%Admin_Operate";

/// True on the secondary failover member, when it is connected
Property CanDisconnect As %Boolean [ InitialExpression = 0 ];

/// True on the secondary failover member, when it is disconnected
Property CanConnect As %Boolean [ InitialExpression = 0 ];

/// True on the secondary failover member, when it hasn't been added to the primary
Property IsNotSetUp As %Boolean [ InitialExpression = 0 ];

Property IsPrimary As %Integer [ InitialExpression = {$SYSTEM.Mirror.IsPrimary()} ];

Property IsDR As %Integer [ InitialExpression = 0 ];

Property DemoteOther As %Boolean [ InitialExpression = 0 ];

/// 0 - not a mirror member <br>
/// 1 - failover mirror member <br>
/// 2 - async mirror member
Property MirrorMemberType As %Integer [ InitialExpression = {$System.Mirror.IsMember()} ];

/// Failover member's mirror name
Property MirrorName As %String;

/// Current 'no failover' state.
Property DefinedPrimary As %String;

/// Candidate of the new DefinedPrimary.
Property NewDefinedPrimary As %String;

/// Member name of local system.
Property MyMemberName As %String;

/// 1 - display 'Clear/Set No Failover' button, 0 - don't display
Property NoFailoverBtn As %Integer [ InitialExpression = 0 ];

/// 1 - The DefinedPrimary is the special name of No Partner No Failover promotion.
Property IsNoPartnerNoFailover As %Integer [ InitialExpression = 0 ];

/// The currently selected mirror on an async member
Property SelectedMirror As %String [ InitialExpression = "*" ];

Property ThisMemberName As %ZEN.Datatype.string [ InitialExpression = "n/a" ];

Property ThisMemberECP As %ZEN.Datatype.string [ InitialExpression = "n/a" ];

Property ThisMemberPrivateAddress As %ZEN.Datatype.string [ InitialExpression = "n/a" ];

Property OtherMemberName As %ZEN.Datatype.string [ InitialExpression = "n/a" ];

Property OtherMemberECP As %ZEN.Datatype.string [ InitialExpression = "n/a" ];

Property OtherMemberPrivateAddress As %ZEN.Datatype.string [ InitialExpression = "n/a" ];

/// Failover member's mirror name
Property ReceivedData As %String [ InitialExpression = "0,0,0" ];

/// Number of mirror set configured.
Property NumberOfMirrorSet As %Integer [ InitialExpression = 0 ];

Property VirtualIP As %String;

Property VirtualInterface As %String;

Property DownList As %String;

Property PromoteErrorText As %String;

/// Store translated targetCol linkCaption for <condition>
Property colMount As %ZEN.Datatype.caption [ InitialExpression = {$$$Text("Mount")} ];

Property colActivate As %ZEN.Datatype.caption [ InitialExpression = {$$$Text("Activate")} ];

Property colCatchup As %ZEN.Datatype.caption [ InitialExpression = {$$$Text("Catchup")} ];

Property colRemove As %ZEN.Datatype.caption [ InitialExpression = {$$$Text("Remove")} ];

/// Check if user has manage privilege
Property CanManage As %ZEN.Datatype.boolean [ InitialExpression = {$System.Security.Check("%Admin_Manage","USE")} ];

/// If server encountered failure that cannot be ignored.
Property failedCnt As %ZEN.Datatype.boolean [ InitialExpression = {##class(SYS.MirrorConfiguration).LookupLocalValidationFailures(.failure,0)} ];

XData Style
{
}

XData contentPane [ XMLNamespace = "http://www.intersystems.com/zen" ]
{
}

ClientMethod onloadHandler() [ Language = javascript ]
{
}

/// This client event, if present, is fired when the a popup page
/// launched from this page fires an action.
ClientMethod onPopupAction(popupName, action, value) [ Language = javascript ]
{
}

/// Update / Reload tables. This overrides the one in Portal.Utils.
ClientMethod updateView(InTimer, NoCompress) [ Language = javascript ]
{
}

/// User entered something in to the filter. Re-load the table with filter value.
ClientMethod filterChanged(value) [ Language = javascript ]
{
}

ClientMethod doJournal() [ Language = javascript ]
{
}

ClientMethod doMount(dbName, dbDir) [ Language = javascript ]
{
}

ClientMethod doActivate(dbName, dbDir) [ Language = javascript ]
{
}

ClientMethod doCatchup(dbName, dbDir, actReq) [ Language = javascript ]
{
}

ClientMethod doRemove(dbName, dbDir) [ Language = javascript ]
{
}

ClientMethod doAction(action) [ Language = javascript ]
{
}

ClientMethod doAuth(PID) [ Language = javascript ]
{
}

ClientMethod doDetails(mirName) [ Language = javascript ]
{
}

ClientMethod doConnect(mirrorName, canDisconnect) [ Language = javascript ]
{
}

ClientMethod doDemote() [ Language = javascript ]
{
}

ClientMethod doPromote() [ Language = javascript ]
{
}

ClientMethod doPromotePage(vipact, InterfaceSeed, DownList) [ Language = javascript ]
{
}

ClientMethod CheckMissingDB() [ Language = javascript ]
{
}

ClientMethod doNoFailover() [ Language = javascript ]
{
}

Method DrawConnectLink(pTable As %ZEN.Component.tablePane, pName As %String, pSeed As %String) As %Status
{
}

Method DrawMirrorStatus(pTable As %ZEN.Component.tablePane, pName As %String, pSeed As %String) As %Status
{
}

ClassMethod ProcessConnect(mirrorName As %String, canDisconnect As %Boolean) As %String [ ZenMethod ]
{
}

ClassMethod ActivateDB(Dir As %String) As %String [ ZenMethod ]
{
}

ClassMethod CatchupDB(Dir As %String, ActReq As %Boolean) As %String [ ZenMethod ]
{
}

ClassMethod RemoveDB(Dir As %String) As %String [ ZenMethod ]
{
}

Method CheckVIP(mirname) As %Integer [ ZenMethod ]
{
}

Method CheckJournaling() As %Integer [ ZenMethod ]
{
}

ClassMethod CheckPromoteWarn(mirname) As %String [ ZenMethod ]
{
}

Method PromoteToFailoverMember(virtualinterface) As %Integer [ ZenMethod ]
{
}

Method DemotePartner(MirrorName) As %String [ ZenMethod ]
{
}

Method DemoteToDR(MirrorName) As %String [ ZenMethod ]
{
}

Method RefreshFailoverInfo() As %Status [ ZenMethod ]
{
}

Method DrawFailoverInfo(RefreshCompress) As %Status [ ZenMethod ]
{
}

Method DrawAsyncInfo() As %Status [ ZenMethod ]
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

/// Get information to display in the ribbon bar.
Method OnGetRibbonInfo(Output pDisplay As %Boolean, Output pViewIcons As %List, Output pSortOptions As %List, Output pSearchBox As %Boolean, Output pRibbonTitle As %String, Output pCommands As %List) As %Status
{
}

/// Get the (localized) name of the page.
/// This should be implemented in a subclass.
Method %OnGetPageName() As %String
{
}

/// Add to the contents of the tool ribbon.
Method OnDrawRibbon() As %Status
{
}

/// Overriden to add tabId and tableId to the page name to distinguish the type for the page.
ClientMethod navPageSizeChanged(value, tableId) [ Language = javascript ]
{
}

/// Overriden to add tabId and tableId to the page name to distinguish the type for the page.
ClientMethod navMaxRowsChanged(value, tableId) [ Language = javascript ]
{
}

/// Used to Save tableNavBar values, add MapType to the page name to distinguish the type for the page.
ClassMethod UpdateTableNavState(pFilter As %String, pPageSize As %Integer, pMaxRows As %Integer, ptableId As %String) [ ZenMethod ]
{
}

Method GetCompressRate(mirrorName As %String, Async As %Integer) As %Status [ ZenMethod ]
{
}

Method DrawNoFailoverInfo() As %Status [ ZenMethod ]
{
}

Method ClearNoFailover(mirname As %String) As %String [ ZenMethod ]
{
}

Method ChangeNoFailover(mirname As %String) As %String [ ZenMethod ]
{
}

ClassMethod MultipleFailover(mirname As %String) As %Integer [ ZenMethod ]
{
}

Method GetValidationInfo(ByRef pParms, Output pObject As %RegisteredObject) As %Status
{
}

ClassMethod OtherIsPrimary(mirname As %String) As %Integer [ ZenMethod ]
{
}

}
