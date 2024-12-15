/// This plugin can be used to get the variance of distinct values for a given measure
/// in a given cell. For example:<br>
///
/// %KPI("%DeepSee.Variance","VARIANCE",1,"%measure","[Amount Sold]","%CONTEXT")<br>
///
/// The above returns the variance of the Revenues contained in the set of facts for a cell.
/// Use the "%measure" parameter to tell the plugin which measure should be used
Class %DeepSee.PlugIn.Variance Extends %DeepSee.KPIPlugIn [ System = 4 ]
{

/// Cube(s) that this plug-in is based on.
Parameter BASECUBE = "*";

Parameter LISTINGSOURCE = "FactTable";

Parameter PLUGINTYPE = "Aggregate";

/// This XData definition defines the KPI.
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

/// Compute the variance of values within the result set.
Method %OnCompute(pSQLRS As %SQL.StatementResult) As %Status
{
}

}
