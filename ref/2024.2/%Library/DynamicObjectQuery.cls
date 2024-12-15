/// The <b>%DynamicObjectQuery</b> class is used for defining class queries based on runtime Object/Bitmap statements.
Class %Library.DynamicObjectQuery Extends %DynamicSQLQuery [ Not ProcedureBlock, System = 2 ]
{

ClassMethod Execute(ByRef qHandle As %Binary) As %Status [ CodeMode = generator, ServerOnly = 1 ]
{
}

ClassMethod FetchRows(ByRef qHandle As %Binary, FetchCount As %Integer = 0, ByRef RowSet As %List, ByRef ReturnCount As %Integer, ByRef AtEnd As %Integer) As %Status [ ServerOnly = 1 ]
{
}

ClassMethod Fetch(ByRef qHandle As %Binary, ByRef Row As %List, ByRef AtEnd As %Integer = 0) As %Status [ ServerOnly = 1 ]
{
}

ClassMethod Prepare(ByRef qHandle As %Binary, query As %String, containid As %Integer = 0, selectmode As %String = "LOGICAL") As %Status [ CodeMode = generator, ServerOnly = 1 ]
{
}

}
