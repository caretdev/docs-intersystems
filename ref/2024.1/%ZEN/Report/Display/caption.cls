/// If an element within a table has a &lt;caption&gt; tag as a child, it defines
/// the data that will be placed in the header row or column for that
/// element.  If no element within a table has a &lt;caption&gt; tag, no footer
/// row/column is generated.  If one does not desire special styling for
/// the caption, one can also use a caption attribute on most tags as
/// a short-hand.
Class %ZEN.Report.Display.caption Extends item [ Deprecated, System = 4 ]
{

Property group As %ZEN.Datatype.string(XMLPROJECTION = "none");

Property removeEmpty As %ZEN.Datatype.boolean(XMLPROJECTION = "NONE") [ InitialExpression = 0 ];

Method %DrawCellToHTML(ByRef context As %String, ByRef XSL As %GlobalCharacterStream, ByRef delay As %GlobalCharacterStream) As %Status
{
}

Method %DrawCellToHTML1(ByRef context As %String, ByRef XSL As %GlobalCharacterStream, ByRef delay As %GlobalCharacterStream) As %Status
{
}

Method %DrawCellFO(ByRef context As %String, ByRef XSL As %GlobalCharacterStream, ByRef delay As %GlobalCharacterStream) As %Status
{
}

Method %DrawCellFO1(ByRef context As %String, ByRef XSL As %GlobalCharacterStream, ByRef delay As %GlobalCharacterStream) As %Status
{
}

}
