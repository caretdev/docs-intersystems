/// Render a Worksheet to PDF by using the Zen reports infrastructure.
/// The name of the worksheet to process is passed in via the URL parameter WORKSHEET.
Class %DeepSee.UI.WorksheetPDF Extends %ZEN.Report.reportPage [ System = 4 ]
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

ClassMethod Test(pWorkSheetName As %String)
{
}

/// Write out sample data
ClassMethod SampleData()
{
}

/// Write out sample data
ClassMethod SampleData2()
{
}

/// Get the data, as xml, for the current worksheet.
ClassMethod GetTableData()
{
}

/// Write out the contents of a report in a way that can be consumed by a Zen report.
/// <var>pID</var> is the full name of the worksheet.
ClassMethod %WriteXMLForReport(pID As %String)
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

/// Test for additional resources.
ClassMethod %OnPreHTTP() As %Boolean [ ServerOnly = 1 ]
{
}

}
