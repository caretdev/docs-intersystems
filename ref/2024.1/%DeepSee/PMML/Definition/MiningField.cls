Class %DeepSee.PMML.Definition.MiningField Extends extendableNode [ System = 3 ]
{

Property name As %DeepSee.PMML.Datatype.FieldName(XMLPROJECTION = "ATTRIBUTE") [ Required ];

Property usageType As %DeepSee.PMML.Datatype.FieldUsageType(XMLPROJECTION = "ATTRIBUTE") [ InitialExpression = {$$$PMMLusageTypeActive} ];

Property optype As %DeepSee.PMML.Datatype.OpType(XMLPROJECTION = "ATTRIBUTE");

Property importance As %DeepSee.PMML.Datatype.ProbNumber(XMLPROJECTION = "ATTRIBUTE");

Property outliers As %DeepSee.PMML.Datatype.OutlierTreatmentMethod(XMLPROJECTION = "ATTRIBUTE") [ InitialExpression = "asIs" ];

Property lowValue As %DeepSee.PMML.Datatype.Number(XMLPROJECTION = "ATTRIBUTE");

Property highValue As %DeepSee.PMML.Datatype.Number(XMLPROJECTION = "ATTRIBUTE");

Property missingValueReplacement As %DeepSee.PMML.Datatype.String(XMLPROJECTION = "ATTRIBUTE");

Property missingValueTreatment As %DeepSee.PMML.Datatype.MissingValueTreatmentMethod(XMLPROJECTION = "ATTRIBUTE");

Property invalidValueTreatment As %DeepSee.PMML.Datatype.InvalidValueTreatmentMethod(XMLPROJECTION = "ATTRIBUTE") [ InitialExpression = "returnInvalid" ];

Property invalidValueReplacement As %DeepSee.PMML.Datatype.String(XMLPROJECTION = "ATTRIBUTE");

/// Adds node-specific validation checks
Method %OnValidateObject(force As %Integer) As %Status [ Private, ServerOnly = 1 ]
{
}

}
