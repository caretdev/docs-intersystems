/// This class is used internally by InterSystems IRIS. You should not make direct use of it within your applications. There is no guarantee made about either the behavior or future operation of this class.
/// <p>Details for the Navigator pane of a CSP Admin page.
Class %CSP.Util.NavigatorPane Extends Pane [ ServerOnly = 1, System = 4 ]
{

/// If true, then the max rows textbox is display.
Property ShowMaxRows As %Boolean [ InitialExpression = 0 ];

/// If true, then namespace listbox is display.
Property ShowNamespaces As %Boolean [ InitialExpression = 0 ];

/// Table back color
Property bgcolor As %String;

Method DrawBODY(pInstance As PageInstance) As %Status
{
}

Method OnGenerateCode() As %String
{
}

/// Overwritten by subclasses to draw anything this pane needs for the HEAD section.
Method DrawHEAD(pInstance As PageInstance) As %Status
{
}

}
