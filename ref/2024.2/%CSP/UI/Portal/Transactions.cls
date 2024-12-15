/// System Management Portal - System Operations - Top 5 Transactions and ECPTransactions
Class %CSP.UI.Portal.Transactions Extends %CSP.UI.Portal.Utils [ System = 4 ]
{

/// Do not switch namespace for this page: it needs to stay in %SYS
Parameter AUTONS As BOOLEAN = 0;

Parameter CSPURL = "/csp/sys/op/%CSP.UI.Portal.Transactions.zen";

Parameter HELPADDRESS = "Home,Transactions";

/// Displayed name of this page.
Parameter PAGENAME = "Transactions";

Parameter RECENT = 0;

/// Security requirement
Parameter RESOURCE = "%Admin_Operate";

Property CurrentColumn As %ZEN.Datatype.string [ InitialExpression = "Pid" ];

Property DashboardPage As %ZEN.Datatype.caption [ InitialExpression = {..Link("UtilDashboard.csp")} ];

XData Style
{
}

XData contentPane [ XMLNamespace = "http://www.intersystems.com/zen" ]
{
}

ClientMethod doDashboard() [ Language = javascript ]
{
}

/// Update / Reload table. This overrides the one in Portal.Utils.
ClientMethod updateView() [ Language = javascript ]
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

Method DrawHTML(pSeed As %String) As %Status
{
}

}
