/// This Analytic plug-in computes the PERCENTILE on a given measure for a given cube.
Class %DeepSee.PlugIn.Percentile Extends %DeepSee.KPIPlugIn [ System = 4 ]
{

/// Cube(s) that this plug-in is based on.
Parameter BASECUBE = "*";

Parameter LISTINGSOURCE = "FactTable";

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

/// Compute the median of values within the result set.
Method %OnCompute(pSQLRS As %SQL.StatementResult, pFactCount As %Integer) As %Status
{
}

/// Return an <class>%SQL.StatementResult</class> object that will iterate over the facts used for analysis.
Method %OnGetAnalysisResultSet(Output pRS As %SQL.StatementResult, pSQL As %String) As %Status
{
}

}
