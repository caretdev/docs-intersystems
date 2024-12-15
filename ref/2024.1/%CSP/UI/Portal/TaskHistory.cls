/// System Management Portal - System Operations - Task Hisotry
Class %CSP.UI.Portal.TaskHistory Extends %CSP.UI.Portal.Utils [ System = 4 ]
{

/// Do not switch namespace for this page: it needs to stay in %SYS
Parameter AUTONS As BOOLEAN = 0;

Parameter CSPURL = "/csp/sys/op/%CSP.UI.Portal.TaskHistory.zen";

Parameter HELPADDRESS = "Home,Task Manager,View Task History";

/// Displayed name of this page.
Parameter PAGENAME = "Task History";

/// Security requirement
Parameter RESOURCE = "%Admin_Operate";

Property CurrentColumn As %ZEN.Datatype.string [ InitialExpression = "Last Start" ];

/// internal task ID
Property PID As %String(ZENURL = "$ID1");

/// Show User Entered Tasks Only. This value is saved and reloaded for this page.
Property UserOnly As %ZEN.Datatype.boolean [ InitialExpression = 0 ];

XData contentPane [ XMLNamespace = "http://www.intersystems.com/zen" ]
{
}

/// User entered something in to the filter. Re-load the table with filter value.
ClientMethod filterChanged(value, tableID) [ Language = javascript ]
{
}

ClientMethod changeUserOnly() [ Language = javascript ]
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

ClassMethod UpdateTaskHistoryParam(pUserOnly As %Boolean) [ ZenMethod ]
{
}

}
