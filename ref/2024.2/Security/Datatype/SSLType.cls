Class Security.Datatype.SSLType Extends %Library.Boolean [ OdbcType = VARCHAR, System = 2 ]
{

Parameter DOMAIN = "%Utility";

ClassMethod DisplayToLogical(%val As %String) As %Library.Boolean [ Internal ]
{
}

ClassMethod LogicalToDisplay(%val As %Library.Boolean) As %String [ Internal ]
{
}

ClassMethod LogicalToOdbc(%val As %Library.Boolean) As %String
{
}

}
