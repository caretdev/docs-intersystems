/// System Management Portal - System Operations - Task Hisotry
/// If $ID1 is passed in then show task history for that ID only.
Class %CSP.UI.Portal.TaskHistoryId Extends %CSP.UI.Portal.Utils [ System = 4 ]
{

/// Do not switch namespace for this page: it needs to stay in %SYS
Parameter AUTONS As BOOLEAN = 0;

Parameter CSPURL = "/csp/sys/op/%CSP.UI.Portal.TaskHistoryId.zen";

Parameter AppContextPath = "%25CSP.UI.Portal";

Parameter HELPADDRESS = "Home,Task Manager,Task Schedule,Task History";

Parameter PARENTPAGE = "/csp/sys/op/%CSP.UI.Portal.TaskSchedule.zen";

/// Displayed name of this page.
Parameter PAGENAME = "Task History";

Parameter RECENT = 0;

/// Security requirement
Parameter RESOURCE = "%Admin_Operate";

Property DetailsPage As %String [ InitialExpression = {..Link(..#AppContextPath _ ".TaskInfo.zen",,1)} ];

Property CurrentColumn As %ZEN.Datatype.string [ InitialExpression = "Last Start" ];

/// internal task ID
Property PID As %String(ZENURL = "$ID1");

XData Style
{
}

XData contentPane [ XMLNamespace = "http://www.intersystems.com/zen" ]
{
}

/// User clicked the Details button. Go to the Details page.
ClientMethod doDetails() [ Language = javascript ]
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

}
