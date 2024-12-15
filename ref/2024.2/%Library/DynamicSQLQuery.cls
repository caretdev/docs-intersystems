/// The <b>%DynamicSQLQuery</b> class is used for defining class queries based on runtime SQL statements.
Class %Library.DynamicSQLQuery Extends %Query [ Not ProcedureBlock, System = 2 ]
{

/// 	Close the query associated with the handle
ClassMethod Close(qHandle As %Binary) As %Status [ ServerOnly = 1 ]
{
}

/// 	Execute is passed parameters for Query. Returns handle for subsequent operations.
ClassMethod Execute(ByRef qHandle As %Binary) As %Status [ CodeMode = generator, ServerOnly = 1 ]
{
}

ClassMethod FetchRows(ByRef qHandle As %Binary, FetchCount As %Integer = 0, ByRef RowSet As %List, ByRef ReturnCount As %Integer, ByRef AtEnd As %Integer) As %Status [ ServerOnly = 1 ]
{
}

/// Fetch the next row of data from the query.
/// <p><var>qHandle</var> is query-defined data and is typically updated by <b>Fetch</b>.
/// <p>The <b>Fetch</b> method should set <var>Row</var> to be a $List of
/// values corresponding to the columns of the query.  If we are past the end of the data
/// and no row is returned, <var>Row</var> should be set to null string ("").
/// If the non-empty row being returned is the last one, <var>AtEnd</var> could be
/// optionally set to 1, indicating that an additional call to <b>Fetch</b> may be avoided.
/// <p>
/// <var>Row</var> may also be subscripted. If any of the columns in the row are stream orefs
/// then the oref type information is lost in the <var>Row</var> $list encoded value. To retain
/// the oref type, place the oref into <var>Row(columnNumber)</var>. %Library.ResultSet recognizes
/// this form and will extract the column value as the subscripted value.
ClassMethod Fetch(ByRef qHandle As %Binary, ByRef Row As %List, ByRef AtEnd As %Integer = 0) As %Status [ ServerOnly = 1 ]
{
}

ClassMethod GetInfo(ByRef colinfo As %List, ByRef parminfo As %List, ByRef idinfo As %List, ByRef qHandle As %Binary, extoption As %Integer = 0, extinfo As %List) As %Status [ ServerOnly = 1 ]
{
}

ClassMethod GetODBCInfo(ByRef colinfo As %List, ByRef parminfo As %List, ByRef qHandle As %Binary) As %Status [ ProcedureBlock = 0, ServerOnly = 1 ]
{
}

ClassMethod Prepare(ByRef qHandle As %Binary, sqltext As %String = "", containid As %Integer = 0, selectmode As %String = "RUNTIME") As %Status [ CodeMode = generator, ServerOnly = 1 ]
{
}

}
