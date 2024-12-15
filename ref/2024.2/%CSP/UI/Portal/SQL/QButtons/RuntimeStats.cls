/// System Management Portal - SQL Performance Tool
Class %CSP.UI.Portal.SQL.QButtons.RuntimeStats Extends (%CSP.UI.Template.Property, %CSP.UI.Portal.UtilsNav, %CSP.UI.Portal.SQL.QButtons.Utils) [ System = 4 ]
{

Parameter RESOURCE = "%Development:USE";

Parameter CSPURL = "/csp/sys/exp/%CSP.UI.Portal.SQL.QButtons.RuntimeStats.zen";

Parameter HELPADDRESS = "Home,SQL Runtime Statistics";

/// Displayed name of this page.
Parameter PAGENAME = "SQL.QButtons.RuntimeStats";

Property PlanPage As %String;

Property ShowPlanOutput As %String;

Property OpenDetailsPage As %ZEN.Datatype.string [ InitialExpression = {..Link("/csp/sys/exp/%25CSP.UI.Portal.SQL.QButtons.RuntimeStatsDetails.cls",,1)} ];

Property IndexAnalyzerPage As %ZEN.Datatype.string [ InitialExpression = {..Link("%25CSP.UI.Portal.SQL.QButtons.IndexAnalyzer.zen")} ];

Property ViewProcessPage As %ZEN.Datatype.string [ InitialExpression = {..Link("/csp/sys/op/%25CSP.UI.Portal.ProcessDetails.zen",,1)} ];

/// Store translated targetCol linkCaption for <condition>
Property colDetails As %ZEN.Datatype.caption [ InitialExpression = {$$$Text("Details")} ];

Property openTab As %ZEN.Datatype.string(ZENURL = "openTab");

XData Style
{
}

XData SVGStyle
{
}

XData contentPane [ XMLNamespace = "http://www.intersystems.com/zen" ]
{
}

/// Write upto 80 characters of query statement in tablePane
Method DrawQueryText(pTable As %ZEN.Component.tablePane, pName As %String, pSeed As %String) As %Status
{
}

/// This client event, if present, is fired when the page is loaded.
/// Enable the first tab and disable the rest.
ClientMethod onloadHandler() [ Language = javascript ]
{
}

/// This client event, if present, is fired when the page is resized.
ClientMethod onresizeHandler() [ Language = javascript ]
{
}

ClientMethod onlayoutHandler(load) [ Language = javascript ]
{
}

ClientMethod adjustSizes() [ Language = javascript ]
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

ClientMethod doPurgeQuery() [ Language = javascript ]
{
}

ClientMethod doPurgeStats() [ Language = javascript ]
{
}

ClientMethod doShowPlan() [ Language = javascript ]
{
}

/// View details of a background process for Show Plan
ClientMethod doViewProcess() [ Language = javascript ]
{
}

ClientMethod toggleFields(hideflag) [ Language = javascript ]
{
}

ClientMethod timeout() [ Language = javascript ]
{
}

ClientMethod doSelectRow(cursorName, routineName) [ Language = javascript ]
{
}

ClientMethod openDetails(cursorName, routineName) [ Language = javascript ]
{
}

ClientMethod doSettings() [ Language = javascript ]
{
}

ClientMethod doView() [ Language = javascript ]
{
}

ClientMethod tabChanged(index) [ Language = javascript ]
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
Method DrawDetailsTitle(pData) As %Status
{
}

/// Return server info per View Stats.
Method GetSettingsInfo(ByRef pParms, Output pObject As %RegisteredObject) As %Status
{
}

Method %OnGetJSResources(ByRef pResources As %String) As %Status [ Private ]
{
}

ClientMethod onunloadHandler() [ Language = javascript ]
{
}

/// This method clears Stats in the current namespace.
/// Returns the number of Stats deleted from the '%SYS.PTools.Stats' class;
/// Otherwise, returns an error message if an error occurred.
ClassMethod PurgeStats(pNamespace) As %ZEN.proxyObject [ ZenMethod ]
{
}

}
