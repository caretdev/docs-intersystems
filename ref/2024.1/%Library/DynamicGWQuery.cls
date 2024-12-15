Class %Library.DynamicGWQuery Extends %Query [ Not ProcedureBlock, System = 2 ]
{

ClassMethod Close(qHandle As %Binary) As %Status
{
}

ClassMethod Execute(ByRef qHandle As %Binary) As %Status [ CodeMode = generator ]
{
}

ClassMethod Fetch(ByRef qHandle As %Binary, ByRef Row As %List, ByRef AtEnd As %Integer = 0) As %Status
{
}

ClassMethod Prepare(ByRef qHandle As %Binary, sqltext As %String, containid As %Integer = 0, connection As %String) As %Status
{
}

/// Returns information about the query. It is used by the various <b>ResultSet</b> objects.
ClassMethod GetInfo(ByRef colinfo As %List, ByRef parminfo As %List, ByRef idinfo As %List, ByRef qHandle As %Binary, extoption As %Integer = 0, extinfo As %List) As %Status
{
}

}
