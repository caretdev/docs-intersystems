/// This is the landing page for post-logout redirects from an OpenID Connect Provider used from
/// InterSystems IRIS OAuth 2.0 client code.
/// The redirect is processed here and then redirected to the eventual target.
/// This class SHOULD NOT be used as the redirectURL passed into %SYS.OAuth2.Authorization:GetLogoutEndpoint().
/// This class simply does some processing before redirecting to that provided redirectURL.
///
/// This class is used internally by InterSystems IRIS. You should not make direct
/// use of it within your applications. There is no guarantee made about either
/// the behavior or future operation of this class.
Class OAuth2.PostLogoutRedirect Extends %CSP.Page [ Final, System = 4 ]
{

Parameter UseSession = 0;

Parameter CSPURL = "/csp/sys/oauth2/OAuth2.PostLogoutRedirect.cls";

/// Should never get here.  The work is done in OnPreHttp and then redirect back to real target.
/// If we got here, it means there was an error with the redirect.
ClassMethod OnPage() As %Status [ Internal ]
{
}

/// Event handler for <b>PreHTTP</b> event: this is invoked before
/// the HTTP headers for a CSP page have been sent.
ClassMethod OnPreHTTP() As %Boolean [ Internal ]
{
}

ClassMethod HandleOptions() As %Boolean
{
}

ClassMethod HandleRequest() As %Boolean
{
}

ClassMethod RegisterLogout(state As %String) As %String [ Private ]
{
}

ClassMethod FinishLogout(state As %String) [ Private ]
{
}

/// Get the URL without location to be used as the post logout redirect URL for logout requests.<br>
ClassMethod GetPostLogoutRedirectURL(client As OAuth2.Client) As %String [ Internal ]
{
}

}
