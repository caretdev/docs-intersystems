/// System Management Portal - System Operations - Processes
Class %CSP.UI.Portal.Processes Extends %CSP.UI.Portal.Utils [ System = 4 ]
{

/// Do not switch namespace for this page: it needs to stay in %SYS
Parameter AUTONS As BOOLEAN = 0;

Parameter CSPURL = "/csp/sys/op/%CSP.UI.Portal.Processes.zen";

Parameter HELPADDRESS = "Home,Processes";

/// Displayed name of this page.
Parameter PAGENAME = "Operation Processes";

/// Security requirement
Parameter RESOURCE = "%Admin_Operate";

Property DetailsPage As %String [ InitialExpression = {..Link("/csp/sys/op/%25CSP.UI.Portal.ProcessDetails.zen",,1)} ];

/// Column the table is sorted by. Default is the "Process ID" column. User may change and the value is saved and reloaded for this page.
Property CurrentColumn As %ZEN.Datatype.string [ InitialExpression = "DisplayPID" ];

/// Filter value user entered into the "Filter" field in the table navigator. This value is saved and reloaded for this page.
Property Filter As %ZEN.Datatype.string;

Property PrevFilter As %ZEN.Datatype.string [ InitialExpression = "PrevFilter" ];

/// Page size value user entered into the "Page size" field in the table navigator. This value is saved and reloaded for this page.
Property TablePageSize As %Integer [ InitialExpression = "0" ];

/// Max rows value user entered into the "Max rows" field in the table navigator. This value is saved and reloaded for this page.
Property TableMaxRows As %Integer [ InitialExpression = "1000" ];

/// Store translated targetCol linkCaption for <condition>
Property colDetails As %ZEN.Datatype.caption [ InitialExpression = {$$$Text("Details")} ];

XData Style
{
}

XData contentPane [ XMLNamespace = "http://www.intersystems.com/zen" ]
{
}

/// User entered something in to the filter. Re-load the table with filter value.
ClientMethod filterChanged(value) [ Language = javascript ]
{
}

/// Update / Reload table. This overrides the one in Portal.Utils.
ClientMethod updateView() [ Language = javascript ]
{
}

/// This client event, if present, is fired when the page is loaded.
ClientMethod onloadHandler() [ Language = javascript ]
{
}

ClientMethod navPageSizeChanged(value) [ Language = javascript ]
{
}

ClientMethod navMaxRowsChanged(value) [ Language = javascript ]
{
}

/// <var>pInfo</var> holds details on how to create the query.
Method CreateRS(Output tSC As %Status, pInfo As %ZEN.Auxiliary.QueryInfo) As %ResultSet
{
}

/// Method for executing the process query.
Method ExecuteRS(pRS As %Library.ResultSet, Output tSC As %Status, pInfo As %ZEN.Auxiliary.QueryInfo) As %Boolean
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

ClientMethod doBroadcast() [ Language = javascript ]
{
}

/// Add to the contents of the tool ribbon.
Method OnDrawRibbon() As %Status
{
}

}
