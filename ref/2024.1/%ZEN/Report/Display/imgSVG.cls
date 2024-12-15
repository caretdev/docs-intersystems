/// Used to display svg code on a Report
Class %ZEN.Report.Display.imgSVG Extends (%ZEN.Report.Display.childrenNode, %ZEN.Report.Display.tableOutput) [ Deprecated, Inheritance = right, System = 4 ]
{

Property svgSrc As %ZEN.Datatype.string;

/// Specifies the height of the image.
Property height As %ZEN.Datatype.length;

/// Specifies the width of the image.
Property width As %ZEN.Datatype.length;

/// Specifies the height of the image.
Property contentHeight As %ZEN.Datatype.length;

/// Specifies the width of the image.
Property contentWidth As %ZEN.Datatype.length;

Property field As %ZEN.Datatype.string(XMLPROJECTION = "NONE");

Property group As %ZEN.Datatype.string(XMLPROJECTION = "NONE");

Property removeEmpty As %ZEN.Datatype.boolean(XMLPROJECTION = "NONE") [ InitialExpression = 0 ];

Property children As list Of %ZEN.Report.Display.node(XMLPROJECTION = "NONE");

Method %DrawToHTML(ByRef context As %String, ByRef XSL As %GlobalCharacterStream, delay As %GlobalCharacterStream, ByRef incell As %Boolean) As %Status
{
}

Method %DrawToXSLFO(ByRef context As %String, ByRef XSL As %GlobalCharacterStream, delay As %GlobalCharacterStream, ByRef incell As %Boolean) As %Status
{
}

}
