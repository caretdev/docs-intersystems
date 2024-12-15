///
/// Implementation of SQL support
///
Class %SYS.Python.SQL Extends %RegisteredObject [ System = 4 ]
{

///
/// Execute an SQL statement
///
ClassMethod exec(sql As %String, args...) As %SQL.StatementResult
{
}

ClassMethod prepare(sql As %String) As %SQL.Statement
{
}

///
/// Helper method to raise SQL errors
///
ClassMethod raiseError(status As %Status, stmt As %String = "") [ Internal ]
{
}

}
