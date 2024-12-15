/// Zen page for System Management Portal - Interoperability Usage
Class %CSP.UI.Portal.InteroperabilityUsage Extends %CSP.UI.Portal.Utils [ System = 4 ]
{

/// Do not switch namespace for this page: it needs to stay in %SYS
Parameter AUTONS As BOOLEAN = 0;

/// Displayed name of this page.
Parameter PAGENAME = "Interoperability Usage";

Parameter CSPURL = "/csp/sys/op/%CSP.UI.Portal.InteroperabilityUsage.zen";

Parameter HELPADDRESS = "Home,Interoperability Usage";

Parameter RECENT = 0;

/// Security requirement
Parameter RESOURCE = "%Admin_Operate";

Property StartDate As %TimeStamp;

Property EndDate As %TimeStamp;

Property EndDateEndOfDay As %TimeStamp [ Calculated, SqlComputeCode = {set {*}=%page.EndDate_" 23:59:59.999"}, SqlComputed ];

Property Today As %TimeStamp [ Calculated, SqlComputeCode = { set {*}=$ZDATE($ztimestamp,3)}, SqlComputed ];

Property FilterValue As %String;

Property Option As %Integer [ InitialExpression = 1 ];

Property View As %Integer [ InitialExpression = 1 ];

XData Style
{
}

XData contentPane [ XMLNamespace = "http://www.intersystems.com/zen" ]
{
}

ClientMethod updateTable() [ Language = javascript ]
{
}

/// Clear error message from above results
ClientMethod resetMsg() [ Language = javascript ]
{
}

ClientMethod filterChanged(table, value) [ Language = javascript ]
{
}

ClientMethod updateExcludeSharedDbs(table, value) [ Language = javascript ]
{
}

ClientMethod setOption(index) [ Language = javascript ]
{
}

ClientMethod setView(index) [ Language = javascript ]
{
}

ClientMethod showHidePages() [ Language = javascript ]
{
}

ClientMethod getOptionTitle(pageNum) [ Language = javascript ]
{
}

/// Method to add "Interfaces", "Volume", or "Size" to the Type name depending on which view we are in
Method DisplayType(table As %ZEN.Component.tablePane, dt As %ZEN.Datatype.string, seed As %ZEN.Datatype.string) As %Status
{
}

ClientMethod updateDates() [ Language = javascript ]
{
}

Method CheckDatesValid() As %String [ ZenMethod ]
{
}

/// This client event, if present, is fired when the page is loaded.
ClientMethod onloadHandler() [ Language = javascript ]
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

/// On auto-refresh, or after Resume or Suspend, reload page with the current tab selected.
ClientMethod updateView() [ Language = javascript ]
{
}

}
