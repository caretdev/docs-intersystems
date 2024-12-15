Class %XDBC.Gateway.ODBC.Statement Extends %XDBC.Gateway.Statement [ System = 4 ]
{

Property connection As %XDBC.Gateway.ODBC.Connection;

Property statement As %ObjectHandle;

Method %OnNew(connection As %XDBC.Gateway.ODBC.Connection, statement As %ObjectHandle) As %Status
{
}

Method Prepare(sql As %String) As %Status
{
}

Method GetTables(Catalog As %String, Schema As %String, Table As %String) As %Status
{
}

Method GetTablePriviligies(Schema As %String, Table As %String) As %Status
{
}

/// Executes the given SQL statement, which may return multiple results
Method ExecuteDirect(sql As %String) As %Boolean
{
}

/// Executes the prepared SQL statement, which may return multiple results
Method Execute() As %Boolean
{
}

/// Executes the given SQL statement, which returns a single ResultSet object
Method ExecuteQuery(sql As %String) As %XDBC.Gateway.ResultSet
{
}

/// Retrieves the Connection object that produced this Statement object
Method GetConnection() As Connection
{
}

/// Executes the given SQL statement, which may be an INSERT, UPDATE, or DELETE statement or an SQL statement that returns nothing, such as an SQL DDL statement
/// Executes the given SQL statement and signals the driver with the given flag about whether the auto-generated keys produced by this Statement object should be made available for retrieval.
Method ExecuteUpdate(sql As %String) As %Integer
{
}

/// Retrieves the current result as a ResultSet object.
Method GetResultSet() As %XDBC.Gateway.ResultSet
{
}

/// Retrieves the maximum number of rows that a ResultSet object produced by this Statement object can contain
Method GetMaxRows() As %Integer
{
}

/// Method Not Supported
Method SetMaxFieldSize(max As %Integer)
{
}

/// Method Not Supported
Method SetMaxRows(max As %Integer)
{
}

/// Sets the number of seconds the driver will wait for a Statement object to execute to the given number of seconds.
Method SetQueryTimeout(seconds As %Integer)
{
}

/// Method Not Supported
Method GetUpdateCount() As %Integer
{
}

Method GetMoreResults() As %Boolean
{
}

/// Releases this Statement object's database and resources immediately instead of waiting for this to happen when it is automatically closed.
Method Close()
{
}

/// Cancels this Statement object if both the DBMS and driver support aborting an SQL statement.
Method Cancel()
{
}

/// Retrieves the number of result set rows that is the default fetch size for ResultSet objects generated from this Statement object
Method GetFetchSize() As %Integer
{
}

/// Retrieves the maximum number of bytes that can be returned for character and binary column values in a ResultSet object produced by this Statement object
Method GetMaxFieldSize() As %Integer
{
}

/// Method Not Supported
Method GetGeneratedKeys() As %XDBC.Gateway.ResultSet
{
}

/// Gives the driver a hint as to the number of rows that should be fetched from the database when more rows are needed for ResultSet objects genrated by this Statement.
Method SetFetchSize(rows As %Integer)
{
}

/// Retrieves the number of seconds the driver will wait for a Statement object to execute.
Method GetQueryTimeout() As %Integer
{
}

/// Method Not Supported
Method IsClosed() As %Boolean
{
}

/// Method Not Supported, use PreparedStatement.AddBatchEx
Method AddBatch(sql As %String, ColumnBinding As %Boolean, size As %Integer, statusArray As %Boolean)
{
}

/// Method Not Supported
Method ClearBatch()
{
}

/// Method Not Supported, use PreparedStatement.ExecuteBatchEx
Method ExecuteBatch() As %ListOfDataTypes
{
}

}
