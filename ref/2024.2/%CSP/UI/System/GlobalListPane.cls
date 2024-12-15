/// This class is used internally by InterSystems IRIS. You should not make direct use of it within your applications. There is no guarantee made about either the behavior or future operation of this class.
/// <p>Generic Pane for Displaying Explorer List.
Class %CSP.UI.System.GlobalListPane Extends %CSP.UI.System.ExpListPane [ System = 4 ]
{

Method CreateResultSet(ByRef pID As %String, ByRef pRS As %ResultSet) As %Status
{
}

/// This method performs the actual execution of the ResultSet
Method ExecuteResultSet(pRS As %ResultSet, ByRef pID As %String) As %Status
{
}

}
