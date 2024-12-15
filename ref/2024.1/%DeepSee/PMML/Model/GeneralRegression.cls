Class %DeepSee.PMML.Model.GeneralRegression Extends AbstractModel [ Abstract, System = 4 ]
{

/// Based on <Parameters>
/// 		..Parameters(paramName) = label
Property Parameters [ MultiDimensional ];

/// Based on <PPMatrix>
/// 		..PPMatrix(paramName, predictorName) = value
Property PPMatrix [ MultiDimensional ];

/// Based on <FactorList> and <CovariateList>
/// 		..Predictors(paramName) = [factor|covariate]
Property Predictors [ MultiDimensional ];

/// Based on <ParamMatrix>
/// 		..ParamMatrix(targetValue, paramName) = beta
Property ParamMatrix [ MultiDimensional ];

/// ..ContrastMatrices(predictor, row, col)
Property ContrastMatrices [ MultiDimensional ];

Property TraceWeights [ Internal, MultiDimensional ];

Parameter TRACEWEIGHTTYPE = "add";

Parameter SUPPORTSSIMPLEMODE [ Internal ] = 1;

Method CalculateXBeta(ByRef pObservation As %DeepSee.PMML.ModelInput, Output pXBeta, Output pBestTarget As %String = "", Output pBestScore As %Double = "", pAddZero As %String = "") As %Status [ Abstract ]
{
}

ClassMethod %CreateModelClass(pClass As %Dictionary.ClassDefinition, pDefinition As %DeepSee.PMML.Definition.Models.AbstractModel) As %Status [ Internal ]
{
}

ClassMethod %GetPredictedFieldFromDef(pDefinition As %DeepSee.PMML.Definition.Models.AbstractModel) As %String [ Internal ]
{
}

ClassMethod %OnGetOutputFeature(pMethod As %Stream.Object, pDefinition As %DeepSee.PMML.Definition.Models.AbstractModel, pOutputField As %DeepSee.PMML.Definition.OutputField, ByRef pFeatureValueVar As %String, Output pSupported As %Boolean) As %Status [ Internal, Private ]
{
}

}
