Class %DeepSee.PMML.Definition.Models.SupportVectorMachineModel Extends AbstractModel [ System = 4 ]
{

Property threshold As %DeepSee.PMML.Datatype.RealNumber(XMLPROJECTION = "ATTRIBUTE") [ InitialExpression = 0 ];

Property svmRepresentation As %DeepSee.PMML.Datatype.String(VALUELIST = ",Coefficients,SupportVectors", XMLPROJECTION = "ATTRIBUTE") [ InitialExpression = "SupportVectors" ];

Property classificationMethod As %DeepSee.PMML.Datatype.String(VALUELIST = ",OneAgainstAll,OneAgainstOne", XMLPROJECTION = "ATTRIBUTE") [ InitialExpression = "OneAgainstAll" ];

Property MiningSchema As %DeepSee.PMML.Definition.MiningSchema(XMLPROJECTION = "ELEMENT") [ Required ];

Property Output As %DeepSee.PMML.Definition.Output(XMLPROJECTION = "ELEMENT");

Property ModelStats As %DeepSee.PMML.Definition.ModelStats(XMLPROJECTION = "ELEMENT");

Property ModelExplanation As %DeepSee.PMML.Definition.ModelExplanation(XMLPROJECTION = "ELEMENT");

Property Targets As %DeepSee.PMML.Definition.Targets(XMLPROJECTION = "ELEMENT");

Property LocalTransformations As %DeepSee.PMML.Definition.LocalTransformations(XMLPROJECTION = "ELEMENT");

Property KernelType As %DeepSee.PMML.Definition.Models.SVM.KernelType(XMLPROJECTION = "ELEMENT", XMLTYPECONSTRAINT = "CHOICE");

Property VectorDictionary As %DeepSee.PMML.Definition.Models.SVM.VectorDictionary(XMLPROJECTION = "ELEMENT");

Property SVMs As list Of %DeepSee.PMML.Definition.Models.SVM.SupportVectorMachine(XMLNAME = "SupportVectorMachine", XMLPROJECTION = "ELEMENT");

Property ModelVerification As %DeepSee.PMML.Definition.ModelVerification(XMLPROJECTION = "ELEMENT");

Property Extension As list Of %DeepSee.PMML.Definition.Extension(XMLPROJECTION = "ELEMENT");

/// Adds node-specific validation checks
Method %OnValidateObject(force As %Integer) As %Status [ Private, ServerOnly = 1 ]
{
}

ClassMethod %GetModelClass() As %String [ Internal ]
{
}

Method %OnValidateNames(ByRef pDictionary) As %Status
{
}

}
