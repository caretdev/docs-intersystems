Class %DeepSee.PMML.Dataset.Cube Extends %DeepSee.PMML.Dataset.Base [ System = 4 ]
{

Property CubeName As %String;

Property Filter As %String(MAXLEN = 2000);

/// pFields is an array of the cube levels and measures to be included in the dataset
/// pFields(n) = $lb(name, spec, tDataType, tOpType)
/// Field spec is MDX level spec [].[].[]
ClassMethod %Create(pName As %String, pCubeName As %String, ByRef pFields, pFilter As %String = "", Output pSC As %Status) As %DeepSee.PMML.Dataset.Cube
{
}

/// accepts
/// 	pFilters(n) = $lb(field, operator, key)
Method GetMDXFilter(ByRef pFilters, Output pSC As %Status, pAppendGlobalFilter As %Boolean = 1) As %String [ Private ]
{
}

/// accepts
/// 	pFilters(n) = $lb(field, operator, key)
/// returns:
/// 	pDistribution("total") = tTotalCount
/// 	pDistribution(n) = $lb(value, count)
Method Get1DDistribution(pField As %String, Output pDistribution, ByRef pFilters) As %Status
{
}

/// accepts
/// 	pFilters(n) = $lb(field, operator, key)
/// returns:
/// 	pDistribution = $lb(dim1Count, dim2Count, ...)
/// 	pDistribution("value", dim, i) = value
/// 	pDistribution(i, j, ...) = tCount
/// 	pDistribution("total", dim, i) = tDimTotal
Method GetXDDistribution(pFields As %List, Output pDistribution, ByRef pFilters) As %Status
{
}

Method GetValueCount(pField As %String, pIncludeNull As %Boolean = 1, ByRef pFilters, Output pSC As %Status) As %Integer
{
}

Method GetBootstrapInfo(Output pSQL As %String, Output pFields As %ArrayOfObjects) As %Status [ Internal, Private ]
{
}

/// returns pIds(n) = rowid
Method GetRecordIds(Output pRecordIds, ByRef pFilters) As %Status
{
}

Method IsMeasure(pFieldName As %String) As %Boolean [ Private ]
{
}

Method GetPMMLDataSourceInternal(Output pDataSource As %DeepSee.PMML.Definition.Extension.DataSource) As %Status [ Internal, Private ]
{
}

Method GetAsResultSet(pFields As %List, Output pResultSet As %SQL.StatementResult, ByRef pFilters) As %Status [ Internal ]
{
}

}
