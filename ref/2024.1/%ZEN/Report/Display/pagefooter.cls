/// Specifies the section of the report display that will be placed as a footer
/// on every page.  The height of the region used by the page footer is given
/// by the footerHeight attribute of the &lt;document&gt; tag.  N.B.: The &lt;pagefooter&gt;
/// region MUST be defined before the &lt;body&gt; region.<br>
/// In an HTML report, page footers are ignored.
Class %ZEN.Report.Display.pagefooter Extends childrenNode [ Deprecated, System = 4 ]
{

Property regionName As %ZEN.Datatype.string;

Method %DrawToHTML(ByRef context As %String, ByRef XSL As %GlobalCharacterStream, delay As %GlobalCharacterStream, ByRef incell As %Boolean) As %Status
{
}

Method %DrawToXSLFO(ByRef context As %String, ByRef XSL As %GlobalCharacterStream, delay As %GlobalCharacterStream, ByRef incell As %Boolean) As %Status
{
}

Method %DrawPageToXSLFO(ByRef context As %String, ByRef XSL As %GlobalCharacterStream, delay As %GlobalCharacterStream, masterName As %String = "main") As %Status
{
}

Method %DrawStyleToXSLFO(ByRef context As %String, ByRef XSL As %GlobalCharacterStream, delay As %GlobalCharacterStream, SectionName As %String = "") As %Status
{
}

}
