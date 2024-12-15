///
Class %ZEN.Report.Display.link Extends (contentNode, tableOutput) [ Deprecated, Inheritance = right, System = 4 ]
{

Property field As %ZEN.Datatype.string(XMLPROJECTION = "NONE");

Property group As %ZEN.Datatype.string(XMLPROJECTION = "NONE");

Property removeEmpty As %ZEN.Datatype.boolean(XMLPROJECTION = "NONE") [ InitialExpression = 0 ];

Property children As list Of node(XMLPROJECTION = "NONE");

Property destination As %ZEN.Datatype.string;

Property internal As %ZEN.Datatype.boolean [ InitialExpression = 0 ];

Property name As %ZEN.Datatype.string;

/// show-destination attribute of fo:basic-link
Property showDestination As %ZEN.Datatype.string(XMLNAME = "show-destination") [ InitialExpression = "replace" ];

/// indicate-destination attribute of fo:basic-link
Property indicateDestination As %ZEN.Datatype.string(XMLNAME = "indicate-destination") [ InitialExpression = "false" ];

Method %DrawToHTML(ByRef context As %String, ByRef XSL As %GlobalCharacterStream, delay As %GlobalCharacterStream, incell As %Boolean = 0) As %Status
{
}

Method %DrawToXSLFO(ByRef context As %String, ByRef XSL As %GlobalCharacterStream, delay As %GlobalCharacterStream, ByRef incell As %Boolean = 0) As %Status
{
}

}
