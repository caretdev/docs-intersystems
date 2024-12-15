/// System Management Portal - System Administration - Task on demand
Class %CSP.UI.Portal.TasksOnDemand Extends %CSP.UI.Portal.Utils [ System = 4 ]
{

/// Do not switch namespace for this page: it needs to stay in %SYS
Parameter AUTONS As BOOLEAN = 0;

Parameter CSPURL = "/csp/sys/op/%CSP.UI.Portal.TasksOnDemand.zen";

Parameter HELPADDRESS = "Home,Task Manager,Run Task On Demand";

/// Displayed name of this page.
Parameter PAGENAME = "On Demand Tasks";

/// Security requirement
Parameter RESOURCE = "%Admin_Operate";

Property RunTaskPage As %String [ InitialExpression = {..Link("UtilSysTaskAction.csp",,1)} ];

XData Style
{
}

XData contentPane [ XMLNamespace = "http://www.intersystems.com/zen" ]
{
}

/// User entered something in to the filter. Re-load the table with filter value.
ClientMethod filterChanged(value, tableID) [ Language = javascript ]
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

/// Get the (localized) name of the page.
/// This should be implemented in a subclass.
Method %OnGetPageName() As %String
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

ClientMethod doRun(PID) [ Language = javascript ]
{
}

}
