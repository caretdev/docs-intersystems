Class %DeepSee.PMML.Definition.Models.Trees.TreeNode Extends %DeepSee.PMML.Definition.extendableNode [ System = 3 ]
{

Parameter XMLNAME = "Node";

Property id As %DeepSee.PMML.Datatype.String(XMLPROJECTION = "ATTRIBUTE");

Property score As %DeepSee.PMML.Datatype.String(XMLPROJECTION = "ATTRIBUTE");

Property recordCount As %DeepSee.PMML.Datatype.Number(XMLPROJECTION = "ATTRIBUTE");

Property defaultChild As %DeepSee.PMML.Datatype.String(XMLPROJECTION = "ATTRIBUTE");

Property Predicate As %DeepSee.PMML.Definition.Util.Predicate(XMLPROJECTION = "ELEMENT", XMLTYPECONSTRAINT = "CHOICE") [ Required ];

/// TODO Property Partitions As list of %DeepSee.PMML.Definition.Partition(XMLPROJECTION = "ELEMENT", XMLITEMNAME = "Partition");
Property ScoreDistributions As list Of ScoreDistribution(XMLNAME = "ScoreDistribution", XMLPROJECTION = "ELEMENT");

Property Subnodes As list Of TreeNode(XMLNAME = "Node", XMLPROJECTION = "ELEMENT");

/// TODO Property EmbeddedModel
/// Adds node-specific validation checks
Method %OnValidateObject(force As %Integer) As %Status [ Private, ServerOnly = 1 ]
{
}

Method %ValidateNames(ByRef pDictionary) As %Status
{
}

}
