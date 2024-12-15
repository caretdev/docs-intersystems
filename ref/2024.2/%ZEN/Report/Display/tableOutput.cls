/// This class provides an interface for ZEN report tags to be displayed in a table.
/// Any tag that will be embedded in a table must extend tableOutput.
///
/// When a class that does not implement the "children" property extends tableOutput,
/// it must introduce a children property with XMLPROJECTION="none."  See the &lt;p&gt; tag
/// for an example.
/// When a class that does not implement the "field" or "group" or "removeEmpty" property extends tableOutput
/// it must introduce a "field" or "group" or "removeEmpty" property with XMLPROJECTION="none"
Class %ZEN.Report.Display.tableOutput Extends controller [ Abstract, Deprecated, System = 4 ]
{

/// items and captions can now have groups that allow them to repeat on a line
/// when table draw in orient="col"
Property grouppath As %ZEN.Datatype.string;

/// Short-hand property to specify the elements caption within the table's header row.
Property caption As %ZEN.Datatype.caption;

/// Calculated property that indicates whether or not this element specifies a header cell.
Property hasHeader As %Boolean(XMLPROJECTION = "none") [ Calculated ];

/// Calculated property that indicates whether or not this element specifies a footer cell.
Property hasFooter As %Boolean(XMLPROJECTION = "none") [ Calculated ];

/// when grouppath is set, the number of columns in the group
Property colcount As %ZEN.Datatype.string;

/// fo attributes of block for things like orphan control
/// One would specify foblock="orphans='1'"
Property foblock As %ZEN.Datatype.string;

/// Is block wrapped inside a block container
Property includeBlockContainer As %ZEN.Datatype.boolean(XMLNAME = "include-block-container");

/// properties of block container such as overflow='hidden' to truncate data too large
Property blockContainerProperty As %ZEN.Datatype.string(XMLNAME = "block-container-property");

Property tooLongText As %ZEN.Datatype.string(VALUELIST = ",none,truncate,wrap,unset", XMLNAME = "too-long-text") [ InitialExpression = "unset" ];

/// truncate text if it is too long if truncate is true
Property truncate As %ZEN.Datatype.boolean;

/// the width to use in truncation, if not specified inherited from table cell
Property truncationWidth As %ZEN.Datatype.string(XMLNAME = "truncation-width");

/// the height to use in truncation.
Property truncationHeight As %ZEN.Datatype.string(XMLNAME = "truncation-height");

/// cross-tab properties<br>
/// get headers for cross-tab item from this xpath<br>
/// used for matching<br>
Property crosstabHeaderGroup As %ZEN.Datatype.string;

/// cross-tab properties<br>
/// get headers for cross-tab item from this xpath<br>
/// used for writing header labels<br>
Property crosstabHeaderGroupLabels As %ZEN.Datatype.string;

/// cross-tab properties<br>
/// get headers for cross-tab item from this xpath<br>
/// used for writing header labels<br>
/// relative to crosstabHeaderGroupLabels
Property crosstabHeaderLabelDataField As %ZEN.Datatype.string;

/// cross-tab properties<br>
/// get headers for cross-tab item from this xpath<br>
/// used for matching<br>
Property crosstabHeaderGroupTooLongText As %ZEN.Datatype.string(VALUELIST = ",none,truncate,wrap,unset") [ InitialExpression = "unset" ];

/// the width to use in truncation of cross tab header lablels, if not specified inherited from table cell
Property crosstabTruncationWidth As %ZEN.Datatype.string;

/// the height to use in truncation of cross tab header labels, if not specified inherited from table cell
Property crosstabTruncationHeight As %ZEN.Datatype.string;

/// Defaults to "".  Field (attribute or element) of crosstabHeaderGroup used in constructing match.
Property crosstabHeaderDataField As %ZEN.Datatype.string;

/// xpath representing "row" of table where cross-tab data lives
Property crosstabRowGroup As %ZEN.Datatype.string;

/// xpath representing data of cross-tab at row determined by crosstabRowGroup[$row]/
Property crosstabDataGroup As %ZEN.Datatype.string;

/// xpath representing data that will match against header name crosstabHeaderGroup[$col]
Property crosstabHeaderMatchField As %ZEN.Datatype.string;

/// xpath representing data that will appear in footer
Property crosstabFooterGroup As %ZEN.Datatype.string;

/// if non-null has footer data is formatted
Property crosstabFooterFormatNumber As %ZEN.Datatype.string;

/// xpath expression, which can use $pos, to get data to display in crosstab footer group
Property crosstabFooterDataField As %ZEN.Datatype.string;

Property linefeedTreatment As %ZEN.Datatype.string(VALUELIST = ",ignore,preserve,treat-as-space,treat-as-zero-width-space", XMLNAME = "linefeed-treatment");

Property rowspan As %ZEN.Datatype.integer;

Property colspan As %ZEN.Datatype.integer;

/// <p>Part of the tableOutput API that searches for a &lt;caption&gt; child and if it
/// finds one renders it (just as an &lt;item&gt; tag) as the row/column's header.</p><p>
/// As a short-hand, one can simply specify the caption attribute for the tag,
/// but that is less flexible.</p>
Method %DrawHeaderFO(ByRef context As %String, ByRef XSL As %GlobalCharacterStream, ByRef delay As %GlobalCharacterStream, orient As %String) As %Status
{
}

/// <p>Part of the tableOutput API that searches for a &lt;summary&gt; child and if it
/// finds one renders it (just as an &lt;item&gt; tag) as the row/column's footer.</p>
Method %DrawFooterFO(ByRef context As %String, ByRef XSL As %GlobalCharacterStream, ByRef delay As %GlobalCharacterStream, oldSummary As %Boolean, orient As %String) As %Status
{
}

/// <p>Part of the tableOutput API that searches for a &lt;summary&gt; child and if it
/// finds one renders it (just as an &lt;item&gt; tag) as the row/column's footer.</p>
Method %DrawFooterToAnnotatedXML(ByRef context As %String, ByRef XSL As %GlobalCharacterStream, ByRef delay As %GlobalCharacterStream) As %Status
{
}

Method %DrawCellFO(ByRef context As %String, ByRef XSL As %GlobalCharacterStream, ByRef delay As %GlobalCharacterStream, orient As %String) As %Status
{
}

/// Part of the tableOutput API that displays the element contained in a table cell for
/// the PDF report.
Method %DrawCellFO1(ByRef context As %String, ByRef XSL As %GlobalCharacterStream, ByRef delay As %GlobalCharacterStream) As %Status
{
}

/// <p>Part of the tableOutput API that searches for a &lt;caption&gt; child and if it
/// finds one renders it (just as an &lt;item&gt; tag) as the row/column's header.</p><p>
/// As a short-hand, one can simply specify the caption attribute for the tag,
/// but that is less flexible.</p>
Method %DrawHeaderToHTML(ByRef context As %String, ByRef XSL As %GlobalCharacterStream, ByRef delay As %GlobalCharacterStream, orient As %String) As %Status
{
}

/// <p>Part of the tableOutput API that searches for a &lt;summary&gt; child and if it
/// finds one renders it (just as an &lt;item&gt; tag) as the row/column's footer.</p>
Method %DrawFooterToHTML(ByRef context As %String, ByRef XSL As %GlobalCharacterStream, ByRef delay As %GlobalCharacterStream, oldSummary As %Boolean, orient As %String) As %Status
{
}

/// Part of the tableOutput API that displays the element contained in a table cell for
/// the HTML report.
Method %DrawCellToHTML(ByRef context As %String, ByRef XSL As %GlobalCharacterStream, ByRef delay As %GlobalCharacterStream, orient As %String) As %Status
{
}

Method %DrawCellToHTML1(ByRef context As %String, ByRef XSL As %GlobalCharacterStream, ByRef delay As %GlobalCharacterStream) As %Status
{
}

Method hasHeaderGet() As %Boolean
{
}

Method hasFooterGet() As %Boolean
{
}

/// Returns the width of the cell containing this object.
Method %Width()
{
}

/// Returns the width of the cell containing this object.
Method %OldWidth()
{
}

/// Returns the width of the header cell for this object.
Method %HeaderWidth()
{
}

/// Returns the width of the footer cell for this object.
Method %FooterWidth()
{
}

Method updateFromTemplate(child) [ Internal ]
{
}

Method tagChildren1() [ Internal ]
{
}

ClassMethod IsFop() As %Boolean [ Internal ]
{
}

ClassMethod %DrawSort(ByRef context As %String, ByRef XSL As %GlobalCharacterStream, ByRef delay As %GlobalCharacterStream, orderby As %String, datatype As %String) As %Status
{
}

Method %BeginGroup(ByRef context As %String, ByRef XSL As %GlobalCharacterStream, ByRef delay As %GlobalCharacterStream, mode As %String, name As %String)
{
}

Method %BeginGroupNoInc(ByRef context As %String, ByRef XSL As %GlobalCharacterStream, ByRef delay As %GlobalCharacterStream, mode As %String, name As %String)
{
}

Method %EndGroup(ByRef context As %String, ByRef XSL As %GlobalCharacterStream, ByRef delay As %GlobalCharacterStream, mode As %String, name As %String)
{
}

}
