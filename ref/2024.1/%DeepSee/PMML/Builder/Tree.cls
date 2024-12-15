Class %DeepSee.PMML.Builder.Tree Extends %DeepSee.PMML.Builder.AbstractBuilder [ System = 4 ]
{

Parameter MODELCLASSNAME = "%DeepSee.PMML.Definition.Models.TreeModel";

Property CustomTree [ MultiDimensional ];

Property MaxTreeDepth As %Integer [ InitialExpression = 3 ];

Property ScoringMetric As %String(VALUELIST = ",Confidence,GiniImpurity,InformationGain") [ InitialExpression = "GiniImpurity" ];

Property MissingValueStrategy As %String(VALUELIST = ",none,lastPrediction,nullPrediction,defaultChild,weightedConfidence,aggregateNodes") [ InitialExpression = "none" ];

Property MissingValuePenalty As %Double [ InitialExpression = 1.0 ];

Property NoTrueChildStrategy As %String(VALUELIST = ",returnNullPrediction,returnLastPrediction") [ InitialExpression = "returnNullPrediction" ];

Method BuildModel(ByRef pModel As %DeepSee.PMML.Definition.Models.AbstractModel) As %Status [ Private ]
{
}

Method CreateNodeElement(ByRef pTree, pNodeId As %Integer, Output pNodeElement As %DeepSee.PMML.Definition.Models.Trees.TreeNode) As %Status [ Private ]
{
}

Method CreatePredicateElement(ByRef pCondition, Output pPredicate As %DeepSee.PMML.Definition.Util.Predicate) As %Status [ Private ]
{
}

}
