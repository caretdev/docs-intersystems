/// System Management Portal - System Operations - View Locks
Class %CSP.UI.Portal.LocksView Extends %CSP.UI.Portal.Utils [ System = 4 ]
{

/// Do not switch namespace for this page: it needs to stay in %SYS
Parameter AUTONS As BOOLEAN = 0;

Parameter CSPURL = "/csp/sys/op/%CSP.UI.Portal.LocksView.zen";

Parameter HELPADDRESS = "Home,Locks";

/// Displayed name of this page.
Parameter PAGENAME = "View Locks";

/// Security requirement
Parameter RESOURCE = "%Admin_Operate";

Property ShowSQL As %Boolean [ InitialExpression = 0 ];

Property Namespace As %String;

XData Style
{
}

XData contentPane [ XMLNamespace = "http://www.intersystems.com/zen" ]
{
}

Method DrawSQLColumn(table As %ZEN.Component.tablePane, name As %ZEN.Datatype.string, seed As %ZEN.Datatype.string) As %Status
{
}

/// User entered something in to the filter. Re-load the table with filter value.
ClientMethod filterChanged(value) [ Language = javascript ]
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

/// Add to the contents of the tool ribbon.
Method OnDrawRibbon() As %Status
{
}

/// Get the (localized) name of the page.
/// This should be implemented in a subclass.
Method %OnGetPageName() As %String [ CodeMode = expression ]
{
}

/// Update table.
ClientMethod updateView() [ Language = javascript ]
{
}

ClientMethod hideThisColumn(col, hide) [ Language = javascript ]
{
}

/// Toggle for displaying routine information.
ClientMethod displayroutine(value) [ Language = javascript ]
{
}

ClientMethod displaySqlOptions(value) [ Language = javascript ]
{
}

ClientMethod setNamespaceFilter(value) [ Language = javascript ]
{
}

}
