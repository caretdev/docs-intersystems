Class %DeepSee.PMML.Definition.Util.SimplePredicate Extends Predicate [ System = 3 ]
{

Property field As %DeepSee.PMML.Datatype.FieldName(XMLPROJECTION = "ATTRIBUTE");

Property operator As %DeepSee.PMML.Datatype.String(VALUELIST = ",equal,notEqual,lessThan,lessOrEqual,greaterThan,greaterOrEqual,isMissing,isNotMissing", XMLPROJECTION = "ATTRIBUTE");

Property value As %DeepSee.PMML.Datatype.String(MAXLEN = 2000, XMLPROJECTION = "ATTRIBUTE");

Method %GetComputeCode(pObj As %String) As %String
{
}

Method %ValidateNames(ByRef pDictionary) As %Status
{
}

/// Adds node-specific validation checks
Method %OnValidateObject(force As %Integer) As %Status [ Private, ServerOnly = 1 ]
{
}

Method SetOperatorSymbol(pSymbol As %String) As %Status
{
}

ClassMethod OperatorFromSymbol(pSymbol As %String) As %String
{
}

ClassMethod SymbolFromOperator(pOperator As %String) As %String
{
}

Method %GetAsTree(Output pTree) As %Status [ Internal ]
{
}

}
