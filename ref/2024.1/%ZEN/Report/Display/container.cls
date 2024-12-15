Class %ZEN.Report.Display.container Extends (childrenNode, tableOutput) [ Deprecated, Inheritance = right, System = 4 ]
{

Property field As %ZEN.Datatype.string(XMLPROJECTION = "NONE");

Property group As %ZEN.Datatype.string(XMLPROJECTION = "NONE");

Property removeEmpty As %ZEN.Datatype.boolean(XMLPROJECTION = "NONE") [ InitialExpression = 0 ];

Property backgroundImage As %ZEN.Datatype.string;

Property width As %ZEN.Datatype.length;

Property height As %ZEN.Datatype.length;

Property backgroundRepeat As %ZEN.Datatype.string;

Property position As %ZEN.Datatype.string;

/// writing-mode XML attribute.  It has the following possible values.  Note that not all XSL-FO renderers will support all possible values. <br>
/// lr-tb Text are written left-to-right and top-to-bottom (normal "alphabetic" text) <br>
/// rl-tb Text are written right-to-left and top-to-bottom (Arabic and Hebrew text) <br>
/// tb-rl Text are written top-to-bottom and right-to-left (Chinese and Japanese text) <br>
/// lr Same as lr-tb <br>
/// rl Same as rl-tb <br>
/// tb Same as tb-rl <br>
/// inherit <br>
Property writingMode As %ZEN.Datatype.string(VALUELIST = ",lr-tb,rl-tb,tb-rl,lr,rl,tb,inherit", XMLNAME = "writing-mode");

Method %DrawToHTML(ByRef context As %String, ByRef XSL As %GlobalCharacterStream, delay As %GlobalCharacterStream, incell As %Boolean = 0) As %Status
{
}

Method %DrawToXSLFO(ByRef context As %String, ByRef XSL As %GlobalCharacterStream, delay As %GlobalCharacterStream, ByRef incell As %Boolean = 0) As %Status
{
}

}
