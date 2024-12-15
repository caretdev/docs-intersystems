/// %DeepSee.PlugIn.Distinct
///
/// This plugin can be used to get the count of distinct values for a given level
/// in a given cell.
///
/// For example: %KPI("%DeepSee.Distinct","DISTINCT",1,"%level","[DocD].[H1].[Doctor]","%CONTEXT")
///
/// The above returns the number of unique doctors contained in the set of fact for a cell.
/// Use the "%level" parameter to tell the plugin which level you are interested in -- use
/// [<dimension>].[<hierarchy>].[<level>]
///
Class %DeepSee.PlugIn.Distinct Extends %DeepSee.KPIPlugIn [ System = 4 ]
{

/// Cube(s) that this plug-in is based on.
Parameter BASECUBE = "*";

Parameter CACHEABLE = 1;

Parameter LISTINGSOURCE = "FactTable";

Parameter PLUGINTYPE = "Aggregate";

Parameter ASYNC = 1;

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

/// This is where we actually do work in the PlugIn.
/// We are given an SQL result set of all the facts included in this
/// cell. We can loop over the facts and exclude doubles from the count
Method %OnCompute(pSQLRS As %SQL.StatementResult, pFactCount As %Integer) As %Status
{
}

}
