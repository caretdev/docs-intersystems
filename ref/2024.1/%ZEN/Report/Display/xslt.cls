///
Class %ZEN.Report.Display.xslt Extends (%ZEN.Report.Display.node, %ZEN.Report.Display.tableOutput) [ Deprecated, System = 4 ]
{

Property group As %ZEN.Datatype.string(XMLPROJECTION = "none");

Property removeEmpty As %ZEN.Datatype.boolean(XMLPROJECTION = "NONE") [ InitialExpression = 0 ];

Property children As list Of node(XMLPROJECTION = "NONE");

Property field As %ZEN.Datatype.string(XMLPROJECTION = "NONE");

Property vars As %ZEN.Datatype.list(DELIMITER = ";");

Property expressions As %ZEN.Datatype.list(DELIMITER = ";");

Property all As %ZEN.Datatype.string;

Property html As %ZEN.Datatype.string;

Property xslfo As %ZEN.Datatype.string;

Method %DrawToHTML(ByRef context As %String, ByRef XSL As %GlobalCharacterStream, delay As %GlobalCharacterStream, ByRef incell As %Boolean) As %Status
{
}

Method %DrawToXSLFO(ByRef context As %String, ByRef XSL As %GlobalCharacterStream, delay As %GlobalCharacterStream, ByRef incell As %Boolean) As %Status
{
}

Method %SetVars(ByRef XSL As %GlobalCharacterStream) [ Internal ]
{
}

}
