Class %iKnow.Classification.Definition.Predicate Extends PredicateBase [ Deprecated, System = 3 ]
{

Property term As %Integer(MINVAL = 0, XMLPROJECTION = "ATTRIBUTE");

Property operator As %String(VALUELIST = ",equal,notEqual,lessThan,lessOrEqual,greaterThan,greaterOrEqual", XMLPROJECTION = "ATTRIBUTE");

Property value As %String(MAXLEN = 2000, XMLPROJECTION = "ATTRIBUTE");

Method %GenerateCode() As %String
{
}

}
