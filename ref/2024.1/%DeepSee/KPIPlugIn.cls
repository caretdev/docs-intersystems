/// Subclasses of this class are used to implement analytic "plug-ins" for DeepSee.
Class %DeepSee.KPIPlugIn Extends %DeepSee.KPI [ Abstract, System = 4 ]
{

Parameter CACHEABLE = 1;

Parameter ASYNC = 1;

/// By default, plug-ins are not visible to dashboards.
Parameter PUBLIC = 0;

/// Cube that this plug-in is based on.
/// This determines which cubes (or subject areas based on this cube) can see this plug-in.
/// This can be a comma-delimited list. The cube name(s) should not be enclosed with [].
Parameter BASECUBE As STRING;

/// Specifies the type of this plug-in. This indicates the context in which this plug-in is used.<br/>
/// "Pivot" -- the plug-in is visible within the Analyzer dimension tree.<br/>
/// "Aggregate" -- the plug-in is not visible within the Analyzer dimension tree.<br/>
Parameter PLUGINTYPE As STRING [ Constraint = ",Pivot,Aggregate", Flags = ENUM ] = "Pivot";

/// Specifies the source of the listing data used by this plugin: "SourceTable" - the data source
/// supplies the listing values; "FactTable" - the fact table supplies the listing values.
Parameter LISTINGSOURCE As STRING [ Constraint = ",SourceTable,FactTable", Flags = ENUM ] = "SourceTable";

/// If defined, this the field list (RETURN clause) of the listing used to supply data for this
/// plug-in.
Parameter LISTINGFIELDS As STRING;

/// Iterator for SQL results that will drive the computation of this plugin.
Property %sqlResultSet As %SQL.StatementResult;

/// Number of facts in the "listing" that is driving this KPI.
Property %factCount As %Integer;

Property %plugInListingKey As %String;

/// Return the type of this plug in.
ClassMethod %GetPlugInType() As %String
{
}

/// Return the cube(s) this KPI is based on.
ClassMethod %GetBaseCube() As %String
{
}

/// This callback defines the default MDX query used for analysis. It also checks for the current values
/// in the filters.<br/>
/// By default, select all facts from the first base cube.<br/>
/// This may be overridden by subclasses.
Method %OnGetMDX(ByRef pMDX As %String) As %Status
{
}

/// Return an <class>%SQL.StatementResult</class> object that will iterate over the facts used for analysis.
Method %OnGetAnalysisResultSet(Output pRS As %SQL.StatementResult, pSQL As %String) As %Status
{
}

/// Returns the source of the listing data used by this plugin: "SourceTable" - the data source
/// supplies the listing values; "FactTable" - the fact table supplies the listing values.
Method %OnGetListingSource() As %String
{
}

/// Returns the field list (RETURN clause) of the listing used to supply data for this plug-in.
Method %OnGetListingFields() As %String
{
}

/// Returns the MDX %ORDER BY clause for the drillthrough query used to supply data for this plug-in.
Method %OnGetListingOrderBy() As %String
{
}

/// Returns the MDX MAXROWS clause for the drillthrough query used to supply data for this plug-in.
Method %OnGetListingMaxRows() As %String
{
}

/// Return an <class>%SQL.StatementResult</class> object that will iterate over the
/// facts used for analysis.<br/>
/// <var>pCubeName</var> is the cube name for the underlying MDX query.<br/>
/// <var>pQueryKey</var> is the query key for the underlying MDX query.<br/>
Method %GetAnalysisResultSet(Output pRS As %SQL.StatementResult, Output pCubeName As %String, Output pQueryKey As %String) As %Status [ Final, Internal ]
{
}

/// Compute and return the KPI cache timestamp for the current KPI result.
Method %OnComputeKPITimestamp(ByRef pTimestamp As %String, pSourceType As %String, pQueryText As %String = "") As %Status
{
}

/// Compute the kpi cache key for the current KPI result.
/// Also creates the context for executing this KPI.
Method %OnComputeKPICacheKey(Output pCacheKey As %String, pQueryText As %String = "") As %Status [ Internal ]
{
}

/// Compute value(s) for this plug-in.<br/>
/// <var>pSQLRS</var> is an SQL result set (<class>%SQL.StatementResult</class>) that
/// will iterate over a set of facts and provide
/// the base data for the calculations.<br/>
/// <var>pFactCount</var> Is the number of facts in the set.<br/>
/// Plug-in classes should implement this method to perform their calculations.
Method %OnCompute(pSQLRS As %SQL.StatementResult, Output pFactCount As %Integer) As %Status
{
}

/// Notification that this KPI is being executed.<br/>
/// In this case, we compute the value of this plug-in by setting up the context
/// and invoking the <method>%OnCompute</method> method.<br/>
/// Plug-in classes should implement the <method>%OnCompute</method> method.
Method %OnLoadKPI() As %Status [ Final ]
{
}

/// Callback to get additional members for a KPI filter.
/// This takes the form:<br/>
/// pMembers($I(pMembers))=$LB(text,value)<br/>
/// In this case, return members for certain "built-in" filters such as
/// "%cube" and "%measure".
ClassMethod %OnGetFilterMembers(pFilter As %String, Output pMembers As %List, pSearchKey As %String = "", pDataSourceName As %String = "", ByRef pFilterValues As %String) As %Status
{
}

/// Plugins have a context-specific DRILLTHROUGH/DRILLFACTS MDX query that is executed
/// to ultimately produce the SQL resultset containing the target records for analysis. This
/// method decorates the base query with the MDX resultset cell context and directs the drill
/// to the proper source.
Method %GetPluginMDX(Output pStatus As %Status) As %String
{
}

/// Return the sourceType for this KPI.
/// Always "custom" for plugins.
ClassMethod %GetSourceType() As %String
{
}

Method %OnKPICleanup() As %Status [ Internal ]
{
}

}
