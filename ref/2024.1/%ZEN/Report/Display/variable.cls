/// <Class>variable</Class> has contents that define an XSL variable
Class %ZEN.Report.Display.variable Extends (childrenNode, tableOutput) [ Deprecated ]
{

/// <Property>name</Property> names the variable
Property name As %ZEN.Datatype.string;

Property group As %ZEN.Datatype.string(XMLPROJECTION = "NONE");

Property removeEmpty As %ZEN.Datatype.boolean(XMLPROJECTION = "NONE");

/// <Method>%DrawToXSLFO</Method> emits an XSL variable instruction and invokes %DrawToXSLFO on all the variable's children
Method %DrawToXSLFO(ByRef context As %String, ByRef XSL As %GlobalCharacterStream, delay As %GlobalCharacterStream) As %Status
{
}

}
