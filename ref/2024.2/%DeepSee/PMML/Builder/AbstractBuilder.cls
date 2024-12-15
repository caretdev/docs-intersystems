Class %DeepSee.PMML.Builder.AbstractBuilder Extends %SerialObject [ System = 4 ]
{

Parameter MODELCLASSNAME As CLASSNAME;

Property Dataset As %DeepSee.PMML.Dataset [ Transient ];

Property TargetField As %String;

Property Description As %String;

Property ModelName As %String [ Required ];

Property FunctionName As %String [ InitialExpression = "classification" ];

Property AlgorithmName As %String;

Property OutputProbability As %Boolean [ InitialExpression = 1 ];

Property DataSources As list Of %DeepSee.PMML.Definition.Extension.DataSource;

Method GeneratePMML(Output pPMML As %DeepSee.PMML.Definition.PMML) As %Status [ Final ]
{
}

Method AppendModel(ByRef pPMML As %DeepSee.PMML.Definition.PMML, pAddUnknownFields As %Boolean = 1) As %Status [ Final ]
{
}

Method BuildModel(ByRef pModel As %DeepSee.PMML.Definition.Models.AbstractModel) As %Status [ Abstract, Private ]
{
}

/// Registers an additional DeepSee-based Data Source so it will be added to the generated PMML's
/// DataDictionary section and can subsequently be used for validation purposes.
/// Expected field mapping format: pFieldMap([fieldName]) = [DeepSee spec]
Method AddDataSourceCube(pName As %String, pCubeName As %String, ByRef pFieldMap, pFilter As %String = "") As %Status
{
}

/// Registers an additional SQL-based Data Source so it will be added to the generated PMML's
/// DataDictionary section and can subsequently be used for validation purposes.
/// Expected field mapping format: pFieldMap([fieldName]) = [column name]
Method AddDataSourceSQL(pName As %String, pSQL As %String, ByRef pFieldMap, pIdField As %String = "") As %Status
{
}

}
