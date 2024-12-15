/// This error page will display information that is designed to make debugging an application
/// easier, if you deploy a CSP application then you should use the <class>%CSP.ErrorLog</class>
/// error page that logs the information or your own error that displays an
/// error message suitable for an end user rather than providing them with a lot of debug information.<p>
Class %CSP.Error Extends %CSP.ErrorLog [ System = 3 ]
{

/// If an error occurs while processing a HyperEvent then this method is called.
/// This method will write out javascript code that will be executed on the browser.
/// Note that the variable 'CSPPage' refers to the 'self' of the page on which the
/// Hyperevent was called  as this may be different to the current 'self'.<p>
/// You could use this javascript to redirect the browser to another page:
/// <EXAMPLE>
/// Write "CSPPage.window.location='/csp/samples/menu.csp';",!
/// </EXAMPLE>
/// Or you could popup an alert box with the error message in it:
/// <EXAMPLE>
/// Write "alert('An error occurred');",!
/// </EXAMPLE>
ClassMethod HyperEventError()
{
}

/// Output the error page as HTML. This makes use of the ##class(%CSP.Utils).DisplayAllObjects()
/// call to display as much information as possible about the state of the %request, %response, %server
/// objects when the error occurred.
ClassMethod OnPage() As %Status
{
}

/// Output in HTML the error information in <var>ErrorInfo</var> which is the array provided by
/// <method>DecomposeError</method>.
ClassMethod DisplayError(ByRef ErrorInfo As %String) As %Status
{
}

}
