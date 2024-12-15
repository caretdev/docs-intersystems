/// The authorization server supports the authorization control flow for the Authorization Code
/// and Implicit grant types as specified in RFC 6749.  The OAuth2.Server.Auth class is a
/// subclass of %CSP.Page which acts as the Authorization Endpoint and controls the flow
/// in accordance with RFC 6749.
///
/// This class is used internally by InterSystems IRIS. You should not make direct
/// use of it within your applications. There is no guarantee made about either
/// the behavior or future operation of this class.
Class OAuth2.Server.Auth Extends %CSP.Page [ System = 4 ]
{

Parameter HTTP200OK As STRING = "200 OK";

ClassMethod OnPage() As %Status [ Internal, ServerOnly = 1 ]
{
}

/// Event handler for <b>PreHTTP</b> event: this is invoked before
/// the HTTP headers for a CSP page have been sent.  All changes to the
/// <class>%CSP.Response</class> class, such as adding cookies, HTTP headers,
/// setting the content type etc. must be made from within the OnPreHTTP() method.
/// Return <b>0</b> to prevent <method>OnPage</method> from being called.<br><br>
/// OnPreHttp is used to control flow and redirect back to the requester.
/// OnPage is where the actual authentication takes place.
ClassMethod OnPreHTTP() As %Boolean [ Internal, ServerOnly = 1 ]
{
}

/// Process the initial request from the client
ClassMethod ProcessRequest(client As OAuth2.Server.Client, Output token As OAuth2.Server.AccessToken) [ Internal, ServerOnly = 1 ]
{
}

/// Redirect to self with AuthorizationCode in order to display login or permissions.
ClassMethod RedirectToSelf(token As OAuth2.Server.AccessToken) [ Internal, Private ]
{
}

/// Process the initial request from the client
ClassMethod InitializeRequestToken(client As OAuth2.Server.Client) As OAuth2.Server.AccessToken [ Internal, ServerOnly = 1 ]
{
}

/// Get request properties from %request and the request JWT.
/// Return error description if invalid request.
ClassMethod GetQueryParameters(client As OAuth2.Server.Client, Output requestParameters) As %String
{
}

/// Load request from request_uri specified location.
ClassMethod LoadRequest(requestUri As %String, Output request As %String) As %String [ Internal ]
{
}

/// Get request parameters from request object
ClassMethod GetRequestObject(client As OAuth2.Server.Client, request As %String, ByRef requestParameters) As %String [ Internal ]
{
}

/// Wrapper function to setup JWTToObject calls on auhtorization server
ClassMethod JWTToObject(client As OAuth2.Server.Client, jwt As %String, ByRef securityParameters As %String, ByRef jsonObject As %RegisteredObject) As %Status [ Internal ]
{
}

ClassMethod CheckAlg(expectedAlg As %String, actualAlg As %String) As %OAuth2.Error [ Internal ]
{
}

/// Process userinfo and id_token members of the claims parameter
ClassMethod ProcessClaimsRequest(claimsMemberObject As %DynamicObject, claims As %ArrayOfObjects) As %String [ Internal ]
{
}

/// Save the %request query parameters in the properties array.
ClassMethod SaveQueryParameters(ByRef requestParameters, requestParameterArray As %ArrayOfDataTypes)
{
}

/// Process the form response from the login page or permissions page
ClassMethod ProcessFormResponse(client As OAuth2.Server.Client, token As OAuth2.Server.AccessToken) [ Internal, ServerOnly = 1 ]
{
}

/// Save %request data whose name begins with p_ in properties
ClassMethod SaveRequestData(token As OAuth2.Server.AccessToken) [ Internal, ServerOnly = 1 ]
{
}

/// Return a simple error page, since no client could be identified
ClassMethod ReturnSimpleError(error As %String, desc As %String, sc As %Status) [ Internal, ServerOnly = 1 ]
{
}

/// Handle scope rules
ClassMethod ProcessScope(server As OAuth2.Server.Configuration, client As OAuth2.Server.Client, ByRef scope As %String) As %OAuth2.Error
{
}

/// Get the domain to use for the authenticate class
ClassMethod GetAuthenticateDomain() As %String [ Internal, ServerOnly = 1 ]
{
}

/// Execute BeforeAuthenticate in the authenticate class
ClassMethod BeforeAuthenticate(token As OAuth2.Server.AccessToken) As %Status [ Internal, ServerOnly = 1 ]
{
}

/// Execute AfterAuthenticate in the authenticate class
ClassMethod AfterAuthenticate(token As OAuth2.Server.AccessToken) As %Status [ Internal, ServerOnly = 1 ]
{
}

/// Call out to the DelegatedAuthentication() method of the authenticate class
ClassMethod DelegatedAuthentication(token As OAuth2.Server.AccessToken, Output delegatedAuthenticationURL As %String) As %Status [ Internal, ServerOnly = 1 ]
{
}

/// Execute DirectLogin in the authenticate class
ClassMethod DirectLogin(token As OAuth2.Server.AccessToken, Output password As %String) As %Status [ Internal, ServerOnly = 1 ]
{
}

/// Execute DisplayLogin in the authenticate class
ClassMethod DisplayLogin(token As OAuth2.Server.AccessToken) As %Status [ Internal, ServerOnly = 1 ]
{
}

/// Execute Display2fa in the authenticate class
ClassMethod Display2FA(token As OAuth2.Server.AccessToken) As %Status [ Internal, ServerOnly = 1 ]
{
}

/// Execute DisplayPermissions in the authenticate class
ClassMethod DisplayPermissions(token As OAuth2.Server.AccessToken) As %Status [ Internal, ServerOnly = 1 ]
{
}

/// Execute GetLanguageList callback
ClassMethod GetLanguageList(Output sc As %Status) As %List [ Internal, ServerOnly = 1 ]
{
}

/// Copy the properties that are needed by the Authentication Class
/// from OAuth2.Server.Client to CustomProperties.
ClassMethod CopyAuthenticationProperties(client As OAuth2.Server.Client, token As OAuth2.Server.AccessToken) [ Internal ]
{
}

/// Get scope array
ClassMethod GetScopeArray(scope As %String) As %ArrayOfDataTypes [ Internal ]
{
}

/// Set scope and scope array in the token baseed on array of scopes.
ClassMethod SetScopeArray(token As OAuth2.Server.AccessToken) [ Internal ]
{
}

/// Set scope and scope array in the token as on blank spearated list of scopes.
ClassMethod SetScope(token As OAuth2.Server.AccessToken, scope As %String) [ Internal ]
{
}

/// Get description of OpenID scope if the sacope is valid
ClassMethod GetOpenIDScope(openid As %Boolean, scope As %String) As %String [ Internal ]
{
}

/// Execute GetUser session method
ClassMethod GetUser(Output scope As %String, Output authTime As %Integer, Output sc As %Status, token As OAuth2.Server.AccessToken) As %String [ Internal, ServerOnly = 1 ]
{
}

/// Execute UpdateSession session method
ClassMethod UpdateSession(scope As %String) As %Status [ Internal, ServerOnly = 1 ]
{
}

/// Execute Login session method
ClassMethod Login(token As OAuth2.Server.AccessToken, interval As %Integer, authTime As %Integer) As %Status [ Internal, ServerOnly = 1 ]
{
}

/// Execute Logout session method. If front channel logout is supported, execute that as well
ClassMethod Logout(token As OAuth2.Server.AccessToken) As %Status [ Internal, ServerOnly = 1 ]
{
}

/// Execute ValidateDelgatedAuthentication callback of the Validate Class
ClassMethod ValidateDelegatedAuthentication(token As OAuth2.Server.AccessToken, Output username As %String, Output sc As %Status) As %Boolean [ Internal, ServerOnly = 1 ]
{
}

/// Execute ValidateUser callback
ClassMethod ValidateUser(token As OAuth2.Server.AccessToken, username As %String, password As %String, Output sc As %Status, use2fa As %Boolean) As %Boolean [ Internal, ServerOnly = 1 ]
{
}

ClassMethod Validate2FA(username As %String, token As %String) As %Boolean [ Internal, ServerOnly = 1 ]
{
}

/// Execute ValidateClient callback
ClassMethod ValidateClient(token As OAuth2.Server.AccessToken, clientId As %String, clientSecret As %String, Output sc As %Status) As %Boolean [ Internal, ServerOnly = 1 ]
{
}

/// Execute SupportedClaims callback
ClassMethod SupportedClaims(Output sc As %Status) As %String [ Internal, ServerOnly = 1 ]
{
}

/// Add iss, sub, exp, sid and aud to ClaimValues and client_id to CustomProperties if they are not already set.
ClassMethod AddClaimValues(token As OAuth2.Server.AccessToken, clientId As %String, sub As %String) [ Internal ]
{
}

/// Finished authorization.  Prepare for response.
ClassMethod PrepareResponse(token As OAuth2.Server.AccessToken) As %Status [ Internal, ServerOnly = 1 ]
{
}

/// Execute GenerateAccessToken callback.
/// Optionally also obtain the IDToken.
ClassMethod GenerateAccessToken(token As OAuth2.Server.AccessToken) As %Status [ Internal, ServerOnly = 1 ]
{
}

ClassMethod GenerateAccessTokenCustomization(properties As %OAuth2.Server.Properties, Output pSC As %Status) As %String [ Internal, ServerOnly = 1 ]
{
}

/// Execute IsJWT callback
ClassMethod IsJWT(Output sc As %Status) As %Boolean [ Internal, ServerOnly = 1 ]
{
}

ClassMethod OnRefreshAccessToken(token As OAuth2.Server.AccessToken) As %String [ Internal, ServerOnly = 1 ]
{
}

/// Execute OnRevokeAccessToken callback in the revocation class
ClassMethod OnRevokeAccessToken(token As OAuth2.Server.AccessToken, Output sc As %Status) As %Boolean [ Internal, ServerOnly = 1 ]
{
}

/// Execute OnLogoutAccessToken callback in the revocation class
ClassMethod OnLogoutAccessToken(token As OAuth2.Server.AccessToken, ByRef redirectURI As %String, Output sc As %Status) As %Boolean [ Internal, ServerOnly = 1 ]
{
}

/// Execute a callback in one of the customization classes.
/// This requires %Admin_Secure:USE to access the OAuth2.Server.Configuration instance.
ClassMethod ExecuteCallback(customClass As %String, method As %String, args...) As %Status [ Internal, Private, ServerOnly = 1 ]
{
}

/// Return error as redirected response
ClassMethod ReturnError(client As OAuth2.Server.Client, token As OAuth2.Server.AccessToken, error As %String, errorDescription As %String, sc As %Status) [ Internal, ServerOnly = 1 ]
{
}

/// Setup redirect for done
ClassMethod RedirectResponse(client As OAuth2.Server.Client, token As OAuth2.Server.AccessToken) [ Internal, ServerOnly = 1 ]
{
}

/// Send the response back to the client.
ClassMethod SendResponse(token As OAuth2.Server.AccessToken, ByRef param As %String) [ Internal, ServerOnly = 1 ]
{
}

}
