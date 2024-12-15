/// This class is used internally by InterSystems IRIS. You should not make direct use of it within your applications. There is no guarantee made about either the behavior or future operation of this class.
/// <p>This pane handles Executing query with only one parameter.
Class %CSP.UI.System.DbGlobalsPane Extends %CSP.Util.TablePane [ System = 4 ]
{

Parameter HIDEFILTERWHENEMPTY = 0;

/// This method performs the actual execution of the ResultSet
/// This can be overridden by subclasses
Method ExecuteResultSet(pRS As %ResultSet, ByRef pID As %String) As %Status
{
}

/// This callback draws the search mask within the filter box.
Method OnDrawFilter(pInstance As %CSP.Util.PageInstance) As %Status
{
}

}
