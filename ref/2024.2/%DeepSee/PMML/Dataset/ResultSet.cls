Class %DeepSee.PMML.Dataset.ResultSet Extends %DeepSee.PMML.Dataset.Table [ System = 4 ]
{

/// Only populated while running %Create, so it can be picked up by LoadTempTable
Property ResultSet As %IResultSet [ Transient ];

ClassMethod %Create(pName As %String, pResultSet As %IResultSet, ByRef pFields, ByRef pTempTableName As %String = "", pIdColumn As %String = "", Output pSC As %Status) As %DeepSee.PMML.Dataset.ResultSet
{
}

Method LoadTempTable() As %Status [ Private ]
{
}

}
