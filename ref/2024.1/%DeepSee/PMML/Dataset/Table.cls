Class %DeepSee.PMML.Dataset.Table Extends %DeepSee.PMML.Dataset.Base [ Abstract, System = 4 ]
{

Property TempTable As %String;

Property TempTableClass As %String [ Private ];

Method SetFields(ByRef pFields, pIdColumn As %String, pMetadata) As %Status
{
}

/// Use pIndexFields to switch indices for all fields on or off
/// Use pIndexFields(fieldName) = indexType to override the default of bitmap indices for
/// categorical and ordinal fields and normal indices for continuous fields.
Method CreateTempTable(ByRef pClassName, ByRef pIndexFields As %Boolean = 1) As %Status
{
}

Method LoadTempTable() As %Status [ Abstract, Private ]
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

Method GetSqlFrom() As %String [ Private ]
{
}

Method GetSqlWhere(ByRef pFilters, Output pSC As %Status) As %String [ Private ]
{
}

/// Clears all temporary structures created by this object.
/// The dataset should remain usable after calling this method!
Method Clear() As %Status
{
}

Method GetBootstrapInfo(Output pSQL As %String, Output pFields As %ArrayOfObjects) As %Status [ Internal, Private ]
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

/// Returns an array listing aggregate values for a continuous field <var>pContField</var> for
/// each value of a categorical field <var>pCatField</var>.
/// accepts
/// 	pFilters(n) = $lb(field, operator, key)
/// returns:
/// 	pAggregates(n) = $lb(category value, count, average, sum, max, min, countNonNull)
Method GetAggregatesByCategory(pContField As %String, pCatField As %String, Output pAggregates, ByRef pFilters) As %Status
{
}

Method GetAsResultSet(pFields As %List, Output pResultSet As %SQL.StatementResult, ByRef pFilters) As %Status [ Internal ]
{
}

}
