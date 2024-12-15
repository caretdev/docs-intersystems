/// Renders the XSLT stylesheet that displays a ZEN report.
Class %ZEN.Report.Display.report Extends childrenNode [ Deprecated, System = 4 ]
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

/// writing-mode XML attribute.  It has the following possible values.  Note that not all XSL-FO renderers will support all possible values. <br>
/// lr-tb Text are written left-to-right and top-to-bottom (normal "alphabetic" text) <br>
/// rl-tb Text are written right-to-left and top-to-bottom (Arabic and Hebrew text) <br>
/// tb-rl Text are written top-to-bottom and right-to-left (Chinese and Japanese text) <br>
/// lr Same as lr-tb <br>
/// rl Same as rl-tb <br>
/// tb Same as tb-rl <br>
/// inherit <br>
Property writingMode As %ZEN.Datatype.string(VALUELIST = ",lr-tb,rl-tb,tb-rl,lr,rl,tb,inherit", XMLNAME = "writing-mode");

/// Report title
Property title As %ZEN.Datatype.caption;

/// Terminate if empty
Property terminateIfEmpty As %ZEN.Datatype.boolean;

/// font-family for fo:root, default value is "'Arial'"
/// <br>font-family-name is optional and does not have to be specified, in which case its value will be "'Arial'"
/// <br>Example: &lt;report name="MyReport" sql="SELECT WH,PNO FROM PARTS" font-family-name="Calibri">
/// <br>if font-family-name is "", i.e., null, no font-family attribute will be generated
Property fontFamilyName As %ZEN.Datatype.string(XMLNAME = "font-family-name") [ InitialExpression = "Arial" ];

Property StripSpace;

Property PreserveSpace;

Property Indent;

Property Encoding;

Property parentClass As %String;

Method %DrawToXSLFO(ByRef context As %String, ByRef XSL As %GlobalCharacterStream, ByRef delay As %GlobalCharacterStream, ByRef incell As %Boolean, SubReport As %String, MainReport As %String, pUseInstalledFOP) As %Status
{
}

Method %DrawToHTML(ByRef context As %String, ByRef XSL As %GlobalCharacterStream, delay As %GlobalCharacterStream, ByRef incell As %Boolean, embedXSL As %Boolean = 0, UseInternalXSLT As %Boolean = 0, SubReport As %String, MainReport As %String, pXSLTMode) As %Status
{
}

/// Outputs the standard stylesheet for HTML reports
Method %stdStyleSheetCSS(ByRef XSL As %GlobalCharacterStream) As %Status
{
}

/// Outputs the standard stylesheet for PDF reports
Method %stdStyleSheetFO(ByRef context As %String, ByRef XSL As %GlobalCharacterStream) As %Status
{
}

ClassMethod processContext(ByRef context As %String, ByRef XSL As %GlobalCharacterStream, children As %ZEN.Report.Display.childrenNode)
{
}

ClassMethod GetDocForXSLFO(this, ByRef context As %String, ByRef XSL As %GlobalCharacterStream, children As %ZEN.Report.Display.childrenNode, xpath As %String) As document
{
}

ClassMethod DoDocForHTML(this, ByRef context As %String, ByRef XSL As %GlobalCharacterStream, children As %ZEN.Report.Display.childrenNode, xpath As %String)
{
}

ClassMethod %CopyXsltXdata(ByRef XSL As %GlobalCharacterStream, AllTag As %String, XdataName As %String) [ Internal ]
{
}

ClassMethod %CopyReportPageXdata(ByRef XSL As %GlobalCharacterStream, XdataName As %String)
{
}

ClassMethod %CopyXdataFromClass(ByRef XSL As %GlobalCharacterStream, XdataName As %String, Classname As %String)
{
}

Method GenerateInit(ByRef context As %String, ByRef XSL As %GlobalCharacterStream, ByRef delay As %GlobalCharacterStream, isFO As %Boolean) As %Status
{
}

Method GenerateBookmarkTree(ByRef context As %String, ByRef XSL As %GlobalCharacterStream, ByRef delay As %GlobalCharacterStream) As %Status
{
}

Method %DrawToAnnotatedXML(ByRef context As %String, ByRef XSL As %GlobalCharacterStream, ByRef delay As %GlobalCharacterStream) As %Status
{
}

ClassMethod GetPageMaster(this, ByRef context As %String, ByRef XSL As %GlobalCharacterStream, children As %ZEN.Report.Display.childrenNode, xpath As %String) As pagemaster
{
}

ClassMethod GetFirstSection(this, ByRef context As %String, ByRef XSL As %GlobalCharacterStream, children As %ZEN.Report.Display.childrenNode, xpath As %String) As pagemaster
{
}

ClassMethod IsIE()
{
}

}
