/// The &lt;xslinclude&gt; tag provides a mechanism for including
/// external XSLT stylesheets in the PDF report.
Class %ZEN.Report.Display.xslinclude Extends node [ Deprecated, System = 4 ]
{

/// Specifies the location of the external XSLT stylesheet.<br>
/// Multiple stylesheets can be linked by entering a
/// comma-delimited list.
Property href As %ZEN.Datatype.uri;

Property makeAbsoluteURL As %ZEN.Datatype.boolean [ InitialExpression = 0 ];

Method %DrawToXSLFO(ByRef context As %String, ByRef XSL As %GlobalCharacterStream, delay As %GlobalCharacterStream, ByRef incell As %Boolean) As %Status
{
}

Method %DrawToHTML(ByRef context As %String, ByRef XSL As %GlobalCharacterStream, delay As %GlobalCharacterStream, ByRef incell As %Boolean) As %Status
{
}

Method %NormalizeList(list As %String, ByRef array) As %Status
{
}

}
