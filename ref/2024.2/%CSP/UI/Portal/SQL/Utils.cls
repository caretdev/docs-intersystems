/// Utilities used by Management Portal SQL.
Class %CSP.UI.Portal.SQL.Utils Extends %RegisteredObject [ Abstract, System = 4 ]
{

Parameter DOMAIN = "%Utility";

/// Method to return SQL statement object and class name. Called by multiple SQL UI pages.
/// When %caller is passed in as "SMP" then the system will prevent the DDL API from checking the DDLAllowed flag for the class (used by modifying view)
ClassMethod SQLExecuteQuery(pText As %String(MAXLEN=""), ByRef pClassName As %String, pRuntimeMode As %Integer = 2, pDialect As %String = "Cache", pObjectSelectMode As %Boolean = 0, %caller As %String = "", ByRef tDiskRead, ByRef StatementType As %Integer = 0, ByRef AccStat, ByRef pSessionData, pQueryID As %Integer, ByRef pRuntimeClassName As %String) As %SQL.StatementResult
{
}

/// Method to return number of parameters that user needs to provide for input in order to execute the query.
/// Return number of Parameters within query text. 0 means none.
ClassMethod GetQueryParameters(pText As %String(MAXLEN=""), pRuntimeMode As %Integer = 2, pDialect As %String = "Cache", pObjectSelectMode As %Boolean = 0, ByRef tPromptCount As %Integer) As %String
{
}

/// GetError will return the HTML for an invalid SQLCODE.
ClassMethod GetError(pResult As %SQL.StatementResult, ByRef pMessages As %String(MAXLEN=""))
{
}

/// Given schema name and view name, return view info
ClassMethod GetViewInfo2(Schema As %String, ViewName As %String, Output Owner As %String, Output ReadOnly As %Boolean, Output CheckOption As %String) As %Status
{
}

ClassMethod InitCollectStats(ByRef AccStat) As %Status [ Internal ]
{
}

ClassMethod StartCollectStats(ByRef CurStat) [ Internal ]
{
}

ClassMethod EndCollectStats(ByRef CurStat, ByRef CurAcc) [ Internal ]
{
}

/// ***** The following methods are used to draw query results. Multiple resultsets and call statements are handled. *****
/// ***** The caller should have already obtained a SQL statement result using SQLExecuteQuery in this class.        *****
/// ***** See method DrawHTML in %CSP.UI.Portal.SQL.Home and %CSP.UI.Portal.SQL.PrintQuery                               *****
///
/// DrawResult will draw all of the result information returned in the statement result object.
ClassMethod DrawResult(pResult As %SQL.StatementResult, pDrawTab As %Boolean = 0, pShowRowNum As %Boolean, ByRef AccStat, pMaxRows As %Integer = 1000, pQueryID As %Integer = -1)
{
}

/// Draw html for one resultset.
ClassMethod DrawResultSet(pPtr As %Integer, pResult As %SQL.StatementResult, pDrawTab As %Boolean, pShowRowNum As %Boolean, ByRef pMessages As %String(MAXLEN=""), ByRef AccStat, pMaxRows As %Integer = 1000, pQueryID As %Integer = -1)
{
}

ClassMethod DrawOutputColumns(pPtr As %Integer = 0, pResult As %SQL.StatementResult, pDrawTab As %Boolean, ByRef pMessages As %String(MAXLEN=""), pQueryID As %Integer = -1)
{
}

/// Messages passed in should already been HTML escaped.
ClassMethod DrawMessages(pPtr As %Integer = 1, pDrawTab As %Boolean, ByRef pMessages As %String(MAXLEN=""), pQueryID As %Integer = -1)
{
}

/// Control method to draw tab group. This is only used on the SQL Home page for Execute Query tab.
ClassMethod DrawTabs(totalResultsets, pOutputValues As %Integer = 0, pQueryID As %Integer = -1)
{
}

/// Draws each tab in tab group button
ClassMethod DrawTabBox(tabClass As %String, tabCaption As %String, tabIndex As %Integer, totalTabs As %Integer, pQueryID As %Integer = -1)
{
}

/// *****                 End of Group Methods for DrawResult                  *****
/// List schemas based on cache gateway connection - you must have a DSN (configuration name) passed in.
/// This method is Jobbed from the wizard page.
ClassMethod LoadSchemas(pWizard, pDSN, pTableType, pSchemaFilter) As %String
{
}

ClassMethod LoadTables(pWizard, pDSN, pSchema, pTableType, pFilter) As %String
{
}

ClassMethod ReverseSchema(schema) As %String
{
}

/// Method for UI to get SQL Configuration Settings. Return Properties array.
ClassMethod GetConfigSQLProperties(ByRef Properties As %String) As %Status
{
}

/// Method for UI to save SQL configuration settings. ZEN proxy object is passed in with user selected values.
ClassMethod SaveConfigSQLProperties(proxy As %ZEN.proxyObject) As %ZEN.proxyObject
{
}

}
