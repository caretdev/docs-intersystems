Class %DeepSee.PMML.Builder.NaiveBayes Extends %DeepSee.PMML.Builder.AbstractBuilder [ System = 4 ]
{

Parameter MODELCLASSNAME = "%DeepSee.PMML.Definition.Models.NaiveBayesModel";

Property Threshold As %Numeric [ InitialExpression = 0.0001 ];

Method BuildModel(ByRef pModel As %DeepSee.PMML.Definition.Models.AbstractModel) As %Status [ Private ]
{
}

}
