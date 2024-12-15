/// The authorization server supports the OpenId Connect specification.
/// The OAuth2.Server.OpenID class is a helper class which contains the OpenID functionality.
///
/// This class is used internally by InterSystems IRIS. You should not make direct
/// use of it within your applications. There is no guarantee made about either
/// the behavior or future operation of this class.
Class OAuth2.Server.OpenID Extends %RegisteredObject [ System = 4 ]
{

/// Is this an OpenID authorization request?  Find out by looking for openid scope.
ClassMethod IsOpenID(scope As %String) As %Boolean [ CodeMode = expression ]
{
}

/// Add claims that are based on scopes.
/// Always add default claims.
ClassMethod AddScopeClaims(token As OAuth2.Server.AccessToken) [ Internal ]
{
}

/// The additional properties that are required for OpenID.
ClassMethod AddRequiredClaims(json As %DynamicObject, token As OAuth2.Server.AccessToken) [ Internal ]
{
}

/// Set the aud claim for the JSON object
ClassMethod SetAudClaim(json As %DynamicObject, token As OAuth2.Server.AccessToken, openid As %Boolean) [ Internal ]
{
}

/// Compute the token hash
ClassMethod Hash(alg As %String, tokenString As %String) As %String
{
}

/// Add the additional properties that are needed for the IDToken
/// Create an IDToken based on token properties.
/// We assume %server is the server configuration.
ClassMethod CreateIDToken(token As OAuth2.Server.AccessToken, Output sc As %Status) As %String
{
}

/// Validate validates the signed OpenID Connect ID token and creates an object to reflect the JWT properties.
/// Validate also validates the access token based on the at_hash property of the IDToken.
/// The applicationName argument is the name of the client or resource server configuration which
/// contains authorization server access data, such as authorization server ServerCredentials.
/// The scope argument is a blank separated list of scope values.  If scope is specified,
/// the acces token must have an associated scope which is a superset of the scope parameter.<br>
/// The aud argument specifies the audience which is using the token.  If the token has an associated aud property
/// (usually because the audience was specified when requesting the token), then aud is matched to
/// the token audience.  If aud is not specified, then no audience checking takes place.<br>
/// The claims in the JSON object are returned in jsonObject .<br>
/// securityParameters - Array of Strings that was used to set the JSON Object Signature and/or Encryption operations to be performed on the JWT<br>
/// <br>
/// See <Class>%Net.JSON.JWA</Class> for the list of supported algorithms.<br>
/// For JSON Web Signature (JWS):<br>
/// securityParameters("sigalg") - Signature or MAC algorithm.<br>
/// For JSON Web Encryption (JWE):<br>
/// securityParameters("keyalg") - Key management algorithm<br>
/// Note, securityParameters("keyalg") and securityParameters("encalg") must both be specified or null.<br>
/// See <Class>%Net.JSON.JWA</Class> for the list of supported algorithms.
ClassMethod Validate(applicationName As %String, IDToken As %String, accessToken As %String, scope As %String, aud As %String, Output jsonObject As %RegisteredObject, Output securityParameters As %String, Output sc As %Status) As %Boolean
{
}

/// Verify audience from the JSON object (objectAudience) against the audience from the resource server
/// The resource server audience is the aud argument, or if aud="" the client_id.
ClassMethod VerifyAudience(objectAudience, aud As %String, clientId As %String) As %Boolean [ Internal ]
{
}

/// Perform the operations required for front channel logout
/// When a client has requested front channel logout, the /logout endpoint calls this
/// When the server initiates front channel logout, OAuth2.Server.Auth:Logout() calls this
ClassMethod PrepareFrontChannelLogout(token As OAuth2.Server.AccessToken, Output logoutUriList As %List) As %Status [ Internal ]
{
}

}
