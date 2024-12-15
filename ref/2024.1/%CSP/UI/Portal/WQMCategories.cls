/// Zen page for System Management Portal - Show WQM Categories
Class %CSP.UI.Portal.WQMCategories Extends %CSP.UI.Portal.Utils [ System = 4 ]
{

Parameter AUTONS As BOOLEAN = 0;

/// Displayed name of this page.
Parameter PAGENAME = "Work Queue Manager Categories";

Parameter CSPURL = "/csp/sys/mgr/%CSP.UI.Portal.WQMCategories.zen";

Parameter HELPADDRESS = "System Administration,Configuration,System Configuration,WQM Categories";

/// Security requirement
Parameter RESOURCE = "%Admin_Manage";

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

Method %OnGetPageName() As %String
{
}

/// Get information to display in the ribbon bar.
Method OnGetRibbonInfo(Output pDisplay As %Boolean, Output pViewIcons As %List, Output pSortOptions As %List, Output pSearchBox As %Boolean, Output pRibbonTitle As %String, Output pCommands As %List) As %Status
{
}

Method DrawName(pTable As %ZEN.Component.tablePane, pName As %String, pSeed As %String) As %Status
{
}

ClassMethod DrawCategory(pTable As %ZEN.Component.tablePane, pName As %String, pSeed As %String) As %Status
{
}

Method DrawDelete(pTable As %ZEN.Component.tablePane, pName As %String, pSeed As %String) As %Status
{
}

ClassMethod DrawWorkers(pTable As %ZEN.Component.tablePane, pName As %String, pSeed As %String) As %Status
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

/// Delete existing gateway connection.
ClientMethod doDelete(Name) [ Language = javascript ]
{
}

/// Call server delete method.
ClassMethod DeleteItem(Name) As %String [ ZenMethod ]
{
}

}
