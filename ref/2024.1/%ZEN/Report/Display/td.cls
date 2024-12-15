Class %ZEN.Report.Display.td Extends (childrenNode, tableOutput) [ Deprecated, Inheritance = right, System = 4 ]
{

Property group As %ZEN.Datatype.string(XMLPROJECTION = "none");

Property removeEmpty As %ZEN.Datatype.boolean(XMLPROJECTION = "NONE") [ InitialExpression = 0 ];

Property field As %ZEN.Datatype.string(XMLPROJECTION = "NONE");

Method %DrawToXSLFO(ByRef context As %String, ByRef XSL As %GlobalCharacterStream, ByRef delay As %GlobalCharacterStream, ByRef incell As %Boolean = 0) As %Status
{
}

Method %DrawToHTML(ByRef context As %String, ByRef XSL As %GlobalCharacterStream, ByRef delay As %GlobalCharacterStream, incell As %Boolean = 0) As %Status
{
}

}
