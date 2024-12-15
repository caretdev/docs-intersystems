Class %CSP.UI.Portal.SQL.QButtons.ShowPlanAlt Extends (%CSP.UI.Template.Property, %CSP.UI.Portal.UtilsNav, %CSP.UI.Portal.SQL.QButtons.Utils) [ System = 4 ]
{

Parameter RESOURCE = "%Development:USE";

Parameter CSPURL = "/csp/sys/exp/%CSP.UI.Portal.SQL.QButtons.ShowPlanAlt.zen";

Parameter HELPADDRESS = "Home,SQL Alternate Show Plans";

/// Displayed name of this page.
Parameter PAGENAME = "SQL.QButtons.ShowPlanAlt";

Property PlanPage As %String;

Property ViewProcessPage As %ZEN.Datatype.string [ InitialExpression = {..Link("/csp/sys/op/%25CSP.UI.Portal.ProcessDetails.zen",,1)} ];

Property QUERYCLASS As %ZEN.Datatype.string [ InitialExpression = "%CSP.UI.Portal.SQL.QButtons.ShowPlanAlt" ];

Property QUERYNAME As %ZEN.Datatype.string [ InitialExpression = "possiblePlans" ];

Property QUERYTEXT As %ZEN.Datatype.string;

Property COMPAREROWS As %ZEN.Datatype.string;

/// Whether the current background job is for compare show plan
Property IsCompare As %ZEN.Datatype.boolean [ InitialExpression = 0 ];

Property JOBID As %ZEN.Datatype.integer;

XData Style
{
}

XData contentPane [ XMLNamespace = "http://www.intersystems.com/zen" ]
{
}

ClientMethod onlayoutHandler(load) [ Language = javascript ]
{
}

ClientMethod adjustSizes() [ Language = javascript ]
{
}

ClientMethod timeout() [ Language = javascript ]
{
}

ClientMethod doHistory() [ Language = javascript ]
{
}

/// This method processes actions for a query history item.
ClientMethod selectHistory(tID) [ Language = javascript ]
{
}

/// User entered something in to the filter. Re-load the table with filter value.
ClientMethod historyFilterChanged(value) [ Language = javascript ]
{
}

ClientMethod doClearQueryText() [ Language = javascript ]
{
}

/// Invoke method to gather SQL Statements and update SQL Statement Count table. During this time, disable the rasio buttons.
ClientMethod doGetPlans() [ Language = javascript ]
{
}

ClientMethod toggleFields(hideflag) [ Language = javascript ]
{
}

ClientMethod doComparePlans() [ Language = javascript ]
{
}

ClientMethod doShowPlan(ID, stats) [ Language = javascript ]
{
}

/// View details of a background process for Show Plan
ClientMethod doViewProcess() [ Language = javascript ]
{
}

Method %OnAfterCreatePage() As %Status
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

/// Draw html for details title: Routine name and Query text
Method DrawDetailsTitle(pSeed) As %Status
{
}

/// This query uses %AltPlan array generated from possiblePlans run in the background
ClassMethod possiblePlansExecute(ByRef qHandle As %Binary, JobID As %String) As %Status [ PublicList = (backgrnd, showErr, wrtref) ]
{
}

ClassMethod possiblePlansFetch(ByRef qHandle As %Binary, ByRef Row As %List, ByRef AtEnd As %Integer = 0) As %Status [ PlaceAfter = possiblePlansExecute ]
{
}

ClassMethod possiblePlansClose(ByRef qHandle As %Binary) As %Status [ PlaceAfter = possiblePlansFetch ]
{
}

/// This query uses %AltPlan array generated from possiblePlans run in the background
ClassMethod possiblePlansStatsExecute(ByRef qHandle As %Binary, JobID As %String) As %Status [ PublicList = (backgrnd, showErr, wrtref) ]
{
}

ClassMethod possiblePlansStatsFetch(ByRef qHandle As %Binary, ByRef Row As %List, ByRef AtEnd As %Integer = 0) As %Status [ PlaceAfter = possiblePlansExecute ]
{
}

ClassMethod possiblePlansStatsClose(ByRef qHandle As %Binary) As %Status [ PlaceAfter = possiblePlansFetch ]
{
}

ClassMethod PrepareShowPlan(query, rtn = "") As %String [ ZenMethod ]
{
}

/// Get information to display in the ribbon bar.
Method OnGetRibbonInfo(Output pDisplay As %Boolean, Output pViewIcons As %List, Output pSortOptions As %List, Output pSearchBox As %Boolean, Output pRibbonTitle As %String, Output pCommands As %List) As %Status
{
}

Method %OnGetJSResources(ByRef pResources As %String) As %Status [ Private ]
{
}

/// Method to job off Show Plan process in the background.
ClassMethod JobPossiblePlans(query) As %ZEN.proxyObject [ ZenMethod ]
{
}

/// Method to job off Compare Show Plan process in the background.
ClassMethod JobComparePlans(query, idList) As %ZEN.proxyObject [ ZenMethod ]
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

/// <var>pInfo</var> holds details on how to create the query for compare show plans run in the background
Method CreateRSCompare(Output tSC As %Status, pInfo As %ZEN.Auxiliary.QueryInfo) As %ResultSet
{
}

/// Method for executing the compare show plans query when it is run in the background
Method ExecuteRSCompare(pRS As %Library.ResultSet, Output tSC As %Status, pInfo As %ZEN.Auxiliary.QueryInfo) As %Boolean
{
}

}
