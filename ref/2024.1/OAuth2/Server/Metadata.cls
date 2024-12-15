/// Authorization Server metadata as specified by OpenID Connect Discovery.<br>
/// OPTIONAL, REQUIRED and RECOMMENDED in the property descriptions below refer to optional/required/recommended
/// by the OpenID Connect specifications.
Class OAuth2.Server.Metadata Extends (%Persistent, OAuth2.Metadata) [ System = 4 ]
{

/// REQUIRED. URL using the https scheme with no query or fragment
/// component that the OP asserts as its Issuer Identifier.
/// This also MUST be identical to the iss Claim value in ID Tokens issued from this Issuer.
Property issuer As %OAuth2.uri;

/// REQUIRED. URL of the OP's OAuth 2.0 Authorization Endpoint.
Property "authorization_endpoint" As %OAuth2.uri;

/// URL of the OP's OAuth 2.0 Token Endpoint.
/// This is REQUIRED unless only the Implicit Flow is used.
Property "token_endpoint" As %OAuth2.uri;

/// RECOMMENDED. URL of the OP's UserInfo Endpoint.
/// This URL MUST use the https scheme and MAY contain port, path, and query parameter components.
Property "userinfo_endpoint" As %OAuth2.uri;

/// ADDITIONAL.  OAuth 2.0 revocation endpoint as defined by RFC 7009
Property "revocation_endpoint" As %OAuth2.uri;

/// ADDITIONAL.  OAuth 2.0 introspection endpoint as defined by RFC 7662
Property "introspection_endpoint" As %OAuth2.uri;

/// REQUIRED. URL of the OP's JSON Web Key Set document. This
/// contains the signing key(s) the RP uses to validate signatures from the OP.
/// The JWK Set MAY also contain the Server's encryption key(s), which are
/// used by RPs to encrypt requests to the Server. When both signing and
/// encryption keys are made available, a use (Key Use) parameter value is
/// REQUIRED for all keys in the referenced JWK Set to indicate each key's
/// intended usage. Although some algorithms allow the same key to be used for
/// both signatures and encryption, doing so is NOT RECOMMENDED," As it is less
/// secure. The JWK x5c parameter MAY be used to provide X.509
/// representations of keys provided. When used, the bare key values MUST still
/// be present and MUST match those in the certificate.
Property "jwks_uri" As %OAuth2.uri;

/// RECOMMENDED. URL of the OP's Dynamic Client Registration Endpoint.
Property "registration_endpoint" As %OAuth2.uri;

/// REQUIRED. URL at the OP to which an RP can perform a redirect to request that
/// the End-User be logged out at the OP.
Property "end_session_endpoint" As %OAuth2.uri;

/// RECOMMENDED. An array, which is represented as a $list, containing a list of the RFC6749
/// scope values that this server supports. The server MUST support the openid scope value.
/// Servers MAY choose not to advertise some supported scope values even when this parameter
/// is used, although those defined in SHOULD be listed, if supported.
Property "scopes_supported" As %List;

/// REQUIRED. An array, which is represented as a $list, containing a list of the OAuth 2.0 response_type
/// values that this OP supports. Dynamic OpenID Providers MUST support the
/// code, id_token, and the token id_token Response Type values.
Property "response_types_supported" As %List;

/// OPTIONAL. An array, which is represented as a $list, containing a list of the OAuth 2.0 response_mode
/// values that this OP supports. If omitted, the default for Dynamic OpenID Providers is ["query", "fragment"].
Property "response_modes_supported" As %List;

/// OPTIONAL. JSON array containing a list of Proof Key for Code Exchange (PKCE) [RFC7636] code challenge
/// methods supported by this authorization server. Code challenge method values are used in the
/// "code_challenge_method" parameter defined in Section 4.3 of [RFC7636].  The valid code challenge method
/// values are those registered in the IANA "PKCE Code Challenge Methods" registry. [IANA.OAuth.Parameters].
/// If omitted, the authorization server does not support PKCE.
Property "code_challenge_methods_supported" As %List;

/// OPTIONAL. An array, which is represented as a $list, containing a list of the OAuth 2.0 Grant Type values
/// that this OP supports. Dynamic OpenID Providers MUST support the
/// authorization_code and implicit Grant Type values and MAY support other Grant Types.
/// If omitted, the default value is ["authorization_code", "implicit"].
Property "grant_types_supported" As %List;

/// OPTIONAL. An array, which is represented as a $list, containing a list of the Authentication Context Class
/// References that this OP supports.<br>
/// This property is currently not supported and is ignored during registration.
Property "acr_values_supported" As %List;

/// REQUIRED. An array, which is represented as a $list, containing a list of the Subject Identifier types that
/// this OP supports. Valid types include pairwise and public.<br>
/// This property is currently not supported and is ignored during registration.
Property "subject_types_supported" As %List;

/// REQUIRED. An array, which is represented as a $list, containing a list of the JWS signing algorithms (alg
/// values) supported by the OP for the ID Token to encode the Claims in a JWT.
/// The algorithm RS256 MUST be included. The value none MAY be
/// supported, but MUST NOT be used unless the Response Type used returns no
/// ID Token from the Authorization Endpoint (such As when using the
/// Authorization Code Flow).
Property "id_token_signing_alg_values_supported" As %List;

/// OPTIONAL. An array, which is represented as a $list, containing a list of the JWE encryption algorithms
/// (alg values) supported by the OP for the ID Token to encode the Claims in a JWT.
Property "id_token_encryption_alg_values_supported" As %List;

/// OPTIONAL. An array, which is represented as a $list, containing a list of the JWE encryption algorithms
/// (enc values) supported by the OP for the ID Token to encode the Claims in a JWT.
Property "id_token_encryption_enc_values_supported" As %List;

/// OPTIONAL. An array, which is represented as a $list, containing a list of the JWS signing algorithms
/// (alg values) supported by the UserInfo Endpoint to encode the Claims in a JWT.
/// The value none MAY be included.
Property "userinfo_signing_alg_values_supported" As %List;

/// OPTIONAL. An array, which is represented as a $list, containing a list of the JWE encryption
/// algorithms (alg values) supported by the UserInfo Endpoint to encode the Claims in a JWT.
Property "userinfo_encryption_alg_values_supported" As %List;

/// OPTIONAL. An array, which is represented as a $list, containing a list of the JWE encryption algorithms
/// (enc values) supported by the UserInfo Endpoint to encode the Claims in a JWT.
Property "userinfo_encryption_enc_values_supported" As %List;

/// ADDITIONAL. An array, which is represented as a $list, containing a list of the JWS signing algorithms
/// (alg values) supported for access token returned as a JWT to encode the Claims in a JWT.
/// The value none MAY be included.
Property "access_token_signing_alg_values_supported" As %List;

/// ADDITIONAL. An array, which is represented as a $list, containing a list of the JWE encryption
/// algorithms (alg values) supported for access token returned as a JWT to encode the Claims in a JWT.
Property "access_token_encryption_alg_values_supported" As %List;

/// ADDITIONAL. An array, which is represented as a $list, containing a list of the JWE encryption algorithms
/// (enc values) supported for access token returned as a JWT to encode the Claims in a JWT.
Property "access_token_encryption_enc_values_supported" As %List;

/// OPTIONAL. An array, which is represented as a $list, containing a list of the JWS signing algorithms (alg values)
/// supported by the OP for Request Objects, which are described in Section 6.1 of OpenID Connect Core.
/// These algorithms are used both when the Request Object is passed by value (using the request parameter)
/// and when it is passed by reference (using the request_uri parameter).
/// Servers SHOULD support none and RS256.
Property "request_object_signing_alg_values_supported" As %List;

/// OPTIONAL. An array, which is represented as a $list, containing a list of the JWE encryption algorithms
/// (alg values) supported by the OP for Request Objects.
/// These algorithms are used both when the Request Object is passed by value and when it is passed by reference.
Property "request_object_encryption_alg_values_supported" As %List;

/// OPTIONAL. An array, which is represented as a $list, containing a list of the JWE encryption algorithms
/// (enc values) supported by the OP for Request Objects.
/// These algorithms are used both when the Request Object is passed by value and when it is passed by reference.
Property "request_object_encryption_enc_values_supported" As %List;

/// OPTIONAL. An array, which is represented as a $list, containing a list of Client Authentication methods
/// supported by this Token Endpoint. The options are client_secret_post, client_secret_basic,
/// client_secret_jwt, and private_key_jwt, as described in Section 9 of OpenID Connect Core.
/// If omitted, the default is client_secret_basic the HTTP Basic Authentication Scheme specified
/// in Section 2.3.1 of RFC6749.
Property "token_endpoint_auth_methods_supported" As %List;

/// OPTIONAL. An array, which is represented as a $list, containing a list of the JWS signing algorithms (alg
/// values) supported by the Token Endpoint for the signature on the JWT used to authenticate the Client at
/// the Token Endpoint for the private_key_jwt and client_secret_jwt authentication methods.
/// These JWS algorithms are also used to sign the JWT used for JWT Auhtorization grant.
/// Servers SHOULD support RS256. The value none MUST NOT be used.
Property "token_endpoint_auth_signing_alg_values_supported" As %List;

/// OPTIONAL. An array, which is represented as a $list, containing a list of the display parameter values
/// that the OpenID Provider supports. These values are described in Section 3.1.2.1 of OpenID Connect Core.<br>
/// This property is currently not supported and is ignored during registration.
Property "display_values_supported" As %List;

/// OPTIONAL. An array, which is represented as a $list, containing a list of the Claim Types that the OpenID
/// Provider supports. These Claim Types are described in Section 5.6 of OpenID Connect Core.
/// Values defined by this specification are normal, aggregated, and distributed.<br>
/// This property is currently not supported and is ignored during registration.
/// If omitted, the implementation supports only normal Claims.
Property "claim_types_supported" As %List;

/// RECOMMENDED. An array, which is represented as a $list, containing a list of the Claim Names of the
/// Claims that the OpenID Provider MAY be able to supply values for.
/// Note that for privacy or other reasons, this might not be an exhaustive list.
Property "claims_supported" As %List;

/// OPTIONAL. Languages and scripts supported for values in Claims being
/// returned as an array, which is represented as a $list, of RFC5646 language tag values.
/// Not all languages and scripts are necessarily supported for all Claim values.<br>
/// This property is currently not supported and is ignored during registration.
Property "claims_locales_supported" As %List;

/// OPTIONAL. Languages and scripts supported for the user interface,
/// represented as an array, which is represented as a $list, of RFC5646 language tag values.<br>
/// This property is currently not supported and is ignored during registration.
Property "ui_locales_supported" As %List;

/// OPTIONAL. Boolean value specifying whether the OP supports use of the
/// claims parameter, with true indicating support. If omitted, the default value is false.
Property "claims_parameter_supported" As %Boolean;

/// OPTIONAL. Boolean value specifying whether the OP supports use of the
/// request parameter, with true indicating support. If omitted, the default value is false.
Property "request_parameter_supported" As %Boolean;

/// OPTIONAL. Boolean value specifying whether the OP supports use of the
/// request_uri parameter, with true indicating support. If omitted, the default value is true.
Property "request_uri_parameter_supported" As %Boolean;

/// OPTIONAL. Boolean value specifying whether the OP requires any request_uri values used
/// to be preregistered using the request_uris registration parameter.
/// Preregistration is REQUIRED when the value istrue. If omitted, the default value is false.<br>
/// This property is currently not supported and is ignored during registration.
Property "require_request_uri_registration" As %Boolean;

/// OPTIONAL. URL of a page containing humanreadable information that
/// developers might want or need to know when using the OpenID Provider.
/// In particular, if the OpenID Provider does not support Dynamic Client
/// Registration, then information on how to register Clients needs to be
/// provided in this documentation.
Property "service_documentation" As %OAuth2.uri;

/// OPTIONAL. URL that the OpenID Provider provides to the person registering
/// the Client to read about the OP's requirements on how the Relying Party can
/// use the data provided by the OP. The registration process SHOULD display
/// this URL to the person registering the Client if it is given.
Property "op_policy_uri" As %OAuth2.uri;

/// OPTIONAL. URL that the OpenID Provider provides to the person registering
/// the Client to read about OpenID Provider's terms of service. The registration
/// process SHOULD display this URL to the person registering the Client if it is given.
Property "op_tos_uri" As %OAuth2.uri;

/// OPTIONAL. Boolean value specifying whether the OpenID Provider supports HTTP-based logout, with true
/// indicating support. If omitted, the default value is false.
Property "frontchannel_logout_supported" As %Boolean;

/// OPTIONAL. Boolean value specifying whether the OpenID Provider can pass iss (issuer) and sid (session ID)
/// query parameters to identify the client's session with the OP when frontchannel_logout_uri is used. If supported,
/// the sid Claim is also included in ID Tokens issued by the OP. If omitted, the default value is false.
Property "frontchannel_logout_session_supported" As %Boolean;

}
