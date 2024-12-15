/// %OAuth2.Server.Properties stores the properties and claims that are used to
/// communicate between various parts of the OAuth 2.0 authorization server.
/// See the description of each property of this class to understand usage
/// of the properties and claims.<br>
/// Note that storage is not in a % global.  Therefore allowing the claim to be viewed from
/// any namespace, but only opened or saved with the proper credentials.
Class %OAuth2.Server.Properties Extends %Persistent [ System = 4 ]
{

/// RequestProperties contains the query parameters from the authorization request.<br>
/// RequestProperties.GetAt(<name>) is the value of the <name> query parameter.
Property RequestProperties As array Of %String(MAXLEN = "");

/// ResponseProperties contains the properties to be added to the JSON response
/// object to a token request.<br>
/// ResponseProperties.GetAt(<name>) is the value of the <name> JSON response property.
Property ResponseProperties As array Of %String(MAXLEN = "");

/// CustomProperties contains the custom properties to be used to communicate between various
/// pieces of customization code.<br>
/// CustomProperties.GetAt(<name>) is the value of the <name> property.
Property CustomProperties As array Of %String(MAXLEN = "");

/// ServerProperties contains properties that the authorization server chooses to share with the customization code.<br>
/// The logo_uri, client_uri, policy_uri and tos_uri client properties are shared in this way
/// for use by the Authentication Class.<br>
/// ServerProperties.GetAt(<name>) is the value of the <name> property.
Property ServerProperties As array Of %String(MAXLEN = "");

/// IDTokenClaims specifies the claims that are needed for the IDToken beyond the base set of required claims.
/// The "iss", "sub", "exp", "sid", "aud" and "azp" claims will be returned even if not in IDTokenClaims.
/// The claims are defined based on the scope and request claims parameter.
/// The value to be returned for the claim will have the same key in the ClaimValues property.
/// The value of the claims will usually be set by the ValidateUser class.<br>
/// IDTokenClaims.GetAt(<name>) defines the <name> claim.
Property IDTokenClaims As array Of %OAuth2.Server.Claim;

/// UserinfoClaims specifies the claims that need to be returned by the Userinfo endpoint beyond the base required claims.
/// The "sub" claim will be returned even if not in UserinfoClaims.
/// The claims are defined based on the scope and request claims parameter.
/// The value to be returned for the claim will have the same key in the ClaimValues property.
/// The value of the claims will usually be set by the ValidateUser class.<br>
/// UserinfoClaims.GetAt(<name>) defines the <name> claim.
Property UserinfoClaims As array Of %OAuth2.Server.Claim;

/// IntrospectionClaims specifies the claims that need to be returned by the Introspection endpoint beyond the base required claims.
/// The scope, client_id, username, token_type, exp, iat, nbf, sub, aud, iss and jti claims
/// will be returned even if they are not in IntrospectionClaims.
/// The value of the claims will usually be set by the ValidateUser class.<br>
/// IntrospectionClaims.GetAt(<name>) defines the <name> claim.
Property IntrospectionClaims As array Of %OAuth2.Server.Claim;

/// JWTClaims specifies the claims that are needed for the JWT access token that is returned
/// by the default JWT based access token class (<Class>%OAuth2.Server.JWT</Class>) beyond the base set of required claims.
/// The "iss", "sub", "exp", "aud", "jti", and "scope" claims will be returned even if not in JWTClaims.
/// The claims are defined by the customization code.
/// The value to be returned for the claim will have the same key in the <property>ClaimValues</property> property.
/// The value of the claims will usually be set by the ValidateUser class.<br>
/// JWTClaims.GetAt(<name>) defines the <name> claim.
Property JWTClaims As array Of %OAuth2.Server.Claim;

/// JWTHeaderClaims specifies the claims to include in the JOSE Header for the JWT access token that is returned
/// by the default JWT based access token class (<Class>%OAuth2.Server.JWT</Class>) beyond the set of headers
/// required by the signature or encryption options in use. The key can be either the name of a claim that exists
/// in the <property>ClaimValues</property> property, or "jku" or "jwk". If "jku" is specified, then the "jku" field will be defined in
/// JOSE header, containing the value of the relevant JWKS URL. If "jwk" is specified, then the "jwk" field will be
/// defined, containing the JWK for the relvant public key. In both cases, the field will only be defined in the header
/// if signing or encryption is being used with an asymmetric algorithm. It is not valid to specify other JOSE header
/// fields defined by RFC 7515.
/// <br> The claims are defined by the customization code.
/// The value to be returned for the claim will have the same key in the <property>ClaimValues</property> property.
/// The value of the claims will usually be set by the ValidateUser class.<br>
/// JWTHeaderClaims.GetAt(<name>) defines the <name> claim.
Property JWTHeaderClaims As array Of %OAuth2.Server.Claim;

/// ClaimValues associates the value to be returned for the claim will with the claim having
/// the same key in a claims array.<br>
/// Each claim value is stored as $lb(type,value) where type = "string", "boolean", "number" or "object".<br>
/// If type="object", then value is the JSON object serialized as a string.
/// For all types, if the value is a $list, then it is an array of the specified type.
Property ClaimValues As array Of %String(MAXLEN = "");

/// Set the value of the claim named by the name argument.<br>
/// type = "string", "boolean", "number" or "object".  The default type is "string"
/// If type="object", then value is the JSON object serialized as a string.
/// For all types, if the value is a $list, then it is an array of the specified type.
Method SetClaimValue(name As %String, value As %String, type As %String = "string")
{
}

/// Remove the value of the claim named by the name argument.
Method RemoveClaimValue(name As %String)
{
}

/// Get the value and type of the claim named by the name argument.
Method GetClaimValue(name As %String, Output type) As %String
{
}

/// Get the value and type of the claim named by the name argument
/// with $list value converted to %DynamicArray
Method GetConvertedClaimValue(name As %String, Output type) As %String
{
}

/// Get the next name from the ClaimValues property
Method NextClaimValue(name As %String) As %String
{
}

/// Log a server token
Method LogProperties(ByRef data) [ Internal ]
{
}

}