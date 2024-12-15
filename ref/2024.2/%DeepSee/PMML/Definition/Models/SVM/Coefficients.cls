Class %DeepSee.PMML.Definition.Models.SVM.Coefficients Extends node [ System = 4 ]
{

Property numberOfCoefficients As %DeepSee.PMML.Datatype.IntNumber(MINVAL = 0, XMLPROJECTION = "ATTRIBUTE");

Property absoluteValue As %DeepSee.PMML.Datatype.RealNumber(XMLPROJECTION = "ATTRIBUTE") [ InitialExpression = 0 ];

Property Coefficients As list Of Coefficient(XMLNAME = "Coefficient", XMLPROJECTION = "ELEMENT");

}
