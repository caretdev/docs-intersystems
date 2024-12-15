/// This is the landing page for responses from an OAuth 2.0 authorization server used from
/// InterSystems IRIS OAuth 2.0 client code.
/// The response is processed here and then redirected to the eventual target.
///
/// This class is used internally by InterSystems IRIS. You should not make direct
/// use of it within your applications. There is no guarantee made about either
/// the behavior or future operation of this class.
Class OAuth2.Response Extends %CSP.Page [ Final, System = 4 ]
{

Parameter UseSession = 0;

Parameter CSPURL = "/csp/sys/oauth2/OAuth2.Response.cls";

Parameter CSRFCookieName = "CSPCSRF";

/// Should never get here.  The work is done in OnPreHttp and then redirect back to real target.
ClassMethod OnPage() As %Status [ Internal ]
{
}

/// Event handler for <b>PreHTTP</b> event: this is invoked before
/// the HTTP headers for a CSP page have been sent.
ClassMethod OnPreHTTP() As %Boolean [ Internal ]
{
}

ClassMethod HandleOptions() As %Boolean [ Private ]
{
}

ClassMethod HandleRequest() As %Boolean [ Private ]
{
}

/// Process the response to the Authorization Code grant type
ClassMethod ProcessCodeResponse(accessToken As OAuth2.AccessToken, Output error As %OAuth2.Error) As %Status [ Final, Internal, Private ]
{
}

/// Extract and store access token from response to access token request.
/// Access token will be stored before return.
/// If the accessToken argument is specified, then this token will be updated.
/// Otherwise a new token will be created.<br>
/// httpRequest may be a string which already contains the needed properties as query parameters
ClassMethod ProcessResponse(httpRequest As %Net.HttpRequest, applicationName As %String, requestScope As %String, sessionId As %String, inRedirect As %Boolean = 0, grantType As %String = "", Output error As %OAuth2.Error) As %Status [ Final, Internal ]
{
}

/// Process response from implicit grant type request.  This method exists to allow processing
/// the response on the client instead of completely in the user agent.
/// Extract and store access token from response to access token request.
/// Access token will be stored before return.
ClassMethod ProcessImplicitResponse(accessToken As OAuth2.AccessToken, Output error As %OAuth2.Error) As %Status [ Final, Internal ]
{
}

/// Extract and store access token from access token request as JSON object.
/// Access token will be stored before return.
/// If the accessToken argument is specified, then this token will be updated.
/// Otherwise a new token will be created.
ClassMethod ProcessParsedResponse(json As %DynamicObject, applicationName As %String, requestScope As %String, sessionId As %String, clearState As %Boolean = 0, grantType As %String = "") As %Status [ Final, Internal ]
{
}

/// Get the response object from query parameters
ClassMethod GetQueryResponse(Output json As %DynamicObject) As %Status [ Final, Internal ]
{
}

/// Get the URL without location to be used for redirect URL for authorization server requests.<br>
/// Setup /csp/sys/oauth2 CSP application if it does not already exist.
ClassMethod GetRedirectURL(client As OAuth2.Client, Output sc As %Status) As %String [ Internal ]
{
}

/// Find the OAuth 2.0 application which is associated with the current CSP session.
/// The application is determined by finding the access token referenced by the CSPOAuth2 query parameter
/// which has been added for to the redirect URL for a login page.
/// The applicationName is returned if successfully found.
/// Otherwise "" is returned in applicationName with the error status as the return value.
/// If successful the access token will be associated with the current CSP Session and the token will be automatically
/// removed when the CSP session ends.
ClassMethod GetCurrentApplication(Output applicationName As %String) As %Status
{
}

}
