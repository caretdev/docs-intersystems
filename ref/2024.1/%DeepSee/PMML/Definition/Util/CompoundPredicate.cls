Class %DeepSee.PMML.Definition.Util.CompoundPredicate Extends Predicate [ System = 3 ]
{

Property Predicates As list Of Predicate(XMLPROJECTION = "ELEMENT", XMLTYPECONSTRAINT = "CHOICE");

Property booleanOperator As %DeepSee.PMML.Datatype.String(VALUELIST = ",and,or,xor,surrogate", XMLPROJECTION = "ATTRIBUTE") [ Required ];

Method %WriteComputeCode(pVar As %String, pObj As %String, pIndent As %String, pStream As %Stream.TmpCharacter) As %Status
{
}

Method %GetAsTree(Output pTree) As %Status [ Internal ]
{
}

}
