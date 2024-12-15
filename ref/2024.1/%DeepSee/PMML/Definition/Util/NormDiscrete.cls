Class %DeepSee.PMML.Definition.Util.NormDiscrete Extends (AbstractExpression, %DeepSee.PMML.Definition.extendableNode) [ System = 3 ]
{

Property field As %DeepSee.PMML.Datatype.FieldName(XMLPROJECTION = "ATTRIBUTE") [ Required ];

Property mapMissingTo As %DeepSee.PMML.Datatype.Number(XMLPROJECTION = "ATTRIBUTE");

Property value As %DeepSee.PMML.Datatype.String(XMLPROJECTION = "ATTRIBUTE") [ Required ];

Property method As %DeepSee.PMML.Datatype.String(VALUELIST = ",indicator", XMLPROJECTION = "ATTRIBUTE") [ InitialExpression = "indicator" ];

Method %ValidateNames(ByRef pDictionary) As %Status
{
}

Method %GetComputeCode(Output pInline As %Boolean = 0, pOverrideSource As %String = "", pThis As %String = ".", pArrayFormat As %Boolean = 0) As %String
{
}

Method %GetInputFields(ByRef pFields) As %Status [ Internal ]
{
}

}
