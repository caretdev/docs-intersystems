/// The base class is for nodes that want their children tags rendered
/// as objects and not as content text.
Class %ZEN.Report.Display.childrenNode Extends node [ Abstract, Deprecated, System = 4 ]
{

Property parent As %ZEN.Report.Display.node(XMLPROJECTION = "NONE");

Property xpath As %String(XMLPROJECTION = "NONE");

Property children As list Of %ZEN.Report.Display.node(XMLELEMENTREF = 1, XMLPROJECTION = "ELEMENT", XMLTYPECONSTRAINT = "CHOICE");

/// Loop over children and recursively see if one contains chart
Method %ContainsChart(ByRef containsChart As %Boolean) [ Internal ]
{
}

Method %DrawStyleToHTML(ByRef context As %String, ByRef XSL As %GlobalCharacterStream, delay As %GlobalCharacterStream, SectionName As %String = "") As %Status
{
}

Method %DrawToAnnotatedXML(ByRef context As %String, ByRef XSL As %GlobalCharacterStream, ByRef delay As %GlobalCharacterStream) As %Status
{
}

}
