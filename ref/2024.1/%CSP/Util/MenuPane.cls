/// This class is used internally by InterSystems IRIS. You should not make direct use of it within your applications. There is no guarantee made about either the behavior or future operation of this class.
/// <p>This pane draws one or more option menus.
Class %CSP.Util.MenuPane Extends %CSP.Util.Pane [ ServerOnly = 1, System = 4 ]
{

Parameter DOMAIN = "%Utility";

/// Defines the menus for this pane
Property Menus As list Of Menu(XMLNAME = "Menu", XMLPROJECTION = "ELEMENT");

Method DrawHEAD(pInstance As PageInstance) As %Status
{
}

Method DrawBODY(pInstance As PageInstance) As %Status
{
}

/// Evaluate a menu item condition; the condition must refer to values or functions that
/// are in scope (i.e., % variables).
ClassMethod EvaluateCondition(pCondition As %String) As %Boolean
{
}

Method OnGenerateCode() As %String
{
}

/// Set and return standard menu colors.
ClassMethod MenuColors(Output MenuColor As %String)
{
}

/// This is the common method for writing out Copyright notice.
ClassMethod WriteCopyright()
{
}

}
