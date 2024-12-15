/// The class OAuth2.Server.Token implements the token endpoint, as specified
/// in RFC 6749, for the Authorization Code, Password Credentials and Client Credentials grant types,
/// and for refreshing the access token.<br>
/// This class also serves as the endpoint for token management requests from the resource server and client.<br>
/// All requests to this endpoint are of Content-Type "application/x-www-form-urlencoded".
/// The requests from a confidential client must be authenticated using basic authentication
/// with the client id and client secret as specified in RFC 6749.
///
/// This class is used internally by InterSystems IRIS. You should not make direct
/// use of it within your applications. There is no guarantee made about either
/// the behavior or future operation of this class.
Class OAuth2.Server.Token Extends %RegisteredObject [ System = 4 ]
{

Parameter HTTP200OK As STRING = "200 OK";

Parameter HTTP400BADREQUEST As STRING = "400 Bad Request";

Parameter HTTP401UNAUTHORIZED As STRING = "401 Unauthorized";

Parameter HTTP500INTERNALSERVERERROR As STRING = "500 Internal Server Error";

/// Event handler for <b>PreHTTP</b> event: this is invoked before
/// the HTTP headers for a CSP page have been sent.  All changes to the
/// <class>%CSP.Response</class> class, such as adding cookies, HTTP headers,
/// setting the content type etc. must be made from within the OnPreHTTP() method.
/// Return <b>0</b> to prevent <method>OnPage</method> from being called.<br><br>
/// OnPreHttp is used to control flow and redirect back to the requester.
/// OnPage is where the actual authentication takes place.
ClassMethod Process() As %Status [ Internal, ServerOnly = 1 ]
{
}

/// Process authorization_code grant type token request
ClassMethod ProcessAuthorizationCode() As %OAuth2.Error [ Internal ]
{
}

/// Process password credentials grant type token request
ClassMethod ProcessPassword() As %OAuth2.Error [ Internal ]
{
}

/// Process client credentials grant type token request
ClassMethod ProcessClientCredentials() As %OAuth2.Error [ Internal ]
{
}

/// Process client credentials grant type token request.
/// The signing algorithm used to sign the JWT is specified by OAuth2.Client.Metadata."token_endpoint_auth_signing_alg";
/// the same signing algorithm as used for client authenticxation JWT.
ClassMethod ProcessJWT() As %OAuth2.Error [ Internal ]
{
}

/// Process a request for a new access token based on the refresh token
ClassMethod ProcessRefreshToken() As %OAuth2.Error [ Internal ]
{
}

ClassMethod ProcessGetCertificate() As %OAuth2.Error [ Internal ]
{
}

/// Return the access token
ClassMethod ReturnToken(client As OAuth2.Server.Client, token As OAuth2.Server.AccessToken) As %OAuth2.Error [ Internal ]
{
}

/// Generate an refresh token if needed
ClassMethod GenerateRefreshToken(client As OAuth2.Server.Client, token As OAuth2.Server.AccessToken) [ Internal ]
{
}

/// Just make a random refresh token
ClassMethod MakeRefreshToken() [ Internal ]
{
}

/// Return error response
ClassMethod ReturnError(error As %OAuth2.Error) [ Internal, ServerOnly = 1 ]
{
}

/// Check the client credentials for a request
ClassMethod Authorize(secretRequired As %Boolean, Output client As OAuth2.Server.Client, requireTLS As %Boolean = 1) As %OAuth2.Error [ Internal ]
{
}

/// If private_key_jwt or client_secret_jwt authentication used, or JWT authorization grant type, then verify
ClassMethod CheckJWTAuthorization(jwt As %String, isAuthorizationGrant As %Boolean, Output client As OAuth2.Server.Client, Output sub As %String) As %OAuth2.Error [ Internal ]
{
}

/// Get algorithm and body from a signed JWT
ClassMethod GetJWTBody(jwt As %String, Output alg As %String) As %DynamicObject [ Internal ]
{
}

/// Check for duplicate query parameters
ClassMethod CheckDuplicate(parameters As %String) As %OAuth2.Error [ Internal ]
{
}

/// Return an internal server error
ClassMethod StatusError(sc As %Status) As %OAuth2.Error [ Internal ]
{
}

}
