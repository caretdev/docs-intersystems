/// <p>This class is used internally by InterSystems IRIS. You should not make direct use of it within your applications.
/// There is no guarantee made about either the behavior or future operation of this class.</p>
/// Zen page for System Management Portal - Global list
Class %CSP.UI.Portal.GlobalList Extends %CSP.UI.Template.List [ System = 4 ]
{

/// Allow to change namespaces for this page.
Parameter AUTONS As BOOLEAN = 1;

/// Displayed name of this page.
Parameter PAGENAME = "GlobalList";

Parameter CSPURL = "/csp/sys/exp/%CSP.UI.Portal.GlobalList.zen";

Parameter HELPADDRESS = "Home,Globals";

/// Security requirement
Parameter RESOURCE = "%Development";

Property FILETYPE As %String [ InitialExpression = "Global" ];

Property GlobalSpec As %String [ InitialExpression = "*" ];

Property NAMESPACE As %String(ZENURL = "$NAMESPACE");

Property FindPage As %String;

Property ViewGlobalURL As %String;

Property writePERMISSION As %ZEN.Datatype.boolean [ InitialExpression = {$System.Security.GetGlobalPermission($namespace) [ "WRITE"} ];

Property ShowSQL As %Boolean(ZENURL = "SQL");

XData Style
{
}

/// This pane displays the search criteria. We provide defaults and user can change them.
/// User's values are saved and used as future defaults for this user.
/// Subclass to override.
XData searchPane [ XMLNamespace = "http://www.intersystems.com/zen" ]
{
}

XData resultPane [ XMLNamespace = "http://www.intersystems.com/zen" ]
{
}

Method DrawSQLColumn(table As %ZEN.Component.tablePane, name As %ZEN.Datatype.string, seed As %ZEN.Datatype.string) As %Status
{
}

/// Check if user hit [Enter].
ClientMethod keyUp(zenEvent) [ Language = javascript ]
{
}

/// Get the (localized) name of the page.
/// This should be implemented in a subclass.
Method %OnGetPageName() As %String
{
}

Method %OnAfterCreatePage() As %Status
{
}

/// Return Namespace list for UI's valueList.
ClassMethod GetList() As %String [ ZenMethod ]
{
}

/// Get information to display in the ribbon bar.
Method OnGetRibbonInfo(Output pDisplay As %Boolean, Output pViewIcons As %List, Output pSortOptions As %List, Output pSearchBox As %Boolean, Output pRibbonTitle As %String, Output pCommands As %List) As %Status
{
}

Method OnDrawRibbon() As %Status
{
}

/// Draw the contents of the Table Header (the region between the diagram and the table).
Method DrawTableHeader(pSeed As %String) As %Status
{
}

/// <var>pInfo</var> holds details on how to create the query.
Method CreateRS(Output tSC As %Status, pInfo As %ZEN.Auxiliary.QueryInfo) As %ResultSet
{
}

/// Method for executing the global query.
Method ExecuteRS(pRS As %Library.ResultSet, Output tSC As %Status, pInfo As %ZEN.Auxiliary.QueryInfo) As %Boolean
{
}

ClientMethod changePage(newPage) [ Language = javascript ]
{
}

ClientMethod doDelete() [ Language = javascript ]
{
}

ClientMethod doExport() [ Language = javascript ]
{
}

ClientMethod doImport() [ Language = javascript ]
{
}

/// Open up the Find/Replace CSP page.
ClientMethod doFind(isReplace) [ Language = javascript ]
{
}

ClientMethod doView(globalName) [ Language = javascript ]
{
}

ClientMethod doEdit(globalName) [ Language = javascript ]
{
}

/// Load Nemespace list or Database list
ClientMethod doList(nd) [ Language = javascript ]
{
}

///  Changed Namespace <==> Database (implied namespace).
ClientMethod doNamespace(selTypeChanged) [ Language = javascript ]
{
}

ClientMethod doSql() [ Language = javascript ]
{
}

/// User clicked Go to start search.
ClientMethod doSearch() [ Language = javascript ]
{
}

/// Update / Reload table. This overrides the one in Template.List.
ClientMethod updateView() [ Language = javascript ]
{
}

/// This client event is fired when the a popup page launched from this page fires an action.
ClientMethod onPopupAction(popupName, action, value) [ Language = javascript ]
{
}

Method GetLastSearch() As %String
{
}

/// Delete selected globals now.
ClassMethod Delete(filetype) As %String [ ZenMethod ]
{
}

/// This client event, if present, is fired when the page is loaded.
ClientMethod onloadHandler() [ Language = javascript ]
{
}

/// Pad selected items into string delimited by "^" before calling PrepareAction.
ClassMethod PrepareSelection(pFILETYPE, pSelectedRows) As %String [ ZenMethod ]
{
}

}
