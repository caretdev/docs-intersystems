/// <p><b>For information on this class</b>, see
/// <a target="_top" href="/csp/docbook/DocBook.UI.Page.cls?FIND=CLASSES+%25Library.Query">Defining and Using Class Queries</a>.</p>
/// The <b>%Query</b> class defines the basic interface used by class queries.
///
/// <p>Use the <b>%Query</b> class as a type for a class query if you wish to implement
/// the query using custom-written <i>ObjectScript</i>.
Class %Library.Query [ System = 2 ]
{

Parameter EXTENT As STRING;

Parameter CONTAINID As INTEGER = 0;

Parameter SQLFUNCTION As INTEGER = 0;

Parameter ROWSPEC As ROWSPEC [ Flags = LIST ];

/// The SELECTMODE parameter allows the query author to declare the format of the values returned by the query.
/// It is the responsibility of the query implementation to properly format the values according to the SELECTMODE
/// value. If SELECTMODE is RUNTIME then the query implementation has to examine the current runtime setting and react
/// accordingly. The current runtime SELECTMODE value can be retrieved by calling $system.SQL.GetSelectMode(). The default value
/// of SELECTMODE is LOGICAL to preserve compatibility with older implementations.
/// REMEMBER - it is only a declaration and the implementation of the query is responsible for properly formatting the column
/// values in a manner consistent with the SELECTMODE setting.
Parameter SELECTMODE = "LOGICAL";

/// Close the query. <var>qHandle</var> is user-defined data.
ClassMethod Close(qHandle As %Binary) As %Status [ ServerOnly = 1 ]
{
}

/// Func is a method that is used to invoke the query as a function, returning an instance of %SQL.StatementResult.
ClassMethod Func() As %SQL.StatementResult [ CodeMode = generator, ServerOnly = 1 ]
{
}

/// Executes the query; This method is called with the query input parameters.
/// <var>qHandle</var> is user-defined data used to communicate amongst the various Query
/// methods.
ClassMethod Execute(ByRef qHandle As %Binary) As %Status [ CodeMode = generator, ServerOnly = 1 ]
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
/// the oref type, place the oref into <var>Row(0,columnNumber)</var>. %Library.ResultSet recognizes
/// this form and will extract the column value as the subscripted value.
ClassMethod Fetch(ByRef qHandle As %Binary, ByRef Row As %List, ByRef AtEnd As %Integer = 0) As %Status [ ServerOnly = 1 ]
{
}

/// Fetch and send a series of rows for the ODBC/JDBC server. For internal use only.
ClassMethod SendODBC(ByRef qHandle As %Binary, ByRef array As %String, qacn As %Integer, ByRef %qrc As %Integer, ByRef piece As %Boolean, ColumnCount As %Integer) [ CodeMode = generator, GenerateAfter = (FetchODBC, Fetch), ServerOnly = 1 ]
{
}

/// <b>FetchRows</b> returns the next <var>FetchCount</var> rows in the query and updates handle for subsequent operations.
/// 	<var>FetchCount</var> is the number of rows to fetch. If <var>FetchCount</var> is zero then up to 24k of row data is
/// returned. <var>ReturnCount</var> contains the number of rows returned and <var>AtEnd</var> is true if there are no more
/// rows to be fetched. This method does not preserve swizzled streams.
ClassMethod FetchRows(ByRef qHandle As %Binary, FetchCount As %Integer = 0, ByRef RowSet As %List, ByRef ReturnCount As %Integer, ByRef AtEnd As %Integer) As %Status [ CodeMode = generator, ServerOnly = 1 ]
{
}

/// Returns information about the query. It is used by the various <b>ResultSet</b> objects.<p>
/// Returns information about columns in the query result, parameters in the query formal list, and whether or not the result
/// 	contains enough information to form an ID value.<p>
/// 	This information is return in three pass-by-reference parmeters:<ul>
/// 	<li>colinfo - contains one list element for each column declared in ROWSPEC. The form is name:exttype:caption</li>
/// 	<li>parminfo - contains one list element for each formal paramter of the query in the form name:exttype</li>
/// 	<li>idinfo -  contains a list, the first element indicating the position of the ID, zero if not included
///     and the second element is the extent of these ID value.</li>
/// 	<li>qHandle - <Optional> query handle, used for dynamic queries</li></ul>
ClassMethod GetInfo(ByRef colinfo As %List, ByRef parminfo As %List, ByRef idinfo As %List, ByRef qHandle As %Binary, extoption As %Integer = 0, ByRef extinfo As %List) As %Status [ CodeMode = generator, ServerOnly = 1 ]
{
}

ClassMethod GetODBCInfo(ByRef colinfo As %List, ByRef parminfo As %List, ByRef qHandle As %Binary) [ CodeMode = generator, ServerOnly = 1 ]
{
}

/// Prepare the query for execution. For static queries, this method probably just
/// returns $$$OK. For dynamic queries this method will set up the information
/// returned by <b>GetInfo</b>. It is used by the various <b>ResultSet</b> objects.
ClassMethod Prepare(ByRef qHandle As %Binary, statement As %String, containid As %Integer = 0, optional As %String) As %Status [ CodeMode = expression, ServerOnly = 1 ]
{
}

}
