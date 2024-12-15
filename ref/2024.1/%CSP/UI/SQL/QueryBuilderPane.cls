/// This class is used internally by InterSystems IRIS. You should not make direct use of it within your applications. There is no guarantee made about either the behavior or future operation of this class.
/// <p>This pane is used by the SQL query builder
Class %CSP.UI.SQL.QueryBuilderPane Extends %CSP.Util.Pane [ System = 4 ]
{

Method DrawHEAD(pInstance As PageInstance) As %Status
{
}

Method DrawStyle()
{
}

Method DrawScript3()
{
}

Method DrawScript() As %Status
{
}

/// calculate qualified names for all tables
Method DrawScript2() As %Status
{
}

/// Draw the BODY of the detail pane
Method DrawBODY(pInstance As PageInstance) As %Status
{
}

/// Get a list of columns for the given table
/// Call via hyper-event
ClassMethod GetColumnsForTable(pNS As %String, pTableNo As %Integer, pTable As %String)
{
}

/// Return a csv-list of columns in the given table (via pList).
/// Reference fields will expand to include their referenced properties:
/// i.e., Company,Company->Name,Company->Address,
ClassMethod BuildColumnList(pTable As %String, ByRef pList As %String, pRefField As %String = "", pLevel As %Integer = 1, ByRef pVisited) As %String
{
}

}
