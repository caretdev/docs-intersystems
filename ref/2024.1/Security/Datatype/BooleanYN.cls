/// Datatype to display Yes/No rather than 1/0<br>
/// Internal Use only
Class Security.Datatype.BooleanYN Extends %Library.Boolean [ OdbcType = VARCHAR, System = 2 ]
{

ClassMethod LogicalToDisplay(%val As %Library.Boolean) As %String [ Internal ]
{
}

ClassMethod DisplayToLogical(%val As %String) As %Library.Boolean [ Internal ]
{
}

ClassMethod LogicalToOdbc(%val As %Library.Boolean) As %String [ Internal ]
{
}

ClassMethod OdbcToLogical(%val As %String) As %Library.Boolean [ Internal ]
{
}

}
