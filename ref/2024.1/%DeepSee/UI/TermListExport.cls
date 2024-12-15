/// DeepSee term list export page.
/// This writes out a term list in CSV format.
Class %DeepSee.UI.TermListExport Extends %CSP.Page [ System = 4 ]
{

Parameter PAGENAME = "TermListExport";

Parameter CONTENTTYPE = "text/plain";

/// Required for IE!
Parameter EXPIRES;

ClassMethod OnPreHTTP() As %Boolean [ ServerOnly = 1 ]
{
}

ClassMethod OnPage() As %Status
{
}

}
