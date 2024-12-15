/// This is the default CSP error page. When writing any error pages you should make this your superclass.
/// If an error occurs while running a hyperevent then the response is controled from the <METHOD>HyperEventError</METHOD>.
/// If it is an error on a standard page then you writing normal HTML output.<p>
/// This error page is designed to log the information to the %ETN system error log and display
/// a simple 'An error has occurred' to the user to avoid leaking any potentially sensitive information. If you
/// would like a more developer friendly error page change the error page to <class>%CSP.Error</class> which will display
/// this same information directly in the page response.<p>
/// Two particularly interesting errors are the session timeout and the decryption failure errors are both
/// of these can be the result of attempting to go to a page when the users session has timed out or been ended.
/// Commonly you would redirect them to the login page so they can re-enter the application for example in OnPreHTTP
/// method you can write:
/// <EXAMPLE>
/// Set errorcode=$get(%request.Data("Error:ErrorNumber",1))
/// If errorcode=$$$ERRORCODE($$$CSPSessionTimeout)||(errorcode=$$$ERRORCODE($$$InvalidDecrypt)) {
/// 	Set %response.Redirect="/application/login.csp"
/// 	Quit 1
/// }
/// </EXAMPLE>
/// When an error occurs several variables are set in the %request object because these may be overwritten in
/// generating the error page itself. These variables are all prefixed by 'Error:' and the list is:
/// <ul>
/// <li><b>Error:ErrorCode</b> - The <class>%Status</class> code for this error</li>
/// <li><b>Error:ErrorNumber</b> - The error number assocaited with the ErrorCode</li>
/// <li><b>Error:Namespace</b> - The namespace the page was running in when the error occurred</li>
/// <li><b>Error:URL</b> - The URL of the page in which the error occurred.</li>
/// <li><b>Error:PageName</b> - The name of the page in which the error occurred.</li>
/// <li><b>Error:ResponseContentType</b> - The %response.ContentType at the time of the error.</li>
/// <li><b>Error:ResponseStatus</b> - The %response.Status at the time of the error.</li>
/// </ul>
/// The error page will automatically set the %response.Status for some of the standard errors, such as
/// not being able to find the CSP page . If you wish to override this setting do so in the OnPreHTTP
/// method.
Class %CSP.ErrorLog Extends %CSP.Page [ System = 3 ]
{

/// Error pages should be private to avoid the chance the user can go to them
/// directly by just typing in the address.
Parameter PRIVATE = 1;

/// If the user with a new session goes to a page and CSP is unable to allocate a license we can not run the normal
/// error page as this requires a license. The default behavior is to report a 'HTTP/1.1 404 Page not found' HTTP
/// response as this does not require a license. You may change
/// this by setting the class parameter LICENSEERRORPAGE on the error page for this CSP application (or the default
/// error page in the case of the application not found error). The values are:<ul>
///
/// <li>"" - Return the 404 Page not found error (this is the default)</li>
/// <li>Path to a static HTML page - Will display this static page, for example '/csp/samples/static.html' will use the
/// stream server to serve up this static file. This does not require a license, but it will only work with static content.</li></ul>
Parameter LICENSEERRORPAGE As STRING;

/// If the user with a new session goes to a page that is not present then in order to display the standard error page
/// to report this error CSP would take out a license. To avoid this license use if the error is because the application
/// is not found, or the page is not found, or the class does not exist, or the page is private and the token is not
/// correct then the default behavior is to report a 'HTTP/1.1 404 Page not found' HTTP response. This does not require
/// a license and it is standard behavior if you goto a page that is not present on a normal web server. You may change
/// this by setting the class parameter PAGENOTFOUNDERRORPAGE on the error page for this CSP application (or the default
/// error page in the case of the application not found error). The values are:<ul>
///
/// <li>"" - Return the 404 Page not found error (this is the default)</li>
/// <li>1 - Will obtain a license and display the standard error page.</li>
/// <li>Path to a static HTML page - Will display this static page, for example '/csp/samples/static.html' will use the
/// stream server to serve up this static file. This does not require a license, but it will only work with static content.</li></ul>
Parameter PAGENOTFOUNDERRORPAGE As STRING;

/// If the user with a new session goes to a page that causes an error before a license is obtained then in order to
/// display the standard error page to report this error CSP would take out a license. To avoid this license use in
/// this case the default behavior is to report a 'HTTP/1.1 404 Page not found' HTTP response. This does not require
/// a license. You may change
/// this by setting the class parameter OTHERSTATICERRORPAGE on the error page for this CSP application (or the default
/// error page in the case of the application not found error). The values are:<ul>
///
/// <li>"" - Return the 404 Page not found error (this is the default)</li>
/// <li>1 - Will obtain a license and display the standard error page.</li>
/// <li>Path to a static HTML page - Will display this static page, for example '/csp/samples/static.html' will use the
/// stream server to serve up this static file. This does not require a license, but it will only work with static content.</li></ul>
Parameter OTHERSTATICERRORPAGE As STRING;

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

/// Dump all information to local arrays and call %ETN to log this error
ClassMethod LogError() [ ProcedureBlock = 0 ]
{
}

/// This is called before the OnPreHTTP and will handle the HyperEvent errors and
/// setup the status line in the response for the standard errors.
ClassMethod OnErrorSetup(ByRef skipheader As %Boolean) As %Boolean [ ProcedureBlock = 1 ]
{
}

/// Classify if this is an expected error like a page not found and if so return the %response.Status information.
/// If the error is not an expected error it will return "".
ClassMethod ClassifyError(err) As %String
{
}

/// Return an array of information in <var>ErrorInfo</var> about the error suitable for display with a
/// bit of formatting. You pass in the <var>sc</var> which is the status code of the error. It assumes
/// you are dealing with CSP related errors.
ClassMethod DecomposeError(sc As %Status, ByRef ErrorInfo As %String) As %Status
{
}

}
