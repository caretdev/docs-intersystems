/// FOR INTERNAL USE - do not invoke directly
Class %XDBC.Gateway.JDBC.Connection Extends %XDBC.Gateway.Connection [ System = 4 ]
{

Parameter FOREIGNCONNECTIONCLASS As String = "com.intersystems.xdbc.gateway.ForeignConnection";

/// A constant indicating that transactions are not supported.
Parameter TRANSACTIONNONE = 0;

Parameter TRANSACTIONREADUNCOMMITTED = 1;

Parameter TRANSACTIONREADCOMMITTED = 2;

Parameter TRANSACTIONREPEATABLEREAD = 4;

Parameter TRANSACTIONSERIALIZABLE As Integer = 8;

Parameter TYPESCROLLFORWARDONLY = 1003;

Parameter TYPESCROLLINSENSITIVE = 1004;

Parameter TYPESCROLLSENSITIVE = 1005;

Parameter CONCURREADONLY = 1007;

Parameter CONCURUPDATEABLE = 1008;

Property java As %External.JavaGateway;

Property jdbcConnection As %Net.Remote.Object;

ClassMethod GetJdbcConnection(connectionInfo As %Library.DynamicObject) As %XDBC.Gateway.JDBC.Connection
{
}

Method %OnClose() As %Status
{
}

/// Releases this Connection object's database and resources immediately instead of waiting for them to be automatically released
Method Close()
{
}

/// Makes all changes made since the previous commit/rollback permanent and releases any database locks currently held by this Connection object
Method Commit()
{
}

/// Creates a Statement object for sending SQL statements to the database
Method CreateStatement() As Statement
{
}

/// Retrieves the current auto-commit mode for this Connection object
Method GetAutoCommit() As %Boolean
{
}

/// Retrieves a DatabaseMetaData object that contains metadata about the database to which this Connection object represents a connection
Method GetMetaData() As DatabaseMetaData
{
}

/// Retrieves this Connection object's current schema name
Method GetSchema() As %String
{
}

/// Retrieves this Connection object's current transaction isolation level
Method GetTransactionIsolation() As %Integer
{
}

/// Retrieves whether this Connection object has been closed
Method IsClosed() As %Boolean
{
}

/// Retrieves whether this Connection object is in read-only mode
Method IsReadOnly() As %Boolean
{
}

/// Returns true if the connection has not been closed and is still valid
Method IsValid(timeout As %Integer = 0) As %Boolean
{
}

/// Creates a Statement object for calling stored procedures
Method PrepareCall(sql As %String) As Statement
{
}

/// Creates a statement object for sending parameterized SQL statements to the database
Method PrepareStatement(sql As %String, resultSetType As %Integer = {..#TYPESCROLLFORWARDONLY}, resultSetConcurrency As %Integer = {..#CONCURREADONLY}) As Statement
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

/// Puts this connection in read-only mode as a hint to the driver to enable database optimizations
Method SetReadOnly(readOnly As %Boolean)
{
}

/// Sets the given schema name to access
Method SetSchema(schema As %String)
{
}

/// Attempts to change the transaction isolation level for this Connection object to the one given
/// level is 1, 2, 4 (Connection.TRANSACTION_REPEATABLE_READ) or 8 (Connection.TRANSACTION_SERIALIZABLE)
Method SetTransactionIsolation(level As %Integer)
{
}

/// Connect to a JDBC data source, return an instance of java.sql.Connection
ClassMethod getExternalJdbcConnection(java As %External.JavaGateway, properties As %Library.DynamicObject) [ Internal, Private ]
{
}

}
