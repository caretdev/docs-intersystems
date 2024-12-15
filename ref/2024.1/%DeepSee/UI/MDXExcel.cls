/// This page renders the results of executing a DeepSee MDX statement in excel format.
Class %DeepSee.UI.MDXExcel Extends %CSP.Page [ System = 4 ]
{

Parameter PAGENAME = "MDXExcel";

Parameter CONTENTTYPE = "application/vnd.ms-excel";

/// Required for IE!
Parameter EXPIRES;

Parameter CHARSET = "utf-8";

ClassMethod OnPreHTTP() As %Boolean [ ServerOnly = 1 ]
{
}

ClassMethod OnPage() As %Status
{
}

/// Print out the contents (as Excel-style HTML) of the given MDX result set.
ClassMethod %PrintResults(pRS As %DeepSee.ResultSet, pCaption As %String = "", pSubCaption As %String = "") As %Status
{
}

/// Print out the contents (as Excel-style HTML) of the given KPI.
ClassMethod %PrintKPIResults(pKPI As %String, pCaption As %String = "", pSubCaption As %String = "") As %Status
{
}

/// Convert a column number to a letter (A,B,AA).
ClassMethod %NumberToColumn(pValue As %String) As %String [ CodeMode = expression ]
{
}

/// Format a value for output.
ClassMethod %FormatNumber(pValue As %String) As %String [ CodeMode = expression ]
{
}

/// Format a string value for HTML output.
/// This means escaping UNICODE characters.
ClassMethod %EscapeHTML(pValue As %String) As %String
{
}

/// Print out the contents (as Excel-style HTML) of the given SQL ResultSet listing.
/// pListingFields is option list of fields to display.
ClassMethod %PrintListingResults(pRS As %SQL.StatementResult, pCaption As %String = "", pSubCaption As %String = "", pListingFields As %List = "", pCubeKey As %String = "") As %Status
{
}

}
