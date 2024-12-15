/// This plugin runs code to generate a new source class from a selection in a pivot table.
Class %DeepSee.PlugIn.CreateTable Extends %DeepSee.KPIPlugIn [ System = 4 ]
{

Parameter CACHEABLE = 0;

Parameter ASYNC = 0;

/// Cube(s) that this plug-in is based on.
Parameter BASECUBE = "*";

Parameter LISTINGSOURCE = "SourceTable";

Parameter PLUGINTYPE = "Aggregate";

XData KPI [ XMLNamespace = "http://www.intersystems.com/deepsee/kpi" ]
{
}

/// Get the base query for this plug-in.
Method %OnGetMDX(ByRef pMDX As %String) As %Status
{
}

/// Returns the field list (RETURN clause) of the listing used to supply data for this plug-in.
/// In this case, determine which measure we need.
Method %OnGetListingFields() As %String
{
}

/// Return an <class>%SQL.StatementResult</class> object that will iterate over the facts used for analysis.
Method %OnGetAnalysisResultSet(Output pRS As %SQL.StatementResult, pSQL As %String) As %Status
{
}

/// Read the listing's resultset and generate a new class to contain the records.
Method %OnCompute(pSQLRS As %SQL.StatementResult, pFactCount As %Integer) As %Status
{
}

}
