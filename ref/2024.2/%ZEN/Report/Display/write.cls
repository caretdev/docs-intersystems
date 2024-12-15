/// The contents of a &lt;write&gt; node are directly outputted to the stylesheet.
/// This is often used in conjunction with the &lt;html&gt; and &lt;fo&gt; tags.
Class %ZEN.Report.Display.write Extends contentNode [ Deprecated, System = 4 ]
{

Property XMLEscape As %ZEN.Datatype.boolean [ InitialExpression = 0 ];

Method %DrawToHTML(ByRef context As %String, XSL As %GlobalCharacterStream, delay As %GlobalCharacterStream, ByRef incell As %Boolean) As %Status
{
}

Method %DrawToXSLFO(ByRef context As %String, XSL As %GlobalCharacterStream, delay As %GlobalCharacterStream, ByRef incell As %Boolean) As %Status
{
}

}
