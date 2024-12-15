Class %ZEN.Report.Display.bidioverride Extends (childrenNode, tableOutput) [ Deprecated, Inheritance = right, System = 4 ]
{

Property field As %ZEN.Datatype.string(XMLPROJECTION = "NONE");

Property group As %ZEN.Datatype.string(XMLPROJECTION = "NONE");

Property removeEmpty As %ZEN.Datatype.boolean(XMLPROJECTION = "NONE") [ InitialExpression = 0 ];

/// direction attribute
Property direction As %ZEN.Datatype.string(VALUELIST = ",ltr,rtl,inherit");

/// unicode-bidi - attribute only relevant to XSL-FO
Property unicodeBIDI As %ZEN.Datatype.string(VALUELIST = ",normal,embed,bidi-override,inherit", XMLNAME = "unicode-bidi");

Method %DrawToHTML(ByRef context As %String, ByRef XSL As %GlobalCharacterStream, delay As %GlobalCharacterStream, incell As %Boolean = 0) As %Status
{
}

Method %DrawToXSLFO(ByRef context As %String, ByRef XSL As %GlobalCharacterStream, delay As %GlobalCharacterStream, ByRef incell As %Boolean = 0) As %Status
{
}

}
