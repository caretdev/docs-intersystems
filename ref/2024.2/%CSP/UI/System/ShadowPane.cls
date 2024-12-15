/// This class is used internally by InterSystems IRIS. You should not make direct use of it within your applications. There is no guarantee made about either the behavior or future operation of this class.
/// <p>This pane always use Runtime mode = 2 = Display mode.
Class %CSP.UI.System.ShadowPane Extends %CSP.Util.TablePane [ System = 4 ]
{

/// This method performs the actual execution of the ResultSet
/// This can be overridden by subclasses
Method ExecuteResultSet(pRS As %ResultSet, ByRef pID As %String) As %Status
{
}

}
