Class %DeepSee.PMML.Definition.Util.MapValues Extends (AbstractExpression, %DeepSee.PMML.Definition.extendableNode) [ System = 3 ]
{

Property mapMissingTo As %DeepSee.PMML.Datatype.String(XMLPROJECTION = "ATTRIBUTE");

Property defaultValue As %DeepSee.PMML.Datatype.String(XMLPROJECTION = "ATTRIBUTE");

Property outputColumn As %DeepSee.PMML.Datatype.String(XMLPROJECTION = "ATTRIBUTE") [ Required ];

Property dataType As %DeepSee.PMML.Datatype.DataType(XMLPROJECTION = "ATTRIBUTE");

Property FieldColumnPairs As list Of FieldColumnPair(XMLNAME = "FieldColumnPair", XMLPROJECTION = "ELEMENT");

Property TableIdentifier As TableIdentifier(XMLPROJECTION = "ELEMENT", XMLTYPECONSTRAINT = "CHOICE") [ Required ];

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
