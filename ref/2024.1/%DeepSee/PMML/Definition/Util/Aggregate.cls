Class %DeepSee.PMML.Definition.Util.Aggregate Extends (AbstractExpression, %DeepSee.PMML.Definition.extendableNode) [ System = 3 ]
{

Property field As %DeepSee.PMML.Datatype.FieldName(XMLPROJECTION = "ATTRIBUTE") [ Required ];

Property function As %DeepSee.PMML.Datatype.String(VALUELIST = ",count,sum,average,min,max,multiset", XMLPROJECTION = "ATTRIBUTE") [ Required ];

Property groupField As %DeepSee.PMML.Datatype.FieldName(XMLPROJECTION = "ATTRIBUTE");

Property sqlWhere As %DeepSee.PMML.Datatype.String(MAXLEN = 2000, XMLPROJECTION = "ATTRIBUTE");

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
