Class %Library.ForeignTableQuery Extends %Query [ System = 3 ]
{

ClassMethod Func() As %SQL.StatementResult [ CodeMode = generator, ServerOnly = 1 ]
{
}

/// Close the connection assoicated with the foreign data wrapper object <var>%qHandle</var>
ClassMethod Close(%qHandle As %Binary) As %Status [ PublicList = SQLCODE, ServerOnly = 1 ]
{
}

/// <p> <b>Execute</b> takes optional <var>whereClause</var> and <var>parameters</var> parameters
/// for predicate pushdown. This method creates an object of the relevant foreign data wrapper class
/// (%SQL.FDW.*) and returns it by reference in %qHandle.
ClassMethod Execute(ByRef %qHandle As %Binary, query As %String = "", parameters As %List = "") As %Status [ CodeMode = objectgenerator, PlaceAfter = GetQuery, ServerOnly = 1 ]
{
}

/// Fetch the next row of data from the external source.
/// <p><var>qHandle</var> is a foreign data wrapper object.
/// <p>The <b>Fetch</b> method sets <var>Row</var> to be a $List of
/// values corresponding to the columns of the query by passing the row by reference to
/// the Fetch method of the foreign data wrapper. If we are past the end of the data
/// and no row is returned, <var>Row</var> should be set to null string ("").
/// If the non-empty row being returned is the last one, <var>AtEnd</var> is
/// set to 1, indicating that an additional call to <b>Fetch</b> may be avoided.
ClassMethod Fetch(ByRef %qHandle As %Binary, ByRef Row As %List, ByRef AtEnd As %Integer = 0) As %Status [ CodeMode = objectgenerator, PlaceAfter = Execute, ServerOnly = 1 ]
{
}

}
