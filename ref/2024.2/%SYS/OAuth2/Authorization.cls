/// The %SYS.OAuth2.Authorization class contains the operations which are used to authorize
/// a client by obtaining an access token.<br><br>
///
/// The underlying token is stored in OAuth2.AccessToken in the system database.
/// OAuth2.AccessToken is indexed by the combination of SessionId and ApplicationName.
/// Therefore, only one scope may be requested for each SessionId/ApplicationName.
/// If a second request is made with a different scope and access token has yet been granted,
/// the scope in the new request becomes the expected scope.<br>
/// Note that this class is in library databse and thus available everywhere.
/// However, token storage storage is in the system database and thus not difrectly available to most code.
Class %SYS.OAuth2.Authorization Extends %RegisteredObject [ System = 4 ]
{

/// SetEndpoints will update the authorization endpoint and the token endpoint for the
/// specified client application.  If either endpoint is not specified, then it will not be modified.
ClassMethod SetEndpoints(applicationName As %String, authorizationEndpoint As %String, tokenEndpoint As %String) As %Status
{
}

/// Create a new base64 encoded random nonce value.
ClassMethod CreateNonce() As %String [ Internal ]
{
}

/// Create a new base64 encoded random state value.
ClassMethod CreateState() As %String [ Internal ]
{
}

/// GetAuthorizationEndpoint returns the URL to be used to redirect authorization requests to the
/// Authorization Server based on the authorization code grant type.  The location part of the URL
/// will be a class in this InterSystems IRIS instance which will further redirect to the authorization server.
/// This URL should be used for a button, anchor or in Javascript code in a page.<br>
/// The scope argument is a blank separated list of scopes for which access is requested.
/// The default for scope is the DefaultScope property of OAuth2.Client for applicationName.<br>
/// The redirectURL argument is the URL of the CSP page which should be invoked after the request
/// for the access token is completed and the access token is stored indexed by the ApplicationName and SessionId.<br>
/// The responseMode argument specifies the mode of the response as either query, fragment or form_post.
/// The default is query.<br>
/// properties is a local array specifying additional properties to be included in a token request
/// in the form properties(name)=value.  To add a request parameter which is a JSON object,
/// you may either create a properties element which is a %DynamicObject or is a string that is the
/// UTF-8 encoded serialized object.  For example the claims parameter that is defined by OpenID Connect.
/// If the request or request_uri request parameters are to be used, then the %SYS.OAuth2.Request class
/// is used to create  the JWT.  The the JWT is assigned to properties("request") or the URL for the
/// JWT is assigned to properties("request_uri")<br>
/// isAuthorized is an output argument which is returned true if an access token has already been
/// granted for this SessionId/ApplicationName combiation.
ClassMethod GetAuthorizationCodeEndpoint(applicationName As %String, scope As %String, redirectURL As %String, ByRef properties As %String, Output isAuthorized As %Boolean, Output sc As %Status, responseMode As %String, sessionId As %String = "") As %String
{
}

/// GetRequestEndpoint returns the URL to be used to redirect authorization requests to the
/// Authorization Server for the authorization code grant type or the implicit grant type.
/// The location part of the URL
/// will be a class in this InterSystems IRIS instance which will further redirect to the authorization server.
/// This URL should be used for a button, anchor or in Javascript code in a page.<br>
/// The scope argument is a blank separated list of scopes for which access is requested.
/// The default for scope is the DefaultScope property of OAuth2.Client for applicationName.<br>
/// The idtokenOnly argument should be specified as true in order to get an IDToken but not an access token.<br>
/// The responseMode argument specifies the mode of the response as either query, fragment or form_post.
/// The redirectURL argument is the URL of the CSP page which should be invoked after the request
/// for the access token is completed and the access token is stored indexed by the ApplicationName and SessionId.<br>
/// properties is a local array specifying additional properties to be included in a token request
/// in the form properties(name)=value.  To add a request parameter which is a JSON object,
/// you may either create a properties element which is a %DynamicObject or is a string that is the
/// UTF-8 encoded serialized object.  For example the claims parameter that is defined by OpenID Connect.
/// If the request or request_uri request parameters are to be used, then the %SYS.OAuth2.Request class
/// is used to create  the JWT.  The the JWT is assigned to properties("request") or the URL for the
/// JWT is assigned to properties("request_uri")<br>
/// isAuthorized is an output argument which is returned true if an access token has already been
/// granted for this SessionId/ApplicationName combination.
ClassMethod GetRequestEndpoint(applicationName As %String, scope As %String, redirectURL As %String, responseType As %String, responseMode As %String = "", ByRef properties As %String, Output isAuthorized As %Boolean, Output sc As %Status, sessionId As %String) As %String [ Internal ]
{
}

/// Construct a code verifier to use for PKCE.
ClassMethod MakeCodeVerifier() As %String [ CodeMode = expression, Internal, Private ]
{
}

/// Make the URL for authorization code request
ClassMethod MakeAuthorizationCodeURL(client As OAuth2.Client, token As OAuth2.AccessToken, redirect As %String, ByRef properties As %String, Output sc As %Status) As %String [ Internal ]
{
}

/// GetAccessTokenAuthorizationCode may be called from the OnPreHttp method of a CSP page to redirect
/// authorization requests to the Authorization Server based on the authorization code grant type.<br>
/// GetAccessTokenAuthorizationCode will only request a new access token if their is no existing
/// access toekn which includes all the scopes that are being requested.<br>
/// The scope argument is a blank separated list of scopes for which access is requested.
/// The default for scope is the DefaultScope property of OAuth2.Client for applicationName.<br>
/// The redirectURL argument is the URL of the CSP page which should be invoked after the request
/// for the access token is completed and the access token is stored indexed by the ApplicationName and SessionId.
/// The responseMode argument specifies the mode of the response as either query, fragment or form_post.
/// The default is query.<br>
/// properties is a local array specifying additional properties to be included in a token request
/// in the form properties(name)=value.  To add a request parameter which is a JSON object,
/// you may either create a properties element which is a %DynamicObject or is a string that is the
/// UTF-8 encoded serialized object.  For example the claims parameter that is defined by OpenID Connect.
/// If the request or request_uri request parameters are to be used, then the %SYS.OAuth2.Request class
/// is used to create  the JWT.  The the JWT is assigned to properties("request") or the URL for the
/// JWT is assigned to properties("request_uri")<br>
ClassMethod GetAccessTokenAuthorizationCode(applicationName As %String, scope As %String, redirectURL As %String, ByRef properties As %String, responseMode As %String, sessionId As %String = "") As %Status
{
}

/// GetImplicitEndpoint returns the URL to be used to redirect authorization requests to the
/// Authorization Server based on the implicit grant type.  The location part of the URL
/// will be a class in this InterSystems IRIS instance which will further redirect to the authorization server.
/// This URL should be used for a button, anchor or in Javascript code in a page.<br>
/// The scope argument is a blank separated list of scopes for which access is requested.
/// The default for scope is the DefaultScope property of OAuth2.Client for applicationName.<br>
/// The idtokenOnly argument should be specified as true in order to get an IDToken but not an access token.<br>
/// The responseMode argument specifies the mode of the response as either query, fragment or form_post.
/// The default is fragment.<br>
/// The redirectURL argument is the URL of the CSP page which should be invoked after the request
/// for the access token is completed and the access token is stored indexed by the ApplicationName and SessionId.<br>
/// properties is a local array specifying additional properties to be included in a token request
/// in the form properties(name)=value.  To add a request parameter which is a JSON object,
/// you may either create a properties element which is a %DynamicObject or is a string that is the
/// UTF-8 encoded serialized object.  For example the claims parameter that is defined by OpenID Connect.
/// If the request or request_uri request parameters are to be used, then the %SYS.OAuth2.Request class
/// is used to create  the JWT.  The the JWT is assigned to properties("request") or the URL for the
/// JWT is assigned to properties("request_uri")<br>
/// isAuthorized is an output argument which is returned true if an access token has already been
/// granted for this SessionId/ApplicationName combination.
ClassMethod GetImplicitEndpoint(applicationName As %String, scope As %String, redirectURL As %String, idtokenOnly As %Boolean = 0, responseMode As %String, ByRef properties As %String, Output isAuthorized As %Boolean, Output sc As %Status, sessionId As %String = "") As %String
{
}

/// GetAccessTokenImplicit may be called from the OnPreHttp method of a CSP page to redirect
/// authorization requests to the Authorization Server based on the implicit grant type.<br>
/// GetAccessTokenAuthorizationCode will only request a new access token if their is no existing
/// access token which includes all the scopes that are being requested.<br>
/// The scope argument is a blank separated list of scopes for which access is requested.
/// The default for scope is the DefaultScope property of OAuth2.Client for applicationName.<br>
/// The idtokenOnly argument should be specified as true in order to get an IDToken but not an access token.<br>
/// The responseMode argument specifies the mode of the response as either query, fragment or form_post.
/// The default is fragment.<br>
/// The redirectURL argument is the URL of the CSP page which should be invoked after the request
/// for the access token is completed and the access token is stored indexed by the ApplicationName and SessionId.<br>
/// properties is a local array specifying additional properties to be included in a token request
/// in the form properties(name)=value.  To add a request parameter which is a JSON object,
/// you may either create a properties element which is a %DynamicObject or is a string that is the
/// UTF-8 encoded serialized object.  For example the claims parameter that is defined by OpenID Connect.
/// If the request or request_uri request parameters are to be used, then the %SYS.OAuth2.Request class
/// is used to create  the JWT.  The the JWT is assigned to properties("request") or the URL for the
/// JWT is assigned to properties("request_uri")<br>
ClassMethod GetAccessTokenImplicit(applicationName As %String, scope As %String, redirectURL As %String, idtokenOnly As %Boolean, responseMode As %String, ByRef properties As %String, sessionId As %String = "") As %Status
{
}

/// GetAccessTokenPassword may be called from any method to send authorization requests to the
/// Authorization Server based on the resource owner password credentials grant type.
/// The access token will be stored indexed by the ApplicationName and SessionId before this method returns.<br>
/// The scope argument is a blank separated list of scopes for which access is requested.<br>
/// properties is a local array specifying additional properties to be included in a token request
/// in the form properties(name)=value.  To add a request parameter which is a JSON object,
/// you may either create a properties element which is a %DynamicObject or is a string that is the
/// UTF-8 encoded serialized object.
ClassMethod GetAccessTokenPassword(applicationName As %String, username As %String, password As %String, scope As %String, ByRef properties As %String, Output error As %OAuth2.Error, sessionId As %String = "") As %Status
{
}

/// GetAccessTokenClient may be called from any method to send authorization requests to the
/// Authorization Server based on the resource owner client credentials grant type.
/// The access token will be stored indexed by the ApplicationName and SessionId before this method returns.<br>
/// The scope argument is a blank separated list of scopes for which access is requested.<br>
/// properties is a local array specifying additional properties to be included in a token request
/// in the form properties(name)=value.  To add a request parameter which is a JSON object,
/// you may either create a properties element which is a %DynamicObject or is a string that is the
/// UTF-8 encoded serialized object.
ClassMethod GetAccessTokenClient(applicationName As %String, scope As %String, ByRef properties As %String, Output error As %OAuth2.Error, sessionId As %String = "") As %Status
{
}

/// GetAccessTokenJWT may be called from any method to send authorization requests to the
/// Authorization Server based on the resource owner JWT grant type specified in RFC 7523.
/// The access token will be stored indexed by the applicationName and sessionId before this method returns.<br>
/// The scope argument is a blank separated list of scopes for which access is requested.<br>
/// properties is a local array specifying additional properties to be included in a token request
/// in the form properties(name)=value.  To add a request parameter which is a JSON object,
/// you may either create a properties element which is a %DynamicObject or is a string that is the
/// UTF-8 encoded serialized object.<br>
/// sub is the subject of the JWT which usually a user which is defined on the authorization server.
/// The signing algorithm to be used to sign the JWT is specified by OAuth2.Client.Metadata."token_endpoint_auth_signing_alg",
/// the same signing algorithm as used for client authentication JWT.
ClassMethod GetAccessTokenJWT(applicationName As %String, sub As %String, scope As %String, ByRef properties As %String, Output error As %OAuth2.Error, sessionId As %String = "") As %Status
{
}

/// Create a JWT for the JWT grant type that is specified by RFC7523.
/// sub is the subject of the JWT which usually a user which is defined on the authorization server.
/// sigalg is the signing algorithm to be used to sign the JWT -- default is RS256.
ClassMethod MakeGrantTypeJWT(client As OAuth2.Client, sub As %String, sigalg As %String, Output jwt As %String) As %Status [ Internal ]
{
}

/// GetAccessTokenRefresh sends a request to the
/// Authorization Server in order to get a new access token based on the refresh token.
/// The access token will be stored indexed by the ApplicationName and SessionId before this method returns.<br>
ClassMethod GetAccessTokenRefresh(accessToken As OAuth2.AccessToken, Output refreshed As %Boolean, Output error As %OAuth2.Error) As %Status [ Final, Internal ]
{
}

/// GetLogoutEndpoint returns the URL to be used to redirect logout requests to the
/// Authorization Server according to OpenID Connect RP-Initiated Logout.
/// This URL should be used for a button, anchor or in Javascript code in a page.<br>
/// The applicationName prarameter specifies the name of the application for which the current session is to be logged out.<br>
/// The redirectURL parameter specifies the URL of the CSP page to which the User Agent should be redirected after the logout request
/// is completed on the server.<br>
/// The sessionId parameter specifies the session id of the current Access Token. By default it will use the CSP session id,
/// if present.
ClassMethod GetLogoutEndpoint(applicationName As %String, redirectURL As %String = "", sessionId As %String = "") As %String
{
}

}
