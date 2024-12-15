/// This tag introduces a page break into PDF reports.<br>
/// In HTML reports, the page break
/// will be honored by a printer, but on-screen it is only drawn as a dashed line.
Class %ZEN.Report.Display.pagebreak Extends node [ Deprecated, System = 4 ]
{

Method %DrawToHTML(ByRef context As %String, ByRef XSL As %GlobalCharacterStream, ByRef delay As %GlobalCharacterStream, ByRef incell As %Boolean) As %Status
{
}

Method %DrawToXSLFO(ByRef context As %String, ByRef XSL As %GlobalCharacterStream, ByRef delay As %GlobalCharacterStream, ByRef incell As %Boolean) As %Status
{
}

}
