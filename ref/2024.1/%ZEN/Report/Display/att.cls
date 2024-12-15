/// Specifies an attribute-value pair within a class.
Class %ZEN.Report.Display.att Extends node [ Deprecated, System = 4 ]
{

/// The name of the attribute.
Property name As %ZEN.Datatype.name [ Required ];

/// The value of the attribute.  Cannot be specified along with expression
Property value As %ZEN.Datatype.string;

/// expression that will be evaluated and put in output, cannot be specified along with value
Property expression As %ZEN.Datatype.string;

Method %DrawToXSLFO(ByRef context As %String, ByRef XSL As %GlobalCharacterStream, delay As %GlobalCharacterStream) As %Status
{
}

Method %DrawToHTML(ByRef context As %String, ByRef XSL As %GlobalCharacterStream, delay As %GlobalCharacterStream) As %Status
{
}

}
