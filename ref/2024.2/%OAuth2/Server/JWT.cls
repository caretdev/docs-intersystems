/// The %OAuth2.Server.JWT is the GenerateTokenClass which creates a JWT which is included with the server.
/// The GenerateTokenClass is specified in the Authorization Server Configuration.
/// It must contain a GenerateAccessToken method will be used to generate an access token based
/// on the array of properties that is returned by the ValidateUser method.
Class %OAuth2.Server.JWT Extends %OAuth2.Server.Generate [ System = 4 ]
{

/// The IsJWT method returns true if the GenerateAccessToken method returns a JWT.
/// IsJWT is used to determine inclusion of algorithms for access token in server metadata.
ClassMethod IsJWT() As %Boolean
{
}

/// The GenerateAccessToken method returns an optionally signed and/or encryypted JWT to be used
/// as an access token.  The access token may be based on the properties argument.
/// In addition values for claims to be added to the JSON response object may be returned in the
/// properties.ResponseProperties array.<br>
/// However the method in this default class just returns a JWT which is optionally signed and/or encrypted.
ClassMethod GenerateAccessToken(properties As %OAuth2.Server.Properties, Output sc As %Status) As %String
{
}

/// The CreateJWT method acts as specified for OAuth 2.0 and OpenID Connect usage and
/// should not be overridden in a user subclass.<br>
/// Create JWT based on JSON object containing the claims.
/// Any signing an encryption takes place here.
ClassMethod CreateJWT(token As OAuth2.Server.AccessToken, json As %RegisteredObject, jwtType As %String, Output sc As %Status, ByRef header As %DynamicObject = {$$$NULLOREF}) As %String [ Internal ]
{
}

/// Add requested claims to the JWT
ClassMethod AddClaims(claims As %ArrayOfObjects, properties As %OAuth2.Server.Properties, json As %DynamicObject)
{
}

}
