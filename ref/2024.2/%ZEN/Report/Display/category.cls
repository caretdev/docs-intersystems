/// Category is the base class for &lt;header&gt;, &lt;body&gt;, and &lt;footer&gt;. It
/// simply renders its children.
Class %ZEN.Report.Display.category Extends childrenNode [ Abstract, Deprecated, System = 4 ]
{

Property foStyle As %ZEN.Datatype.string;

Method %DrawToHTML(ByRef context As %String, ByRef XSL As %GlobalCharacterStream, delay As %GlobalCharacterStream, ByRef incell As %Boolean) As %Status
{
}

Method %DrawToXSLFO(ByRef context As %String, ByRef XSL As %GlobalCharacterStream, delay As %GlobalCharacterStream, ByRef incell As %Boolean = 0) As %Status
{
}

}
