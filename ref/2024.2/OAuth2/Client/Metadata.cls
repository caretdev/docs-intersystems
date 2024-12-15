/// OAuth 2.0 client metadata as specified by OpenID Connect Dynamic Client Registration.
/// Note that this class includes the response data which is returned for dynamic client registration.<br>
/// OPTIONAL and REQUIRED in the property descriptions below refer to optional/required by the OpenID Connect specifications.
Class OAuth2.Client.Metadata Extends (%Persistent, OAuth2.Metadata) [ System = 4 ]
{

/// Used only for OpenID Connect Dynamic Registration Response.<br>
/// REQUIRED. Unique Client Identifier. It MUST NOT be currently valid for any other registered Client.
Property "client_id" As %String(MAXLEN = "");

/// Used only for OpenID Connect Dynamic Registration Response.<br>
/// OPTIONAL. Client Secret. The same Client Secret value MUST NOT be assigned to multiple Clients.
/// This value is used by Confidential Clients to authenticate to the Token Endpoint, as described
/// in Section 2.3.1 of OAuth 2.0, and for the derivation of symmetric encryption key values,
/// as described in Section 10.2 of OpenID Connect Core. It is not needed for Clients selecting
/// a token_endpoint_auth_method of private_key_jwt unless symmetric encryption will be used.
Property "client_secret" As %String(MAXLEN = "");

/// Used only for OpenID Connect Dynamic Registration Response.<br>
/// OPTIONAL. Registration Access Token that can be used at the Client Configuration Endpoint to
/// perform subsequent operations upon the Client registration.
Property "registration_access_token" As %String(MAXLEN = "");

/// Used only for OpenID Connect Dynamic Registration Response.<br>
/// OPTIONAL. Location of the Client Configuration Endpoint where the Registration Access Token
/// can be used to perform subsequent operations upon the resulting Client registration.
/// Implementations MUST either return both a Client Configuration Endpoint and a
/// Registration Access Token or neither of them.
Property "registration_client_uri" As %OAuth2.uri;

/// Used only for OpenID Connect Dynamic Registration Response.<br>
/// OPTIONAL. Time at which the Client Identifier was issued. Its value is a JSON number
/// representing the number of seconds from 1970­01­01T0:0:0Z as measured in UTC until the date/time.
Property "client_id_issued_at" As %Integer;

/// Used only for OpenID Connect Dynamic Registration Response.<br>
/// REQUIRED if client_secret is issued. Time at which the client_secret will expire or
/// 0 if it will not expire. Its value is a JSON number representing the number of seconds
/// from 1970­01­01T0:0:0Z as measured in UTC until the date/time.
Property "client_secret_expires_at" As %Integer;

/// REQUIRED. An array, which is represented as a $list, of Redirection URI values used by the Client.
/// One of these registered Redirection URI values MUST exactly match the redirect_uri
/// parameter value used in each Authorization Request, with the matching
/// performed as described in Section 6.2.1 of (Simple String Comparison).
Property "redirect_uris" As %List;

/// OPTIONAL. An array, which is represented as a $list, containing a list of the OAuth 2.0 response_type
/// values that the Client is declaring that it will restrict itself to using.
/// If omitted, the default is that the Client will use only the code Response Type.
Property "response_types" As %List;

/// OPTIONAL. An array, which is represented as a $list, containing a list of the OAuth 2.0 Grant Types that
/// the Client is declaring that it will restrict itself to using.
/// The Grant Type values used by OpenID Connect are:<br>
/// authorization_code: The Authorization Code Grant Type described in OAuth 2.0 Section 4.1.<br>
/// implicit: The Implicit Grant Type described in OAuth 2.0 [RFC3986] Section 4.2.<br>
/// refresh_token: The Refresh Token Grant Type described in OAuth 2.0 Section 6.<br>
/// The following table lists the correspondence between response_type values that the Client
/// will use and grant_type values that MUST be included in the registered grant_types list:<br>
/// code: authorization_code<br>
/// id_token: implicit<br>
/// token id_token: implicit<br>
/// code id_token: authorization_code, implicit<br>
/// code token: authorization_code, implicit<br>
/// code token id_token: authorization_code, implicit<br>
/// The grant_types property is optional during client registration and default to code.
/// However, the grant_types property is required when configuring using the SMP.
Property "grant_types" As %List;

/// OPTIONAL. Kind of the application. The default, if omitted, is web. The
/// defined values are native or web. Web Clients using the OAuth Implicit
/// Grant Type MUST only register URLs using the https scheme as
/// redirect_uris; they MUST NOT use localhost as the hostname. Native
/// Clients MUST only register redirect_uris using custom URI schemes or
/// URLs using the http: scheme with localhost as the hostname.
/// Authorization Servers MAY place additional constraints on Native Clients.
/// Authorization Servers MAY reject Redirection URI values using the http
/// scheme, other than the localhost case for Native Clients. The Authorization
/// Server MUST verify that all the registered redirect_uris conform to these
/// constraints. This prevents sharing a Client ID across different types of
/// Clients.
Property "application_type" As %String;

/// OPTIONAL. An array, which is represented as a $list, of email addresses of people responsible for this Client.
/// This might be used by some providers to enable a Web user interface to modify the Client information.
Property contacts As %List;

/// OPTIONAL. Name of the Client to be presented to the EndUser.
Property "client_name" As %String(MAXLEN = 128);

/// OPTIONAL. URL that references a logo for the Client application.
/// If present, the server SHOULD display this image to the EndUser during approval.
/// The value of this field MUST point to a valid image file.
Property "logo_uri" As %OAuth2.uri;

/// OPTIONAL. URL of the home page of the Client. The value of this field MUST
/// point to a valid Web page. If present, the server SHOULD display this URL to
/// the EndUser in a followable fashion.
Property "client_uri" As %OAuth2.uri;

/// OPTIONAL. URL that the Relying Party Client provides to the EndUser to
/// read about the how the profile data will be used. The value of this field
/// MUST point to a valid web page. The OpenID Provider SHOULD display this
/// URL to the EndUser if it is given.
Property "policy_uri" As %OAuth2.uri;

/// OPTIONAL. URL that the Relying Party Client provides to the EndUser to
/// read about the Relying Party's terms of service. The value of this field MUST
/// point to a valid web page. The OpenID Provider SHOULD display this URL to
/// the EndUser if it is given.
Property "tos_uri" As %OAuth2.uri;

/// OPTIONAL. URL for the Client's JSON Web Key Set document. If the
/// Client signs requests to the Server, it contains the signing key(s) the Server
/// uses to validate signatures from the Client. The JWK Set MAY also contain
/// the Client's encryption keys(s), which are used by the Server to encrypt
/// responses to the Client. When both signing and encryption keys are made
/// available, a use (Key Use) parameter value is REQUIRED for all keys in the
/// referenced JWK Set to indicate each key's intended usage. Although some
/// algorithms allow the same key to be used for both signatures and
/// encryption, doing so is NOT RECOMMENDED, as it is less secure. The JWK
/// x5c parameter MAY be used to provide X.509 representations of keys
/// provided. When used, the bare key values MUST still be present and MUST
/// match those in the certificate.
Property "jwks_uri" As %OAuth2.uri;

/// OPTIONAL. Client's JSON Web Key Set document, passed by value.
/// The semantics of the jwks parameter are the same as the jwks_uri
/// parameter, other than that the JWK Set is passed by value, rather than by
/// reference. This parameter is intended only to be used by Clients that, for
/// some reason, are unable to use the jwks_uri parameter, for instance, by
/// native applications that might not have a location to host the contents of the
/// JWK Set. If a Client can use jwks_uri, it MUST NOT use jwks. One
/// significant downside of jwks is that it does not enable key rotation (which
/// jwks_uri does, as described in Section 10 of [OpenID.Core]).
/// The jwks_uri and jwks parameters MUST NOT be used together.
Property jwks As %OAuth2.JSONString;

/// OPTIONAL. URL using the https scheme to be used in calculating
/// Pseudonymous Identifiers by the OP. The URL references a file with a single
/// JSON array of redirect_uri values. Please see . Providers that
/// use pairwise sub (subject) values SHOULD utilize the
/// sector_identifier_uri value provided in the Subject Identifier calculation
/// for pairwise identifiers.
Property "sector_identifier_uri" As %OAuth2.uri;

/// OPTIONAL. subject_type requested for responses to this Client. The
/// subject_types_supported Discovery parameter contains a list of the
/// supported subject_type values for this server. Valid types include pairwise and public.
Property "subject_type" As %String;

/// OPTIONAL. JWS alg algorithm REQUIRED for signing the ID Token issued to this Client.
/// The value none MUST NOT be used as the ID Token alg
/// value unless the Client uses only Response Types that return no ID Token
/// from the Authorization Endpoint (such as when only using the Authorization Code Flow).
/// The default, if omitted, is RS256. The public key for validating
/// the signature is provided by retrieving the JWK Set referenced by the
/// jwks_uri element from OpenID Connect Discovery.
Property "id_token_signed_response_alg" As %String(VALUELIST = ",RS256,RS384,RS512,HS256,HS384,HS512,ES256,ES384,ES512") [ InitialExpression = "RS256" ];

/// OPTIONAL. JWE alg algorithm REQUIRED for encrypting the ID Token issued to this Client.
/// If this is requested, the response will be signed then encrypted, with the result being a Nested JWT.
/// The default, if omitted, is that no encryption is performed.
Property "id_token_encrypted_response_alg" As %String(VALUELIST = ",none,RSA1_5,RSA-OAEP,A128KW,A192KW,A256KW,dir");

/// OPTIONAL. JWE enc algorithm REQUIRED for encrypting the ID Token issued to this Client.
/// If id_token_encrypted_response_alg is specified, the default for this value is A128CBC-HS256.
/// When id_token_encrypted_response_enc is included, id_token_encrypted_response_alg MUST also be provided.
Property "id_token_encrypted_response_enc" As %String(VALUELIST = ",none,A128CBC-HS256,A192CBC-HS384,A256CBC-HS512");

/// OPTIONAL. JWS alg algorithm REQUIRED for signing UserInfo Responses.
/// If this is specified, the response will be JWT serialized, and signed using JWS.
/// The default, if omitted, is for the UserInfo Response to return the Claims as a UTF8 encoded
/// JSON object using the application/json contenttype.
Property "userinfo_signed_response_alg" As %String(VALUELIST = ",none,RS256,RS384,RS512,HS256,HS384,HS512,ES256,ES384,ES512");

/// OPTIONAL. JWE alg algorithm REQUIRED for encrypting UserInfo Responses.
/// If both signing and encryption are requested, the response will be signed then encrypted, with the result being a Nested JWT.
/// The default, if omitted, is that no encryption is performed.
Property "userinfo_encrypted_response_alg" As %String(VALUELIST = ",none,RSA1_5,RSA-OAEP,A128KW,A192KW,A256KW,dir");

/// OPTIONAL. JWE enc algorithm REQUIRED for encrypting UserInfo Responses.
/// If userinfo_encrypted_response_alg is specified, the default for this value is A128CBC-HS256.
/// When userinfo_encrypted_response_enc is included, userinfo_encrypted_response_alg MUST also be provided.
Property "userinfo_encrypted_response_enc" As %String(VALUELIST = ",none,A128CBC-HS256,A192CBC-HS384,A256CBC-HS512");

/// ADDITIONAL. JWS alg algorithm REQUIRED for signing a JWT access token.
/// The default, if omitted, is for the introspection endpoint Response to not be signed.
Property "access_token_signed_response_alg" As %String(VALUELIST = ",none,RS256,RS384,RS512,HS256,HS384,HS512,ES256,ES384,ES512");

/// ADDITIONAL. JWE alg algorithm REQUIRED for encrypting a JWT access token.
/// If both signing and encryption are requested, the
/// response will be signed then encrypted, with the result being a Nested JWT.
/// The default, if omitted, is that no encryption is performed.
Property "access_token_encrypted_response_alg" As %String(VALUELIST = ",none,RSA1_5,RSA-OAEP,A128KW,A192KW,A256KW,dir");

/// ADDITIONAL. JWE enc algorithm REQUIRED for encrypting a JWT access token.
/// If access_token_encrypted_response_alg is specified, the default for this value is A128CBC-HS256.
/// When access_token_encrypted_response_alg is included, access_token_encrypted_enc MUST also be provided.
Property "access_token_encrypted_response_enc" As %String(VALUELIST = ",none,A128CBC-HS256,A192CBC-HS384,A256CBC-HS512");

/// OPTIONAL. JWS alg algorithm that MUST be used for signing Request Objects sent to the OP.
/// All Request Objects from this Client MUST be rejected, if not signed with this algorithm.
/// Request Objects are described in Section 6.1 of OpenID Connect Core.
/// This algorithm MUST be used both when the Request Object is passed by value (using the
/// request parameter) and when it is passed by reference (using the request_uri parameter).
/// Servers SHOULD support RS256. The value none MAY be used.
/// The default, if omitted, is that any algorithm supported by the OP and the RP MAY be used.
Property "request_object_signing_alg" As %String(VALUELIST = ",none,RS256,RS384,RS512,HS256,HS384,HS512,ES256,ES384,ES512");

/// OPTIONAL. JWE alg algorithm the RP is declaring that it may
/// use for encrypting Request Objects sent to the OP.
/// This parameter SHOULD be included when symmetric encryption will be used, since this signals to the
/// OP that a client_secret value needs to be returned from which the
/// symmetric key will be derived, that might not otherwise be returned.
/// The RP MAY still use other supported encryption algorithms or send unencrypted Request Objects, even when this parameter is present.
/// If both signing and encryption are requested, the Request Object will be signed then encrypted,
/// with the result being a Nested JWT.
/// The default, if omitted, is that the RP is not declaring whether it might encrypt any Request Objects.
Property "request_object_encryption_alg" As %String(VALUELIST = ",none,RSA1_5,RSA-OAEP,A128KW,A192KW,A256KW,dir");

/// OPTIONAL. JWE enc algorithm the RP is declaring that it may use for encrypting Request Objects sent to the OP.
/// If request_object_encryption_alg is specified, the default for this value is A128CBC-HS256.
/// When request_object_encryption_enc is included, request_object_encryption_alg MUST also be provided.
Property "request_object_encryption_enc" As %String(VALUELIST = ",none,A128CBC-HS256,A192CBC-HS384,A256CBC-HS512");

/// OPTIONAL. Requested Client Authentication method for the Token Endpoint.
/// The options are client_secret_post, client_secret_basic,
/// client_secret_jwt, private_key_jwt, and none, as described in Section 9 of OpenID Connect Core.
/// Other authentication methods MAY be defined by extensions.
/// If omitted, the default is client_secret_basic the HTTP Basic Authentication Scheme specified in
/// Section 2.3.1 of RFC6749.
Property "token_endpoint_auth_method" As %String;

/// OPTIONAL. JWS algorithm that MUST be used for signing
/// the JWT used to authenticate the Client at the Token Endpoint for the
/// private_key_jwt and client_secret_jwt authentication methods.
/// This JWS algorithm is also used to sign the JWT used for JWT Auhtorization grant.
/// All Token Requests using these authentication methods from this Client MUST be
/// rejected, if the JWT is not signed with this algorithm. Servers SHOULD support RS256.
/// The value none MUST NOT be used. The default, if omitted, is
/// that any algorithm supported by the OP and the RP MAY be used.
Property "token_endpoint_auth_signing_alg" As %String(VALUELIST = ",RS256,RS384,RS512,HS256,HS384,HS512,ES256,ES384,ES512");

/// OPTIONAL. Default Maximum Authentication Age.
/// Specifies that the EndUser MUST be actively authenticated if the EndUser
/// was authenticated longer ago than the specified number of seconds.
/// The max_age request parameter overrides this default value.
/// If omitted, no default Maximum Authentication Age is specified.
Property "default_max_age" As %Integer;

/// OPTIONAL. Boolean value specifying whether the auth_time Claim in the IDToken is REQUIRED.
/// It is REQUIRED when the value is true.
/// If this is false, the auth_time Claim can still be dynamically requested as an individual Claim for the IDToken
/// using the claims request parameter described in Section 5.5.1 of OpenID Connect Core.
/// If omitted, the default value is false.
Property "require_auth_time" As %Boolean;

/// OPTIONAL. Default requested Authentication Context Class Reference values.
/// Array of strings that specifies the default acr values that the OP is being
/// requested to use for processing requests from this Client, with the values
/// appearing in order of preference. The Authentication Context Class satisfied
/// by the authentication performed is returned as the acr Claim Value in the
/// issued ID Token. The acr Claim is requested as a Voluntary Claim by this
/// parameter. The acr_values_supported discovery element contains a list of
/// the supported acr values supported by this server. Values specified in the
/// acr_values request parameter or an individual acr Claim request override
/// these default values.<br>
/// This property is currently not supported and is ignored during registration.
Property "default_acr_values" As %List;

/// OPTIONAL. URI using the https scheme that a third party can use to initiate
/// a login by the RP, as specified in Section 4 of OpenID Connect Core.
/// The URI MUST accept requests via both GET and POST.
/// The Client MUST understand the login_hint and iss parameters and SHOULD
/// support the target_link_uri parameter.<br>
/// This property is currently not supported and is ignored during registration.
Property "initiate_login_uri" As %OAuth2.uri;

/// OPTIONAL. Array of request_uri values that are preregistered by the RP for use at the OP.
/// Servers MAY cache the contents of the files referenced by
/// these URIs and not retrieve them at the time they are used in a request.
/// OPs can require that request_uri values used be preregistered
/// with the require_request_uri_registration discovery parameter.
/// If the contents of the request file could ever change, these URI values
/// SHOULD include the base64url encoded SHA256 hash value of the file
/// contents referenced by the URI as the value of the URI fragment.
/// If the fragment value used for a URI changes, that signals the server that its
/// cached value for that URI with the old fragment value is no longer valid.
Property "request_uris" As %List;

/// OPTIONAL. URL that will cause the client to log itself out when rendered in an iframe by the OpenID Provider.
/// This URL SHOULD use the https scheme and MAY contain port, path, and query parameter components; however,
/// it MAY use the http scheme, provided that the Client Type is confidential, as defined in Section 2.1 of
/// OAuth 2.0 [RFC6749], and provided the OP allows the use of http client URIs. An iss (issuer) query parameter and a
/// sid (session ID) query parameter MAY be included by the OP to enable the client to validate the request and
/// to determine which of the potentially multiple sessions is to be logged out; if either is included, both MUST be.
Property "frontchannel_logout_uri" As %OAuth2.uri;

/// OPTIONAL. Boolean value specifying whether the client requires that iss (issuer) and sid (session ID)
/// query parameters be included to identify the client session with the OpenID Provider
/// when the frontchannel_logout_uri is used. If omitted, the default value is false.
Property "frontchannel_logout_session_required" As %Boolean;

/// Array of URLs supplied by the client to which it MAY request that the End-User's User Agent be redirected
/// after a logout has been performed.
Property "post_logout_redirect_uris" As %List;

/// Set algorithm values for all metadata algorithms
Method SetAlgs(sigalg As %String, encalg As %String, keyalg As %String) [ Internal ]
{
}

/// Set signature algorithm values for all metadata algorithms
Method SetSigAlgs(sigalg As %String) [ Internal ]
{
}

/// Set key algorithm values for all metadata algorithms
Method SetKeyAlgs(keyalg As %String) [ Internal ]
{
}

/// Set encryption algorithm values for all metadata algorithms
Method SetEncAlgs(encalg As %String) [ Internal ]
{
}

/// Check that the algorithm that is sent to the server is valid for the server
Method CheckAlgorithm(property As %String, supportedAlgs As %List) As %OAuth2.Error
{
}

/// Check that the encryption and key algorithms are consistent
Method CheckEncAlgorithm(propertyBase As %String) As %OAuth2.Error
{
}

}
