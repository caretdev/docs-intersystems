/// Execute an MDX query and render it to PDF by using the Zen reports infrastructure.
/// The encrypted query to process is passed in via the URL parameter MDX.
Class %DeepSee.UI.MDXPDF Extends %ZEN.Report.reportPage [ System = 4 ]
{

Parameter DOMAIN = "%DeepSee";

Parameter DEFAULTMODE = "pdf";

/// XML that defines the contents of this report.
XData ReportDefinition [ XMLNamespace = "http://www.intersystems.com/zen/report/definition" ]
{
}

XData ReportDisplay [ XMLNamespace = "http://www.intersystems.com/zen/report/display" ]
{
}

ClassMethod Test(pMDX As %String) [ Internal ]
{
}

/// Fill in the context array from the current URL parameters.
/// Also fill in the parameter array used to resolve expression references in %ParseExpr.
ClassMethod %GetContext(Output pContext, Output pParms)
{
}

/// Get the data, as xml, for the current query.
ClassMethod GetTableData()
{
}

/// Write out the contents of an MDX query in a way that can be consumed by a Zen report.
/// <var>pMDX</var> is the query.
ClassMethod %WriteXMLForMDX(ByRef pContext, ByRef pParms, pMDX As %String) As %Status
{
}

/// Write out result set as XML for PDF.
ClassMethod %WriteXMLForPivot(ByRef pContext, ByRef pParms, pRS As %DeepSee.ResultSet, pCaption As %String = "") As %Status
{
}

/// Write out listing results as XML for PDF
ClassMethod %WriteXMLForListing(ByRef pContext, ByRef pParms, pRS As %SQL.StatementResult, pCaption As %String = "", pListingFields As %List = "") As %Status
{
}

/// Write out KPI results as XML for PDF.
ClassMethod %WriteXMLForKPI(ByRef pContext, ByRef pParms, pKPI As %String) As %Status
{
}

/// Parse a CSS style directive.
ClassMethod %ParseStyle(pStyle As %String, Output pCSS As %String)
{
}

/// Create a simplified XML report for displaying an error message.
ClassMethod %WriteXMLMessage(pTitle As %String, pMessage As %String)
{
}

/// Format a string value for HTML output.
/// This means escaping UNICODE characters.
ClassMethod %EscapeHTML(pValue As %String) As %String
{
}

/// Format a value for output.
ClassMethod %FormatNumber(pValue As %String, pFormat As %String = "") As %String [ CodeMode = expression ]
{
}

/// Update the Report Display
ClassMethod OnAfterCreateDisplay()
{
}

/// Draw one cell within a table.
ClassMethod %DrawCell(pValue As %String, ByRef pAttrs) [ Internal ]
{
}

/// Draw one header within a table.
ClassMethod %DrawHeader(pValue As %String, ByRef pAttrs) [ Internal ]
{
}

/// Take a string containing {@PROP.PARM} expressions and return a new string with the
/// expressions replaced.
/// E.g.:  turns "hello  {@date.7} into<br/>
/// "hello January 1, 2011"<br/>
ClassMethod %ParseExpr(pText As %String, ByRef pParms) As %String [ Internal ]
{
}

/// Test for additional resources.
ClassMethod %OnPreHTTP() As %Boolean [ ServerOnly = 1 ]
{
}

ClassMethod GetFilterText(ByRef pContainer As %ZEN.Report.Display.div, ByRef pParms As %String, ByRef pContext As %String, pIncludeFilterText As %Boolean = 0)
{
}

/// Render the contents of this ZEN report.
ClassMethod OnPage() As %Status
{
}

/// Directly load a pdf file from the OS and stream it into the content of this window.
Method %LoadFilePDFToStream(pFileRoot = "", ByRef pTempFiles) As %Status [ Internal ]
{
}

/// This provides a means of fetching a nonced value from the key provided in an incoming request parameter.
/// The <var>pDataLabel</var> is the named reference to the URL parameter which is expectd to be available
/// in the available %request data.
/// Once fetched from the nonce global, the value is cached locally for continued availability via this method using the
/// same nonce key in the %request data.
ClassMethod %FetchNoncedParmData(pDataLabel As %String, pDefault As %String = "", Output pStatus As %Status) As %String
{
}

}
