/// Represents a Report within a ZEN application.
/// This is the base class used for all user reports.<br>
/// Note that a report is <em>not</em> a ZEN page; all logic
/// for a report is executed on the server. The client is sent
/// the final output for viewing and printing.
Class %ZEN.Report.reportPage Extends (%RegisteredObject, %CSP.Page, %ZEN.DataModel.Adaptor) [ Abstract, DependsOn = %ZEN.Report.Display.report, Deprecated, Inheritance = right, PropertyClass = %ZEN.Report.reportParameters, System = 4 ]
{

/// This is the class name of this application this report belongs to.<br>
/// If not defined, this report does not belong to an application.<br>
/// The application can be the source of ZEN Report parameters.<br>
/// If APPLICATION is not defined or if parameter is null in APPLICATION class <class>%ZEN.Report.defaultApplication</class> is the source of ZEN Report parameters.<br>
Parameter APPLICATION As CLASSNAME;

/// This is the logical name of this report.
/// If not provided, class name is used.
Parameter REPORTNAME As STRING;

Parameter DOMAIN As STRING;

Property ReportDir As %String;

/// -1 for RenderConnectTimeOut means never timeout.<br>
/// The units are seconds.<br>
/// The Zen Report makes a connection using open to connect to the Render Server.  This is the timeout on the open (the connect timeout)
Property ConnectTimeOut As %ZEN.Datatype.integer(ZENURL = "$CONNECTTIMEOUT");

/// -1 for RenderTimeOut means never timeout.<br>
/// The units are seconds.<br>
Property RenderTimeOut As %ZEN.Datatype.integer(ZENURL = "$RENDERTIMEOUT");

/// if we do not render directly to Render Server in RENDERTIMEOUT, Zen Reports renders directly, spawing new JVM
Property RenderDirectlyOnTimeout As %ZEN.Datatype.boolean(ZENURL = "$RENDERDIRECTLYONTIMEOUT");

/// specifies PrintServer port of PrintServer which prints PDFs<br>
/// Can be overriden by $PRINTSERVER on URL
Property PrintServer As %ZEN.Datatype.string(ZENURL = "$PRINTSERVER");

/// -1 for PrintTimeOut means never timeout.<br>
/// The units are seconds.<br>
Property PrintTimeOut As %ZEN.Datatype.integer(ZENURL = "$PRINTTIMEOUT");

/// specifies ExcelServer port of ExcelServer which renders Excel spreadsheets<br>
/// Can be overriden by $EXCELSERVER on URL
Property ExcelServer As %ZEN.Datatype.string(ZENURL = "$EXCELSERVER");

/// -1 for ExcelServerTimeOut means never timeout.<br>
/// The units are seconds.<br>
Property ExcelServerTimeOut As %ZEN.Datatype.integer(ZENURL = "$EXCELSERVERTIMEOUT");

/// Postscript Printer or Printer used by pdfprint/PrintServer
Property PS As %ZEN.Datatype.string(ZENURL = "$PS");

Property TimeOut As %ZEN.Datatype.integer;

/// backpointer to display object that belongs to this report
Property %display As %ZEN.Report.Display.report;

/// See the DATASOURCE parameter for details.
Property Datasource As %String(ZENHIDDEN = 1);

Property StripPI As %String;

/// This property is used on toxslfo and tohtml to indicate they are being fetched as sub-reports
Property SubReport As %String;

Property MainReport As %String;

Property TooLongText As %ZEN.Datatype.string;

Property SuppressExcelHeaders As %ZEN.Datatype.boolean(ZENHIDDEN = 1);

Property XsltVersion As %ZEN.Datatype.string(ZENHIDDEN = 1);

Property ReportXMLNameSpace As %ZEN.Datatype.string(ZENHIDDEN = 1);

Property ReportXMLNameSpacePrefix As %ZEN.Datatype.string(ZENHIDDEN = 1);

/// If provided, this is a string of XML namespace declarations.
/// <br>For example, "xmlns='http://mydefault' xmlns:ns1='http://namespace1'".
/// <br>The namespace declarations will go on the root element of the generated XML and also on the stylesheet element of the generated XSL.
Property NamespaceDeclarations As %ZEN.Datatype.string(ZENURL = "$NAMESPACEDECLARATIONS");

Property %disableBreak As %ZEN.Datatype.integer(XMLPROJECTION = "none", ZENHIDDEN = 1) [ Internal ];

Property xmlstream As %Library.RegisteredObject(ZENHIDDEN = 1);

Property tohtmlstream As %Library.RegisteredObject(ZENHIDDEN = 1);

Property toxslfostream As %Library.RegisteredObject(ZENHIDDEN = 1);

Property toexcelstream As %Library.RegisteredObject;

Property xmlstylesheet As %Library.RegisteredObject;

Property getxmlstylesheet As %String;

Property xmlstylesheetarg As %ZEN.Datatype.string(ZENURL = "$XMLSTYLESHEETARG");

Property TableAltColor As %ZEN.Datatype.string;

Property SplitAndMerge As %ZEN.Datatype.boolean;

Property RepeatingElement As %ZEN.Datatype.string;

Property CountRepeatingElement As %ZEN.Datatype.integer;

Property CheckPDFNotZeroLength As %ZEN.Datatype.boolean;

/// If SPLITANDMERGE set, split only, don't merge at end
Property SplitOnly As %ZEN.Datatype.boolean [ InitialExpression = 0 ];

/// This is directory where PDF files produced by split will go
Property SplitDir As %ZEN.Datatype.string;

/// Instead of generating temporary names for split PDF files, use this as a root name, and add an integer suffix to file
Property SplitRootName As %ZEN.Datatype.string;

/// This property hold returned PDFs
Property %SplitReturnedPDFs As %ZEN.Datatype.string [ MultiDimensional ];

/// This is an internal property used to hold the outputfilename
Property OutputFileName [ Internal ];

/// UseRawIOForXML - set to 1 to use RawIO in XML output, otherwise use translation tables
Property UseRawIOForXML As %Boolean [ InitialExpression = 0 ];

/// Used on item when copyhtml="true" to specify a default font face
Property DefaultFontFaceCopyHTML As %ZEN.Datatype.string(ZENURL = "$DEFAULTFONTFACECOPYHTML");

/// Used on item when copyhtml="true" to specify a default font size
Property DefaultFontSizeCopyHTML As %ZEN.Datatype.string(ZENURL = "$DEFAULTFONTSIZECOPYHTML");

/// Process wide runtime mode
/// Set on a sql statement from the runtime mode passed into the ZEN Report if this is 1
Property SetProcessWideRunTimeMode As %ZEN.Datatype.boolean(ZENURL = "$SETPROCESSWIDERUNTIMEMODE");

/// Place to hold temporary logfiles
Property %ArrayLogFiles [ MultiDimensional ];

Property isServer As %Boolean [ InitialExpression = 0 ];

Property isHTML5 As %Boolean [ InitialExpression = 0 ];

/// xmlfile generated by ZEN Report
Property xmlfile As %String;

/// For Fop only, the language to use for user information with value in OptionLang<br>
/// Here is FOP option<br>
///  -l lang           the language to use for user information <br>
/// Does not work with HotJVM RenderServer
Property OptionLang As %ZEN.Datatype.string(ZENURL = "$OptionLang");

/// For Fop only, disable complex script features when true or 1<br>
/// Here is FOP option<br>
///  -nocs             disable complex script features
Property OptionNoComplexScript As %ZEN.Datatype.boolean(ZENURL = "$OptionNoComplexScript");

/// For Fop only, relaxed/less strict validation (where available) when true or 1<br>
/// Here is FOP option<br>
///  -r                relaxed/less strict validation (where available)<br>
/// Does not work with HotJVM RenderServer
Property OptionRelaxed As %ZEN.Datatype.boolean(ZENURL = "$OptionRelaxed");

/// For Fop only, target resolution in dots per inch (dpi) where xxx is a number with value in OptionDPI<br>
/// Here is FOP option<br>
///  -dpi xxx          target resolution in dots per inch (dpi) where xxx is a number
Property OptionDPI As %ZEN.Datatype.string(ZENURL = "$OptionDPI");

/// For Fop only, PDF file will be encrypted with value in OptionOwnerPassword<br>
/// Here is FOP option<br>
/// -o [password]     PDF file will be encrypted with option owner password
Property OptionOwnerPassword As %ZEN.Datatype.string(ZENURL = "$OptionOwnerPassword");

/// For Fop only, PDF file will be encrypted with value in OptionUserPassword<br>
/// Here is FOP option<br>
/// -u [password]     PDF file will be encrypted with option user password
Property OptionUserPassword As %ZEN.Datatype.string(ZENURL = "$OptionUserPassword");

/// For Fop only, PDF file will be encrypted without printing permission when true or 1<br>
/// Here is FOP option<br>
/// -noprint          PDF file will be encrypted without printing permission
Property OptionNoPrint As %ZEN.Datatype.boolean(ZENURL = "$OptionNoPrint");

/// For Fop only, PDF file will be encrypted without copy content permission when true or 1<br>
/// Here is FOP option<br>
/// -nocopy           PDF file will be encrypted without copy content permission
Property OptionNoCopy As %ZEN.Datatype.boolean(ZENURL = "$OptionNoCopy");

/// For Fop only, PDF file will be encrypted without edit content permission when true or 1<br>
/// Here is FOP option<br>
/// -noedit           PDF file will be encrypted without edit content permission
Property OptionNoEdit As %ZEN.Datatype.boolean(ZENURL = "$OptionNoEdit");

/// For Fop only, PDF file will be encrypted without edit annotation permission when true or 1<br>
/// Here is FOP option<br>
/// -noannotations    PDF file will be encrypted without edit annotation permission
Property OptionNoAnnotations As %ZEN.Datatype.boolean(ZENURL = "$OptionNoAnnotations");

/// For Fop only, PDF file will be encrypted without fill in interactive form fields when true or 1<br>
/// Here is FOP option<br>
/// -nofillinforms    PDF file will be encrypted without fill in interactive form fields permission
Property OptionNoFillInForms As %ZEN.Datatype.boolean(ZENURL = "$OptionNoFillInForms");

/// For Fop only, PDF file will be encrypted without extract text and graphics permission when true or 1<br>
/// Here is FOP option<br>
/// -noaccesscontent  PDF file will be encrypted without extract text and graphics permission
Property OptionNoAccessContent As %ZEN.Datatype.boolean(ZENURL = "$OptionNoAccessContent");

/// For Fop only, PDF file will be encrypted without assemble the document permission when true or 1<br>
/// Here is FOP option<br>
/// -noassembledoc    PDF file will be encrypted without assemble the document permission
Property OptionNoAssembleDoc As %ZEN.Datatype.boolean(ZENURL = "$OptionNoAssembleDoc");

/// For Fop only, PDF file will be encrypted without print high quality permission when true or 1<br>
/// Here is FOP option<br>
/// -noprinthq        PDF file will be encrypted without print high quality permission
Property OptionNoPrintHq As %ZEN.Datatype.boolean(ZENURL = "$OptionNoPrintHq");

/// For Fop only, enables accessibility features (Tagged PDF etc., default off) when true or 1<br>
/// Here is FOP option<br>
/// -a                enables accessibility features (Tagged PDF etc., default off)
Property OptionEnableAccessibility As %ZEN.Datatype.boolean(ZENURL = "$OptionEnableAccessibility");

/// For Fop only, PDF file will be generated with the specified profile with value in OptionPDFProfile<br>
/// Here is FOP option<br>
/// -pdfprofile prof  PDF file will be generated with the specified profile<br>
///                    (Examples for prof: PDF/A-1b or PDF/X-3:2003)<br>
/// Does not work with HotJVM RenderServer
Property OptionPDFProfile As %ZEN.Datatype.string(ZENURL = "$OptionPDFProfile");

/// For Fop only, enable memory-conservation policy (trades memory-consumption for disk I/O) when true or 1<br>
/// Here is FOP option<br>
/// -conserve         enable memory-conservation policy (trades memory-consumption for disk I/O)<br>
///                      (Note: currently only influences whether the area tree is serialized.)
Property OptionConserve As %ZEN.Datatype.boolean(ZENURL = "$OptionConserve");

/// For Fop only, specifies a file/directory path location for the font cache file with value in OptionCachePath<br>
/// Here is FOP option<br>
/// -cache path       specifies a file/directory path location for the font cache file<br>
/// Does not work with HotJVM RenderServer
Property OptionCachePath As %ZEN.Datatype.string(ZENURL = "$OptionCachePath");

/// For Fop only, flushes the current font cache file when true or 1<br>
/// Here is FOP option<br>
/// -flush            flushes the current font cache file<br>
/// Does not work with HotJVM RenderServer
Property OptionFlush As %ZEN.Datatype.boolean(ZENURL = "$OptionFlush");

/// Set to true in order to generate HTML5 regardless of browser support
/// Set to false in order to *not* generate HTML5 regardless of browser support
Property UseHTML5 As %ZEN.Datatype.boolean(ZENURL = "$USEHTML5");

/// Set to true to cause ZEN Report to control going to RenderServer with Semaphore
Property UseSemaphore As %ZEN.Datatype.boolean(ZENURL = "$USESEMAPHORE") [ InitialExpression = 0 ];

/// Aggregates Ignore NLS if this is true
Property AggregatesIgnoreNLS As %ZEN.Datatype.boolean(ZENURL = "$AGGREGATESIGNORENLS");

/// Specify amount of memory used by SAXON processing (especially used when XSLTVERSION=2.0), defaults to 512m
Property SaxMemSize As %ZEN.Datatype.string(ZENURL = "$SAXMEMSIZE");

/// Specify amount of memory used by SAXON processing (especially used when XSLTVERSION=2.0), defaults to 512m
Property PDFMergeMemSize As %ZEN.Datatype.string(ZENURL = "$PDFMERGEMEMSIZE");

/// Specify report mode
Property Mode As %ZEN.Datatype.string(ZENURL = "$MODE");

/// Specify file life time, when life time exceeded, purge task will delete it
Property FileLifeTime As %ZEN.Datatype.integer(ZENURL = "$FILELIFETIME");

/// Old behavior of linefeedOnBreak, where for PDF we issue <fo:block/> not a line feed
Property OldBehaviorLineFeedOnBreak As %ZEN.Datatype.boolean(ZENURL = "$OLDBEHAVIORLINEFEED");

/// XML that defines the contents of this report.
XData ReportDefinition
{
}

/// XML that defines how the report generates its
/// XSLT stylesheets for the HTML and PDF reports.
XData ReportDisplay
{
}

/// Placeholders for XSLT
XData HtmlXslt
{
}

XData XslFoXslt
{
}

XData AllXslt
{
}

XData CommonXslFo
{
}

XData CommonHtml
{
}

XData SmallMultipleCommonXSL
{
}

XData SmallMultipleHTMLXSL
{
}

XData SmallMultipleFOXSL
{
}

XData SVGStyle
{
}

Method %InitProperties() As %Status [ CodeMode = objectgenerator, Final, Internal ]
{
}

Method %InitProperties1()
{
}

/// Copy URL parameters supplied to this page into the
/// appropriate properties of this reportPage object.
Method %ApplyURLParms() As %Status [ CodeMode = objectgenerator, Final, Internal ]
{
}

/// PreHTTP handler.
/// Sets content-type and content-dispositon depending
/// on $MODE and $LOG
ClassMethod OnPreHTTP() As %Boolean [ ServerOnly = 1 ]
{
}

ClassMethod %OnPreHTTP() As %Boolean [ ServerOnly = 1 ]
{
}

/// Render the contents of this ZEN report.
ClassMethod OnPage() As %Status
{
}

/// Generate the report and save it to <var>outputfile</var>.<br>
/// Choices for <var>mode</var> are:<br>
/// <ul><li>0 = XML</li><li>1 = HTML</li><li>2 = PDF</li><li>3 = ToHTML Stylesheet</li><li>4 = ToXSLFO Stylesheet</li><li>5 = XSD Schema</li><li>6 = PrintPS</li><li>7 = Excel</li><li>8 = XSLFO</li><li>9 = ToEXCEL</li><li>10=xlsx</li><li>11=TIFF</li><li>12=pdfprint</li><li>13=displayxlsx</li><li>14=fo2pdf</li><li>15=foandpdf</li></ul><br>
/// If <var>log</var> is true, the log file is returned instead of the report
/// This is a class method wrapper for the <method>GenerateReport</method> method
/// provided for convenience.
ClassMethod GenerateToFile(outputfile As %String, mode As %Integer = 0, log As %Boolean = 0) As %Status
{
}

/// Generate the report and save it to <var>outputfile</var>.<br>
/// Choices for <var>mode</var> are:<br>
/// <ul><li>0 = XML</li><li>1 = HTML</li><li>2 = PDF</li><li>3 = ToHTML Stylesheet</li><li>4 = ToXSLFO Stylesheet</li><li>5 = XSD Schema</li><li>6 = PrintPS</li><li>7 = Excel</li><li>8 = XSLFO</li><li>9 = ToEXCEL</li><li>10=xlsx</li><li>11=TIFF</li><li>12=pdfprint</li><li>13=displayxlsx</li><li>14=fo2pdf</li><li>15=foandpdf</li></ul><br>
/// If <var>log</var> is true, the log file is returned instead of the report
Method GenerateReport(outputfile As %String, mode As %Integer = 0, log As %Boolean = 0, renderServer As %String = "", ExcelMode As %String = "", pStr As %String, Output RenderDirect As %Integer = 1) As %Status
{
}

Method CallReport(ByRef XSL As %GlobalCharacterStream, ByRef delay As %GlobalCharacterStream, outputfile As %String, mode As %Integer = 0, log As %Boolean = 0, renderServer As %String = "", ExcelMode As %String = "", Output RenderDirect As %Integer = 1) [ Internal ]
{
}

/// Queue the report for rendering to the Queuing Hot JVM server
/// input is the port on which the Queuing Hot JVM Server is listening
/// returns by reference xmlfile, xsltfile, pdffile, and lockfile which are names of files either queued or created by queuer
/// Arguments:
/// renderServer
/// <ul>
/// <li>xmlfile - returned by reference</li>
/// <li>xsltfile - returned by reference</li>
/// <li>pdffile - returned by reference</li>
/// <li>lockfile - returned by reference</li>
/// </ul>
/// when the lockfile exists theQueuing Hot JVM Server has created the pdf file
Method AsynchGenerateReport(renderServer As %String = "", ByRef xmlfile As %String, ByRef xsltfile As %String, ByRef pdffile As %String, ByRef lockfile As %String) As %Status
{
}

/// Generate the report and save it to <var>stream</var>.<br>
/// Choices for <var>mode</var> are:<br>
/// <ul><li>0 = XML</li><li>1 = HTML</li><li>2 = PDF</li><li>3 = ToHTML Stylesheet</li><li>4 = ToXSLFO Stylesheet</li><li>5 = XSD Schema</li><li>6 = PrintPS</li><li>7 = Excel</li><li>8 = XSLFO</li><li>9 = ToEXCEL</li><li>10 = xlsx</li><li>11=TIFF</li><li>12=pdfprint</li></ul><br>
/// If <var>log</var> is true, the log file is returned instead of the report
Method GenerateReportToStream(ByRef stream As %Stream.Object, mode As %Integer = 0, log As %Boolean = 0) As %Status
{
}

/// <br>Note: this method is DEPRECATED!  Use GenerateReportToStream instead!!!<br>
/// Generate the report and save it to <var>stream</var>.<br>
/// Choices for <var>mode</var> are:<br>
/// <ul><li>0 = XML</li><li>1 = HTML</li><li>2 = PDF</li><li>3 = ToHTML Stylesheet</li><li>4 = ToXSLFO Stylesheet</li><li>5 = XSD Schema</li><li>6 = PrintPS</li><li>7 = Excel</li><li>8 = XSLFO</li><li>9 = ToEXCEL</li><li>10 = xlsx</li><li>11=TIFF</li><li>12=pdfprint</li></ul><br>
/// If <var>log</var> is true, the log file is returned instead of the report
/// <br>Note: this method is DEPRECATED!  Use GenerateReportToStream instead!!!
Method GenerateStream(ByRef stream As %Stream.Object, mode As %Integer = 0, log As %Boolean = 0, pTranslateTable = "UTF8") As %Status [ Internal ]
{
}

/// Run the report defined in this class and output the data as XML.
/// This method is automatically generated using the report definition
/// in the XData block "ReportDefinition".
Method %RunReport(embedXSL As %Boolean = 0, setProcessWideRunTimeMode As %Boolean = 0, pMode As %String = "") As %Status [ CodeMode = objectgenerator, Final, Internal, ProcedureBlock = 0 ]
{
}

/// This method creates a binary stream that contains source data
/// when the source is a file or URL.
/// %zenStream is the stream containing the data.
/// If %zenStream="", then %zenStreamError is the error message for missing stream.
/// %response.CharSet is set according to the ?xml directive in the stream.
ClassMethod CreateOutputStream(source As %String, norecurse As %Boolean = 0) As %Status [ Internal ]
{
}

/// From xmlstylesheet property or from getxmlstylesheet callback or from XMLSTYLESHEET parameter get stylesheet as stream
Method GetXMLStyleSheet(ByRef stylesheet, norecurse As %Boolean = 0) As %Status [ Internal ]
{
}

/// This method outputs the XML data indicated by the DATASOURCE parameter,
/// or %RunReport() if no DATASOURCE is provided.
Method %DrawXML(stripinstructions As %Boolean = 0, embedXSL As %Boolean = 0, embedType As %String, pMode As %String) As %Status [ Internal ]
{
}

Method XSLPreamble(hrefvalue) [ Internal ]
{
}

/// This method parses the report display information contained in the
/// ReportDisplay XData block, and returns the <class>%ZEN.Report.Display.report</class>
/// object corresponding to the top-level report tag.
/// For HTML reports that draw their own XSLT style sheet,
/// this method is called to render the XSLT style sheet.
Method %DrawToHTML(stripinstructions As %Boolean = 0, embedXSL As %Boolean = 0, UseInternalXSLT As %Boolean = 0, SubReport As %String, ByRef XSLT As %GlobalCharacterStream, ByRef delay As %GlobalCharacterStream, pXSLTMode As %String) As %Status [ Internal ]
{
}

/// This method parses the report display information contained in the
/// ReportDisplay XData block, and returns the <class>%ZEN.Report.Display.report</class>
/// object corresponding to the top-level report tag.
/// For HTML reports that draw their own XSLT style sheet,
/// this method is called to render the XSLT style sheet.
Method %DrawToExcel(stripinstructions As %Boolean = 0, embedXSL As %Boolean = 0, UseInternalXSLT As %Boolean = 0, ExcelMode As %String) As %Status [ Internal ]
{
}

/// For PDF reports that draw their own XSLT style sheet,
/// this method is called to render the XSLT style sheet.
Method %DrawToXSLFO(stripinstructions As %Boolean = 0, SubReport As %String, ByRef XSLT As %GlobalCharacterStream, ByRef delay As %GlobalCharacterStream, xmlfile As %String) As %Status [ Internal ]
{
}

/// This method outputs the contents of the HTML report
Method %DisplayHTML(DisplayLog As %Boolean = 0, ApplyTransform As %Boolean = 0, UseInternalXSLT As %Boolean = 0, UseTempFiles As %Boolean = 0, embedXSL As %Boolean = 0, ByRef xslfile As %String = "") As %Status [ Internal ]
{
}

Method %DisplayAnnotatedExcel(DisplayLog As %Boolean = 0, ApplyTransform As %Boolean = 0, UseInternalXSLT As %Boolean = 0, UseTempFiles As %Boolean = 0, embedXSL As %Boolean = 0, ExcelMode As %String)
{
}

/// This method exports the XML for the report as Excel Office 2003 spreadsheet
Method %DisplayExcel(DisplayLog As %Boolean = 0, ApplyTransform As %Boolean = 0, UseInternalXSLT As %Boolean = 0, UseTempFiles As %Boolean = 0, embedXSL As %Boolean = 0, ExcelMode As %String) As %Status [ Internal ]
{
}

/// This method outputs the xml for the report as an Office 2007 or 2010 xlsx spreadsheet file
Method %DisplayXlsx(DisplayLog As %Boolean = 0, ApplyTransform As %Boolean = 0, UseInternalXSLT As %Boolean = 0, UseTempFiles As %Boolean = 0, embedXSL As %Boolean = 0, ExcelMode As %String) As %Status [ Internal ]
{
}

/// This method outputs the xml for the report as an Office 2007 or 2010 xlsx spreadsheet file
Method %DisplayXlsxFromXML(xmlfile As %String, DisplayLog As %Boolean = 0, ApplyTransform As %Boolean = 0, UseInternalXSLT As %Boolean = 0, UseTempFiles As %Boolean = 0, embedXSL As %Boolean = 0, ExcelMode As %String, isExcelMultiSheet As %Boolean) As %Status [ Internal ]
{
}

/// This method outputs the XSL-FO source of the PDF report,
/// before it is transformed to PDF.
Method %DisplayFO(DisplayLog As %Boolean = 0, ApplyTransform As %Boolean = 0, UseInternalXSLT As %Boolean = 0, ByRef fofile, toFile As %Boolean = 0, pMode = "") As %Status [ Internal ]
{
}

/// This method performs the callout to the command line that performs an XSLT
/// or XSL-FO to PDF transformation.
Method %PerformTransform(xmlfile As %String, xslfile As %String, outfile As %String, logfile As %String, convertToPDF As %Boolean, renderServer As %String = "", async As %Boolean = 0, lockfile As %String = "", DisplayLog As %Boolean = 0, Output RenderDirect As %Integer = 1) As %Status [ Internal ]
{
}

/// This method performs the callout to the command line that performs an XSLT
/// or XSL-FO to PDF transformation.
Method %PerformFOTransform(xmlfile As %String, xslfile As %String, outfile As %String, logfile As %String, convertToPDF As %Boolean, renderServer As %String = "", async As %Boolean = 0, lockfile As %String = "", DisplayLog As %Boolean = 0, Output RenderDirect As %Integer = 1) As %Status [ Internal ]
{
}

/// This method performs the callout to the command line that performs an XSLT
/// or XSL-FO to TIFF transformation.
Method %PerformTIFFTransform(xmlfile As %String, xslfile As %String, outfile As %String, logfile As %String, convertToPDF As %Boolean, renderServer As %String = "", async As %Boolean = 0, lockfile As %String = "", DisplayLog As %Boolean = 0, Output RenderDirect As %Integer = 1) As %Status [ Internal ]
{
}

/// This method performs the callout to the command line that performs an XSLT
/// or XSL-FO to PDF transformation.
Method %PerformTransformAndPrint(xmlfile As %String, xslfile As %String, outfile As %String, printer As %String, logfile As %String) As %Status [ Internal ]
{
}

/// This method performs the callout to the command line that performs an XSLT
/// or XSL-FO to PDF transformation.
Method %PerformPSTransform(xmlfile As %String, xslfile As %String, ps As %String, logfile As %String) As %Status [ Internal ]
{
}

/// This method outputs the contents of the PDF report
/// RenderServer is set to the port of the hot JVM server
/// There is also a queuing hot JVM server which queues files for PDF rendering later
/// This is queuing mechanism is never called visually but only by AsynchGenerateReport which always generates PDFs
Method %DisplayPDF(DisplayLog As %Boolean = 0, RenderServer As %String = "", async As %Boolean = 0, ByRef xmlfile As %String, ByRef xslfile As %String, ByRef pdffile As %String, ByRef lockfile As %String, fromGenerateReport As %Boolean, outputfilename As %String, Output RenderDirect As %Integer = 1) As %Status [ Internal ]
{
}

/// This method outputs the contents of the PDF report
Method %DisplayFO2PDF(DisplayLog As %Boolean = 0, RenderServer As %String = "", async As %Boolean = 0, ByRef xmlfile As %String, ByRef xslfile As %String, ByRef pdffile As %String, ByRef lockfile As %String, fromGenerateReport As %Boolean, outputfilename As %String, isFO As %Boolean = 0) As %Status [ Internal ]
{
}

/// This method outputs the contents of the TIFF report
Method %DisplayTIFF(DisplayLog As %Boolean = 0, RenderServer As %String = "", async As %Boolean = 0, ByRef xmlfile As %String, ByRef xslfile As %String, ByRef pdffile As %String, ByRef lockfile As %String, fromGenerateReport As %Boolean, outputfilename As %String, Output RenderDirect As %Integer = 1) As %Status [ Internal ]
{
}

/// This method outputs the contents of the PDF report
/// RenderServer is set to the port of the hot JVM server
/// There is also a queuing hot JVM server which queues files for PDF rendering later
/// This is queuing mechanism is never called visually but only by AsynchGenerateReport which always generates PDFs
Method %DisplayPDF1(DisplayLog As %Boolean = 0, RenderServer As %String = "", async As %Boolean = 0, ByRef xmlfile As %String, ByRef xslfile As %String, ByRef pdffile As %String, ByRef lockfile As %String, fromGenerateReport As %Boolean, outputfilename As %String, Output RenderDirect As %Integer = 1) As %Status [ Internal ]
{
}

/// This method outputs the contents of the PDF report
/// RenderServer is set to the port of the hot JVM server
/// There is also a queuing hot JVM server which queues files for PDF rendering later
/// This is queuing mechanism is never called visually but only by AsynchGenerateReport which always generates PDFs
Method %DisplayFO2PDF1(DisplayLog As %Boolean = 0, RenderServer As %String = "", async As %Boolean = 0, ByRef xmlfile As %String, ByRef xslfile As %String, ByRef pdffile As %String, ByRef lockfile As %String, fromGenerateReport As %Boolean, outputfilename As %String, isFO As %Boolean = 0) As %Status [ Internal ]
{
}

/// This method outputs the contents of the TIFF report
/// Note on March 03/02/2012 - support for generation of TIFF files in a RenderServer was not yet available!
Method %DisplayTIFF1(DisplayLog As %Boolean = 0, RenderServer As %String = "", async As %Boolean = 0, ByRef xmlfile As %String, ByRef xslfile As %String, ByRef pdffile As %String, ByRef lockfile As %String, fromGenerateReport As %Boolean, outputfilename As %String, Output RenderDirect As %Integer = 1) As %Status [ Internal ]
{
}

/// This method outputs the contents of the PDF report
Method %PrintPDF(DisplayLog As %Boolean = 0) As %Status [ Internal ]
{
}

/// This method outputs the contents of the PDF report
Method %PrintPS(DisplayLog As %Boolean = 0) As %Status [ Internal ]
{
}

/// Outputs an <?xml-stylesheet ?> that references the XSLT stylesheet
/// used to transform the XML data into an HTML report.  Currently,
/// this is always ReportClassName.cls?$MODE=tohtml, which will return
/// the stylesheet indicated by the HTMLSTYLESHEET parameter, or the
/// stylesheet generated by %DrawToHTML() if HTMLSTYLESHEET is not supplied.
Method %ToHTMLStyleSheetLink(xslfile As %String = "") [ Internal ]
{
}

/// Outputs an <?xml-stylesheet ?> that references the XSLT stylesheet
/// used to transform the XML data into an Excel report.  Currently,
/// this is always ReportClassName.cls?$MODE=toexcel, which will return
/// the stylesheet indicated by the EXCELSTYLESHEET parameter, or the
/// stylesheet generated by %DrawToExcel() if EXCELSTYLESHEET is not supplied.
Method %ToExcelStyleSheetLink(xslfile As %String = "") [ Internal ]
{
}

/// Outputs an <?xml-stylesheet ?> that references the XSLT stylesheet
/// used to transform the XML data into XSL-FO report.  Currently,
/// this is always ReportClassName.cls?$MODE=toxslfo, which will return
/// the stylesheet indicated by the XSLFOSTYLESHEET parameter, or the
/// stylesheet generated by %DrawToXSLFO() if XSLFOSTYLESHEET is not supplied.
Method %ToXSLFOStyleSheetLink(xslfile As %String = "") [ Internal ]
{
}

/// This method creates a temporary local file that contains
/// the XML data indicated by the DATASOURCE parameter or
/// generated by %RunReport if no DATASOURCE is specified.
Method %MakeXMLDataFile(ByRef filename As %String, stripPI As %Boolean = 0, async As %Boolean = 0) As %Status [ Internal ]
{
}

Method %MakeTransformedXMLFile(ByRef filename, ByRef xmlfile, ByRef xslfile, stripPI = 0, embedXSL = 0, async = 0)
{
}

/// This method is used to delete the temporary files used to hold XSLT
ClassMethod %DeleteTempFiles() [ Internal ]
{
}

/// This method creates a temporary local copy of the XSLT stylesheet
/// used to transform the XML data into an HTML report.
Method %MakeToHTMLFile(ByRef filename As %String, Here As %Boolean = 0, ByRef url As %String, UseInternalXSLT As %Boolean = 0) As %Status [ Internal ]
{
}

/// This method creates a temporary local copy of the XSLT stylesheet
/// used to transform the XML data into an Excel report.
Method %MakeToExcelFile(ByRef filename As %String, Here As %Boolean = 0, ByRef url As %String, UseInternalXSLT As %Boolean = 0, ExcelMode As %String) As %Status [ Internal ]
{
}

/// This method creates a temporary local copy of the XSLT stylesheet
/// used to transform the XML data into XSL-FO.
Method %MakeToXSLFOFile(ByRef filename As %String, xmlfile As %String, async) As %Status [ Internal ]
{
}

/// This method returns a stream of the contents of the file
/// indicated by a relative URL.  The relative URL must indicate
/// a file that is actually on disk (i.e. not a .csp for .cls file)
ClassMethod %GetFileByRelativeURL(url As %String, ByRef sc As %Status, norecurse As %Boolean = 0) As %Stream.Object [ Internal ]
{
}

/// This method returns a stream of the contents of the file
/// indicated by an absolute URL.
ClassMethod %GetFileByAbsoluteURL(url As %String, ByRef sc As %Status, norecurse As %Boolean = 0) As %Net.HttpResponse [ Internal ]
{
}

/// This method outputs the contents of a stream, and if stripinstructions=1
/// it removes anything of the form <? ... ?> from the stream.
Method %OutputStream(xml As %Stream.Object, stripinstructions As %Boolean = 0) As %Status [ Internal ]
{
}

/// Log run-time error encountered by this report.
ClassMethod %LogError(pSC As %Status) [ Internal ]
{
}

/// This callback is invoked after this report is instantiated
/// and before it is run.
Method %OnBeforeReport() As %Status
{
}

/// This callback is invoked after this report is run
/// and before it is closed.
Method %OnAfterReport() As %Status
{
}

/// Notification that we are writing out the attributes for the opening tag.
Method %OnReportTag()
{
}

Method %TagNameSpace(embedXSL As %Boolean = 0) [ Internal ]
{
}

Method %WriteNameSpace(ByRef XSL, embedXSL As %Boolean = 0) [ Internal ]
{
}

/// Return the temp directory for this system.
ClassMethod %GetTempDir() As %String [ Internal ]
{
}

/// Internal method.<br>
/// Create set of ReportDisplay objects needs to format this report.
Method %CreateDisplay() As %ZEN.Report.Display.report [ CodeMode = objectgenerator, Final, Internal, ProcedureBlock = 0 ]
{
}

Method DeleteTempFiles(ByRef xmlfile As %String, ByRef xslfile As %String, ByRef outputfile As %String, ByRef logfile As %String, ByRef xmlfiles As %String, ByRef pdffiles As %String, ByRef oldxmlfile, ByRef transformfile, SplitOnly As %Boolean = 0, fromGenerateReport As %Boolean = 0) [ Internal ]
{
}

Method UnLockTempFiles(ByRef xmlfile As %String, ByRef xslfile As %String, ByRef outputfile As %String, ByRef logfile As %String, ByRef xmlfiles As %String, ByRef pdffiles As %String, ByRef oldxmlfile, ByRef transformfile, SplitOnly As %Boolean = 0, fromGenerateReport As %Boolean = 0, asynch As %Boolean = 0) [ Internal ]
{
}

Method InitReport(embedXSL As %Boolean = 0, report As %ZEN.Report.Display.report, ByRef context As %String) [ Internal ]
{
}

Method %SetContextFromProperties(ByRef context As %String) [ CodeMode = objectgenerator, Final, Internal ]
{
}

Method %initNameSpace(embedXSL As %Boolean = 0, ByRef context As %String, ByRef xmlns As %String, ByRef xmlprefix As %String) [ Final, Internal ]
{
}

ClassMethod %checkNameSpace(embedXSL As %Boolean, report As %ZEN.Report.reportPage) [ Internal ]
{
}

ClassMethod hasDataSource() [ Internal ]
{
}

ClassMethod MakeFileName(dir As %String, name As %String, ext As %String) [ Internal ]
{
}

ClassMethod GetSafeRootName() As %String [ Internal ]
{
}

Method GetRootDir() As %String [ Internal ]
{
}

ClassMethod GetRootDirFromParam() As %String [ Internal ]
{
}

/// If defined, this callback is called when a form connected to this
/// DataModel is submitted.<br>
/// The contents of this DataModel will be filled in from the submitted values
/// before this callback is invoked.<br>
/// The default implementation is to store the submitted values back to the model.
Method %OnSubmit(pSubmit As %ZEN.Submit) As %Status [ CodeMode = objectgenerator ]
{
}

ClassMethod TestPDFGeneration() As %Status
{
}

ClassMethod OnAfterCreateDisplay()
{
}

Method %OnAfterCreateDisplay(pDisplay As %ZEN.Report.Display.report)
{
}

/// Server-only method for finding a ZEN Report Display node within this
/// report display given its id.
ClassMethod %GetComponentById(id As %String) As %ZEN.Component.object [ CodeMode = expression, Final ]
{
}

ClassMethod replace(s As %String, old As %String, new As %String) As %String [ Internal ]
{
}

/// Gets the name of an I/O table<br><br>
/// Parameter: index - table index<ol start="0">
/// <li>Process</li>
/// <li>InterSystems IRIS Terminal</li>
/// <li>Other terminal</li>
/// <li>File</li>
/// <li>Magtape</li>
/// <li>TCP/IP</li>
/// <li>DSM-DDP</li>
/// <li>DTM-DCP</li>
/// <li>System call</li>
/// <li>Printer</li></ol>
ClassMethod GetIOTable(index As %Integer) As %String [ Internal ]
{
}

ClassMethod %GetParam(parameterName As %String = "") [ Internal ]
{
}

ClassMethod %GetClassParam(parameterName As %String = "") [ Internal ]
{
}

ClassMethod %GetCodeGenParam(parameterName As %String = "") [ Internal ]
{
}

/// Helper method to trigger the use of HTML5 mode if it is available.
/// The %BrowserSupportsHTML5() method assumes %request object is defined.
ClassMethod %HasHtml5() As %Integer [ CodeMode = expression, Internal ]
{
}

Method %getUniqueExcelSheetName(excelSheetName As %String) As %String
{
}

Method %getDisplayUniqueExcelSheetName(excelSheetName As %String, ByRef context) As %String
{
}

/// Resolve a localized text string at run time.
/// A localized string can take the following forms:<br/>
/// "String" -- not localized.<br/>
/// "$$$String" -- equivalent to $$$Text("String","DeepSeeUser")<br/>
/// "$$$String/Domain" -- equivalent to $$$Text("String","Domain")<br/>
ClassMethod %ResolveText(pText As %String, ByRef context) As %String
{
}

Method Purge(filename)
{
}

Method UnLock(filename)
{
}

Method GetTempFileName(ext, isFileBeingPrinted, async, suffix = "", Here = 0, pMode = "")
{
}

/// convenience method for converting an horlog to an Excel date
ClassMethod ToExcelDate(horlog)
{
}

}
