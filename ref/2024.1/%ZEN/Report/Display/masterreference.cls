/// Specifies the &lt;conditional-page-master-refference&gt; used by the the
/// &lt;page-sequence-master&gt; section of the report display.
Class %ZEN.Report.Display.masterreference Extends childrenNode [ Deprecated, System = 4 ]
{

/// Defines the refere
Property masterReference As %ZEN.Datatype.string [ Required ];

Property pagePosition As %ZEN.Datatype.string(VALUELIST = ",only,first,last,rest,any") [ Required ];

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

Method %DrawStyleToHTML(ByRef context As %String, ByRef XSL As %GlobalCharacterStream, delay As %GlobalCharacterStream, SectionName As %String = "") As %Status
{
}

Method %DrawPageMasterToXSLFO(ByRef context As %String, ByRef XSL As %GlobalCharacterStream, delay As %GlobalCharacterStream, SectionName As %String = "") As %Status
{
}

Method %DrawToXSLFO(ByRef context As %String, ByRef XSL As %GlobalCharacterStream, delay As %GlobalCharacterStream, ByRef incell As %Boolean, SectionName As %String = "") As %Status
{
}

Method %DrawToHTML(ByRef context As %String, ByRef XSL As %GlobalCharacterStream, delay As %GlobalCharacterStream, ByRef incell As %Boolean) As %Status
{
}

}
