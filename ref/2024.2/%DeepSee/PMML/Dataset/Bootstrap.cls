/// Lightweight object representing a resampled version of the <property>OriginalSet</property> dataset
Class %DeepSee.PMML.Dataset.Bootstrap Extends %DeepSee.PMML.Dataset [ System = 4 ]
{

Property BootstrapId As %Integer;

Property SQL As %String(MAXLEN = "") [ Private ];

Property OriginalSet As %DeepSee.PMML.Dataset.Base;

Method %OnNew(pBootstrapId As %Integer, pSQL As %String, pOriginalSet As %DeepSee.PMML.Dataset.Base, pFields As %ArrayOfObjects) As %Status
{
}

Method FieldsGet() As %ArrayOfObjects [ Internal, ServerOnly = 1 ]
{
}

Method GetSqlWhere(ByRef pFilters) As %String [ Private ]
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
/// 	pDistribution("total") = total
/// 	pDistribution("value", dim, i) = value
/// 	pDistribution(i, j, ...) = tCount
///
Method GetXDDistribution(pFields As %List, Output pDistribution, ByRef pFilters) As %Status
{
}

Method GetValueCount(pField As %String, pIncludeNull As %Boolean = 1, ByRef pFilters, Output pSC As %Status) As %Integer
{
}

/// returns pIds(n) = rowid
Method GetRecordIds(Output pRecordIds, ByRef pFilters) As %Status
{
}

}
