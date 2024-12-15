/// Renders the XSLT stylesheet that displays a ZEN report.
Class %ZEN.Report.Display.section Extends childrenNode [ Deprecated, System = 4 ]
{

/// This property must match the name of the outermost tag of the report data.
/// In the case of ZEN generated data, this attribute must match the name
/// attribute of the &lt;report&lt; tag in the ReportDefinition XData block.
Property name As %ZEN.Datatype.name;

/// Primary outer sort group name that XSL:for-each statement will work with
Property primaryGroup As %ZEN.Datatype.string;

/// Primary outer sort group name ifxpath condition to determine if a group iteration should be
/// included and a page sequnce generated
Property primaryGroupifxpath As %ZEN.Datatype.string;

/// Allow setting page number format:
/// use i or I for roman
/// use a or A for alphabetic
/// use 1 for numeric
Property pageNumberFormat As %ZEN.Datatype.string;

/// Report title
Property title As %ZEN.Datatype.caption;

/// Terminate if empty
Property terminateIfEmpty As %ZEN.Datatype.boolean;

Property StripSpace;

Property PreserveSpace;

Property Indent;

Property Encoding;

Property parentClass As %String;

Property sectionName As %ZEN.Datatype.string [ Required ];

/// writing-mode XML attribute.  It has the following possible values.  Note that not all XSL-FO renderers will support all possible values. <br>
/// lr-tb Text are written left-to-right and top-to-bottom (normal "alphabetic" text) <br>
/// rl-tb Text are written right-to-left and top-to-bottom (Arabic and Hebrew text) <br>
/// tb-rl Text are written top-to-bottom and right-to-left (Chinese and Japanese text) <br>
/// lr Same as lr-tb <br>
/// rl Same as rl-tb <br>
/// tb Same as tb-rl <br>
/// inherit <br>
Property writingMode As %ZEN.Datatype.string(VALUELIST = ",lr-tb,rl-tb,tb-rl,lr,rl,tb,inherit", XMLNAME = "writing-mode");

Method %DrawToXSLFOStyle(ByRef context As %String, ByRef XSL As %GlobalCharacterStream, ByRef delay As %GlobalCharacterStream, ByRef documentArray As %ArrayOfDataTypes, ByRef masterArray As %ArrayOfDataTypes) As %Status
{
}

Method %DrawToXSLFO(ByRef context As %String, ByRef XSL As %GlobalCharacterStream, ByRef delay As %GlobalCharacterStream, ByRef incell As %Boolean, SubReport As %String) As %Status
{
}

Method %DrawToHTML(ByRef context As %String, ByRef XSL As %GlobalCharacterStream, delay As %GlobalCharacterStream, ByRef incell As %Boolean, embedXSL As %Boolean = 0, UseInternalXSLT As %Boolean = 0, SubReport As %String, MainReport As %String) As %Status
{
}

ClassMethod processContext(ByRef context As %String, ByRef XSL As %GlobalCharacterStream, children As %ZEN.Report.Display.childrenNode)
{
}

ClassMethod GetDocForXSLFO(this, ByRef context As %String, ByRef XSL As %GlobalCharacterStream, children As %ZEN.Report.Display.childrenNode, xpath As %String) As document
{
}

ClassMethod GetPageMasterForXSLFO(this, ByRef context As %String, ByRef XSL As %GlobalCharacterStream, children As %ZEN.Report.Display.childrenNode, xpath As %String) As pagemaster
{
}

Method GenerateInit(ByRef context As %String, ByRef XSL As %GlobalCharacterStream, ByRef delay As %GlobalCharacterStream, isFO As %Boolean) As %Status
{
}

ClassMethod DoDocForHTML(this, ByRef context As %String, ByRef XSL As %GlobalCharacterStream, children As %ZEN.Report.Display.childrenNode, xpath As %String)
{
}

}
