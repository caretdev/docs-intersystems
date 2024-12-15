/// This class is used internally by InterSystems IRIS. You should not make direct use of it within your applications. There is no guarantee made about either the behavior or future operation of this class.
/// <p>An AutoPage pane that lets a user enter an SQL query and execute it.
Class %CSP.UI.SQL.QueryPane Extends %CSP.Util.SQLQueryPane [ System = 4 ]
{

/// Should this page display timing stats
Parameter SHOWSTATISTICS = 1;

Parameter SHOWSQLINFO = 1;

Method CreateResultSet(ByRef pID As %String, ByRef pRS As %ResultSet) As %Status
{
}

Method ExecuteResultSet(pRS As %ResultSet, ByRef pID As %String) As %Status
{
}

}
