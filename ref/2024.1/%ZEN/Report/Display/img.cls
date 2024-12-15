/// Renders an image into the report display.
Class %ZEN.Report.Display.img Extends (childrenNode, tableOutput) [ Deprecated, Inheritance = right, System = 4 ]
{

Property field As %ZEN.Datatype.string(XMLPROJECTION = "NONE");

Property group As %ZEN.Datatype.string(XMLPROJECTION = "NONE");

Property removeEmpty As %ZEN.Datatype.boolean(XMLPROJECTION = "NONE") [ InitialExpression = 0 ];

/// Specifies the source of the image.
///
/// If the src attribute begins with an exclamation point, it is interpreted
/// as an XPath expression just as in the field attribute of the &lt;item&gt; tag.
/// This allows you to dynamically generate URLs within the XML data, and then
/// use these customized URLs as the image source.  Note: when using ! to dynamically
/// get the image URL, it must be an absolute URL or it will not appear in the PDF
/// report.
Property src As %ZEN.Datatype.uri [ Required ];

/// Specifies the height of the image.
Property height As %ZEN.Datatype.length;

/// Specifies the width of the image.
Property width As %ZEN.Datatype.length;

/// Specifies the height of the image.
Property contentHeight As %ZEN.Datatype.length;

/// Specifies the width of the image.
Property contentWidth As %ZEN.Datatype.length;

/// Specifies the content-type of the image
Property contentType As %ZEN.Datatype.string(XMLNAME = "content-type");

Property altText As %ZEN.Datatype.string(XMLNAME = "alt-text");

Method %DrawToHTML(ByRef context As %String, ByRef XSL As %GlobalCharacterStream, delay As %GlobalCharacterStream, ByRef incell As %Boolean) As %Status
{
}

Method %DrawToXSLFO(ByRef context As %String, ByRef XSL As %GlobalCharacterStream, delay As %GlobalCharacterStream, ByRef incell As %Boolean = 0) As %Status
{
}

}
