///
/// Implementation of SQL support
///
Class %SYS.Python.SQLStatement Extends %RegisteredObject [ System = 4 ]
{

///
/// Wrapped statement
///
Property Statement As %SQL.Statement;

///
/// Implement %OnNew handler
///
Method %OnNew(stmt As %SQL.StatementResult) As %Status
{
}

///
/// Execute an SQL statement
///
Method execute(args...) As SQLResultSet
{
}

}
