Class %DeepSee.PMML.Definition.Models.SVM.PolynomialKernelType Extends KernelType [ System = 4 ]
{

Property gamma As %DeepSee.PMML.Datatype.RealNumber(XMLPROJECTION = "ATTRIBUTE") [ InitialExpression = 1 ];

Property coef0 As %DeepSee.PMML.Datatype.RealNumber(XMLPROJECTION = "ATTRIBUTE") [ InitialExpression = 1 ];

Property degree As %DeepSee.PMML.Datatype.RealNumber(XMLPROJECTION = "ATTRIBUTE") [ InitialExpression = 1 ];

Method %GetKernelFormula(pSupportVector As VectorInstance, Output pFormula As %String) As %Status
{
}

}
