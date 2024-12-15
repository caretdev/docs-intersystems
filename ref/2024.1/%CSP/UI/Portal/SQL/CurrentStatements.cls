Class %CSP.UI.Portal.SQL.CurrentStatements Extends %CSP.UI.Portal.Utils [ System = 4 ]
{

/// Do not switch namespace for this page: it needs to stay in %SYS
Parameter AUTONS As BOOLEAN = 0;

Parameter CSPURL = "/csp/sys/op/%CSP.UI.Portal.SQL.CurrentStatements.zen";

Parameter HELPADDRESS = "Home,SQL";

/// Displayed name of this page.
Parameter PAGENAME = "Currently running SQL statements";

/// Security requirement
Parameter RESOURCE = "%Admin_Operate";

/// MRP1310 [Major Refactoring]
/// The RowID for the 'Application Metadata Stack' (AMS) row SELECTed by the user.
/// This property has the following format, with {field} values obtained from the
/// 'INFORMATION_SCHEMA.CURRENT_STATEMENTS' table:
///    {Server}_"||"_{ProcessID}_"||"_{StatementIndexHash}
Property SelectedRowID As %String [ Internal ];

Property InfoCache As array Of %String [ Internal, Private ];

/// Filter value user entered into the "Filter" field in the table navigator. This value is saved and reloaded for this page.
Property Filter As %ZEN.Datatype.string;

/// Previous Filter value
Property PrevFilter As %ZEN.Datatype.string [ InitialExpression = "PrevFilter" ];

/// 0 if not part of a sharded cluster, 1 for namespace-level cluster, 2 for node-level
Property isCluster As %Boolean [ Internal, Private ];

XData Style
{
}

XData contentPane [ XMLNamespace = "http://www.intersystems.com/zen" ]
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

/// User entered something into the filter. Re-load the table with filter value.
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

/// Create the ResultSet for <tablePane id="table" ...</tablePane> to be displayed by this page...
Method CreateRS(Output tSC As %Status, pInfo As %ZEN.Auxiliary.QueryInfo) As %ResultSet
{
}

Method ExecuteRS(pRS As %Library.ResultSet, Output tSC As %Status, pInfo As %ZEN.Auxiliary.QueryInfo) As %Boolean
{
}

ClientMethod selectRow(id) [ Language = javascript ]
{
}

ClientMethod selectParent(id) [ Language = javascript ]
{
}

Method GetTableRow(id) As %Integer [ ZenMethod ]
{
}

Method DrawStatementExcerpt(table As %ZEN.Component.tablePane, name As %String, seed As %String) As %Status
{
}

Method DrawDetails(seed As %String) As %Status
{
}

/// Cancel the specified SQL Query...
Method CancelQuery(pid = "", SQLStatementID = "") As %Boolean [ ZenMethod ]
{
}

Method %OnAfterCreatePage() As %Status
{
}

}
