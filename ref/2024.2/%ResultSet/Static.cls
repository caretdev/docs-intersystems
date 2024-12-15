/// A Static result set is one where the original data source (a result set object) is copied to a process
/// private global upon instantiation. Future data requests then use that snapshot instead of the original
/// data.
Class %ResultSet.Static Extends %Library.IResultSet [ System = 4 ]
{

Property %storageOffset As %Integer [ Private ];

Property %currentRow As %Integer [ Private ];

Property %columnCount As %Integer [ Private ];

/// %Data is a multidimensional property of column values for the current row. It is subscripted by column
/// number.
Property %Data As %String(MAXLEN = "") [ MultiDimensional, Private ];

Property %hasStreams As %Integer [ InitialExpression = 0, Private ];

Property %streams As %String [ Internal, MultiDimensional ];

Property %streamColumns As %String(MAXLEN = "") [ Internal ];

Property %lastRow As %Integer [ Private ];

/// %RowCount for a static result set is always the number of rows in the static set.
Method %ROWCOUNTGet() As %Integer [ CodeMode = expression ]
{
}

Method %OnNew(initvalue As %RawString, pRuntimeMode As %Integer = {$zu(115,5)}) As %Status [ Private, ProcedureBlock = 1, PublicList = SQLCODE, ServerOnly = 1 ]
{
}

Method %OnClose() As %Status [ Private ]
{
}

Method %SendRows() As %Integer
{
}

/// Fetch and send a series of rows for the ODBC/JDBC server. For internal use only.
Method %SendODBC() As %Library.Integer
{
}

/// Advance the result set cursor to the next row. Returns 0 if the cursor is at the end of the
/// result set.
/// The global structure consists of a base $list with individual nodes for columns. The base $list() can contain zero or more column
/// values. Additional column values are stored in the global subscripted by column number and equal to the column value.
Method %Next(ByRef sc As %Library.Status = {$$$OK}) As %Library.Integer
{
}

/// Returns the value of the column with the name <var>name</var> in the current row of the result set.
/// <p>If <var>name</var> is not a valid column name, this method returns an empty string.
Method %Get(colname As %String = "") As %Library.String
{
}

/// Returns the value of column <var>colnbr</var> in the current row of the result set.
Method %GetData(colnbr As %Integer = 0) As %Library.String
{
}

Method %SetIterator(pRowNumber As %Library.Integer = 0) As %Library.Integer
{
}

}
