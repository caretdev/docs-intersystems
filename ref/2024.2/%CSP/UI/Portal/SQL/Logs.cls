Class %CSP.UI.Portal.SQL.Logs Extends %CSP.UI.Portal.Utils [ System = 4 ]
{

Parameter AUTONS As BOOLEAN = 1;

/// TODO: why is this not working?
Parameter SHOWNAMESPACE As BOOLEAN = 1;

Parameter CSPURL = "/csp/sys/op/%CSP.UI.Portal.SQL.Logs.zen";

Parameter HELPADDRESS = "Home,SQL";

Parameter PAGENAME = "SQL Diagnostic Logs";

/// TODO: check if appropriate
Parameter RESOURCE = "%Admin_Operate";

Property SelectedRowID As %ZEN.Datatype.integer(ZENURL = "resultID") [ Internal ];

Property filterString As %String [ Internal ];

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

/// Update / Reload table. This overrides the one in Portal.Utils.
ClientMethod updateView() [ Language = javascript ]
{
}

ClientMethod applyFilter(filter) [ Language = javascript ]
{
}

Method CreateRS(Output tSC As %Status, pInfo As %ZEN.Auxiliary.QueryInfo) As %ResultSet
{
}

Method ExecuteRS(pRS As %Library.ResultSet, Output tSC As %Status, pInfo As %ZEN.Auxiliary.QueryInfo) As %Boolean
{
}

ClientMethod selectRow(id) [ Language = javascript ]
{
}

ClientMethod cmdDelete() [ Language = javascript ]
{
}

Method Delete(selectedIDs As %String) As %Status [ ZenMethod ]
{
}

Method DrawDetails(seed As %String) As %Status
{
}

ClassMethod DrawStatementCell(table As %ZEN.Component.tablePane, name As %String, seed As %String) As %Status
{
}

ClassMethod DrawPXCell(table As %ZEN.Component.tablePane, name As %String, seed As %String) As %Status
{
}

/// This client event is fired when the a popup page launched from this page fires an action.
ClientMethod onPopupAction(popupName, action, value) [ Language = javascript ]
{
}

}
