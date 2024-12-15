/// Base class for all nodes in the ReportDisplay XData block.
Class %ZEN.Report.Display.node Extends (controller, %XML.Adaptor) [ Deprecated, Inheritance = right, System = 4 ]
{

Property xpath As %String(XMLPROJECTION = "NONE");

/// We use these to record namespace and namespace prefix for qualified name
Property xmlnamespace As %String(XMLPROJECTION = "none");

Property xmlnamespaceprefix As %String(XMLPROJECTION = "none");

/// used to flag table or item, etc., as being under a small mutiple
Property withinSmallmultiple As %Boolean(XMLPROJECTION = "none") [ InitialExpression = 0 ];

/// use to pass down result set from table when table uses sql to generate itself
Property level As %ZEN.Datatype.integer(XMLPROJECTION = "NONE");

/// XML namespace used for Zen Report display definitions.
Parameter NAMESPACE = "http://www.intersystems.com/zen/report/display";

Parameter XMLIGNORENULL = 1;

/// By setting this to 0, we disallow use of invalid attribute names in Zen Report XML documents.
Parameter XMLIGNOREINVALIDATTRIBUTE = 0;

/// Calculated property that contains the tag name of the node.
/// This corresponds to the classname.
Property tag As %String(XMLPROJECTION = "none") [ Calculated ];

/// The style string is given in the form "attribute1:value1;attribute2:value2;...",
/// just as in CSS.  In general, the style string is directly copied into HTML tags
/// as the style attribute.  In XSL-FO, each attribute is rendered separately.  That is,
/// the resulting HTML tag would look like &lt;tag style='attribute1:value1;...'/&gt; and the
/// resulting XSL-FO tag would look like &lt;tag attribute1='value1' ... /&gt;.
Property style As %ZEN.Datatype.style;

/// same as style only HTML only
Property htmlstyle As %ZEN.Datatype.style;

/// same as style only XSL-FO only
Property xslfostyle As %ZEN.Datatype.style;

/// list of conditions - true one at index i selects style
Property selectstylecond As %ZEN.Datatype.string;

/// list of styles - picked by first true index i in list of conditions
/// for more information about individual values in list see style property
Property selectstylelist As %ZEN.Datatype.string;

/// stylecall - name of xsl:template to call to output style attributes
Property stylecall As %ZEN.Datatype.string;

/// list of xpaths, xpath function calls, and XSLT function calls.
/// for each string here an xsl:with-param is generated with its select attribute set from here
Property styleparams As %ZEN.Datatype.list(DELIMITER = ";");

/// for each name here an xsl:with-param is generated with its name attribute set from here
Property styleparamNames As %ZEN.Datatype.list(DELIMITER = ";");

/// Specifies the node's style class.  Some classes come pre-defined when standard styling
/// is specified for the report, and custom classes may be define by the &lt;class&gt; tag
/// within the &lt;document&gt; tag.  Note: parent tags propagate their class attribute to their
/// children if the child class does not have an explicit class defined.  In HTML tags,
/// class is rendered using the class attribtue, and in XSL-FO tags it is rendered using
/// the xsl:use-attribute-set attribute.  It is a fatal error to specify a class that is
/// not defined.  For more information on classes, see the <class> tag.
Property class As %ZEN.Datatype.cssClass;

/// Specifies the width of the element within its containing object (page, table cell, etc.)
Property width As %ZEN.Datatype.length;

/// Specifies the template that can be used to add children to the node
/// The format is <classname>:<xdata-name>
Property template As %ZEN.Datatype.string;

Method tagGet() As %String
{
}

/// This method outputs the necessary stylesheet information for the HTML report.
/// Every tag should override this method.
Method %DrawToHTML(ByRef context As %String, ByRef XSL As %GlobalCharacterStream, ByRef delay As %GlobalCharacterStream, ByRef incell As %Boolean) As %Status
{
}

/// This method outputs the necessary stylesheet information for the PDF report.
/// Every tag should override this method.
Method %DrawToXSLFO(ByRef context As %String, ByRef XSL As %GlobalCharacterStream, ByRef delay As %GlobalCharacterStream, ByRef incell As %Boolean) As %Status
{
}

/// This method outputs the stylesheet that converts the input xml to the xml with Excel annotations
/// report, table and item should override this method.  Nested tables not supported.
Method %DrawToAnnotatedXML(ByRef context As %String, ByRef XSL As %GlobalCharacterStream, ByRef delay As %GlobalCharacterStream) As %Status
{
}

Method %StyleXSLFO(ByRef context As %String, ByRef XSL As %GlobalCharacterStream, ByRef delay As %GlobalCharacterStream, isTableCell As %Boolean = 0, ignoreId As %Boolean = 0) As %Status
{
}

ClassMethod XSLFOStyle(ByRef context As %String, ByRef XSL As %GlobalCharacterStream, ByRef delay As %GlobalCharacterStream, style As %String, class As %String = "", width As %String = "", xslfostyle As %String = "", id As %String = "", selectstylecond As %String = "", stylecall As %String = "", styleparams As %String = "", selectstylelist As %String = "", styleparamNames As %String = "", ignoreId As %Boolean = 0)
{
}

Method %ApplyClass(tag As %String, ByRef context As %String)
{
}

ClassMethod ApplyClass(inclass As %String, tag As %String, ByRef context As %String)
{
}

Method %StyleHTML(ByRef context As %String, ByRef XSL As %GlobalCharacterStream, ByRef delay As %GlobalCharacterStream, backgroundImage As %String = "", ignoreId As %Boolean = 0, pStyle As %String = "")
{
}

ClassMethod HTMLStyle(ByRef context As %String, ByRef XSL As %GlobalCharacterStream, ByRef delay As %GlobalCharacterStream, style As %String, class As %String = "", width As %String = "", htmlstyle As %String = "", id As %String = "", selectstylecond As %String = "", stylecall As %String = "", styleparams As %String = "")
{
}

Method %GetAbsoluteURL(url As %String, context As %String, isServer As %Boolean) As %String
{
}

ClassMethod CountSpaces(literal As %String)
{
}

Method tagChildren() [ Internal ]
{
}

ClassMethod updateFromTemplate(child, parent) [ Internal ]
{
}

Method qualify(xpath As %String)
{
}

ClassMethod insertAxis(xpath As %String, axis As %String, position As %Integer)
{
}

ClassMethod parent(xpath As %String)
{
}

ClassMethod CSPLinkToFileLink(url As %String, ByRef newUrl As %String, ext As %String, makeAbsoluteURL As %Boolean = 0) As %Status
{
}

ClassMethod isCSPLink(url As %String)
{
}

ClassMethod needsURL(url As %String)
{
}

ClassMethod GetDocForXSLFO(this, ByRef context As %String, ByRef XSL As %GlobalCharacterStream, children As %ZEN.Report.Display.childrenNode, xpath As %String) As document
{
}

ClassMethod DoDocForHTML(this, ByRef context As %String, ByRef XSL As %GlobalCharacterStream, children As %ZEN.Report.Display.childrenNode, xpath As %String)
{
}

ClassMethod processExclamationPoint(x As %String)
{
}

Method OutputId(ByRef context As %String, ByRef XSL As %GlobalCharacterStream, ByRef delay As %GlobalCharacterStream)
{
}

}
