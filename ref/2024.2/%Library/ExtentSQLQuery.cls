/// This class is used to implement the system-provided "Extent" query that
/// every persistent class contains. This class is not for application use.
Class %Library.ExtentSQLQuery Extends %SQLQuery [ Not ProcedureBlock, System = 2 ]
{

/// Close the query associated with the handle. This is also an opportunity to clean up.
ClassMethod Close(%qHandle As %Binary) As %Status [ CodeMode = generator, ProcedureBlock = 1, PublicList = SQLCODE, ServerOnly = 1 ]
{
}

/// Execute is passed parameters for Query
/// 	Returns handle for subsequent operations
ClassMethod Execute(ByRef %qHandle As %Binary) As %Status [ CodeMode = generator, ProcedureBlock = 1, ServerOnly = 1 ]
{
}

/// FetchRows returns the next FetchCount rows in the query
/// Updates handle for subsequent operations
/// Returns $list for row or  "" if no more rows
ClassMethod FetchRows(ByRef %qHandle As %Binary, FetchCount As %Integer = 0, ByRef RowSet As %List, ByRef ReturnCount As %Integer, ByRef AtEnd As %Integer) As %Status [ CodeMode = generator, PlaceAfter = Execute, ProcedureBlock = 1, ServerOnly = 1 ]
{
}

ClassMethod Fetch(ByRef %qHandle As %Binary, ByRef Row As %List, ByRef AtEnd As %Integer = 0) As %Status [ CodeMode = generator, PlaceAfter = Execute, ProcedureBlock = 1, ServerOnly = 1 ]
{
}

/// GetInfo() returns information about columns in the query result,
///   parameters in the query formal list, and whether or not the result
///   contains enough information to form an ID value.
///   This information is return in three pass-by-reference parmeters:
///   colinfo - contains one list element for each column declared
///             in ROWSPEC. The form is name:exttype:caption
///   parminfo - contains one list element for each formal paramter
///             of the query in the form name:exttype
///   idinfo -  Integer indicating the posistion of the ID value, zero if
///             not included.
///   The information is not constructed until the first invocation of
///   GetInfo(). Once the information is compiled the first time, it is
///   stored in the ^oddMAC global and is retrieved on subsequent calls
///   to GetInfo()
ClassMethod GetInfo(ByRef colinfo As %List, ByRef parminfo As %List, ByRef idinfo As %List, ByRef %qHandle As %Binary, extoption As %Integer = 0, extinfo As %List) As %Status [ CodeMode = generator, ProcedureBlock = 1, ServerOnly = 1 ]
{
}

/// Func is a method that is used to invoke the query as a function, returning an instance of %SQL.StatementResult.
ClassMethod Func() As %SQL.StatementResult [ CodeMode = generator, ProcedureBlock = 1, ServerOnly = 1 ]
{
}

ClassMethod GetODBCInfo(ByRef colinfo As %List, ByRef parminfo As %List, ByRef qHandle As %Binary) [ CodeMode = generator, ServerOnly = 1 ]
{
}

}
