/// FOR INTERNAL USE - do not invoke directly
Class %XDBC.Gateway.JDBC.ResultSet Extends %XDBC.Gateway.ResultSet [ System = 4 ]
{

Property %atEnd As %Boolean [ Private ];

Property %bufferCount As %Integer [ Private ];

Property %bufferPointer As %Integer [ Private ];

Property %connection As %XDBC.Gateway.JDBC.Connection [ Private ];

Property %currentRow As %List [ Private ];

Property %externalResult As %ObjectHandle [ Private ];

Property %fetchSize As %Integer [ InitialExpression = 1000, Private ];

Property %rowBuffer As %RawString [ Private ];

Property %allowBufferAccess As %Boolean [ InitialExpression = 0, Private ];

/// Tracks whether we are before the first row on the IRIS side; since we grab buffers at a time
/// from the Java side, this will be out of sync with whether the Java result set is technically before the first row.
Property %isBeforeFirst As %Boolean [ InitialExpression = 1, Private ];

Method %OnNew(connection As %XDBC.Gateway.JDBC.Connection, externalResult As %ObjectHandle) As %Status [ Internal, ServerOnly = 1 ]
{
}

///  Returns the value of the column with the name <var>colname</var> in the current row of the result set.
///  <p>If <var>colname</var> is not a valid column name, this method throws a <PROPERTY DOES NOT EXIST> error.
Method Get(colindex As %RawString = "") As %Library.RawString
{
}

Method GetData(colindex As %Integer) As %Library.RawString
{
}

Method GetRow() As %Library.List
{
}

/// Advance the next <parameter>rowCount</parameter> rows in the result.  Returns 0 if the cursor is at the end of the
/// result set. Note, when 0 is returned, it is likely there are rows returned in the <parameter>rows</parameter> array.  An optional argument contains a <class>%Library.Status</class> value on return.  This %Status value
/// indicates success or failure of the <method>%GetRows</method> call. <property>%SQLCODE</property> is also set by %GetRows.
/// The rows are returned in an array of $List values in the <parameter>Row</parameter> array argument.  If %SQLCODE'=0 for a row, that will be the end of the results.
/// <p>For example, suppose rset.%GetRows(10,.tenrows,.sc) is called:
/// <br>- If there are more then 10 rows remaining to be fetched from the result set, tenrows=10, tenrows(1)=$lb(first row's contents), ..., tenrows(10)=$lb(tenth row's contents), and <method>%GetRows</method> will return 1.
/// <br>- If there are 5 rows remaining to be fetched from the result set, tenrows=5, tenrows(1)=$lb(first row's contents), ..., tenrows(5)=$lb(fifth row's contents), and <method>%GetRows</method> will return 0.
/// <br>- If there are 0 rows remaining to be fetched from the result set, tenrows=0 and <method>%GetRows</method> will return 0.
/// <br><br>This implementation is overridden by classes that implement the result set interface.
/// Signature/behavior here to match that of %SQL.StatementResult:%GetRows()
Method GetRows(rowCount As %Library.Integer, ByRef rows As %Library.List, ByRef sc As %Library.Status = {$$$OK}) As %Library.Integer
{
}

/// Returns the current row buffer to the caller.
/// This method will refuse to return the buffer if there result set is already
/// being iterated over by cursor (if the cursor is not before the start of the result set)
/// Returns 1 if more buffers exist, 0 if this is the last buffer
Method GetBuffer(ByRef moreBuffers As %Boolean) As %List
{
}

Method Next() As %Boolean
{
}

Method Close() As %Status
{
}

Method getRowstoBuffer(numRows As %Integer = 0) As %Boolean [ Internal ]
{
}

/// Retrieves the fetch size for this ResultSet object.
Method GetFetchSize() As %Integer
{
}

/// Gets the value of the designated column in the current row of this ResultSet object as %ObjectHandle
Method GetObject(columnIndex As %Integer) As %ObjectHandle
{
}

Method GetString(columnIndex As %Integer) As %String
{
}

/// Gives the driver a hint as to the number of rows that should be fetched from the database when more rows are needed for this ResultSet object.
Method SetFetchSize(rowCount As %Integer)
{
}

/// Reports whether the last column read had a value of SQL NULL.
Method WasNull() As %Boolean
{
}

/// Getter method for the %isBeforeFirst property on this class, which tracks
/// whether the IRIS-side result set is before the first row and may not match up with
/// whether the Java-side result set is before the first row.
Method IsBeforeFirst() As %Boolean
{
}

/// Position the cursor before the first row in the result set
Method BeforeFirst()
{
}

}
