/// <p>This class is used internally by InterSystems IRIS. You should not make direct use of it within your applications.
/// There is no guarantee made about either the behavior or future operation of this class.</p>
/// Zen page for System Management Portal - Classes list
Class %CSP.UI.Portal.ClassList Extends %CSP.UI.Template.List [ System = 4 ]
{

/// Allow to change namespaces for this page.
Parameter AUTONS As BOOLEAN = 1;

/// Displayed name of this page.
Parameter PAGENAME = "ClassList";

Parameter CSPURL = "/csp/sys/exp/%CSP.UI.Portal.ClassList.zen";

Parameter HELPADDRESS = "Home,Classes";

/// Security requirement
Parameter RESOURCE = "%Development";

Property FILETYPE As %String [ InitialExpression = "Class" ];

Property NAMESPACE As %String(ZENURL = "$NAMESPACE");

Property ClassSpec As %String [ InitialExpression = "*.cls" ];

Property writePERMISSION As %ZEN.Datatype.boolean [ InitialExpression = {$System.Security.GetRoutinePermission($namespace) [ "WRITE"} ];

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

/// this method is called when user clicked the "Documentation" link. The value could not be passed with the correct escaping so we have to use the table value here.
ClientMethod docClicked() [ Language = javascript ]
{
}

ClientMethod sqlClicked(schema As %String, tablename As %String) [ Language = javascript ]
{
}

ClientMethod hideDoc() [ Language = javascript ]
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

/// Method for executing the mapping query.
Method ExecuteRS(pRS As %Library.ResultSet, Output tSC As %Status, pInfo As %ZEN.Auxiliary.QueryInfo) As %Boolean
{
}

/// User clicked Routines or Globals to change page. Namespace will be carried over, not Database.
ClientMethod changePage(newPage) [ Language = javascript ]
{
}

ClientMethod doCompile() [ Language = javascript ]
{
}

ClientMethod doSelectRow(className) [ Language = javascript ]
{
}

/// Show class documatic in short view or full view. If fullView then open full Documatic.
ClientMethod doDoc(className, fullView) [ Language = javascript ]
{
}

ClientMethod doFullView() [ Language = javascript ]
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

/// Changed Namespace <==> Database (implied namespace).
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

/// Generic function to save user input options, called by doNamespace and doSearch, and when chkAlwaysFullView or chkAllowSelectRow is changed.
ClientMethod saveOptions() [ Language = javascript ]
{
}

ClientMethod updatePreference() [ Language = javascript ]
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

/// Delete selected classes now.
ClassMethod Delete(filetype) As %String [ ZenMethod ]
{
}

/// This client event, if present, is fired when the page is loaded.
ClientMethod onloadHandler() [ Language = javascript ]
{
}

/// This client event, if present, is fired when the page is resized.
ClientMethod onresizeHandler() [ Language = javascript ]
{
}

}
