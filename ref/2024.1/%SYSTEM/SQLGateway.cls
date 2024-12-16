/// The <class>%SYSTEM.SQLGateway</class> class provides an interface for managing
/// Gateway connections.
/// <p>You can use it via the special <b>$system</b> object:
/// <example>
/// Do $system.SQLGateway.DropAll()
/// </example>
Class %SYSTEM.SQLGateway Extends Help [ Abstract, LegacyInstanceContext, System = 4 ]
{

/// Test a previously defined SQL Gateway connection.
/// <p> It writes the diagnostic ouput to a current device.
/// <p> <var> nm</var> - connection name
/// <br><var>timeout</var> - timeout (only relevant for  ODBC connections)
/// <br><var>verbose</var> - setting to a non 0 value will cause the diagnostic output to the current device
/// <br><var>error</var> - output variable for passing back an error if it occurs
ClassMethod TestConnection(nm, timeout = 0, verbose = 1, error = "") As %Status
{
}

/// Disconnect a JDBC or ODBC connection
/// <p> <var> nm</var> - connection name
ClassMethod DropConnection(nm) As %Status
{
}

/// Connect to a previously defined JDBC Gateway connection.
/// <p> It returns an empty string if the connection attempt was unsuccessful.
/// <p> <var> nm</var> - connection name
ClassMethod GetJDBCConnection(cname) As %Binary
{
}

/// Drop all open connections and unload the SQL Gateway library.
ClassMethod DropAll() As %Status
{
}

/// Connect to a previously defined SQL Gateway ODBC connection.
/// <p> It returns an empty string if the connection attempt was unsuccessful.
/// <p> <var> nm</var> - connection name
/// <br><var>timeout</var> - timeout
/// <br><var>legacy</var> - legacy mode
ClassMethod GetODBCConnection(nm, timeout, legacy = "") As %Binary
{
}

/// Set the given integer option for all open connections
/// <p> <var> option</var> - option to set
/// <br><var>vparm</var> - value associated with option
ClassMethod SetAllODBCConnectOption(option, vparm) As %Status
{
}

/// Set the autocommit mode for all open connections
/// <p> <var>ac</var> = { 0 -  AUTOCOMMIT OFF, 1 - AUTOCOMMIT ON}
ClassMethod SetAutoCommit(ac) As %Status
{
}

/// Request a commit or rollback operation for all active operations on JDBC or ODBC connections.
/// <p> <var>type</var> = { 0 - SQL_COMMIT, 1 - SQL_ROLLBACK}
ClassMethod Transact(ttype) As %Status
{
}

}