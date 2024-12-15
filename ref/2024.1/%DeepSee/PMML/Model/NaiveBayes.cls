Class %DeepSee.PMML.Model.NaiveBayes Extends AbstractModel [ Abstract, System = 4 ]
{

/// ..Counts("targetValue") = total count for [targetValue]
/// ..Counts("targetValue","fieldName") = total non-missing count for [field] with [targetValue]
/// ..Counts("targetValue","fieldName","fieldValue") = count for [field]=[fieldValue] with [targetValue]
Property Counts [ Internal, MultiDimensional, Private ];

Property TraceWeights [ Internal, MultiDimensional ];

Parameter SUPPORTSSIMPLEMODE As BOOLEAN [ Internal ] = 1;

/// ..Distribution("targetValue", "fieldName", "mean" or "variance)
Property Distribution [ Internal, MultiDimensional, Private ];

Parameter THRESHOLD As INTEGER;

Parameter TRACEWEIGHTTYPE = "multiply";

ClassMethod %GetPredictedFieldFromDef(pDefinition As %DeepSee.PMML.Definition.Models.AbstractModel) As %String [ Internal ]
{
}

ClassMethod %CreateModelClass(pClass As %Dictionary.ClassDefinition, pDefinition As %DeepSee.PMML.Definition.Models.AbstractModel) As %Status [ Internal ]
{
}

ClassMethod %OnGetOutputFeature(pMethod As %Stream.Object, pDefinition As %DeepSee.PMML.Definition.Models.AbstractModel, pOutputField As %DeepSee.PMML.Definition.OutputField, ByRef pFeatureValueVar As %String, Output pSupported As %Boolean) As %Status [ Internal, Private ]
{
}

ClassMethod %Factorial(input As %Integer) As %Integer
{
}

/// Output: pLikelihoods(tOutputValue) = likelihood
Method GetLikelihoods(ByRef pObservation, Output pLikelihoods) As %Status
{
}

}
