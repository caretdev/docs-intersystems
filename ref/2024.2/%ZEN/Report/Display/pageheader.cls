/// Specifies the section of the report display that will be placed as a header
/// on every page.  The height of the region used by the page header is given
/// by the headerHeight attribute of the &lt;document&gt; tag. Note: The &lt;pageheader&gt;
/// tag MUST be placed before the &lt;body&gt; tag.<br>
/// In an HTML report, page headers are not supported, so the contents of &lt;pageheader&gt;
/// are outputted once as a report header.
Class %ZEN.Report.Display.pageheader Extends childrenNode [ Deprecated, System = 4 ]
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
