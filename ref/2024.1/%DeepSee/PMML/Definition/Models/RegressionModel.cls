Class %DeepSee.PMML.Definition.Models.RegressionModel Extends %DeepSee.PMML.Definition.Models.AbstractModel [ System = 3 ]
{

Property modelType As %DeepSee.PMML.Datatype.String(VALUELIST = ",linearRegression,stepwisePolynomialRegression,logisticRegression", XMLPROJECTION = "ATTRIBUTE");

Property targetFieldName As %DeepSee.PMML.Datatype.FieldName(XMLPROJECTION = "ATTRIBUTE");

Property normalizationMethod As %DeepSee.PMML.Datatype.String(VALUELIST = ",none,simplemax,softmax,logit,probit,cloglog,exp,loglog,cauchit", XMLPROJECTION = "ATTRIBUTE") [ InitialExpression = "none" ];

Property MiningSchema As %DeepSee.PMML.Definition.MiningSchema(XMLPROJECTION = "ELEMENT") [ Required ];

Property Output As %DeepSee.PMML.Definition.Output(XMLPROJECTION = "ELEMENT");

Property ModelStats As %DeepSee.PMML.Definition.ModelStats(XMLPROJECTION = "ELEMENT");

Property ModelExplanation As %DeepSee.PMML.Definition.ModelExplanation(XMLPROJECTION = "ELEMENT");

Property Targets As %DeepSee.PMML.Definition.Targets(XMLPROJECTION = "ELEMENT");

Property LocalTransformations As %DeepSee.PMML.Definition.LocalTransformations(XMLPROJECTION = "ELEMENT");

Property RegressionTables As list Of %DeepSee.PMML.Definition.Models.Regression.RegressionTable(XMLNAME = "RegressionTable", XMLPROJECTION = "ELEMENT");

Property ModelVerification As %DeepSee.PMML.Definition.ModelVerification(XMLPROJECTION = "ELEMENT");

Property Extension As list Of %DeepSee.PMML.Definition.Extension(XMLPROJECTION = "ELEMENT");

Method %OnValidateNames(ByRef pDictionary) As %Status
{
}

}
