/// Created using the page template: Default
Class %CSP.UI.Portal.SQL.QButtons.ReportLoaderOutput Extends %CSP.Page [ ProcedureBlock, System = 4 ]
{

Parameter CSPURL = "/csp/sys/exp/%CSP.UI.Portal.SQL.QButtons.ReportLoaderOutput.zen";

/// Set this to the correct domain.
Parameter DOMAIN = "%Utility";

/// Ensure user has %Development:USE
ClassMethod OnPreHTTP() As %Boolean [ ServerOnly = 1 ]
{
}

/// The <method>OnPage()</method> is called by the CSP dispatcher to generate the
/// page content. For %CSP.StreamServer, since the content type is actually a stream, not HTML
/// we simply write out the stream data.
ClassMethod OnPage() As %Status
{
}

ClassMethod ShowDetails(filename)
{
}

}
