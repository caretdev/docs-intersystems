/// This class contains shared methods used by the QButtons UI pages.
Class %CSP.UI.Portal.SQL.QButtons.Utils [ Abstract, System = 4 ]
{

Parameter DOMAIN = "%Utility";

Property SQLHomePage As %ZEN.Datatype.string [ InitialExpression = {..Link("%25CSP.UI.Portal.SQL.Home.zen")} ];

/// Return server info per View Stats.
Method GetSettingsInfo(ByRef pParms, Output pObject As %RegisteredObject) As %Status
{
}

/// This method returns information regarding view stats settings for the UI.
ClassMethod GetSettingsData(Output pObject As %ZEN.proxyObject) As %Status
{
}

/// This method returns information regarding a cached query for the UI.
ClassMethod GetQueryData(pNamespace, pCursorName, pRoutineName, Output pObject As %ZEN.proxyObject) As %Status
{
}

/// Given a history ID, return query text
ClassMethod GetQueryHistoryText(pID) As %String [ ZenMethod ]
{
}

/// This method returns 1 (success) or 0 and clears cached queries.
ClassMethod PurgeQuery(pNamespace) As %ZEN.proxyObject [ ZenMethod ]
{
}

/// Return PTools SQL Stats Query Text
ClassMethod GetQueryText(pNamespace, pRoutine, pCursor, pInternal = 0) As %String [ ZenMethod ]
{
}

ClassMethod GetImportSchema(pNamespace, pRoutine, pCursor, pInternal = 0) As %String [ ZenMethod ]
{
}

ClassMethod PrepareShowPlan(query, schema = "", id = "") As %String [ ZenMethod ]
{
}

/// Returns display messages for settings
/// json should be passed in containing the settings data
ClientMethod getSettingMessages(json) [ Language = javascript ]
{
}

ClassMethod CheckJobStatus(PID) As %ZEN.proxyObject [ ZenMethod ]
{
}

/// Goto a particular page
ClientMethod gotoPToolsPage(pageId) [ Language = javascript ]
{
}

/// show or hide the Clear image for Query Text or Filter
ClientMethod toggleClearText(tControl) [ Language = javascript ]
{
}

/// Return json data for SQL page
ClassMethod GetSQLPageData(Output pObject As %ZEN.proxyObject) As %Status
{
}

/// This method returns proxyObject that contains information for the UI
ClassMethod GetIndexAnalyzerProperties(Output pObject As %ZEN.proxyObject) As %Status
{
}

/// Method to job off Show Plan process in the background.
ClassMethod JobShowPlan(query) As %ZEN.proxyObject [ ZenMethod ]
{
}

/// Write upto 40 characters of any field in tablePane
Method DrawUpto40Text(pTable As %ZEN.Component.tablePane, pName As %String, pSeed As %String) As %Status
{
}

}
