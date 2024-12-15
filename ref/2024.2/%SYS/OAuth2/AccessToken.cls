/// The %SYS.OAuth2.AccessToken class defines the client operations which allow an access token
/// to be used to authorize to a resource server.<br><br>
///
/// The underlying token is stored in OAuth2.AccessToken in the system database.
/// OAuth2.AccessToken is indexed by the combination of SessionId and ApplicationName.
/// Therefore, only one scope may be requested for each SessionId/ApplicationName.
/// If a second request is made with a different scope and access token has yet been granted,
/// the scope in the new request becomes the expected scope.<br>
/// Note that this class is in library and thus available everywhere.
/// However, token storage is in the system database and thus not directly available to most code.
Class %SYS.OAuth2.AccessToken Extends %RegisteredObject [ System = 4 ]
{

/// AddAccessToken adds the bearer access token associated with applicationName and sessionId
/// to the resource server request as defined by RFC 6750.
/// The sslConfiguration that is specified for the client is added to the httpRequest object.
/// This method is used to prepare requests from the Client to the Resource Server.
/// The type argument specifies one of three ways defined by RFC 6750 to send the access token to the Resource Server:<br>
/// 	"header" to use Bearer token HTTP header.<br>
/// 	"body" to use form encoded body.  In this case, request must be a POST with form encoded body.<br>
/// 	"query" to use a query parameter.<br>
/// The sslConfiguration is the name of the Security.SSLConfigs object to use for this request.
/// The default for sslConfiguration comes from the OAuth2.Client instance.
ClassMethod AddAccessToken(httpRequest As %Net.HttpRequest, type As %String = "header", sslConfiguration As %String, applicationName As %String, sessionId As %String) As %Status
{
}

/// AuthorizeWithAccessToken adds the bearer access token which is passed as an argument to this method
/// to the resource server request as defined by RFC 6750.
/// The sslConfiguration that is specified for the client is added to the httpRequest object.
/// This method is used to prepare requests from the Client to the Resource Server.
/// The type argument specifies one of three ways defined by RFC 6750 to send the access token to the Resource Server:<br>
/// 	"header" to use Bearer token HTTP header.<br>
/// 	"body" to use form encoded body.  In this case, request must be a POST with form encoded body.<br>
/// 	"query" to use a query parameter.<br>
/// The sslConfiguration is the name of the Security.SSLConfigs object to use for this request.
/// The default for sslConfiguration comes from the OAuth2.Client instance.
ClassMethod AuthorizeWithAccessToken(httpRequest As %Net.HttpRequest, type As %String = "header", sslConfiguration As %String, applicationName As %String, accessToken As %String) As %Status
{
}

/// RemoveAuthorizationAccessToken removes the access token from the %Net.HttpRequest object.
ClassMethod RemoveAuthorizationAccessToken(httpRequest As %Net.HttpRequest, type As %String = "header") As %Status
{
}

/// GetAccessTokenFromRequest returns the access token which is found in the HTTP request
/// using one of the three RFC 6750 formats (See AddAccessToken above).
/// The access token should be validated using a Validate method or a user written Validate method.
/// This method is used by the Resource Server to authorize requests from the Client.
ClassMethod GetAccessTokenFromRequest(Output sc As %Status) As %String
{
}

/// AddAuthication adds the required authentication for the token request
/// and the SSLConfiguration that is specified for the client.
/// See "token_endpoint_auth_method" property of OAuth2.Client.Metadata.
/// This method is used for sending HTTP requests to the Authorization Server.
ClassMethod AddAuthentication(applicationName As %String, httpRequest As %Net.HttpRequest) As %Status
{
}

/// Create a JWT for using in authenticating to the authorization server.
ClassMethod GetAuthenticationJWT(client As OAuth2.Client, httpRequest As %Net.HttpRequest, authType As %String, Output jwt As %String) As %Status [ Internal ]
{
}

/// IsAuthorized returns true if the applicationName and sessionId combination has an access token which
/// authorizes all the scopes that are specified by the scope argument.<br>
/// applicationName is the name of the application that is being authorized.<br>
/// sessionId is the session id.  sessionId defaults to %session.SessionId and will usually not be specified.<br>
/// scope is a blank separated list of scopes.<br>
/// responseProperties will be returned as a local array specifying the properties that were included
/// in the token response in the form properties(name)=value.<br>
/// The access token is returned in the accessToken argument.
ClassMethod IsAuthorized(applicationName As %String, sessionId As %String, scope As %String = "", Output accessToken As %String, Output IDToken As %String, Output responseProperties, Output error As %OAuth2.Error) As %Boolean
{
}

/// GetAccessToken is an internal method to get (a possibly refreshed access token)
/// for the applicationName and SessionId combination.<br>
/// responseProperties will be returned as a local array specifying the properties that were included
/// in the token response in the form properties(name)=value.<br>
ClassMethod GetAccessToken(applicationName As %String, sessionId As %String, Output scope As %String, Output accessToken As %String, Output IDToken As %String, Output responseProperties, Output error As %OAuth2.Error) As %Boolean [ Internal ]
{
}

/// Remove the token associated with the specified application and session from the client
ClassMethod RemoveAccessToken(applicationName As %String, sessionId As %String) As %Status
{
}

/// Retrieve the JSON object that is returned from the userinfo endpoint for the specified access token.
/// The request is authorized using the specified access token.
/// If the userinfo endpoint returns a JWT, then the object is optionally decrypted and the signature checked.<br>
/// If IDTokenObject is passed as the object returned by ##class(%SYS.OAuth2.Validation).ValidateIDToken and
/// is used to check the sub property.<br>
/// The claims returned by the userinfo endpoint are returned as the properties of jsonObject.<br>
/// securityParameters is returned as a local array of Strings that that indicate the algorithms
/// that were used for JSON Object Signature and/or Encryption operations that were performed
/// on the JWT by the authorization server<br>
/// <br>
/// For JSON Web Signature (JWS):<br>
/// securityParameters("sigalg") - Signature or MAC algorithm<br>
/// <br>
/// For JSON Web Encryption (JWE):<br>
/// securityParameters("keyalg") - Key management algorithm<br>
/// securityParameters("encalg") - Content encryption algorithm<br>
/// See %OAuth2.JWT for the list of supported algorithms.
ClassMethod GetUserinfo(applicationName As %String, accessToken As %String, IDTokenObject As %RegisteredObject, Output jsonObject As %RegisteredObject, Output securityParameters As %String) As %Status
{
}

/// Retrieves the JSON object which contains claims about accessToken
/// that is returned from the introspection endpoint.
/// The request is authorized using the basic authorization HTTP header
/// with the client_id and client_secret associated with applicationName.<br>
/// The claims returned by the introspection endpoint are returned as the properties of jsonObject.
ClassMethod GetIntrospection(applicationName As %String, accessToken As %String, Output jsonObject As %RegisteredObject) As %Status
{
}

/// RevokeToken invalidates the access token using the revocation endpoint.
/// This method will be called automatically when the session holding the token is deleted.
/// This method may also be called from user code to make the token no longer valid.
/// RevokeToken will call %SYS.OAuth2.AccessToken.Remove to remove the token from the client.<br>
/// The request is authorized using the basic authorization HTTP header
/// with the client_id and client_secret associated with applicationName.
ClassMethod RevokeToken(applicationName As %String, accessToken As %String) As %Status
{
}

/// Check that specified audience is contained in the containing audience list.
/// containingAud may either be a single audience as %String or a list of audiences as %DynamicArray.
ClassMethod IsAudContained(containingAud As %DynamicArray, aud As %String) As %Boolean
{
}

/// Check that scope is subset of valid scopes for this token.
ClassMethod IsScopeContained(containingScope As %String, scope As %String) As %Boolean
{
}

ClassMethod GetSSLConfigFromClient(applicationName As %String, ByRef sc As %Status) As %String [ Internal, Private ]
{
}

ClassMethod GetEndpointsFromClient(applicationName As %String, ByRef sc As %Status) As %DynamicObject [ Internal, Private ]
{
}

ClassMethod RevokeTokenInternal(accessToken As %String) As %Status [ Internal, Private ]
{
}

}
