/// System Management Portal - System Operations - Process Details page
Class %CSP.UI.Portal.ProcessDetails Extends %CSP.UI.Portal.Utils [ System = 4 ]
{

/// Comma-separated list of additional JS include files for the page.
Parameter JSINCLUDES As STRING = "zenCSLM.js";

/// Do not switch namespace for this page: it needs to stay in %SYS
Parameter AUTONS As BOOLEAN = 0;

Parameter CSPURL = "/csp/sys/op/%CSP.UI.Portal.ProcessDetails.zen";

Parameter HELPADDRESS = "Home,Processes";

/// Displayed name of this page.
Parameter PAGENAME = "Process Details";

Parameter PARENTPAGE = "/csp/sys/op/%CSP.UI.Portal.Processes.zen";

Parameter RECENT = 0;

/// Security requirement
Parameter RESOURCE = "%Admin_Operate";

/// internal process ID
Property PID As %String(ZENURL = "PID");

Property PrevPID As %String [ InitialExpression = "PrevPID" ];

/// display process ID
Property DISPLAYID As %String(ZENURL = "DISPLAYID");

/// current tab number
Property currTab As %String(ZENURL = "tab");

/// Whether to display SQL operator details
Property SQL As %Boolean(ZENURL = "SQL");

Property CanBeTerminated As %ZEN.Datatype.boolean [ InitialExpression = "1" ];

Property CanBeSuspended As %ZEN.Datatype.boolean [ InitialExpression = "1" ];

/// parent page link
Property ProcessesPage As %String;

/// this page's link with PID and DISPLAYID
Property ProcessDetailsPage As %String;

/// Server-side reference to the pane object so that the head and body sections can be added to the page correctly.
Property %Pane As %CSP.Util.Pane [ ServerOnly = 1 ];

/// Flag to indicate whether <property>%Pane</property>'s OnDrawHEAD() method has been executed.
Property paneDone As %Boolean;

XData Style
{
}

XData SVGStyle
{
}

XData contentPane [ XMLNamespace = "http://www.intersystems.com/zen" ]
{
}

Method DrawCQLink(table As %ZEN.Component.tablePane, name As %ZEN.Datatype.string, seed As %ZEN.Datatype.string) As %Status
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

/// Draw the contents of the diagram header, in the HTMLDashboard style.
Method DrawDetails(pSeed As %String) As %Status
{
}

/// This is called when the template is first displayed;
/// This provides a chance to load the last filetype, etc.
ClientMethod onloadHandler() [ Language = javascript ]
{
}

/// This client event, if present, is fired when the page is resized.
ClientMethod onresizeHandler() [ Language = javascript ]
{
}

/// User clicked a column header to sort. Save that so we can come back to it when page is refreshed.
ClientMethod columnSort(currColumn, sortOrder) [ Language = javascript ]
{
}

ClientMethod doResume() [ Language = javascript ]
{
}

ClientMethod doSuspend() [ Language = javascript ]
{
}

ClientMethod doTerminate() [ Language = javascript ]
{
}

/// User entered something in to the filter. Re-load the table with filter value.
ClientMethod filterChanged(value) [ Language = javascript ]
{
}

ClientMethod tabChanged(index) [ Language = javascript ]
{
}

/// On auto-refresh, or after Resume or Suspend, reload page with the current tab selected.
ClientMethod updateView() [ Language = javascript ]
{
}

/// When "SQL Operator Mode" is toggled, reload page
ClientMethod toggleSQL(value) [ Language = javascript ]
{
}

/// This client event, if present, is fired when the a popup page
/// launched from this page fires an action.
ClientMethod onPopupAction(popupName, action, value) [ Language = javascript ]
{
}

ClassMethod GetPIDOBJ(PID) As %String [ ZenMethod ]
{
}

ClassMethod StartResume(PID) As %String [ ZenMethod ]
{
}

ClassMethod StartSuspend(PID, DISPLAYID) As %String [ ZenMethod ]
{
}

/// Add the HEAD section for <property>%Pane</property> and override some CSS styles if HTML5 is enabled.
/// Without these overrides, the font size is calculated to be 0.8px and padding is calculated to be 0 for the header cells..
Method %OnDrawHTMLHead() As %Status
{
}

/// Set properties for HTMLDashboardPane to draw details.
Method GetDetailPane(pInstance As %CSP.Util.PageInstance) As %CSP.Util.Pane [ Language = objectscript ]
{
}

}
