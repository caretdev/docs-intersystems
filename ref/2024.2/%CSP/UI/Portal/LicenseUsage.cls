/// Zen page for System Management Portal - License Usage
Class %CSP.UI.Portal.LicenseUsage Extends %CSP.UI.Portal.Utils [ System = 4 ]
{

/// Do not switch namespace for this page: it needs to stay in %SYS
Parameter AUTONS As BOOLEAN = 0;

/// Displayed name of this page.
Parameter PAGENAME = "License Usage";

Parameter CSPURL = "/csp/sys/op/%CSP.UI.Portal.LicenseUsage.zen";

Parameter HELPADDRESS = "Home,License Usage";

Parameter RECENT = 0;

/// Security requirement
Parameter RESOURCE = "%Admin_Operate";

/// Whether license server is used
Property LicenseServerUsed As %Boolean;

/// Filter value user entered into the "Filter" field in the table navigator. This value is saved and reloaded for this page.
Property ProcessFilter As %ZEN.Datatype.string;

Property UserFilter As %ZEN.Datatype.string;

Property PrevProcessFilter As %ZEN.Datatype.string [ InitialExpression = "PrevFilter" ];

Property PrevUserFilter As %ZEN.Datatype.string [ InitialExpression = "PrevFilter" ];

/// Page size value user entered into the "Page size" field in the table navigator. This value is saved and reloaded for this page.
Property TablePageSize As %Integer [ InitialExpression = "0" ];

/// Max rows value user entered into the "Max rows" field in the table navigator. This value is saved and reloaded for this page.
Property TableMaxRows As %Integer [ InitialExpression = "1000" ];

XData Style
{
}

XData contentPane [ XMLNamespace = "http://www.intersystems.com/zen" ]
{
}

ClientMethod doDetails(index) [ Language = javascript ]
{
}

ClientMethod getOptionTitle(index) [ Language = javascript ]
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

/// Overriden to add tabId and tableId to the page name to distinguish the type for the page.
ClientMethod navPageSizeChanged(value, tableId) [ Language = javascript ]
{
}

/// Overriden to add tabId and tableId to the page name to distinguish the type for the page.
ClientMethod navMaxRowsChanged(value, tableId) [ Language = javascript ]
{
}

/// Used to Save tableNavBar values, add MapType to the page name to distinguish the type for the page.
ClassMethod UpdateTableNavState(pFilter As %String, pPageSize As %Integer, pMaxRows As %Integer, ptableId As %String) [ ZenMethod ]
{
}

/// User entered something in to the filter. Re-load the table with filter value.
ClientMethod filterChanged(tableId, value) [ Language = javascript ]
{
}

/// <var>pInfo</var> holds details on how to create the query.
Method CreateRS2(Output tSC As %Status, pInfo As %ZEN.Auxiliary.QueryInfo) As %ResultSet
{
}

/// Method for executing the process query.
Method ExecuteRS2(pRS As %Library.ResultSet, Output tSC As %Status, pInfo As %ZEN.Auxiliary.QueryInfo) As %Boolean
{
}

/// <var>pInfo</var> holds details on how to create the query.
Method CreateRS3(Output tSC As %Status, pInfo As %ZEN.Auxiliary.QueryInfo) As %ResultSet
{
}

/// Method for executing the process query.
Method ExecuteRS3(pRS As %Library.ResultSet, Output tSC As %Status, pInfo As %ZEN.Auxiliary.QueryInfo) As %Boolean
{
}

}
