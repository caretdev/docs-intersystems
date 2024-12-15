/// Zen page for System Management Portal - Join Failover
Class %CSP.UI.Portal.Mirror.JoinFailover Extends (%CSP.UI.Portal.Template, %CSP.UI.Portal.Mirror.Utils) [ System = 4 ]
{

/// Do not switch namespace for this page: it needs to stay in %SYS
Parameter AUTONS As BOOLEAN = 0;

/// Security requirement
Parameter RESOURCE = "%Admin_Manage";

/// Displayed name of this page.
Parameter PAGENAME = "Join Mirror as Failover";

Parameter CSPURL = "/csp/sys/mgr/%CSP.UI.Portal.Mirror.JoinFailover.zen";

Parameter HELPADDRESS = "Home,Configuration,Join Mirror as Failover";

Property IsEditForm As %Boolean [ InitialExpression = 1 ];

Property UseSSL As %ZEN.Datatype.boolean;

Property VirtualAddress As %ZEN.Datatype.string;

Property OtherMemberName As %ZEN.Datatype.string;

Property OtherMemberECP As %ZEN.Datatype.string;

Property OtherMemberPort As %ZEN.Datatype.integer;

Property OtherMemberPrivateAddress As %ZEN.Datatype.string;

Property OtherMemberAgentAddress As %ZEN.Datatype.string;

XData Style
{
}

XData contentPane [ XMLNamespace = "http://www.intersystems.com/zen" ]
{
}

ClientMethod onloadHandler() [ Language = javascript ]
{
}

/// Overriding the template function because the elements are not zen on this page
ClientMethod onPopupAction(popupName, action, value) [ Language = javascript ]
{
}

ClientMethod goToNextPage() [ Language = javascript ]
{
}

ClientMethod doClear() [ Language = javascript ]
{
}

ClientMethod doConnect() [ Language = javascript ]
{
}

ClientMethod doSave() [ Language = javascript ]
{
}

ClientMethod validateConnect() As %Boolean [ Language = javascript ]
{
}

ClientMethod validateSave(proxy) [ Language = javascript ]
{
}

///  Save general association data to server.<br/>
///  Returns proxy.ok = 1 (save successful) or 0 (error occurred)<br/>
///  proxy.ErrorMessage (save failed and display this error message).
///  If proxy.ok is 1 and no messages returned then we return to SMP home.
Method Connect(pProxy As %ZEN.proxyObject) As %ZEN.proxyObject [ ZenMethod ]
{
}

Method DrawMemberInfoTable(pSeed As %String) As %Status
{
}

///  Save general association data to server.<br/>
///  Returns proxy.ok = 1 (save successful) or 0 (error occurred)<br/>
///  proxy.ErrorMessage (save failed and display this error message).
///  If proxy.ok is 1 and no messages returned then we return to SMP home.
ClassMethod SaveData(pProxy As %ZEN.proxyObject) As %ZEN.proxyObject [ ZenMethod ]
{
}

///  Get information to display in the ribbon bar.
Method OnGetRibbonInfo(Output pDisplay As %Boolean, Output pViewIcons As %List, Output pSortOptions As %List, Output pSearchBox As %Boolean, Output pRibbonTitle As %String, Output pCommands As %List) As %Status
{
}

Method %OnGetPageName() As %String
{
}

/// Set Locator bar and determine whether to show change password option.
Method %OnAfterCreatePage() As %Status
{
}

/// Get the title string to add to the locator row.
ClientMethod getPageTitle() As %String [ Language = javascript ]
{
}

}
