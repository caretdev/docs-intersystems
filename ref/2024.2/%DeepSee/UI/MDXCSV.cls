/// This page renders the results of executing a DeepSee MDX statement in csv format.
Class %DeepSee.UI.MDXCSV Extends %CSP.Page [ System = 4 ]
{

Parameter PAGENAME = "MDXCSV";

Parameter CONTENTTYPE = "text/plain";

/// Required for IE!
Parameter EXPIRES;

Parameter CHARSET = "utf-8";

Parameter NOCHARSETCONVERT = 1;

ClassMethod OnPreHTTP() As %Boolean [ ServerOnly = 1 ]
{
}

/// Directly load a pdf file from the OS and stream it into the content of this window.
ClassMethod %LoadFileToStream(pFileRoot = "", Output pTempFile) As %Status [ Internal ]
{
}

ClassMethod OnPage() As %Status
{
}

/// Print out the contents (as Excel-style HTML) of the given MDX result set.
ClassMethod %PrintResults(pRS As %DeepSee.ResultSet, pCaption As %String = "", pSubCaption As %String = "") As %Status
{
}

/// Print out the contents of the given KPI.
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
