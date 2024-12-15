/// This class is used internally by InterSystems IRIS. You should not make direct use of it within your applications. There is no guarantee made about either the behavior or future operation of this class.
/// <p>This pane handles displaying, selecting, and compiling classes and routines.
Class %CSP.UI.System.FindPane Extends %CSP.Util.ExpPane [ System = 4 ]
{

Method CreateResultSet(ByRef pRS As %ResultSet) As %Status
{
}

Method DrawTable(ByRef pRS As %String)
{
}

/// This can be overridden by subclasses
Method ExecuteResultSet(pRS As %ResultSet, SEARCHMASK As %String) As %Status
{
}

/// Overwritten by subclasses to draw anything this pane needs for the BODY section.
Method DrawBODY(pInstance As PageInstance) As %Status
{
}

Method DrawButtons(ColMax As %Integer)
{
}

}
