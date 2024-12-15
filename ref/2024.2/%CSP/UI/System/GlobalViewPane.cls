/// This class is used internally by InterSystems IRIS. You should not make direct use of it within your applications. There is no guarantee made about either the behavior or future operation of this class.
/// <p>View Global Data.
Class %CSP.UI.System.GlobalViewPane Extends %CSP.Util.ExpPane [ System = 4 ]
{

/// Default Localization Domain
Parameter DOMAIN = "%Utility";

/// Delete a global node
ClassMethod DeleteNode(Namespace As %String, GSub As %String, KillSub As %Boolean) As %Boolean
{
}

/// Load global data
Method LoadGlobal(Namespace As %String, Mask As %String, LastSub As %String, NodeCount As %Integer, TotalCount As %Integer, chkEdit As %Boolean) As %Boolean
{
}

/// Overwritten by subclasses to draw anything this pane needs for the BODY section.
Method DrawBODY(pInstance As PageInstance) As %Status
{
}

/// Define javascript functions for this pane
Method DrawHEAD(pInstance As PageInstance) As %Status
{
}

/// open docbook for help on this page
/// user clicked a link for a subscript
/// Go one level up from the existing level
/// Edit a global node
ClassMethod EditNode(namespace As %String, GSub As %String)
{
}

/// Load edit data
ClassMethod LoadEdit(namespace As %String, GSub As %String, tDispFormat As %String) As %String
{
}

}
