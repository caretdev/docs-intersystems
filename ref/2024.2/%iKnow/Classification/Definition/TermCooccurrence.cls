Class %iKnow.Classification.Definition.TermCooccurrence Extends Term [ Deprecated, System = 3 ]
{

Parameter XMLNAME = "Cooccurrence";

Property type As %String(VALUELIST = ",cooccurrence", XMLPROJECTION = "NONE") [ InitialExpression = "cooccurrence", ReadOnly ];

Property value As %String(MAXLEN = 200, XMLPROJECTION = "NONE") [ Internal ];

Property Entries As list Of TermCoocEntry(XMLNAME = "Cooccurrent", XMLPROJECTION = "ELEMENT");

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
