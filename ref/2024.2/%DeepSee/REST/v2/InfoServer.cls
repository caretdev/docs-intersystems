/// This class is responsible for creating the JSON response to the DeepSee REST
/// informational services. For examples and a full list of available services see the documentation
/// for <class>%DeepSee.REST.v2<.class>.
Class %DeepSee.REST.v2.InfoServer Extends %DeepSee.REST.REST
{

XData UrlMap
{
}

/// Retrieve the list of available filters for a given <var>pCube</var>
ClassMethod WriteFiltersForDataSource(namespace As %String, pDataSource) As %Status
{
}

/// Return the available members for a filter defined by <var>pSpec</var> within the context of <var>pCube</var>.
ClassMethod WriteFilterMembers(namespace As %String, pUrl) As %Status
{
}

/// Return a list of available cubes on the system.
ClassMethod WriteCubeList(namespace As %String) As %Status
{
}

/// Retrieve the list of available KPIs
ClassMethod WriteKPIList(namespace As %String)
{
}

/// Return a list of available pivots on the system.
ClassMethod WritePivotList(namespace As %String) As %Status
{
}

/// Return a list of available dashboards on the system.
ClassMethod WriteDashboardList(namespace As %String) As %Status
{
}

/// Return a list of available listings for <var>pDataSource</var>.
ClassMethod WriteListingsForCube(namespace As %String, pDataSource) As %Status
{
}

/// Return a list of available measures for <var>pCubeName</var>.
ClassMethod WriteMeasuresForCube(namespace As %String, pCubeName) As %Status
{
}

/// Return a list of available listing fields for <var>pCubeName</var>.
ClassMethod WriteListingFieldsForCube(namespace As %String, pCubeName) As %Status
{
}

/// Return a list of available quality measures for <var>pCubeName</var>.
ClassMethod WriteQualityMeasuresForCube(namespace As %String, pCubeName) As %Status
{
}

/// Return a list of available named filters for <var>pCubeName</var>.
ClassMethod WriteNamedFiltersForCube(namespace As %String, pCubeName) As %Status
{
}

/// Return a list of available pivot variables for <var>pCubeName</var>.
ClassMethod WritePivotVariablesForCube(namespace As %String, pCubeName) As %Status
{
}

/// Return details for a given pivot variable with logical name <var>pVariableName</var>, available in <var>pCubeName</var>.
ClassMethod WriteDetailsForPivotVariable(namespace As %String, pUrl) As %Status
{
}

/// Test method to confirm connection in the service type
ClassMethod Test(namespace As %String) As %Status
{
}

}
