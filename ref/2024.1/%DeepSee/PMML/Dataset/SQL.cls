Class %DeepSee.PMML.Dataset.SQL Extends %DeepSee.PMML.Dataset.Table [ System = 4 ]
{

Property SQL As %String(MAXLEN = "");

/// pFields is an array of the cube levels and measures to be included in the dataset
/// pFields(n) = $lb(name, spec, tDataType, tOpType)
/// field spec is the column name
ClassMethod %Create(pName As %String, pSQL As %String, ByRef pFields, ByRef pCreateTempTable As %String = "", pIdColumn As %String = "", Output pSC As %Status) As %DeepSee.PMML.Dataset.SQL
{
}

Method GetSqlFrom() As %String [ Private ]
{
}

Method LoadTempTable() As %Status [ Private ]
{
}

Method GetPMMLDataSourceInternal(Output pDataSource As %DeepSee.PMML.Definition.Extension.DataSource) As %Status [ Internal, Private ]
{
}

}
