/// FOR INTERNAL USE - do not invoke directly
Class %XDBC.Gateway.ODBC.Connection Extends %XDBC.Gateway.Connection [ System = 4 ]
{

ClassMethod InitEnvironment() As %ObjectHandle
{
}

ClassMethod GetODBCConnection(connectionInfo As %Library.DynamicObject) As %XDBC.Gateway.ODBC.Connection
{
}

/// Makes all changes made since the previous commit/rollback permanent and releases any database locks currently held by this Connection object
Method Commit()
{
}

/// Call Close (ODBC Disconnect) on connection
Method Close()
{
}

/// Undoes all changes made in the current transaction and releases any database
/// locks currently held by this Connection object
Method Rollback()
{
}

/// Sets this connection's auto-commit mode to the given state
Method SetAutoCommit(autoCommit As %Boolean)
{
}

/// Retrieves the current auto-commit mode for this Connection object
Method GetAutoCommit() As %Boolean
{
}

/// Creates a Statement object for sending SQL statements to the database
Method CreateStatement() As Statement
{
}

/// Retrieves this Connection object's current transaction isolation level
Method GetTransactionIsolation() As %Integer
{
}

/// Attempts to change the transaction isolation level for this Connection object to the one given
/// level is 1, 2, 4 (Connection.TRANSACTION_REPEATABLE_READ) or 8 (Connection.TRANSACTION_SERIALIZABLE)
Method SetTransactionIsolation(level As %Integer)
{
}

/// Retrieves whether this Connection object is in read-only mode
Method IsReadOnly() As %Boolean
{
}

/// Puts this connection in read-only mode as a hint to the driver to enable database optimizations
Method SetReadOnly(readOnly As %Boolean)
{
}

/// Creates a Statement object for calling stored procedures
Method PrepareCall(sql As %String) As Statement
{
}

/// Creates a statement object for sending parameterized SQL statements to the database
Method PrepareStatement(sql As %String) As Statement
{
}

/// Get connection information specifyed by Type
Method GetInfo(Type As %Integer) As %String
{
}

Method GetConnectionAttribute(Attribute As %Integer, IsInteger As %Boolean) As %String
{
}

Method SetAttribute(Attribute As %Integer, Value As %String, IsInteger As %Boolean) As %Status
{
}

Method GetTables(Catalog As %String, Schema As %String, Table As %String) As ResultSet
{
}

Method GetTablePriviligies(Schema As %String, Table As %String) As ResultSet
{
}

/// Retrieves whether this Connection object has been closed
Method IsClosed() As %Boolean
{
}

/// Returns true if the connection has not been closed and is still valid
Method IsValid(timeout As %Integer = 0) As %Boolean
{
}

/// Retrieves a DatabaseMetaData object that contains metadata about the database to which this Connection object represents a connection
Method GetMetaData() As %XDBC.Gateway.ODBC.DatabaseMetaData
{
}

/// Retrieves this Connection object's current schema name
Method GetSchema() As %String
{
}

/// Sets the given schema name to access
Method SetSchema(schema As %String)
{
}

Property gateway As %ObjectHandle;

Property enviroment As %ObjectHandle;

Property connection As %ObjectHandle;

}
