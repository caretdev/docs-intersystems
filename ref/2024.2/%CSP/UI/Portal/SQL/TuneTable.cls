/// System Management Portal - SQL Tuen Table page.
Class %CSP.UI.Portal.SQL.TuneTable Extends (%CSP.UI.Template.Property, %CSP.UI.Portal.UtilsNav) [ System = 4 ]
{

/// Displayed name of this page.
Parameter PAGENAME = "SQL Table Statistics";

Parameter RECENT = 0;

/// Security requirement
Parameter RESOURCE = "%Development";

Property SCHEMANAME As %String(ZENURL = "SCHEMANAME");

Property TABLENAME As %String(ZENURL = "TABLENAME");

/// Current extent size when the page is loaded. Used to compare with the textbox value.
Property CurrentSize As %Integer;

Property lblCurrentTableSize As %ZEN.Datatype.string [ InitialExpression = {$$$TextHTML("Current Extentsize (per shard if table is sharded): ")} ];

Property IsTuned As %Boolean [ InitialExpression = 0 ];

Property iTimeoutInterval As %ZEN.Datatype.integer [ InitialExpression = 1000 ];

/// This Style block contains page-specific CSS style definitions.
XData Style
{
}

XData SVGStyle
{
}

/// Contents of this page:
XData Contents [ XMLNamespace = "http://www.intersystems.com/zen" ]
{
}

XData contentPane [ XMLNamespace = "http://www.intersystems.com/zen" ]
{
}

/// timeout function
ClientMethod timeout() [ Language = javascript ]
{
}

/// hide the two panes during Tuning until Tuning is finished.
/// user can still click the Close button to quit out.
ClientMethod toggleButtons(flag) [ Language = javascript ]
{
}

ClientMethod doSelectRow(option) [ Language = javascript ]
{
}

ClientMethod doTuneTable() [ Language = javascript ]
{
}

ClientMethod doSave(option) [ Language = javascript ]
{
}

ClientMethod doSaveTableSize() [ Language = javascript ]
{
}

ClientMethod doClose() [ Language = javascript ]
{
}

/// Clear form
ClientMethod clearForm() [ Language = javascript ]
{
}

ClientMethod onlayoutHandler(load) [ Language = javascript ]
{
}

ClientMethod tabChanged(index) [ Language = javascript ]
{
}

/// Show or hide Edit Table Extentsize fields.
ClientMethod toggleOptions() [ Language = javascript ]
{
}

ClientMethod adjustSizes() [ Language = javascript ]
{
}

Method %OnAfterCreatePage() As %Status
{
}

Method DrawSQLTitle(pSeed) As %Status
{
}

/// This should be implemented in a subclass.
Method %OnGetPageName() As %String
{
}

ClassMethod SaveData(SchemaName, TableName, KeepClassUpToDate, field, selectivity, outSelectivity, outValue, AverageFieldSize) As %String [ ZenMethod ]
{
}

ClassMethod SaveMap(SchemaName, TableName, KeepClassUpToDate, field, blockCount) As %String [ ZenMethod ]
{
}

/// Method for executing the process query.
Method ExecuteRS(pRS As %Library.ResultSet, Output tSC As %Status, pInfo As %ZEN.Auxiliary.QueryInfo) As %Boolean
{
}

/// User clicked Tune Table button. Now calculate table extentsize, blockcounts, and selectivity and save.
ClassMethod SetSelValues(CurrentSize, ExtentSize, KeepClassUpToDate, SCHEMANAME, TABLENAME) As %ZEN.proxyObject [ ZenMethod ]
{
}

/// This is called when user clicks Save for Table Extentsize they edited.
ClassMethod SaveTableSize(SCHEMANAME, TABLENAME, ExtentSize, KeepClassUpToDate) As %String [ ZenMethod ]
{
}

Method DrawPropertyTitle(pPropertyForm) As %Status
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

ClassMethod CheckJobStatus(PID, SCHEMANAME, TABLENAME) As %ZEN.proxyObject [ ZenMethod ]
{
}

Method DrawHistogram(seed) As %Status [ Internal, ServerOnly = 1 ]
{
}

}
