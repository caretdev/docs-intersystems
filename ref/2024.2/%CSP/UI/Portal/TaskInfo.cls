/// System Management Portal - System Operations - Task Details
Class %CSP.UI.Portal.TaskInfo Extends %CSP.UI.Portal.Utils [ System = 4 ]
{

/// Do not switch namespace for this page: it needs to stay in %SYS
Parameter AUTONS As BOOLEAN = 0;

Parameter CSPURL = "/csp/sys/op/%CSP.UI.Portal.TaskInfo.zen";

Parameter HELPADDRESS = "Home,Task Manager,View Task Schedule,Task Details";

Parameter PARENTPAGE = "/csp/sys/op/%CSP.UI.Portal.TaskSchedule.zen";

/// Displayed name of this page.
Parameter PAGENAME = "Operation TaskInfo";

/// Security requirement
Parameter RESOURCE = "%Admin_Operate";

Parameter AppContextPath As STRING = "%25CSP.UI.Portal";

/// internal task ID
Property PID As %String(ZENURL = "$ID1");

Property CanBeEdited As %ZEN.Datatype.boolean [ InitialExpression = "1" ];

Property CanBeSuspended As %ZEN.Datatype.boolean [ InitialExpression = "1" ];

Property CanBeDeleted As %ZEN.Datatype.boolean [ InitialExpression = "1" ];

Property ActionPage As %String [ InitialExpression = {..Link("UtilSysTaskAction.csp",,1)} ];

Property EditPage As %String [ InitialExpression = {..Link("UtilSysTaskOption.csp",,1)} ];

Property HistoryPage As %String [ InitialExpression = {..Link(..#AppContextPath _ ".TaskHistoryId.zen",,1)} ];

/// parent page link
Property TaskSchedulePage As %String;

/// this page's link with PID and DISPLAYID
Property TaskDetailsPage As %String;

/// Server-side reference to the pane object so that the head and body sections can be added to the page correctly.
Property %Pane As %CSP.Util.Pane [ ServerOnly = 1 ];

/// Flag to indicate whether <property>%Pane</property>'s OnDrawHEAD() method has been executed.
Property paneDone As %Boolean;

XData Style
{
}

XData contentPane [ XMLNamespace = "http://www.intersystems.com/zen" ]
{
}

Method %OnAfterCreatePage() As %Status
{
}

/// Given a Task Id, return the Task Name. This method is used by other task pages.
/// As the returned values is being set into Zen component, it needs no extra escaping as the Zen component will escape it.
ClassMethod GetTaskName(pTaskId, Output pMessage = "", Output pIsRunning = 0) As %String
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

/// This is called when the template is first displayed;
/// This provides a chance to load the last filetype, etc.
ClientMethod onloadHandler() [ Language = javascript ]
{
}

ClientMethod doAction(action) [ Language = javascript ]
{
}

/// For auto-refresh on this page.
ClientMethod updateView() [ Language = javascript ]
{
}

/// Draw the contents of the diagram header, in the HTMLDashboard style.
Method DrawDetails(pSeed As %String) As %Status
{
}

/// Add the HEAD section for <property>%Pane</property> and override some CSS styles if HTML5 is enabled.
/// Without these overrides, the font size is calculated to be 0.8px and padding is calculated to be 0 for the header cells..
Method %OnDrawHTMLHead() As %Status
{
}

/// Set properties for HTMLDashboardPane to draw details.
ClassMethod GetDetailPane(pInstance As %CSP.Util.PageInstance) As %CSP.Util.Pane [ Language = objectscript ]
{
}

}
