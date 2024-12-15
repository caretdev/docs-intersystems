Class %DeepSee.PMML.Definition.Models.GeneralRegressionModel Extends AbstractModel [ System = 3 ]
{

Property targetVariableName As %DeepSee.PMML.Datatype.FieldName(XMLPROJECTION = "ATTRIBUTE");

Property modelType As %DeepSee.PMML.Datatype.String(VALUELIST = ",regression,generalLinear,multinomialLogistic,ordinalMultinomial,generalizedLinear,CoxRegression", XMLPROJECTION = "ATTRIBUTE") [ Required ];

Property targetReferenceCategory As %DeepSee.PMML.Datatype.String(XMLPROJECTION = "ATTRIBUTE");

Property cumulativeLink As %DeepSee.PMML.Datatype.CumulativeLinkFunction(XMLPROJECTION = "ATTRIBUTE");

Property linkFunction As %DeepSee.PMML.Datatype.LinkFunction(XMLPROJECTION = "ATTRIBUTE");

Property linkParameter As %DeepSee.PMML.Datatype.RealNumber(XMLPROJECTION = "ATTRIBUTE");

Property trialsVariable As %DeepSee.PMML.Datatype.FieldName(XMLPROJECTION = "ATTRIBUTE");

Property trialsValue As %DeepSee.PMML.Datatype.IntNumber(XMLPROJECTION = "ATTRIBUTE");

Property distribution As %DeepSee.PMML.Datatype.String(VALUELIST = ",binomial,gamma,igauss,negbin,normal,poisson,tweedie", XMLPROJECTION = "ATTRIBUTE");

Property distParameter As %DeepSee.PMML.Datatype.RealNumber(XMLPROJECTION = "ATTRIBUTE");

Property offsetVariable As %DeepSee.PMML.Datatype.FieldName(XMLPROJECTION = "ATTRIBUTE");

Property offsetValue As %DeepSee.PMML.Datatype.RealNumber(XMLPROJECTION = "ATTRIBUTE");

Property modelDF As %DeepSee.PMML.Datatype.RealNumber(XMLPROJECTION = "ATTRIBUTE");

Property endTimeVariable As %DeepSee.PMML.Datatype.FieldName(XMLPROJECTION = "ATTRIBUTE");

Property startTimeVariable As %DeepSee.PMML.Datatype.FieldName(XMLPROJECTION = "ATTRIBUTE");

Property subjectIDVariable As %DeepSee.PMML.Datatype.FieldName(XMLPROJECTION = "ATTRIBUTE");

Property statusVariable As %DeepSee.PMML.Datatype.FieldName(XMLPROJECTION = "ATTRIBUTE");

Property baselineStrataVariable As %DeepSee.PMML.Datatype.FieldName(XMLPROJECTION = "ATTRIBUTE");

Property MiningSchema As %DeepSee.PMML.Definition.MiningSchema(XMLPROJECTION = "ELEMENT") [ Required ];

Property Output As %DeepSee.PMML.Definition.Output(XMLPROJECTION = "ELEMENT");

Property ModelStats As %DeepSee.PMML.Definition.ModelStats(XMLPROJECTION = "ELEMENT");

Property ModelExplanation As %DeepSee.PMML.Definition.ModelExplanation(XMLPROJECTION = "ELEMENT");

Property Targets As %DeepSee.PMML.Definition.Targets(XMLPROJECTION = "ELEMENT");

Property LocalTransformations As %DeepSee.PMML.Definition.LocalTransformations(XMLPROJECTION = "ELEMENT");

Property ParameterList As %DeepSee.PMML.Definition.Models.GeneralRegression.ParameterList(XMLPROJECTION = "ELEMENT");

Property FactorList As %DeepSee.PMML.Definition.Models.GeneralRegression.FactorList(XMLPROJECTION = "ELEMENT");

Property CovariateList As %DeepSee.PMML.Definition.Models.GeneralRegression.CovariateList(XMLPROJECTION = "ELEMENT");

Property PPMatrix As %DeepSee.PMML.Definition.Models.GeneralRegression.PPMatrix(XMLPROJECTION = "ELEMENT");

Property PPCovMatrix As %DeepSee.PMML.Definition.Models.GeneralRegression.PPCovMatrix(XMLPROJECTION = "ELEMENT");

Property ParamMatrix As %DeepSee.PMML.Definition.Models.GeneralRegression.ParamMatrix(XMLPROJECTION = "ELEMENT");

Property EventValues As %DeepSee.PMML.Definition.Models.GeneralRegression.EventValues(XMLPROJECTION = "ELEMENT");

Property BaseCumHazardTables As %DeepSee.PMML.Definition.Models.GeneralRegression.BaseCumHazardTables(XMLPROJECTION = "ELEMENT");

Property ModelVerification As %DeepSee.PMML.Definition.ModelVerification(XMLPROJECTION = "ELEMENT");

Property Extension As list Of %DeepSee.PMML.Definition.Extension(XMLPROJECTION = "ELEMENT");

Method %OnValidateNames(ByRef pDictionary) As %Status
{
}

}
