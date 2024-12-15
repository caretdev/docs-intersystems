/// This class is used internally by InterSystems IRIS. You should not make direct use of it within your applications. There is no guarantee made about either the behavior or future operation of this class.
/// <p>An AutoPage pane that lets a user enter an parameters for a SQL query and execute it.
Class %CSP.UI.SQL.RunFunctionPane Extends %CSP.Util.ExpPane [ System = 4 ]
{

/// Copied from %CSP.Util.SQLQueryPane
Method OnDrawHEADTablePane(pInstance As %CSP.Util.PageInstance) As %Status
{
}

/// Overwritten by subclasses to draw anything this pane needs for the BODY section.
Method DrawBODY(pInstance As PageInstance) As %Status
{
}

Method DrawOptions(ByRef Params As %String, ParamCount As %Integer, SCHEMA As %String, PROC As %String)
{
}

Method DrawButtons()
{
}

Method DrawResult(ByRef tRS As %ResultSet, tGlobals As %String, tStart As %String)
{
}

/// Draws error message directly
Method DrawError(errormsg)
{
}

/// Run function procedure and display result.
Method DrawFunctionResult(ByRef pID As %String, ByRef Params As %String, ByRef FunctionResult As %String) As %String [ PublicList = tRS ]
{
}

}
