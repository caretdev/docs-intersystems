/// System Management Portal - System Operations - Web Sessions
Class %CSP.UI.Portal.CSPSessions Extends (%CSP.UI.Portal.Template, %CSP.UI.Portal.UtilsNav) [ System = 4 ]
{

/// Do not switch namespace for this page: it needs to stay in %SYS
Parameter AUTONS As BOOLEAN = 0;

Parameter CSPURL = "/csp/sys/op/%CSP.UI.Portal.CSPSessions.zen";

Parameter HELPADDRESS = "Home,Web Sessions";

/// Displayed name of this page.
Parameter PAGENAME = "Web Sessions";

/// Security requirement
Parameter RESOURCE = "%Admin_Operate";

Property msgEndSession As %ZEN.Datatype.caption [ InitialExpression = {$$$TextJS("Are you sure you want to end the selected sessions?")} ];

Property msgDoneSession As %ZEN.Datatype.caption [ InitialExpression = {$$$TextJS("If yes, then click [OK] and the selected sessions will be set to end and the Web license will be released in a few seconds.")} ];

Property FreespacePage As %String;

XData Style
{
}

XData contentPane [ XMLNamespace = "http://www.intersystems.com/zen" ]
{
}

Method DrawProcessID(pTable As %ZEN.Component.tablePane, pName As %String, pSeed As %String) As %Status
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
Method %OnGetPageName() As %String
{
}

/// Disable checkboxes for applications that should not allow to be terminated.
ClientMethod onloadHandler() [ Language = javascript ]
{
}

/// Based on user's choice, start or stop the timer.
ClientMethod startRefresh() [ Language = javascript ]
{
}

/// Turn auto-refresh mode on and off.
ClientMethod setRefreshMode(newMode, notImmediate) [ Language = javascript ]
{
}

/// User changed refresh rate. Check the value and save to server.
ClientMethod setRefreshRate(newRate) [ Language = javascript ]
{
}

/// Table auto-refresh timer handler.
ClientMethod refreshHandler() [ Language = javascript ]
{
}

/// Update table.
ClientMethod updateView() [ Language = javascript ]
{
}

ClientMethod doEndSession() [ Language = javascript ]
{
}

/// Delete selected classes now.
ClassMethod EndSession(selectedRows) As %String [ ZenMethod ]
{
}

/// Save auto refresh rate to server.
ClassMethod UpdateAutoRefreshRate(refreshrate As %Integer) [ ZenMethod ]
{
}

/// Save auto refresh state to server.
ClassMethod UpdateAutoRefreshState(refreshstate) [ ZenMethod ]
{
}

}
