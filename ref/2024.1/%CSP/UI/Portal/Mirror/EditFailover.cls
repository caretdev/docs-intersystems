/// Zen page for System Management Portal - Edit Failover
Class %CSP.UI.Portal.Mirror.EditFailover Extends (%CSP.UI.Portal.Template, %CSP.UI.Portal.Mirror.Utils) [ System = 4 ]
{

/// Do not switch namespace for this page: it needs to stay in %SYS
Parameter AUTONS As BOOLEAN = 0;

/// Security requirement
Parameter RESOURCE = "%Admin_Manage";

/// Displayed name of this page.
Parameter PAGENAME = "Edit Mirror";

Parameter CSPURL = "/csp/sys/mgr/%CSP.UI.Portal.Mirror.EditFailover.zen";

Parameter HELPADDRESS = "Home,Configuration,Edit Mirror";

Property IsEditForm As %Boolean [ InitialExpression = 1 ];

Property IsPrimary As %Boolean [ InitialExpression = {$SYSTEM.Mirror.GetInfo()[$$$Primary} ];

Property MirrorName As %ZEN.Datatype.string;

Property OldVirtualAddress As %ZEN.Datatype.string;

Property OldCIDRMask As %ZEN.Datatype.string;

Property OldVirtualAddressInterface As %ZEN.Datatype.string;

Property lblText1 As %String;

Property lblText2 As %String;

Property lblDNUpdates As %String;

Property lblNewMembers As %String;

/// Number of DNUpdates members currently selected
Property NumDNUpdates As %Integer [ InitialExpression = 0 ];

/// Number of NewMembers members currently selected
Property NumNewMembers As %Integer [ InitialExpression = 0 ];

/// Check if user has manage privilege
Property CanManage As %ZEN.Datatype.boolean [ InitialExpression = {$System.Security.Check("%Admin_Manage","USE")} ];

Property JoinMirror As %Boolean [ InitialExpression = 1 ];

Property CurrentUseSSL As %Integer;

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

ClientMethod doRemove() [ Language = javascript ]
{
}

ClientMethod doRemoveOther() [ Language = javascript ]
{
}

ClientMethod verifySSL() [ Language = javascript ]
{
}

ClientMethod validate(proxy) [ Language = javascript ]
{
}

ClientMethod doSave() [ Language = javascript ]
{
}

///  Save general association data to server.<br/>
///  Returns proxy.ok = 1 (save successful) or 0 (error occurred)<br/>
///  proxy.ErrorMessage (save failed and display this error message).
///  If proxy.ok is 1 and no messages returned then we return to SMP home.
ClassMethod SaveData(pProxy As %ZEN.proxyObject) As %ZEN.proxyObject [ ZenMethod ]
{
}

/// Save Config.Mirrors
ClassMethod SaveMirrorConfig(pProxy As %ZEN.proxyObject) As %Status
{
}

Method %OnGetPageName() As %String
{
}

/// Set Locator bar and determine whether to show change password option.
Method %OnAfterCreatePage() As %Status
{
}

///  Get information to display in the ribbon bar.
Method OnGetRibbonInfo(Output pDisplay As %Boolean, Output pViewIcons As %List, Output pSortOptions As %List, Output pSearchBox As %Boolean, Output pRibbonTitle As %String, Output pCommands As %List) As %Status
{
}

ClassMethod DrawMemberType(pTable As %ZEN.Component.tablePane, pName As %String, pSeed As %String) As %Status
{
}

ClientMethod doEdit(nodeName) [ Language = javascript ]
{
}

ClassMethod AnyPendingNewMembers(MirrorName As %String) As %Integer [ ZenMethod ]
{
}

/// enable the Authorize and Reject buttons if there are members selected. disable otherwise.
ClientMethod rowSelectDNUpdates(selectedRows) [ Language = javascript ]
{
}

ClientMethod doAuthorizeDNUpdates() As %Boolean [ Language = javascript ]
{
}

ClientMethod doRejectDNUpdates() As %Boolean [ Language = javascript ]
{
}

ClassMethod AuthorizeDNUpdates(pProxy As %ZEN.proxyObject) As %ZEN.proxyObject [ ZenMethod ]
{
}

ClassMethod RejectDNUpdates(pProxy As %ZEN.proxyObject) As %ZEN.proxyObject [ ZenMethod ]
{
}

/// enable the Authorize and Reject buttons if there are members selected. disable otherwise.
ClientMethod rowSelectNewMembers(selectedRows) [ Language = javascript ]
{
}

ClientMethod doAuthorizeNewMembers() As %Boolean [ Language = javascript ]
{
}

ClientMethod doRejectNewMembers() As %Boolean [ Language = javascript ]
{
}

ClassMethod AuthorizeNewMembers(pProxy As %ZEN.proxyObject) As %ZEN.proxyObject [ ZenMethod ]
{
}

ClassMethod RejectNewMembers(pProxy As %ZEN.proxyObject) As %ZEN.proxyObject [ ZenMethod ]
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
