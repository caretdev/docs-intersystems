Class %DeepSee.PMML.Model.Regression Extends %DeepSee.PMML.Model.AbstractModel [ Abstract, System = 4 ]
{

Parameter TRACEWEIGHTTYPE As STRING = "add";

Parameter SUPPORTSSIMPLEMODE As BOOLEAN [ Internal ] = 1;

ClassMethod %CreateModelClass(pClass As %Dictionary.ClassDefinition, pDefinition As %DeepSee.PMML.Definition.Models.AbstractModel) As %Status [ Internal ]
{
}

ClassMethod %OnGetOutputFeature(pMethod As %Stream.Object, pDefinition As %DeepSee.PMML.Definition.Models.AbstractModel, pOutputField As %DeepSee.PMML.Definition.OutputField, ByRef pFeatureValueVar As %String, Output pSupported As %Boolean) As %Status [ Internal, Private ]
{
}

}
