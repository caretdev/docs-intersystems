Class %ZEN.Report.Display.foblock Extends (childrenNode, tableOutput) [ Deprecated, Inheritance = right, System = 4 ]
{

Property field As %ZEN.Datatype.string(XMLPROJECTION = "NONE");

Property group As %ZEN.Datatype.string(XMLPROJECTION = "NONE");

Property removeEmpty As %ZEN.Datatype.boolean(XMLPROJECTION = "NONE") [ InitialExpression = 0 ];

Property backgroundImage As %ZEN.Datatype.string;

Property width As %ZEN.Datatype.length;

Property height As %ZEN.Datatype.length;

Property top As %ZEN.Datatype.length;

Property left As %ZEN.Datatype.length;

Property right As %ZEN.Datatype.length;

Property bottom As %ZEN.Datatype.length;

Property relativePosition As %ZEN.Datatype.string;

/// keep together on next page if possible
Property keepCondition As %ZEN.Datatype.string;

Method %DrawToHTML(ByRef context As %String, ByRef XSL As %GlobalCharacterStream, delay As %GlobalCharacterStream, incell As %Boolean = 0) As %Status
{
}

Method %DrawToXSLFO(ByRef context As %String, ByRef XSL As %GlobalCharacterStream, delay As %GlobalCharacterStream, ByRef incell As %Boolean = 0) As %Status
{
}

}
