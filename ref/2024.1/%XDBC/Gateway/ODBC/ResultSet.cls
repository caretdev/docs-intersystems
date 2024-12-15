Class %XDBC.Gateway.ODBC.ResultSet Extends %XDBC.Gateway.ResultSet [ System = 4 ]
{

Property statement As %XDBC.Gateway.ODBC.Statement;

Property atEnd As %Integer;

Method %OnNew(st As %XDBC.Gateway.ODBC.Statement) As %Status [ Internal, ServerOnly = 1 ]
{
}

/// Advance to the next row in the result set. Returns 0 if the cursor is at the end of the result set.
Method Next() As %Library.Boolean
{
}

///  Returns the value of the column with the name <var>colname</var> in the current row of the result set.
///  <p>If <var>colname</var> is not a valid column name, this method throws a <Column not found> error.
Method Get(colname As %RawString = "") As %Library.RawString
{
}

Method GetData(colindex As %Integer) As %Library.RawString
{
}

/// Display all rows
Method Display(pDelimiter As %String = " ") As %Status [ Internal ]
{
}

/// Advance to the next row in the result set. Returns 0 if the cursor is at the end of the result set.
/// The row is returned in $List format by reference in the <parameter>Row</parameter> argument.
Method GetRow() As %Library.List
{
}

/// Method Not Supported
Method GetRows(rowCount As %Library.Integer) As %Library.Integer
{
}

/// Method Not Supported
Method GetObject(columnIndex As %Integer) As %ObjectHandle
{
}

/// Method Not Supported
Method WasNull() As %Boolean
{
}

/// Method Not Supported
Method %FetchIntoTemp() As %Library.Integer [ Abstract, Internal ]
{
}

/// Method Not Supported
Method %SendDelimitedRows(pMaxRows As %Integer = 0, pDelimiter As %String = "", ByRef pReturnCount As %Integer = 0) As %Status [ Abstract, Internal ]
{
}

Method GetFetchSize() As %Integer
{
}

Method Close() As %Status
{
}

Method SetFetchSize(rows As %Integer)
{
}

}
