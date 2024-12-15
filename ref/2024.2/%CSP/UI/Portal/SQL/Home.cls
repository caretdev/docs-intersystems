/// <p>This class is used internally by InterSystems IRIS. You should not make direct use of it within your applications.
/// There is no guarantee made about either the behavior or future operation of this class.</p>
/// Zen page for System Management Portal - Home for SQL
Class %CSP.UI.Portal.SQL.Home Extends (%CSP.UI.Template.Property, %CSP.UI.Portal.UtilsNav) [ System = 4 ]
{

/// Switch namespace $NAMESPACE is present
Parameter AUTONS As BOOLEAN = 1;

/// Displayed name of this page.
Parameter PAGENAME = "SQL Home Page";

Parameter CSPURL = "/csp/sys/exp/%CSP.UI.Portal.SQL.Home.zen";

Parameter HELPADDRESS = "Home,SQL";

/// Security requirement
Parameter RESOURCE = "%Development";

/// String user entered to filter the tree.
Property SQLFILTER As %String;

/// Possible values: Tables, Views, Procedures, CQs
Property FILTERTYPE As %String;

/// Possible values: 1, 2, 3, 4, 5 (Functions & Queries, Functions & Queries & Extent, Functions, Queries, Queries & Extent)
Property FILTERPROC As %Integer;

/// User selected schema
Property FILTERSCHEMA As %Integer;

/// Whether to include System items
Property SYSTEMFLAG As %Integer [ InitialExpression = "0" ];

/// Whether to include deprecated items
Property DEPRECATEDFLAG As %Integer [ InitialExpression = "0" ];

/// Maximum items to be loaded in the tree. It is set to 10000 and user cannot modify.
/// For ISC internal testing, you may set a value in ^|"%SYS"|IRIS.Temp.MgtPortalSettings($Username,"SQLMAXTREELOAD") to override it.
Property MAXTREELOAD As %Integer [ InitialExpression = 10000, Internal ];

/// Current namespace
Property NAMESPACE As %String(ZENURL = "$NAMESPACE");

/// current user selected catalog type - updated when user clicked on a tree node. -1=Nothing selected; 0=Table; 1=SystemTable; 2=View; 3=Procedure; 4=Cached Query
Property CurrentCatalog As %Integer;

/// current item (value) selected from the tree
Property CurrentItem As %String;

/// Default is Display Mode
Property RuntimeMode As %ZEN.Datatype.string [ InitialExpression = "2" ];

/// Maximum rows to display in result tables
Property MaxRows As %ZEN.Datatype.string [ InitialExpression = "1000" ];

/// Whether to show row numbers in result tables
Property ShowRowNum As %ZEN.Datatype.boolean [ InitialExpression = 0 ];

/// SQL dialect used to prepare dynamic SQL statements
Property Dialect As %ZEN.Datatype.string [ InitialExpression = "IRIS" ];

/// Whether to execute the SQL query in the foreground
Property Foreground As %ZEN.Datatype.boolean [ InitialExpression = 0 ];

/// Current Process ID ($JOB)
Property processID As %ZEN.Datatype.string [ InitialExpression = {$JOB} ];

/// Holds the selected redio option on the SQL Statements display
Property StatementRadioSelect As %ZEN.Datatype.string [ InitialExpression = "statementTable0" ];

/// Specify how columns whose type class is a swizzleable class
/// will be defined in the result set class generated from a SELECT statement.
/// Currently it is always set to 0.
Property ObjectSelectMode As %Integer [ InitialExpression = 0 ];

/// icon used for major branch folder at the top level, such as Tables and Views
Property iconFolder As %ZEN.Datatype.string [ InitialExpression = {..Link("/csp/broker/deepsee/folder_16.png")} ];

/// Link pages
Property BuilderPage As %ZEN.Datatype.string [ InitialExpression = {..Link("/csp/sys/exp/%25CSP.UI.SQL.QueryBuilderWindow.cls",,1)} ];

Property DocBookPage As %ZEN.Datatype.string [ InitialExpression = {..Link("/csp/docbook/DocBook.UI.Page.zen",,1)} ];

Property DocumaticPage As %ZEN.Datatype.string [ InitialExpression = {..Link("/csp/documatic/%25CSP.Documatic.cls",,1)} ];

Property OpenTablePage As %ZEN.Datatype.string [ InitialExpression = {..Link("/csp/sys/exp/UtilSqlOpen.csp",,1)} ];

Property OpenViewPage As %ZEN.Datatype.string [ InitialExpression = {..Link("/csp/sys/exp/UtilSqlOpenView.csp",,1)} ];

Property PrintDetailsPage As %ZEN.Datatype.string [ InitialExpression = {..Link("%CSP.UI.Portal.SQL.PrintTable.zen",,1)} ];

Property SQLHomePage As %ZEN.Datatype.string [ InitialExpression = {..Link("%25CSP.UI.Portal.SQL.Home.zen",,1)} ];

Property SQLStatementDetailsPage As %ZEN.Datatype.string [ InitialExpression = {..Link("_CSP.UI.Portal.Dialog.SQLStatementDetails.zen",,1)} ];

Property SQLViewPage As %ZEN.Datatype.string [ InitialExpression = {..Link("%CSP.UI.Portal.Dialog.SQLView.zen",,1)} ];

Property TuneTablePage As %ZEN.Datatype.string [ InitialExpression = {..Link("%CSP.UI.Portal.SQL.TuneTable.zen",,1)} ];

Property OpenRoutinePage As %ZEN.Datatype.string [ InitialExpression = {..Link("/csp/sys/exp/%25CSP.UI.System.ViewCode.cls",,1)} ];

Property TuneAllTablePage As %ZEN.Datatype.string [ InitialExpression = {..Link("%CSP.UI.Portal.Dialog.SQLTuneTables.zen",,1)} ];

Property SQLParametersPage As %ZEN.Datatype.string [ InitialExpression = {..Link("%CSP.UI.Portal.Dialog.SQLParametersPrompt.zen",,1)} ];

Property CurrentStatementPage As %ZEN.Datatype.string [ InitialExpression = {..Link("/csp/sys/op/%25CSP.UI.Portal.SQL.CurrentStatements.zen",,1)} ];

Property msgDeleteCQNamespace As %ZEN.Datatype.caption [ InitialExpression = {$$$TextJS("Are you sure you want to delete ALL cached queries in namespace %1?")} ];

Property msgDeleteCQTable As %ZEN.Datatype.caption [ InitialExpression = {$$$TextJS("Are you sure you want to delete all cached queries for table %1?")} ];

Property msgSelectTable As %ZEN.Datatype.caption [ InitialExpression = {$$$TextJS("Please select a Table from the tree and try again.")} ];

/// Filter used for Statements table
Property StatementFilter As %ZEN.Datatype.string;

/// Maximum rows to display in Statements table
Property StatementMaxRows As %ZEN.Datatype.integer [ InitialExpression = 1000 ];

/// PageSize used to display in Statements table
Property StatementPageSize As %ZEN.Datatype.integer [ InitialExpression = 100 ];

/// ID of currently executing query so we can support multiple browser windows side by side
Property CurrentQueryID As %ZEN.Datatype.integer [ Internal ];

/// This Style block contains page-specific CSS style definitions.
XData Style
{
}

/// This XML block defines the contents of this pane.
XData contentPane [ XMLNamespace = "http://www.intersystems.com/zen" ]
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

/// User entered something in to the filter. Re-load the table with filter value.
ClientMethod statementFilterChanged(value) [ Language = javascript ]
{
}

/// this method maybe called from StatementDetails page to update table
ClientMethod statementRefresh() [ Language = javascript ]
{
}

/// Call logic to cleanup stale statement index entries that do not have routines/classes anymore
ClassMethod StatementIndexClean() [ ZenMethod ]
{
}

/// drillType indicate the type (1 based. Tables/Views...) if overrideFilter is 0 then do not override Filter unless it is null.
ClientMethod doDrill(drillType, schemaname, overrideFilter) [ Language = javascript ]
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

/// This method is fired up after onDrawContent is finished. Hide progress message and display error if exists.
ClientMethod updateStatistics() [ Language = javascript ]
{
}

/// when DrawHTML is finished, Status is "Done" then we update the Performance value.
ClassMethod GetStatus(pCurrentQueryID As %Integer = "") As %ZEN.proxyObject [ ZenMethod ]
{
}

///  Curently we do not display the ribbon for this page.
Method OnGetRibbonInfo(Output pDisplay As %Boolean, Output pViewIcons As %List, Output pSortOptions As %List, Output pSearchBox As %Boolean, Output pRibbonTitle As %String, Output pCommands As %List) As %Status
{
}

ClientMethod onloadHandler(load) [ Language = javascript ]
{
}

ClientMethod onlayoutHandler(load) [ Language = javascript ]
{
}

ClientMethod adjustSizes() [ Language = javascript ]
{
}

/// Check if user hit [Enter].
ClientMethod keyUp(zenEvent, flag) [ Language = javascript ]
{
}

ClientMethod selectSchema(schema) [ Language = javascript ]
{
}

/// user changed filter type. Show or hide procedure options.
ClientMethod doFilterType() [ Language = javascript ]
{
}

/// reload tree with new filter. when this happens we want to hide groupDetails and
/// show the message to remind user to select item from tree.
ClientMethod doSearch() [ Language = javascript ]
{
}

ClientMethod doSelectRow(thisTable) [ Language = javascript ]
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

/// Draw the contents of the Table Header (the region between the diagram and the table).
Method DrawTableHeader(pSeed As %String) As %Status
{
}

/// Provide contents of the data source tree.
ClassMethod GetTreeInfo(pRoot As %String, Output pTree, ByRef pParms) As %Status
{
}

/// Build array for Tables tree
ClassMethod GetTables(pShowSystem, pFilter, pSchemaNumber, pDeprecated, ByRef pTree) As %Integer
{
}

/// Build field array for a table
ClassMethod GetTableFields(pSchemaNumber, pTableLevel, pTableName, ByRef pTree) As %Integer
{
}

/// Build array for Views tree
ClassMethod GetViews(pShowSystem, pFilter, pTotalNumber, pDeprecated, ByRef pTree) As %Integer
{
}

/// Build array for Procedures tree
ClassMethod GetProcedures(pShowSystem, pFilter, pFilterOption, pTotalNumber, pDeprecated, ByRef pTree) As %Integer
{
}

/// Build array for Cached Queries tree.
/// If schema is not null then use CachedQueryInfo that takes in the schema name and get routines(classes) that belong to that schema.
/// If filter is not null then match routine name to that filter.
ClassMethod GetCQs(pShowSystem, pFilter, pSchema, pTotalNumber, ByRef pTree) As %Integer
{
}

/// Given schema == table, return a list of fields concatenated by commas excluding hidden fields. Used by drag and drop.
ClassMethod TableFields(tableName) As %String [ ZenMethod ]
{
}

ClassMethod GetLastTreeLoaded() As %String [ ZenMethod ]
{
}

/// This functions takes a table/view schema.name and quote either piece if needed
ClassMethod Quoter2(val) As %String [ ZenMethod ]
{
}

ClassMethod SaveLastTreeLoaded(pBranch, pTotalNumber) As %String
{
}

/// *** Methods for tree item text click ***
ClientMethod doTree(tree) [ Language = javascript ]
{
}

/// This method is called to show schemas
ClientMethod doAllSchemas(applyFilter) [ Language = javascript ]
{
}

/// This method reload a particular listType.
/// The expected behavior: <br>
/// <p>If the current list selected on the tree is equal to the listType and is expanded, then reload the list and expand.</li>
/// </p>
ClientMethod doReloadNode(listType) [ Language = javascript ]
{
}

/// User clicked a ReferenceTo link.
/// Check the current tree to see if we can find the reference class. If yes then make it selected and we won't need to refresh tree.
/// Otherwise, refresh tree with the new reference class as filter.
/// The tree will be collapsed and we will hide groupDetails and show message to remind user to reselect item from tree.
/// type arguement.  0 = Tables, 1 = View, 2 = Stored procedures
ClientMethod doReferenceTo(newtable, type) [ Language = javascript ]
{
}

/// User clicked a StatementDetailsTo link.
ClientMethod doStatementDetailsTo(stmthash, openInTab) [ Language = javascript ]
{
}

/// User clicked the Cached Query link (it used to be a routine and now it's class) after executed a query. Hide components so that we can show CQ details.
/// Check the current tree to see if we can find the routine. If yes then make it selected and we won't need to refresh tree.
/// Otherwise, refresh tree with the new routine as filter.
/// The tree will be collapsed and we will hide groupDetails and show message to remind user to reselect item from tree.
ClientMethod prepareProp(routine) [ Language = javascript ]
{
}

/// show catalog details for a table
ClientMethod showCatalog() [ Language = javascript ]
{
}

/// show catalog details for a table
ClientMethod RefreshTableStatements() [ Language = javascript ]
{
}

/// show catalog details for a view
ClientMethod showCatalogView() [ Language = javascript ]
{
}

/// show catalog details for a stored procedure
ClientMethod showCatalogProc() [ Language = javascript ]
{
}

/// show catalog details for a cached query
ClientMethod showCatalogCQ() [ Language = javascript ]
{
}

ClientMethod showCQ(routine) [ Language = javascript ]
{
}

ClientMethod showCQTable(routine) [ Language = javascript ]
{
}

/// show statement details for a table
ClientMethod showStatements() [ Language = javascript ]
{
}

ClientMethod showStatement(statement) [ Language = javascript ]
{
}

ClientMethod showStatementTable(statement) [ Language = javascript ]
{
}

/// *** Methods for Exeucte Query ***
ClientMethod doHistory() [ Language = javascript ]
{
}

ClientMethod doQueryBuilder() [ Language = javascript ]
{
}

/// This is currently used for cached queries. When user clicks the cached query name from the Execute Query tab,
/// we reload the tree for the cached query and starts the timer. When the timer reaches it's end it calls this method
/// to have the selected cached query "clicked" so that the CQ info block can be shown.
ClientMethod timeout() [ Language = javascript ]
{
}

/// show or hide the Clear image for Query Text or Filter
ClientMethod toggleClearText(tControl) [ Language = javascript ]
{
}

ClientMethod keyUpQueryText(tControl) [ Language = javascript ]
{
}

/// User clicked Exeucte or ShowPlan link from the Cached Query details box. Query Routine is passed in.
ClientMethod selectCQ(tRoutine, tAction) [ Language = javascript ]
{
}

/// This method processes actions for a query history item.
ClientMethod selectHistory(tID, tAction) [ Language = javascript ]
{
}

/// user clicked a tab. hide/show result tables, and alter tab's background color.
ClientMethod tabChanged(tab, totalTabs) [ Language = javascript ]
{
}

ClientMethod toggleOptions() [ Language = javascript ]
{
}

/// Drop handler for model table.
ClientMethod tableDropHandler(dragData) [ Language = javascript ]
{
}

ClientMethod validateText() [ Language = javascript ]
{
}

/// Return tree's selected index value
ClientMethod getTable() [ Language = javascript ]
{
}

/// This method takes care of actions that need schema.table name
ClientMethod doActionTable(action) [ Language = javascript ]
{
}

/// This method opens Documatic in a seperate window. Called by table class doc and procedure doc.
ClientMethod doOpenDoc(className) [ Language = javascript ]
{
}

ClientMethod doOpenTableMax(maxRows) [ Language = javascript ]
{
}

/// if there are selected quries, then we are deleting selected queries.
/// else 1) if there are selected schema.table, then asking if user wants to delete
ClientMethod deleteSelectedQuery() [ Language = javascript ]
{
}

/// This method takes care of actions that do not need schema.table name
ClientMethod doAction(action) [ Language = javascript ]
{
}

ClientMethod doDeleteAll() [ Language = javascript ]
{
}

ClientMethod doInprogress() [ Language = javascript ]
{
}

ClientMethod doExecute() [ Language = javascript ]
{
}

Method CancelQuery() As %Boolean [ ZenMethod ]
{
}

Method StartQuery(foreground As %Boolean = 0) As %Boolean [ ZenMethod ]
{
}

ClassMethod %OnFinishBackgroundTask(pTaskID As %String) As %Status
{
}

ClassMethod %OnMonitorBackgroundTask(pTaskID As %String, pStatus As %String, pPercentComplete As %Float)
{
}

ClassMethod StartQueryExecution(pRunInBackground As %Boolean = 1, pQueryID As %Integer, pRuntimeMode As %String, pDialect As %String, pObjectSelectMode As %Integer, pShowRowNum As %Boolean, pMaxRows As %Integer) As %Status
{
}

/// This is the method for rebuilding a particular index
ClientMethod doRebuildIndex(pIndex) [ Language = javascript ]
{
}

ClientMethod doShowPlan() [ Language = javascript ]
{
}

/// User entered something in to the filter. Re-load the table with filter value.
ClientMethod historyFilterChanged(value) [ Language = javascript ]
{
}

/// Update number of tree items loaded after a tree branch is loaded.
/// Totals are displayed at the bottom of the the tree pane
ClientMethod updateTreeItems() [ Language = javascript ]
{
}

/// Update properties for Execute Query and save to server for the future.
ClientMethod updateParameters() [ Language = javascript ]
{
}

/// This client event is fired when the a popup page launched from this page fires an action.
ClientMethod onPopupAction(popupName, action, value) [ Language = javascript ]
{
}

/// Given a history ID, return query text
ClassMethod GetText(pID) As %String [ ZenMethod ]
{
}

ClassMethod DeleteHistory(pID) As %String [ ZenMethod ]
{
}

ClassMethod DeleteHistoryAll() [ ZenMethod ]
{
}

ClassMethod DrawPerformance(pSeed) As %Status
{
}

/// Draw HTML for Execute Query result.
Method DrawHTML(pText As %String(MAXLEN="")) As %Status
{
}

ClassMethod DrawShowPlan(pText As %String(MAXLEN="")) As %Status
{
}

/// Prepare to execute query.
/// Save user's latest query text into global for later execution
/// Return number of parameters the query text may have.
ClassMethod PrepareQuery(pText, pRuntimeMode, pDialect, pObjectSelectMode) As %String [ ZenMethod ]
{
}

ClassMethod OpenTableMaxRowsUpdate(pMax) [ ZenMethod ]
{
}

/// Save user's latest query text into global for later execution
ClassMethod PrepareAction(pText) As %String [ ZenMethod ]
{
}

/// Parse $C(10) from each line of query text and put into session array
ClassMethod ParseTextPiece(n, tLine)
{
}

ClassMethod SaveQueryHistory(QueryText As %String, Output HistoryId) As %Status
{
}

/// Draw HTML for Table info and build link for Class documatic.
ClassMethod DrawTableDetails(pSeed) As %Status
{
}

ClassMethod DrawViewDetails(pSeed) As %Status
{
}

/// Draw html for Procedure detiails
ClassMethod DrawProcedureDetails(pSeed) As %Status
{
}

/// Draw html for Cached Query details
ClassMethod DrawCQDetails(pSeed) As %Status
{
}

/// Given cached query routine name, return query text
ClassMethod GetCQText(pRoutine) As %String [ ZenMethod ]
{
}

/// Drop a Table, View, Procedure, or CachedQuery
ClassMethod Drop(pDropType, pSchema, pTable) As %String [ ZenMethod ]
{
}

ClassMethod RebuildIndices(pSchema, pTable, pIndex = "") As %String [ ZenMethod ]
{
}

/// FILTERTYPE is any of the choices from Filter drop-down.
ClassMethod SaveFilter(FILETYPE, SQLFILTER, FILTERPROC, SYSTEMFLAG, DEPRECATEDFLAG) As %Boolean [ ZenMethod ]
{
}

ClassMethod SaveParameters(RuntimeMode, MaxRows, ShowRowNum, Dialect, ObjectSelectMode, Foreground) [ ZenMethod ]
{
}

ClassMethod GetRecentList(FILTERTYPE) As %String [ ZenMethod ]
{
}

/// Save selected cached query routines into %session
/// FILETYPE = "PurgeCQRoutines"
ClassMethod PrepareDeletion(FILETYPE, selectedRows) As %String [ ZenMethod ]
{
}

/// FILETYPE = "PurgeCQNamespace", "PurgeCQTable", or "PurgeCQRoutines"
ClassMethod DeleteQuery(FILETYPE, selectedRows) As %String [ ZenMethod ]
{
}

/// Method for executing the query for list schemas.
Method ListSchemas(pRS As %Library.ResultSet, Output tSC As %Status, pInfo As %ZEN.Auxiliary.QueryInfo) As %Boolean
{
}

/// ******** Special Code for Expand *************
/// If true, the search area is visible.
Property searchExpanded As %Boolean [ InitialExpression = 1, Internal ];

ClientMethod showExpand() [ Language = javascript ]
{
}

/// Toggle display of search pane.
ClientMethod toggleSearch() [ Language = javascript ]
{
}

ClassMethod SaveExpandState(FILETYPE, searchExpanded) [ ZenMethod ]
{
}

ClassMethod GetExpandState(FILETYPE) As %String
{
}

/// ******** End of Special Code for Expand *************
/// Return json for info.
Method GetSQLInfo(ByRef pParms, Output pObject As %RegisteredObject) As %Status
{
}

/// True if pages in the management portal are permitted to use auto-refresh behaviour.
Property enableAutoRefresh As %ZEN.Datatype.boolean [ InitialExpression = 1 ];

/// Draw HTML link to View Global Contents page
ClassMethod DrawGlobalLink(table As %ZEN.Component.tablePane, name As %String, seed As %String) As %Status
{
}

/// Draw link to toggle map selectability
ClassMethod DrawToggleIndexStatus(table As %ZEN.Component.tablePane, name As %String, seed As %String) As %Status
{
}

ClassMethod toggleIndexStatus(tableName As %String, indexName As %String, selectability As %Boolean) As %Status [ ZenMethod ]
{
}

}
