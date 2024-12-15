Class %DeepSee.PMML.Definition.Models.NaiveBayes.TargetValueStat Extends %DeepSee.PMML.Definition.extendableNode
{

Property value As %DeepSee.PMML.Datatype.String(XMLPROJECTION = "ATTRIBUTE") [ Required ];

Property Distribution As GaussianDistribution(XMLPROJECTION = "ELEMENT", XMLTYPECONSTRAINT = "CHOICE");

/// Adds node-specific validation checks
Method %OnValidateObject(force As %Integer) As %Status [ Private, ServerOnly = 1 ]
{
}

}
