/// This class is responsible for creating the JSON response to the DeepSee REST
/// data services. For examples and a full list of available services see the documentation
/// for <class>%DeepSee.REST.v1<.class>.
Class %DeepSee.REST.v1.DataServer Extends %DeepSee.REST.REST
{

XData UrlMap
{
}

/// Perform specific validation for the service that will handle the request. This is used
/// as a callback in each service that extends %DeepSee.REST
ClassMethod %ValidateRequest(pUrl As %String, pMethod As %String) As %Status
{
}

/// Run any valid MDX (SELECT,DRILLTHROUGH,DRILLFACTS) query and returns the JSON resultset.
ClassMethod WriteJSONfromMDX(namespace As %String) As %Status
{
}

/// Run a listing from either the source or the fact table. Specific
/// listings or a list of fields may be POSTed to add to the query.
ClassMethod WriteJSONfromDrillthrough(namespace As %String)
{
}

/// Run any stored pivot table and return the associated JSON resultset.
ClassMethod WriteJSONfromPivot(namespace As %String) As %Status
{
}

/// Run any compiled KPI and return the associated JSON resultset.
ClassMethod WriteJSONfromKPI(namespace As %String) As %Status
{
}

/// Cancel a running query using the cubeKey and queryKey provided in a previously returned resultset with ResultsComplete=0.
ClassMethod CancelMDXQuery(namespace As %String, pQueryToken) As %Status
{
}

/// Try to obtain results from a previous query that returned incomplete results.
ClassMethod UpdateQueryResults(namespace As %String, pQueryToken) As %Status
{
}

/// Retrieve the most recently processed ^OBJ.DSTIME stamp(s) for one or more classes from the ^DeepSee.Update global.
ClassMethod WriteDSTIMEForClass(namespace As %String, pClassName) As %Status
{
}

/// Test method to confirm connection in the service type
ClassMethod Test(namespace As %String) As %Status
{
}

}
