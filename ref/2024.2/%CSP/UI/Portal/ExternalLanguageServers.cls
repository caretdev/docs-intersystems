/// Zen page for System Management Portal - External Language Servers
Class %CSP.UI.Portal.ExternalLanguageServers Extends %CSP.UI.Portal.Utils [ System = 4 ]
{

/// Do not switch namespace for this page: it needs to stay in %SYS
Parameter AUTONS As BOOLEAN = 0;

Parameter CSPURL = "/csp/sys/mgr/%CSP.UI.Portal.ExternalLanguageServers.zen";

/// Displayed name of this page.
Parameter PAGENAME = "External Language Servers";

Parameter HELPADDRESS = "System Administration, Configuration, Connectivity, External Language Servers";

/// Security requirement
Parameter RESOURCE = {$$$AdminExternalLanguageServerEditResourceName};

/// $J of the background job number. Used to check whether the backjob is finished. When it is finished we stop the javascript timer.
Property JobNumber As %Integer;

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

Method UpdateServerStatuses() As %Status [ ZenMethod ]
{
}

/// Update / Reload table. Subclass may override this method. Do not modify this method unless you are going to take care of all pages that use it.
ClientMethod updateView() [ Language = javascript ]
{
}

Method OnDrawRibbon() As %Status
{
}

/// Get information to display in the ribbon bar.
Method OnGetRibbonInfo(Output pDisplay As %Boolean, Output pViewIcons As %List, Output pSortOptions As %List, Output pSearchBox As %Boolean, Output pRibbonTitle As %String, Output pCommands As %List) As %Status
{
}

Method %OnGetPageName() As %String
{
}

/// User clicked Start link. Goto to Start page.
ClientMethod doNew() [ Language = javascript ]
{
}

/// User clicked the "Edit" link.
ClientMethod doEdit(Name, editable) [ Language = javascript ]
{
}

/// User clicked Activities link. Goto to Activities page.
ClientMethod doActivities(PID) [ Language = javascript ]
{
}

/// User clicked Start link. Goto to Start page.
ClientMethod doStart(PID) [ Language = javascript ]
{
}

/// User clicked Stop link. Goto to Stop page.
///
/// PID         : the name of the external language server
/// softTimeout : optional soft shutdown timeout in seconds
ClientMethod doStop(PID, softTimeout) [ Language = javascript ]
{
}

/// Delete existing gateway connection.
ClientMethod doDelete(Name) [ Language = javascript ]
{
}

ClientMethod endTimer() [ Language = javascript ]
{
}

/// Call server delete method.
ClassMethod DeleteItem(Name) As %String [ ZenMethod ]
{
}

Method DrawName(pTable As %ZEN.Component.tablePane, pName As %String, pSeed As %String) As %Status
{
}

/// Check to see if the server is running. Show link if it is not.
Method DrawStart(pTable As %ZEN.Component.tablePane, pName As %String, pSeed As %String) As %Status
{
}

/// Check to see if the server is running. Show link if it is not.
Method DrawStop(pTable As %ZEN.Component.tablePane, pName As %String, pSeed As %String) As %Status
{
}

/// Check to see if the server is running. Show link if it is not.
Method DrawDelete(pTable As %ZEN.Component.tablePane, pName As %String, pSeed As %String) As %Status
{
}

/// During the time a server's status is being checked, we draw gray and green dots with the green dot moving from left to right and repeat.
/// When the server is inactive, we draw all black dots.
/// When the server is active, we draw all green dots.
/// When unexpected error occure to the background job, we draw a red dot at the end.
/// During any other times, for example when the page is loading before the background job is started all dots are gray.
Method DrawDots(pTable As %ZEN.Component.tablePane, pName As %String, pSeed As %String) As %Status
{
}

/// Timeout Method used by the checkStatusTimer
ClientMethod checkStatus() [ Language = javascript ]
{
}

/// Return whether the background job of status checking is done.
Method CheckServerStatus(pJob) As %Boolean [ ZenMethod ]
{
}

}
