/// Specifies the &lt;page-sequence-master&gt; section of the report display that will be
/// placed in the &lt;layout-master-set&gt; to allow the report to process the conditional
/// alternatives defined by the &lt;masterreference&gt; tag definitions.
Class %ZEN.Report.Display.pagemaster Extends childrenNode [ Deprecated, System = 4 ]
{

Property ifxpath As %ZEN.Datatype.string(XMLPROJECTION = "none");

Property ifexpression As %ZEN.Datatype.string(XMLPROJECTION = "none");

Property unlessexpression As %ZEN.Datatype.string(XMLPROJECTION = "none");

Property includeColUnlessExpression As %ZEN.Datatype.string(XMLPROJECTION = "none");

Property includeColIfExpression As %ZEN.Datatype.string(XMLPROJECTION = "none");

Method %DrawPageToXSLFO(ByRef context As %String, ByRef XSL As %GlobalCharacterStream, delay As %GlobalCharacterStream, SectionName As %String = "") As %Status
{
}

Method %DrawStyleToXSLFO(ByRef context As %String, ByRef XSL As %GlobalCharacterStream, delay As %GlobalCharacterStream, SectionName As %String = "") As %Status
{
}

Method %DrawStyleToHTML(ByRef context As %String, ByRef XSL As %GlobalCharacterStream, delay As %GlobalCharacterStream) As %Status
{
}

Method %DrawPageMasterToXSLFO(ByRef context As %String, ByRef XSL As %GlobalCharacterStream, delay As %GlobalCharacterStream, SectionName As %String = "") As %Status
{
}

Method %DrawToXSLFO(ByRef context As %String, ByRef XSL As %GlobalCharacterStream, delay As %GlobalCharacterStream, ByRef incell As %Boolean) As %Status
{
}

Method %DrawToHTML(ByRef context As %String, ByRef XSL As %GlobalCharacterStream, delay As %GlobalCharacterStream, ByRef incell As %Boolean) As %Status
{
}

}
