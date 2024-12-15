/// System Management Portal - System Administration - Task on demand
Class %CSP.UI.Portal.TasksUpcoming Extends %CSP.UI.Template.List [ System = 4 ]
{

/// Do not switch namespace for this page: it needs to stay in %SYS
Parameter AUTONS As BOOLEAN = 0;

Parameter CSPURL = "/csp/sys/op/%CSP.UI.Portal.TasksUpcoming.zen";

Parameter HELPADDRESS = "Home,Task Manager,View Upcoming Tasks";

/// Displayed name of this page.
Parameter PAGENAME = "Upcoming Tasks";

/// Security requirement
Parameter RESOURCE = "%Admin_Operate";

Property FILETYPE As %String [ InitialExpression = "Upcoiming Tasks" ];

Property RunTaskPage As %String [ InitialExpression = {..Link("UtilSysTaskAction.csp",,1)} ];

Property TitleText As %String [ InitialExpression = {$$$TextJS("The following is a list of tasks scheduled to run within the next %1 days.")} ];

Property TitleTextHour As %String [ InitialExpression = {$$$TextJS("The following is a list of tasks scheduled to run within the next 24 hours.")} ];

Property TitleTextDate As %String [ InitialExpression = {$$$TextJS("The following is a list of tasks scheduled to run between now and %1.")} ];

/// Store translated targetCol linkCaption for <condition>
Property colSuspend As %ZEN.Datatype.caption [ InitialExpression = {$$$Text("Suspend")} ];

Property colResume As %ZEN.Datatype.caption [ InitialExpression = {$$$Text("Resume")} ];

XData Style
{
}

XData searchPane [ XMLNamespace = "http://www.intersystems.com/zen" ]
{
}

XData resultPane [ XMLNamespace = "http://www.intersystems.com/zen" ]
{
}

/// User entered something in to the filter. Re-load the table with filter value.
ClientMethod filterChanged(value, tableID) [ Language = javascript ]
{
}

/// Check if user hit [Enter].
ClientMethod keyUp(zenEvent) [ Language = javascript ]
{
}

ClientMethod selectDateType() [ Language = javascript ]
{
}

/// User entered or selected a date.
ClientMethod selectedDate(ctrl) [ Language = javascript ]
{
}

ClientMethod doSearch(selection, todate) [ Language = javascript ]
{
}

ClientMethod doAction(action, PID) [ Language = javascript ]
{
}

/// Update / Reload table. This overrides the one in Portal.Utils.
ClientMethod updateView() [ Language = javascript ]
{
}

/// Draw the contents of the Table Header (the region between the diagram and the table).
Method DrawTableHeader(pSeed As %String) As %Status
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

/// Convert user selected date to $H format. If invalid entry then return "".
ClassMethod ConvertDate(pDate) As %Integer [ ZenMethod ]
{
}

/// HoursOffset value (default to 1 day) ^ ToDate ($H value of the date) ^ ToTime (currently not used) ^ maxRows
Method GetLastSearch() As %String
{
}

ClassMethod SaveSearch(FILETYPE, HoursOffset, ToDate, ToTime, maxRows) [ ZenMethod ]
{
}

/// Disable save button for EMS-managed pages.
/// Be sure to use this.invokeSuper('onloadHandler',arguments); when overriding.
ClientMethod onloadHandler() [ Language = javascript ]
{
}

}
