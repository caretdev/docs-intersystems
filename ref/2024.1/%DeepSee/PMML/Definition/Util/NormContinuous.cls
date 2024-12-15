Class %DeepSee.PMML.Definition.Util.NormContinuous Extends (AbstractExpression, %DeepSee.PMML.Definition.extendableNode) [ System = 3 ]
{

Property mapMissingTo As %DeepSee.PMML.Datatype.Number(XMLPROJECTION = "ATTRIBUTE");

Property field As %DeepSee.PMML.Datatype.FieldName(XMLPROJECTION = "ATTRIBUTE") [ Required ];

Property outliers As %DeepSee.PMML.Datatype.OutlierTreatmentMethod(XMLPROJECTION = "ATTRIBUTE") [ InitialExpression = "asIs" ];

Property LinearNorms As list Of LinearNorm(XMLNAME = "LinearNorm", XMLPROJECTION = "ELEMENT") [ Required ];

Method %ValidateNames(ByRef pDictionary) As %Status
{
}

Method %GetComputeCode(Output pInline As %Boolean = 0, pOverrideSource As %String = "", pThis As %String = ".", pArrayFormat As %Boolean = 0) As %String
{
}

/// Adds node-specific validation checks
Method %OnValidateObject(force As %Integer) As %Status [ Private, ServerOnly = 1 ]
{
}

Method %GetInputFields(ByRef pFields) As %Status [ Internal ]
{
}

}
