/// <p><b>For information on this class</b>, see
/// <a target="_top" href="/csp/docbook/DocBook.UI.Page.cls?FIND=CLASSES+%25Library.SQLQuery">Defining and Using Class Queries</a>.</p>
/// The <b>%SQLQuery</b> class is used for defining class queries based on SQL definitions.
Class %Library.SQLQuery Extends %Query [ Not ProcedureBlock, System = 2 ]
{

/// COMPILEMODE parameter deprecated. No longer used.
Parameter COMPILEMODE As STRING [ Constraint = "IMMEDIATE,DYNAMIC", Deprecated, Flags = ENUM ] = "IMMEDIATE";

Parameter SQLQUERY;

Parameter SELECTMODE = "RUNTIME";

/// 	Close the query associated with the handle
ClassMethod Close(%qHandle As %Binary) As %Status [ ProcedureBlock = 1, PublicList = SQLCODE, ServerOnly = 1 ]
{
}

/// Func is a method that is used to invoke the query as a function, returning an instance of %SQL.StatementResult.
ClassMethod Func() As %SQL.StatementResult [ CodeMode = generator, ProcedureBlock = 1, ServerOnly = 1 ]
{
}

/// 	Execute is passed parameters for Query
/// 	Returns handle for subsequent operations
ClassMethod Execute(ByRef %qHandle As %Binary) As %Status [ CodeMode = generator, ProcedureBlock = 1, ServerOnly = 1 ]
{
}

/// 	FetchRows returns the next FetchCount rows in the query
/// 	Updates handle for subsequent operations
/// 	Returns $list for row or  "" if no more rows
ClassMethod FetchRows(ByRef %qHandle As %Binary, FetchCount As %Integer = 0, ByRef RowSet As %List, ByRef ReturnCount As %Integer, ByRef AtEnd As %Integer) As %Status [ CodeMode = generator, GenerateAfter = Fetch, PlaceAfter = Execute, ProcedureBlock = 1, ServerOnly = 1 ]
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
ClassMethod Fetch(ByRef %qHandle As %Binary, ByRef Row As %List, ByRef AtEnd As %Integer = 0) As %Status [ CodeMode = generator, PlaceAfter = Execute, ProcedureBlock = 1, ServerOnly = 1 ]
{
}

/// Returns information about the query. It is used by the various <b>ResultSet</b> objects.
ClassMethod GetInfo(ByRef colinfo As %List, ByRef parminfo As %List, ByRef idinfo As %List, ByRef %qHandle As %Binary, extoption As %Integer = 0, extinfo As %List) As %Status [ CodeMode = generator, ProcedureBlock = 1, ServerOnly = 1 ]
{
}

/// Fetch and send a series of rows for the ODBC/JDBC server. For internal use only.
ClassMethod SendODBC(ByRef %qHandle As %Binary, ByRef array As %String, qacn As %Integer, ByRef %qrc As %Integer, ByRef piece As %Boolean, ColumnCount As %Integer) [ CodeMode = generator, GenerateAfter = (FetchODBC, Fetch), PlaceAfter = Execute, ProcedureBlock = 1, ServerOnly = 1 ]
{
}

}
