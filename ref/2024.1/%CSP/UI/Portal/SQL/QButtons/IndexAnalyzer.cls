/// System Management Portal - SQL Performance Tool
Class %CSP.UI.Portal.SQL.QButtons.IndexAnalyzer Extends (%CSP.UI.Template.Property, %CSP.UI.Portal.UtilsNav, %CSP.UI.Portal.SQL.QButtons.Utils) [ System = 4 ]
{

Parameter RESOURCE = "%Development:USE";

Parameter CSPURL = "/csp/sys/exp/%CSP.UI.Portal.SQL.QButtons.IndexAnalyzer.zen";

Parameter HELPADDRESS = "Home,SQL Index Analyzer";

Property PlanPage As %String;

Property gatherStatus As %Boolean;

Property dots As %String;

/// Displayed name of this page.
Parameter PAGENAME = "SQL.QButtons.IndexAnalyzer";

Property msgGather As %ZEN.Datatype.string [ InitialExpression = {$$$TextJS("Gathering SQL statements ...")} ];

Property QUERYNAME As %ZEN.Datatype.string [ InitialExpression = "indexUsage" ];

Property SCHEMANAME As %ZEN.Datatype.string;

Property ShowPlanOutput As %ZEN.Datatype.string [ InitialExpression = {$P(..Link("/csp/sys/exp/%25CSP.UI.Portal.SQL.QButtons.ShowPlanOutput.zen"),"?$NAMESPACE",1)} ];

Property RuntimePage As %ZEN.Datatype.string [ InitialExpression = {..Link("%25CSP.UI.Portal.SQL.QButtons.RuntimeStats.zen")} ];

Property iTimeoutInterval As %ZEN.Datatype.integer [ InitialExpression = 1000 ];

/// Whether to include System items (0=Not to include; 1=Include; this flag is used by "%SQL.Manager.Catalog:Schemas" which is opposite of the SkipSys on the UI)
Property SYSTEMFLAG As %Integer [ InitialExpression = 0 ];

XData Style
{
}

XData contentPane [ XMLNamespace = "http://www.intersystems.com/zen" ]
{
}

/// User clicked a Query Text row. We will job off the show plan process in the background and start timer.
ClientMethod doSelectRow() [ Language = javascript ]
{
}

/// Show Plan timeout function
ClientMethod timeout() [ Language = javascript ]
{
}

ClientMethod resetToDefaults() [ Language = javascript ]
{
}

/// Write upto 80 characters of query statement in tablePane
Method DrawQueryText(pTable As %ZEN.Component.tablePane, pName As %String, pSeed As %String) As %Status
{
}

/// user checked/unchecked a "skip" checkbox. hide existing table and save the selection.
ClientMethod clearOptionData(skipSysChanged) [ Language = javascript ]
{
}

/// user selected a schema option. update the table with selected schema and save the selection.
ClientMethod schemaSort(schema) [ Language = javascript ]
{
}

/// Invoke method to gather SQL Statements and update SQL Statement Count table. During this time, disable the rasio buttons.
ClientMethod startButtonGather() [ Language = javascript ]
{
}

/// Timeout Method used by the statement gathering timer
ClientMethod checkStatus() [ Language = javascript ]
{
}

/// this method is used  to see if a server side query is done yet.
/// you can only run one thing at a time so we reuse the same lock to test
Method CheckButtonStatus() As %Boolean [ ZenMethod ]
{
}

/// Method used by the statement gathering timer
ClientMethod refreshButton(string) [ Language = javascript ]
{
}

/// Timeout Method used by the report timer
ClientMethod checkReportStatus() [ Language = javascript ]
{
}

ClientMethod refreshStatementTable() [ Language = javascript ]
{
}

ClientMethod startReportOption(newOption) [ Language = javascript ]
{
}

/// Prepare to refresh the result table - update query name based on the option selected
ClientMethod endReportOption(newOption) [ Language = javascript ]
{
}

/// Save User's report options to server. This is saved per username per namespace so the next time you come into this page your previous selections will become defaults.
ClientMethod saveLastValues() [ Language = javascript ]
{
}

/// diable or enable action buttons on this page
ClientMethod toggleButtons(flag) [ Language = javascript ]
{
}

ClientMethod doPurgeStats(purgeType) [ Language = javascript ]
{
}

/// This method is used to see if a server side query is done yet.
/// you can only run one thing at a time so we reuse the same lock to test
Method CheckOptionStatus() As %Status [ ZenMethod ]
{
}

ClientMethod refreshOption(string) [ Language = javascript ]
{
}

ClientMethod onloadHandler() [ Language = javascript ]
{
}

ClientMethod adjustSizes() [ Language = javascript ]
{
}

Method %OnAfterCreatePage() As %Status
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

///  Return the array of links to show in the locator bar.<br/>
///  pLink(n)=$LB(caption,link)
Method %GetLocatorLinks(Output pLink) As %Status
{
}

/// This client event is fired when the a popup page launched from this page fires an action.
ClientMethod onPopupAction(popupName, action, value) [ Language = javascript ]
{
}

/// Draw html for details title: Routine name and Query text
Method DrawDetailsTitle(pSeed) As %Status
{
}

ClassMethod clearSQLAnalysisDB() As %Status [ ZenMethod ]
{
}

ClassMethod clearSQLStatements() As %Status [ ZenMethod ]
{
}

Method GatherStatements(skipSysObj, skipInsStmts) As %Status [ ZenMethod ]
{
}

Method DrawSQLStatements(pSeed) As %Status
{
}

/// skipSysObj - Skip all System Object (Classes & Routines) that start with: { % | DeepSee | Ens | HS | INFORMATION.SCHEMA }
Method PrepareAnalysis(option, skipSysObj, skipIDkeys, skipInsStmts, schema) As %Status [ ZenMethod ]
{
}

Method SaveLast(skipSysObj, skipIDkeys, skipInsStmts, schema) [ ZenMethod ]
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

Method GetQueryProperties(ByRef pParms, Output pObject As %RegisteredObject) As %Status
{
}

/// This method clears Stats in the current namespace if user clicked the Purge Statements or Purge Data button.
/// Returns the number of Stats deleted from the '%SYS.PTools.Stats' class;
/// Otherwise, returns an error message if an error occurred.
ClassMethod PurgeStats(pNamespace, pPurteType) As %ZEN.proxyObject [ ZenMethod ]
{
}

/// Method for executing the query for list schemas.
Method ListSchemas(pRS As %Library.ResultSet, Output tSC As %Status, pInfo As %ZEN.Auxiliary.QueryInfo) As %Boolean
{
}

}
