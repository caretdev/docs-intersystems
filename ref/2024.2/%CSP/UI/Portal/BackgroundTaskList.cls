/// System Management Portal - System Operations - Background Tasks
Class %CSP.UI.Portal.BackgroundTaskList Extends %CSP.UI.Portal.Utils [ System = 4 ]
{

/// Do not switch namespace for this page: it needs to stay in %SYS
Parameter AUTONS As BOOLEAN = 0;

Parameter CSPURL = "/csp/sys/%CSP.UI.Portal.BackgroundTaskList.zen";

Parameter HELPADDRESS = "Home,Background Tasks";

/// Displayed name of this page.
Parameter PAGENAME = "Background Tasks";

/// Column the table is sorted by. Default is the "Process ID" column. User may change and the value is saved and reloaded for this page.
Property CurrentColumn As %ZEN.Datatype.string [ InitialExpression = "ID" ];

Property ErrorPage As %String [ InitialExpression = {..Link("%25CSP.UI.Portal.BackgroundTaskError.zen",,1)} ];

Property OpenDetailsPage As %String [ InitialExpression = {..Link("%CSP.UI.Portal.Background.Dialog.TaskInfo.zen",,1)} ];

/// Page size value user entered into the "Page size" field in the table navigator. This value is saved and reloaded for this page.
Property TablePageSize As %Integer [ InitialExpression = "0" ];

/// Max rows value user entered into the "Max rows" field in the table navigator. This value is saved and reloaded for this page.
Property TableMaxRows As %Integer [ InitialExpression = "1000" ];

Property colInfo As %ZEN.Datatype.caption [ InitialExpression = {$$$Text("Info")} ];

XData Style
{
}

XData contentPane [ XMLNamespace = "http://www.intersystems.com/zen" ]
{
}

/// Show information for the background job id in a dialog window
ClientMethod openDetails(SysBGTaskId) [ Language = javascript ]
{
}

/// User override of cell-display for tablePane.
Method DrawStatusInfoCell(pTable As %ZEN.Component.tablePane, pName As %String, pSeed As %String) As %Status
{
}

ClientMethod doErrors(pid) [ Language = javascript ]
{
}

ClassMethod DrawErrorCount(pTable As %ZEN.Component.tablePane, pName As %String, pSeed As %String) As %Status
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

ClientMethod doPurge() [ Language = javascript ]
{
}

ClassMethod Purge() As %Status [ ZenMethod ]
{
}

/// Add to the contents of the tool ribbon.
Method OnDrawRibbon() As %Status
{
}

}
