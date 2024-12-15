Class %DeepSee.PMML.Definition.Models.ClusteringModel Extends AbstractModel [ System = 3 ]
{

Property modelClass As %DeepSee.PMML.Datatype.String(VALUELIST = ",centerBased,distributionBased", XMLPROJECTION = "ATTRIBUTE") [ Required ];

Property numberOfClusters As %DeepSee.PMML.Datatype.IntNumber(MINVAL = 0, XMLPROJECTION = "ATTRIBUTE") [ Required ];

Property MiningSchema As %DeepSee.PMML.Definition.MiningSchema(XMLPROJECTION = "ELEMENT") [ Required ];

Property Output As %DeepSee.PMML.Definition.Output(XMLPROJECTION = "ELEMENT");

Property ModelStats As %DeepSee.PMML.Definition.ModelStats(XMLPROJECTION = "ELEMENT");

Property ModelExplanation As %DeepSee.PMML.Definition.ModelExplanation(XMLPROJECTION = "ELEMENT");

Property Targets As %DeepSee.PMML.Definition.Targets(XMLPROJECTION = "ELEMENT");

Property LocalTransformations As %DeepSee.PMML.Definition.LocalTransformations(XMLPROJECTION = "ELEMENT");

Property ComparisonMeasure As %DeepSee.PMML.Definition.Models.Clustering.ComparisonMeasure(XMLPROJECTION = "ELEMENT") [ Required ];

Property Fields As list Of %DeepSee.PMML.Definition.Models.Clustering.ClusteringField(XMLNAME = "ClusteringField", XMLPROJECTION = "ELEMENT");

Property MissingValueWeights As %DeepSee.PMML.Definition.Util.AbstractArray(XMLPROJECTION = "WRAPPED", XMLTYPECONSTRAINT = "CHOICE");

Property Clusters As list Of %DeepSee.PMML.Definition.Models.Clustering.Cluster(XMLNAME = "Cluster", XMLPROJECTION = "ELEMENT");

Property ModelVerification As %DeepSee.PMML.Definition.ModelVerification(XMLPROJECTION = "ELEMENT");

Property Extension As list Of %DeepSee.PMML.Definition.Extension(XMLPROJECTION = "ELEMENT");

Method %OnValidateNames(ByRef pDictionary) As %Status
{
}

/// Adds node-specific validation checks
Method %OnValidateObject(force As %Integer) As %Status [ Private, ServerOnly = 1 ]
{
}

}
