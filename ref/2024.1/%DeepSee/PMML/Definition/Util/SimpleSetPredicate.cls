Class %DeepSee.PMML.Definition.Util.SimpleSetPredicate Extends Predicate [ System = 3 ]
{

Property field As %DeepSee.PMML.Datatype.FieldName(XMLPROJECTION = "ATTRIBUTE");

Property booleanOperator As %DeepSee.PMML.Datatype.String(VALUELIST = ",isIn,isNotIn", XMLPROJECTION = "ATTRIBUTE") [ Required ];

Property Array As %DeepSee.PMML.Definition.Util.Array(XMLPROJECTION = "ELEMENT") [ Required ];

Method %GetComputeCode(pObj As %String) As %String
{
}

Method %ValidateNames(ByRef pDictionary) As %Status
{
}

Method %GetAsTree(Output pTree) As %Status [ Internal ]
{
}

}
