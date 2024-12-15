Class %DeepSee.PMML.Definition.Models.MiningModel Extends AbstractModel [ System = 3 ]
{

Property MiningSchema As %DeepSee.PMML.Definition.MiningSchema(XMLPROJECTION = "ELEMENT") [ Required ];

Property Output As %DeepSee.PMML.Definition.Output(XMLPROJECTION = "ELEMENT");

Property ModelStats As %DeepSee.PMML.Definition.ModelStats(XMLPROJECTION = "ELEMENT");

Property ModelExplanation As %DeepSee.PMML.Definition.ModelExplanation(XMLPROJECTION = "ELEMENT");

Property Targets As %DeepSee.PMML.Definition.Targets(XMLPROJECTION = "ELEMENT");

Property LocalTransformations As %DeepSee.PMML.Definition.LocalTransformations(XMLPROJECTION = "ELEMENT");

Property Segmentation As %DeepSee.PMML.Definition.Segmentation(XMLPROJECTION = "ELEMENT");

Property ModelVerification As %DeepSee.PMML.Definition.ModelVerification(XMLPROJECTION = "ELEMENT");

Property Extension As list Of %DeepSee.PMML.Definition.Extension(XMLPROJECTION = "ELEMENT");

ClassMethod %GetModelClass() As %String [ Internal ]
{
}

Method %OnValidateObject(force As %Integer) As %Status [ Private, ServerOnly = 1 ]
{
}

Method %OnValidateNames(ByRef pDictionary) As %Status
{
}

}
