/// <p>Specifies a style class for the report display.  Classes represent
/// CSS classes for HTML reports, and attribute-sets for PDF reports.</P>
///
/// <p>When naming a class, one should use something of the form "tag.class".
/// The tags refer directly to HTML tags like &lt;td&gt;, &lt;th&gt;, &lt;table&gt;, &lt;a&gt;, &lt;p&gt;, etc.
/// In the HTML report, this converts directly to CSS so that the cells of
/// a table take on the style of td.theirclass, the header row/column takes
/// on the style of th.theirclass, etc.  In the PDF report, the tag names are
/// different, but the use-attribute-set attribute is automatically adjusted
/// to take this into account.  That is, a table cell with class="test" will
/// use the style defined by the tag &lt;class name="td.test"/&gt;.  Similarly
/// for &lt;th&gt;, &lt;table&gt;, &lt;td&gt;, &lt;a&gt;, &lt;p&gt;.</p>
Class %ZEN.Report.Display.class Extends childrenNode [ Deprecated, System = 4 ]
{

/// CSS class name. See class description for details.
Property name As %ZEN.Datatype.cssClass [ Required ];

Property children As list Of %ZEN.Report.Display.att(XMLELEMENTREF = 1, XMLPROJECTION = "ELEMENT", XMLTYPECONSTRAINT = "CHOICE");

Method %DrawToXSLFO(ByRef context As %String, ByRef XSL As %GlobalCharacterStream, delay As %GlobalCharacterStream, ByRef incell As %Boolean) As %Status
{
}

Method %DrawToHTML(ByRef context As %String, ByRef XSL As %GlobalCharacterStream, delay As %GlobalCharacterStream, ByRef incell As %Boolean) As %Status
{
}

}
