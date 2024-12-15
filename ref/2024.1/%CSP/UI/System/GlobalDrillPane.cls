/// This pane allows to drill down a global one level at a time.
Class %CSP.UI.System.GlobalDrillPane Extends %CSP.Util.ExpPane [ System = 4 ]
{

/// Default Localization Domain
Parameter DOMAIN = "%Utility";

/// Quote a string.
ClassMethod Quote(Str As %String) As %String
{
}

/// Delete a global node
ClassMethod DeleteNode(Namespace As %String, GSub As %String, KillSub As %Boolean) As %Boolean
{
}

/// Load global data
Method LoadGlobal(Namespace As %String, Mask As %String, LastSub As %String, NodeCount As %Integer, TotalCount As %Integer, HasSecurity As %Boolean) As %Boolean
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

/// Saves global edit changes for both View turned edit and Edit from global drill down.
ClassMethod SaveChange(Namespace As %String, GSub As %String, GValue As %String, ValueFormat As %Integer, GMask As %String, DeleteOld As %Boolean)
{
}

}
