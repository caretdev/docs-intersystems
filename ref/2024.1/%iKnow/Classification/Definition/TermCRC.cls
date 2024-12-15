Class %iKnow.Classification.Definition.TermCRC Extends Term [ Deprecated, System = 3 ]
{

Parameter XMLNAME = "CRC";

Property type As %String(VALUELIST = ",crc", XMLPROJECTION = "NONE") [ InitialExpression = "crc", ReadOnly ];

Property value As %String(MAXLEN = 200, XMLPROJECTION = "NONE") [ Internal ];

Property Entries As list Of TermCRCEntry(XMLNAME = "Entry", XMLPROJECTION = "ELEMENT");

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
