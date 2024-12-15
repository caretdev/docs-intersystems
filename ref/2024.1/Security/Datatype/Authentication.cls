Class Security.Datatype.Authentication Extends %Integer [ OdbcType = VARCHAR, System = 2 ]
{

/// Convert external Authentication names to internal bit string.
/// <br>
ClassMethod DisplayToLogical(AutheString As %String) As %Integer [ Internal ]
{
}

/// Convert internal authentication bit string to external name.
/// <br>
ClassMethod LogicalToDisplay(Authe As %Integer) As %String [ Internal ]
{
}

/// Convert internal authentication bit string to external name.
/// <br>
ClassMethod LogicalToOdbc(Authe As %Integer) As %String [ Internal ]
{
}

ClassMethod IsValid(%val As %RawString) As %Status [ CodeMode = generator, Internal ]
{
}

}
