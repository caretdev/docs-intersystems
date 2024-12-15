Class %DeepSee.PMML.Definition.Util.Discretize Extends (AbstractExpression, %DeepSee.PMML.Definition.extendableNode) [ System = 3 ]
{

Property field As %DeepSee.PMML.Datatype.FieldName(XMLPROJECTION = "ATTRIBUTE") [ Required ];

Property mapMissingTo As %DeepSee.PMML.Datatype.String(XMLPROJECTION = "ATTRIBUTE");

Property defaultValue As %DeepSee.PMML.Datatype.String(XMLPROJECTION = "ATTRIBUTE");

Property dataType As %DeepSee.PMML.Datatype.DataType(XMLPROJECTION = "ATTRIBUTE");

Property Bins As list Of DiscretizeBin(XMLNAME = "DiscretizeBin", XMLPROJECTION = "ELEMENT");

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
