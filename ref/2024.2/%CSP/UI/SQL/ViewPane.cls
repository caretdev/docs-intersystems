/// This class is used internally by InterSystems IRIS. You should not make direct use of it within your applications. There is no guarantee made about either the behavior or future operation of this class.
/// <p>Create and edit a view.
Class %CSP.UI.SQL.ViewPane Extends %CSP.Util.Pane [ System = 4 ]
{

/// Overwritten by subclasses to draw anything this pane needs for the BODY section.
Method DrawBODY(pInstance As PageInstance) As %Status
{
}

/// Given schema name and view name, return view info
ClassMethod GetViewInfo2(Schema As %String, ViewName As %String, Output Owner As %String, Output ReadOnly As %Boolean, Output CheckOption As %String) As %Status
{
}

/// Return View Text for new view (from cached query) or existing view.
ClassMethod GetViewText(Schema As %String, ViewName As %String) As %String
{
}

/// Overwritten by subclasses to draw anything this pane needs for the HEAD section.
Method DrawHEAD(pInstance As PageInstance) As %Status
{
}

/// Process saving the view
Method SaveForm(NAMESPACE As %String, Schema As %String, ViewName As %String, Owner As %String, ReadOnly As %String, CheckOption As %String, ViewText As %String) As %String
{
}

/// ViewText as a stream object is passed in. Rebuild view text from it.
/// If it errored, then return error message.
Method GetStreamText(ViewText, IsError As %Boolean = 0) As %String
{
}

}
