/// The &lt;document&gt; tag is used at the top-level to specify dimensions and
/// styling for the report. The dimensions only affect the PDF report.
Class %ZEN.Report.Display.document Extends childrenNode [ Deprecated, System = 4 ]
{

/// Specifies the height of the document.
Property height As %ZEN.Datatype.length [ InitialExpression = "11in" ];

/// Specifies the width of the document.
Property width As %ZEN.Datatype.length [ InitialExpression = "8.5in" ];

/// Specifies the left margin width of the document.
Property marginLeft As %ZEN.Datatype.length [ InitialExpression = "1.25in" ];

/// Specifies the right margin width of the document.
Property marginRight As %ZEN.Datatype.length [ InitialExpression = "1.25in" ];

/// Specifies the top margin of the document. This does not include the
/// space left for the header.
Property marginTop As %ZEN.Datatype.length [ InitialExpression = "1in" ];

/// Specifies the bottom margin of the document. This does not include the
/// space left for the footer.
Property marginBottom As %ZEN.Datatype.length [ InitialExpression = "1in" ];

/// Specifies the amount of room available for the contents of the &lt;pageheader&gt; tag.
Property headerHeight As %ZEN.Datatype.length [ InitialExpression = "0" ];

/// Specifies the amount of room available for the contents of the &lt;pagefooter&gt; tag.
Property footerHeight As %ZEN.Datatype.length [ InitialExpression = "0" ];

/// Specifies the amount of room available for the contents of the &lt;pagestartsidebar&gt; tag.
Property startSidebarLength As %ZEN.Datatype.length [ InitialExpression = "0" ];

/// Specifies the amount of room available for the contents of the &lt;endsidebar&gt; tag.
Property endSidebarLength As %ZEN.Datatype.length [ InitialExpression = "0" ];

/// value of reference-orientation in XSL-FO region-body
Property referenceOrientation As %ZEN.Datatype.integer;

/// size attribute on fo:simple-page-master
Property size As %ZEN.Datatype.string;

/// margin attribute on fo:simple-page-master
Property margin As %ZEN.Datatype.string;

Property ifxpath As %ZEN.Datatype.string(XMLPROJECTION = "NONE");

Property ifexpression As %ZEN.Datatype.string(XMLPROJECTION = "NONE");

/// Properties of fo:region-before
Property regionBefore As %ZEN.Datatype.string;

/// Properties of fo:region-after
Property regionAfter As %ZEN.Datatype.string;

/// Properties of fo:region-start
Property regionStart As %ZEN.Datatype.string;

/// Properties of fo:region-end
Property regionEnd As %ZEN.Datatype.string;

/// extent property
Property regionBeforeExtent As %ZEN.Datatype.string;

/// extent property
Property regionAfterExtent As %ZEN.Datatype.string;

/// extent property
Property regionStartExtent As %ZEN.Datatype.string;

/// extent property
Property regionEndExtent As %ZEN.Datatype.string;

/// orientation property
Property regionStartOrientation As %ZEN.Datatype.integer [ InitialExpression = 0 ];

/// orientation property
Property regionEndOrientation As %ZEN.Datatype.integer [ InitialExpression = 0 ];

/// orientation property
Property regionBeforeOrientation As %ZEN.Datatype.integer [ InitialExpression = 0 ];

/// orientation property
Property regionAfterOrientation As %ZEN.Datatype.integer [ InitialExpression = 0 ];

/// display-align property
Property regionBeforeDisplayAlign As %ZEN.Datatype.string [ InitialExpression = "inherit" ];

/// display-align property
Property regionAfterDisplayAlign As %ZEN.Datatype.string [ InitialExpression = "after" ];

Property regionAfterColor As %ZEN.Datatype.string;

Property regionBeforeColor As %ZEN.Datatype.string;

/// extent property
Property orientation As %ZEN.Datatype.string(VALUELIST = ",portrait,landscape,none") [ InitialExpression = "portrait" ];

Property regionAfterName As %ZEN.Datatype.string;

Property regionBeforeName As %ZEN.Datatype.string;

/// display-align property
Property regionStartDisplayAlign As %ZEN.Datatype.string [ InitialExpression = "inherit" ];

/// display-align property
Property regionEndDisplayAlign As %ZEN.Datatype.string [ InitialExpression = "after" ];

Property regionEndColor As %ZEN.Datatype.string;

Property regionStartColor As %ZEN.Datatype.string;

/// extent property
Property regionStartName As %ZEN.Datatype.string;

Property regionEndName As %ZEN.Datatype.string;

/// This is a list of attributes in XSL format: 'a1=v1 a2=v2, etc., with a terminating single quote or a double double quote
Property endGeneralRegionAttributes As %ZEN.Datatype.string;

/// This is a list of attributes in XSL format: 'a1=v1 a2=v2, etc., with a terminating single quote or a double double quote
Property startGeneralRegionAttributes As %ZEN.Datatype.string;

/// This is a list of attributes in XSL format: 'a1=v1 a2=v2, etc., with a terminating single quote or a double double quote
Property beforeGeneralRegionAttributes As %ZEN.Datatype.string;

/// This is a list of attributes in XSL format: 'a1=v1 a2=v2, etc., with a terminating single quote or a double double quote
Property afterGeneralRegionAttributes As %ZEN.Datatype.string;

/// writing-mode XML attribute.  It has the following possible values.  Note that not all XSL-FO renderers will support all possible values. <br>
/// lr-tb Text are written left-to-right and top-to-bottom (normal "alphabetic" text) <br>
/// rl-tb Text are written right-to-left and top-to-bottom (Arabic and Hebrew text) <br>
/// tb-rl Text are written top-to-bottom and right-to-left (Chinese and Japanese text) <br>
/// lr Same as lr-tb <br>
/// rl Same as rl-tb <br>
/// tb Same as tb-rl <br>
/// inherit <br>
/// Note this places a writing-mode on fo:simple-page-master.<br>
/// The semantics of writing-mode on simple-page-master differs from page-sequence. Specifically, on simple-page-master, it is used to interpret the meaning of before, after, start, end with respect to resolving the placement of page regions. However, it does not affect the writing-mode trait of reference areas generated by page-sequence. In the latter case, it is the writing-mode on page-sequence that counts.<br>
/// To place a writing-mode on page-sequence use the writing-mode in the report or section element<br>
Property writingMode As %ZEN.Datatype.string(VALUELIST = ",lr-tb,rl-tb,tb-rl,lr,rl,tb,inherit", XMLNAME = "writing-mode");

/// writing-mode XML attribute on the region-body.  It has the following possible values.  Note that not all XSL-FO renderers will support all possible values. <br>
/// lr-tb Text are written left-to-right and top-to-bottom (normal "alphabetic" text) <br>
/// rl-tb Text are written right-to-left and top-to-bottom (Arabic and Hebrew text) <br>
/// tb-rl Text are written top-to-bottom and right-to-left (Chinese and Japanese text) <br>
/// lr Same as lr-tb <br>
/// rl Same as rl-tb <br>
/// tb Same as tb-rl <br>
/// inherit <br>
Property writingModeRegionBody As %ZEN.Datatype.string(VALUELIST = ",lr-tb,rl-tb,tb-rl,lr,rl,tb,inherit", XMLNAME = "writing-mode-region-body");

/// writing-mode XML attribute on the region-after.  It has the following possible values.  Note that not all XSL-FO renderers will support all possible values. <br>
/// lr-tb Text are written left-to-right and top-to-bottom (normal "alphabetic" text) <br>
/// rl-tb Text are written right-to-left and top-to-bottom (Arabic and Hebrew text) <br>
/// tb-rl Text are written top-to-bottom and right-to-left (Chinese and Japanese text) <br>
/// lr Same as lr-tb <br>
/// rl Same as rl-tb <br>
/// tb Same as tb-rl <br>
/// inherit <br>
Property writingModeRegionAfter As %ZEN.Datatype.string(VALUELIST = ",lr-tb,rl-tb,tb-rl,lr,rl,tb,inherit", XMLNAME = "writing-mode-region-after");

/// writing-mode XML attribute on the region-before.  It has the following possible values.  Note that not all XSL-FO renderers will support all possible values. <br>
/// lr-tb Text are written left-to-right and top-to-bottom (normal "alphabetic" text) <br>
/// rl-tb Text are written right-to-left and top-to-bottom (Arabic and Hebrew text) <br>
/// tb-rl Text are written top-to-bottom and right-to-left (Chinese and Japanese text) <br>
/// lr Same as lr-tb <br>
/// rl Same as rl-tb <br>
/// tb Same as tb-rl <br>
/// inherit <br>
Property writingModeRegionBefore As %ZEN.Datatype.string(VALUELIST = ",lr-tb,rl-tb,tb-rl,lr,rl,tb,inherit", XMLNAME = "writing-mode-region-before");

/// writing-mode XML attribute on the region-start.  It has the following possible values.  Note that not all XSL-FO renderers will support all possible values. <br>
/// lr-tb Text are written left-to-right and top-to-bottom (normal "alphabetic" text) <br>
/// rl-tb Text are written right-to-left and top-to-bottom (Arabic and Hebrew text) <br>
/// tb-rl Text are written top-to-bottom and right-to-left (Chinese and Japanese text) <br>
/// lr Same as lr-tb <br>
/// rl Same as rl-tb <br>
/// tb Same as tb-rl <br>
/// inherit <br>
Property writingModeRegionStart As %ZEN.Datatype.string(VALUELIST = ",lr-tb,rl-tb,tb-rl,lr,rl,tb,inherit", XMLNAME = "writing-mode-region-start");

/// writing-mode XML attribute on the region-end.  It has the following possible values.  Note that not all XSL-FO renderers will support all possible values. <br>
/// lr-tb Text are written left-to-right and top-to-bottom (normal "alphabetic" text) <br>
/// rl-tb Text are written right-to-left and top-to-bottom (Arabic and Hebrew text) <br>
/// tb-rl Text are written top-to-bottom and right-to-left (Chinese and Japanese text) <br>
/// lr Same as lr-tb <br>
/// rl Same as rl-tb <br>
/// tb Same as tb-rl <br>
/// inherit <br>
Property writingModeRegionEnd As %ZEN.Datatype.string(VALUELIST = ",lr-tb,rl-tb,tb-rl,lr,rl,tb,inherit", XMLNAME = "writing-mode-region-end");

/// specifies that the fo:region-body is multicolumn.  The column-count property indicates the number of columns on every page instance formatted using the simple-page-master
/// to which this region-body belongs.
Property columnCount As %ZEN.Datatype.integer(XMLNAME = "column-count");

/// If column-count is greater than 1, a value may be specified for the column-gap property.  The value is either an explicit length or a percentage
/// of the inline-progression-dimension of the content rectangle of the region-body.
Property columnGap As %ZEN.Datatype.length(XMLNAME = "column-gap");

/// Renders the dimensions of the page for a PDF report.Proposed change - add "masterName" parameter with default value "main"
Method %DrawPageToXSLFO(ByRef context As %String, ByRef XSL As %GlobalCharacterStream, delay As %GlobalCharacterStream, masterName As %String = "main") As %Status
{
}

/// Outputs the style information contained in its &lt;class&gt; children
/// for a PDF report.
Method %DrawStyleToXSLFO(ByRef context As %String, ByRef XSL As %GlobalCharacterStream, delay As %GlobalCharacterStream, SectionName As %String = "") As %Status
{
}

/// Outputs the style information contained in its &lt;class&gt; children
/// for an HTML report.
Method %DrawStyleToHTML(ByRef context As %String, ByRef XSL As %GlobalCharacterStream, delay As %GlobalCharacterStream) As %Status
{
}

ClassMethod toMilimeters(length As %String) As %String
{
}

}
