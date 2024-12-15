Class %iKnow.Classification.Definition.TermEntity Extends Term [ Deprecated, System = 3 ]
{

Parameter XMLNAME = "Entity";

Property type As %String(VALUELIST = ",entity", XMLPROJECTION = "NONE") [ InitialExpression = "entity", ReadOnly ];

Property value As %String(MAXLEN = 200, XMLPROJECTION = "NONE") [ Internal ];

Property Entries As list Of %String(MAXLEN = 200, XMLNAME = "Value", XMLPROJECTION = "ELEMENT");

/// Returns a string representation of this term
Method GetValue() As %String
{
}

Method %EqualsInternal(pTerm As Term) As %Boolean [ Internal, Private ]
{
}

Method OnGetDisplayName(pMode As %Integer = 0) As %String [ Internal, Private ]
{
}

Method ContainsEntry(pValue As %String) As %Integer
{
}

Method RemoveEntry(pValue As %String, Output pIsEmpty As %Boolean) As %Status
{
}

Method EntryCount() As %Integer
{
}

}
