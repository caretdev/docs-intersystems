/// This tag is the basic tag for displaying hard-coded values and data
/// returned by the report.
Class %ZEN.Report.Display.item Extends (childrenNode, tableOutput) [ Deprecated, Inheritance = right, System = 4 ]
{

Parameter DOMAIN = "%ZEN";

Property group As %ZEN.Datatype.string(XMLPROJECTION = "NONE");

Property removeEmpty As %ZEN.Datatype.boolean(XMLPROJECTION = "NONE") [ InitialExpression = 0 ];

/// If the value attribute is specified, the &lt;item&gt; renders that as a
/// literal value.
Property value As %ZEN.Datatype.caption;

/// If the field attribute is specified, the &lt;item&gt; renders the value
/// of that field in the XML data.  Note: field is actually used
/// as an XPath expression, so if you have the data:<br>
/// <p>&lt;record id='1'&gt;&lt;customer&gt;MegaPlex Systems&lt;/customer&gt;&lt;/record&gt;</p>
/// one would obtain the value of the id attribute with the XPath
/// expression '@id', whereas to obtain the value of the child element
/// customer one would use the XPath expression 'customer'.
Property field As %ZEN.Datatype.string;

/// <p>If the special attribute is specified, the <item> renders a
/// pre-definied piece of dynamic data.  Possible values are
/// currently: </p>
/// <ul>
/// <li>number : gives the record number within the group.</li>
/// <li>page-number : inserts the page number within a PDF report.  Is rendered as '##' in HTML.</li>
/// <li>page-count : inserts the number of pages within a PDF report.  It is rendered as '##' in HTML.</li>
/// <li>page-number-of : inserts the page number in the form '2 of 18'.  It is rendered as '## of ##' in HTML.</li>
/// <li>page-number-/ : inserts the page number in the form '2/18'.  It is rendered as '##/##' in HTML.</li>
/// </ul>
Property special As %ZEN.Datatype.string(VALUELIST = ",number,page-count,page-number,page-number-of,page-number-/,page-count-with-xpath,page-number-of-with-xpath,page-number-/-with-xpath");

/// <dl>
/// <dt>Example: &lt;item special="page-number-of" />.</dt>
/// <dd>This will give something like "1 of 9".</dd>
/// <dt>Example (z is of in Polish): &lt;item special="page-number-of" ofString=" z " />.</dt>
/// <dd>This will give something like "1 z 9".</dd>
/// </dl>
Property ofString As %ZEN.Datatype.caption [ InitialExpression = " of " ];

/// Optional formatting string for a numeric output.<br>
/// Number formats are specified in the
/// format required for the XPath format-number function.
Property formatNumber As %ZEN.Datatype.string;

/// Optional hyperlink to place around the item's data.<br>
/// If the link attribute begins with
/// an exclamation point, it is interpreted as an XPath expression just as in the field
/// attribute.  This allows you to dynamically generate URLs within the XML data, and then
/// use these customized URLs in the display.
Property link As %ZEN.Datatype.string;

/// Preserve linefeed in data
Property breakOnLineFeed As %ZEN.Datatype.boolean;

/// Preserve spaces in data
Property literalSpaces As %ZEN.Datatype.boolean;

/// Insert zero-width spaces after characters.  This allows field to wrap when in too short a column
Property insertZeroWidthSpaces As %ZEN.Datatype.boolean(XMLNAME = "insert-zero-width-spaces");

/// reverse string in XSL-FO mode
Property reverse As %ZEN.Datatype.boolean;

/// the item's field is xml and should be copied to the output
Property copyxml As %ZEN.Datatype.boolean;

/// the item's field is well-formed html and should either be copied as html or transformed to XSL-FO
Property copyhtml As %ZEN.Datatype.boolean;

/// the item's field is well-formed html and should either be copied as html or transformed to XSL-FO
Property copyhtml86 As %ZEN.Datatype.boolean;

/// the item's field is well-formed xml and defines a DeepSee table in canoncial format
Property createtable As %ZEN.Datatype.boolean [ InitialExpression = 0 ];

/// If suppressDuplicates is 1 then an item that matches previous item is displayed as empty
Property suppressDuplicates As %ZEN.Datatype.boolean;

/// If displayCaption is 1 we display the caption of the item when the item is rendered
Property displayCaption As %ZEN.Datatype.boolean;

/// If suppressEmpty is 1 we suppress the rendering of the item and any following break if it is empty
Property suppressEmpty As %ZEN.Datatype.boolean;

/// expression that will be evaluated and put in output if "if" condition is true
Property expression As %ZEN.Datatype.string;

/// if expression that controls output of expression
Property if As %ZEN.Datatype.string [ InitialExpression = "1" ];

/// call - name of xsl:template to call
/// when call is defined
Property call As %ZEN.Datatype.string;

/// list of xpaths, xpath function calls, and XSLT function calls.
/// for each string here an xsl:with-param is generated with its select attribute set from here
Property params As %ZEN.Datatype.list(DELIMITER = ";");

/// for each name here an xsl:with-param is generated with its name attribute set from here
Property paramNames As %ZEN.Datatype.list(DELIMITER = ";");

/// For multi-line caption
Property multiline As %ZEN.Datatype.boolean;

/// show-destination attribute of fo:basic-link
Property showDestination As %ZEN.Datatype.string(XMLNAME = "show-destination") [ InitialExpression = "replace" ];

/// indicate-destination attribute of fo:basic-link
Property indicateDestination As %ZEN.Datatype.string(XMLNAME = "indicate-destination") [ InitialExpression = "false" ];

/// <p>If the appendToLastPage attribute and special attribute are defined, the string
/// value will be appended to the end of the %ZENLastPage string to allow the <item>
/// special featues reference a page-number-citation ref-id that was generate by a <body>
/// with the appendIdToLastPage attribue set to "true"</p>
Property appendToZenLastPage As %ZEN.Datatype.string;

/// When table uses sql, fieldnum when non-null is number of field in sql
Property fieldnum As %ZEN.Datatype.integer;

/// When table uses sql, fieldname when non-null is name of field in sql
Property fieldname As %ZEN.Datatype.string;

/// True if Excel numeric field
Property isExcelNumber As %ZEN.Datatype.boolean;

/// True if Excel date field
Property isExcelDate As %ZEN.Datatype.boolean;

/// True if Excel time field
Property isExcelTime As %ZEN.Datatype.boolean;

/// if non-null is display number format of element value, only effective when mode="displayxlsx"
Property excelNumberFormat As %ZEN.Datatype.string;

/// column name instead of default which is fieldName
Property excelName As %ZEN.Datatype.string;

/// identifies this item as an excel Aggregate.  Note that AGGREGATETAG parameter must be set in report for aggregate to appear!
Property isExcelAggregate As %ZEN.Datatype.boolean;

/// xmlname - used to output item as having the specified xmlname when drawing to annotated xml for Excel
Property xmlname As %ZEN.Datatype.string;

/// excel formula function
Property excelFormula As %ZEN.Datatype.string;

/// placeholder
/// marks an aggregate as a placeholder
/// used for alignment
Property placeholder As %ZEN.Datatype.boolean;

XData ConvertHTML
{
}

XData CreateTable
{
}

Method %DrawToXSLFO(ByRef context As %String, ByRef XSL As %GlobalCharacterStream, ByRef delay As %GlobalCharacterStream, ByRef incell As %Boolean = 0, ByRef ignoreId = 0) As %Status
{
}

Method %DrawToHTML(ByRef context As %String, ByRef XSL As %GlobalCharacterStream, ByRef delay As %GlobalCharacterStream, incell As %Boolean = 0) As %Status
{
}

/// This method outputs the stylesheet that converts the input xml to the xml with Excel annotations
/// report, table and item should override this method.  Nested tables not supported.
Method %DrawToAnnotatedXML(ByRef context As %String, ByRef XSL As %GlobalCharacterStream, ByRef delay As %GlobalCharacterStream) As %Status
{
}

XData ConvertRichText
{
}

Method TransformToFO(currValue As %String)
{
}

Method TransformToHTML(currValue As %String)
{
}

Method FInsertZeroWidthSpaces(currValue As %String)
{
}

}
