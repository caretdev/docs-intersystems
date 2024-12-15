/// The authorization server configuration is maintained by the OAuth2.Server.Configuration class.
/// InterSystems supplies an SMP page, %CSP.UI.Portal.OAuth2.Server.Configuration, which configures the OAuth2 server as part
/// of the SMP.  It is possible to customize the authorization server by replacing this page by a
/// user written page which maintains the OAuth2.Server.Configuration class instance.
Class OAuth2.Server.Configuration Extends %Persistent [ System = 4 ]
{

/// The IDKEY for the singleton configuration class.
/// Key for singleton
Property Key As %String [ InitialExpression = "singleton", Internal ];

/// IssuerEndpoint is the endpoint for this authorization server.
Property IssuerEndpoint As OAuth2.Endpoint [ Required ];

/// Description is a human readable of this authorization server.
Property Description As %String(MAXLEN = 1024);

/// AccessTokenInterval is the interval in seconds after which an access token issued by this
/// server will expire.  The default is 3600 seconds.
Property AccessTokenInterval As %Integer(MINVAL = 1) [ InitialExpression = 3600, Required ];

/// AuthorizationCodeInterval is the interval in seconds after which an authorization code issued
/// by this server will expire.  The default is 60 seconds.
Property AuthorizationCodeInterval As %Integer(MINVAL = 1) [ InitialExpression = 60, Required ];

/// RefreshTokenInterval is the interval in seconds after which a refresh token issued
/// by this server will expire.  The default is 24 hours = 86400 seconds.
Property RefreshTokenInterval As %Integer(MINVAL = 1) [ InitialExpression = 86400, Required ];

/// SessionInterval is the interval in seconds after which a user session will be
/// automatically terminated.  The value 0 means the session will not be automatically terminated.
/// The default is 24 hours = 86400 seconds.
Property SessionInterval As %Integer(MINVAL = 0) [ InitialExpression = 86400, Required ];

/// ClientSecretInterval is the interval in seconds after which a client secret will expire.
/// The default value of 0 means the session will not be automatically terminated.
Property ClientSecretInterval As %Integer(MINVAL = 0) [ InitialExpression = 0 ];

/// SupportedScopes is a %ArrayOfDatatypes which specifies all scopes supported by this Authorization Server.
/// The index for each array element is the scope and the value is the description of the scope for display.
Property SupportedScopes As array Of %String(MAXLEN = "") [ Required ];

/// DefaultScope is a blank separated list containing the default for access token scope
/// if scope is not specified in the access token request or in the client configuration.
Property DefaultScope As %String(MAXLEN = "");

/// If AllowUnsupportedScope is true (1), then unsupported scope values will be ignored.
/// Otherwise, an error will be returned.
Property AllowUnsupportedScope As %Boolean [ InitialExpression = 0 ];

/// **** Moved to OAuth2.Server.Metadata when dynamic client support introduced<br>
/// SupportedGrantTypes is the grant types that are supported to create an access token.
/// This property is a string of 1 to 5 characters with one character for each supported grant type as follows:<br>
/// - "A" - Authorization Code
/// - "I" - Implicit
/// - "P" - Resource Owner Password Credentials
/// - "C" - Client Credentials
/// - "J" - JWT Authorization
Property SupportedGrantTypes As %String(MAXLEN = 5, MINLEN = 1);

/// Store value in metadata for compatibility
Method SupportedGrantTypesSet(supportedGrantTypes As %String) As %Status [ Internal ]
{
}

/// Get value from metadata for compatibility
Method SupportedGrantTypesGet() As %String [ Internal ]
{
}

/// ReturnRefreshToken defines the conditions under which a refresh token is returned along with the access token.
/// This property is a string of multiple condition characters which are OR'ed.
/// "" means only return a RefreshToken as required by OpenID Connect.<br>
/// - "a" - Always
/// - "c" - Confidential client
/// - "f" - if offline_access scope requested
Property ReturnRefreshToken As %String;

/// If SupportSession is true, then OAuth 2.0 user sessions will be supported using
/// the specified SessionClass.
Property SupportSession As %Boolean;

/// If AudRequired is true, then an authorization code and implicit requests require the aud property.
Property AudRequired As %Boolean;

/// If AllowPublicClientRefresh is true, then a clientSecret will NOT be required to process refresh tokens.
Property AllowPublicClientRefresh As %Boolean [ InitialExpression = 0 ];

/// If ForcePKCEForPublicClients is true, then authorization and token requests from public clients
/// MUST adhere to the Proof Key for Code Exchange (PKCE) specification.
Property ForcePKCEForPublicClients As %Boolean [ InitialExpression = 0 ];

/// If ForcePKCEForConfidentialClients is true, then authorization and token requests from confidential clients
/// MUST adhere to the Proof Key for Code Exchange (PKCE) specification.
Property ForcePKCEForConfidentialClients As %Boolean [ InitialExpression = 0 ];

/// CustomizationRoles is a comma separated list of roles that are set for any call
/// to user supplied customization code.
Property CustomizationRoles As %String(MAXLEN = 1024, MINLEN = 1) [ Required ];

/// CustomizationNamespace is the namespace where the customization code is to be run.
Property CustomizationNamespace As %String [ Required ];

/// AuthenticateClass is the name of a subclass of %OAuth2.Server.Authenticate which will be used
/// to allow override of the DirectLogin, DisplayLogin and DisplayPermissions methods during user authorization.
Property AuthenticateClass As %String(MAXLEN = 256, MINLEN = 1) [ InitialExpression = "%OAuth2.Server.Authenticate", Required ];

/// SessionClass is the name of a class with the same signatures as OAuth2.Server.Session
/// which includes GetUser, Login and Logout methods.  These methods maintain an OAuth 2.0
/// session using any appropriate means.  The default OAuth2.Session class uses an httpOnly cookie.
Property SessionClass As %String(MAXLEN = 256, MINLEN = 1) [ InitialExpression = "OAuth2.Server.Session", Required ];

/// ValidateUserClass is the name of a class with the same signatures as %OAuth2.Server.Validate which may override the
/// ValidateUser method which validates a user and associates a set of properties with this user.
Property ValidateUserClass As %String(MAXLEN = 256, MINLEN = 1) [ InitialExpression = "%OAuth2.Server.Validate", Required ];

/// GenerateTokenClass is the name of a class with the same signatures as %OAuth2.Server.Generate which overrides
/// the GenerateToken method.  The GenerateToken method must generate an opaque token consisting of a random number.
/// We will also supply a class matching the %OAuth2.Server.Generate interface - %OAuth2.Server.JWT, which will
/// generate a signed JWT based on the token properties.
Property GenerateTokenClass As %String(MAXLEN = 256, MINLEN = 1) [ InitialExpression = "%OAuth2.Server.Generate", Required ];

/// RevokeTokenClass is the name of a class with the same signatures as %OAuth2.Server.Revoke which overrides
/// the OnRevokeToken method.  Any custom handling on token revocation can be done in this method.
Property RevokeTokenClass As %String(MAXLEN = 256, MINLEN = 1) [ InitialExpression = "%OAuth2.Server.Revoke", Required ];

/// ServerCredentials is the alias of the %SYS.X509Credentials object which contains the authoriization server's
/// certificate and private key.
Property ServerCredentials As %String;

/// ServerPassword is the password for the private key in ServerCredentials if the password is not in the %SYS.X5009Credentials object
Property ServerPassword As %String(MAXLEN = 128);

/// PrivateJWKS is the JWKS which contains the private asymmetric keys for this server.
/// If ServerCredentials is specified, then PrivateJWKS is created using the public/private key pair specified by these credentials.
/// Otherwise, we generate the private/public keys pairs.<br>
/// This property should never be set directly for configuration.
Property PrivateJWKS As %String(MAXLEN = "") [ Internal ];

/// PublicJWKS is the JWKS which contains the public asymmetric keys for this server which are to be made
/// available via the jwks_uri metadata property.
/// If ServerCredentials is specified, then PrivateJWKS is created using the public/private key pair specified by these credentials.
/// Otherwise, we generate the private/public keys pairs.<br>
/// This property should never be set directly for configuration.
Property PublicJWKS As %String(MAXLEN = "") [ Internal ];

/// JWKSFromCredentials is true if the JWKSs were created from ServerCredentials.<br>
/// This property should never be set directly for configuration.
Property JWKSFromCredentials As %Boolean [ InitialExpression = 0 ];

/// SigningAlgorithm specifies the default signing algorithm used to create JWSs or "" if JWTs are not to be signed.
/// SigningAlgorithm is used for any client specific algorithm which is not specified.
/// See <Class>%Net.JSON.JWA</Class> for the list of supported algorithms.
Property SigningAlgorithm As %String(VALUELIST = ",HS256,HS384,HS512,RS256,RS384,RS512,ES256,ES384,ES512") [ InitialExpression = "RS256" ];

/// EncryptionAlgorithm specifies the default encryption algorithm used to create JWEs or "" if JWTs are not to be encrypted.
/// EncryptionAlgorithm is used for any client specific algorithm which is not specified.
/// See <Class>%Net.JSON.JWA</Class> for the list of supported algorithms.
/// If EncryptionAlgorithm is specified, KeyAlgorithm must also be specified.
Property EncryptionAlgorithm As %String(VALUELIST = ",A128CBC-HS256,A192CBC-HS384,A256CBC-HS512");

/// KeyAlgorithm specifies the default key management algorithm used to create JWEs or "" if JWTs are not to be encrypted.
/// Keylgorithm is used for any client specific algorithm which is not specified.
/// See <Class>%Net.JSON.JWA</Class> for the list of supported algorithms.
/// If KeyAlgorithm is specified, EncryptionAlgorithm must also be specified.
Property KeyAlgorithm As %String(VALUELIST = ",RSA1_5,RSA-OAEP,A128KW,A192KW,A256KW,dir");

/// The name of the activated TLS/SSL configuration to use loading a request object.<br>
/// Chosen by user during configuration.
Property SSLConfiguration As %String(MAXLEN = 64);

/// The meta data which describes this authorization server,
Property Metadata As OAuth2.Server.Metadata;

/// Get the issuer URL
Method GetIssuerURL() As %String [ Internal ]
{
}

/// Get a new OAuth2.Server.Configuration instance.
Method %OnNew() As %Status [ Internal, Private ]
{
}

/// Open the single OAuth2.Server.Configuration instance.
ClassMethod Open(Output sc As %Status) As OAuth2.Server.Configuration
{
}

/// Save the single OAuth2.Server.Configuration instance.
/// If this is the first time the configuration is saved, the Save method will
/// also create a CSP application for this authorization server.
/// The CSP application will be /csp/oauth2server.
Method Save() As %Status
{
}

/// Delete this configuration.
ClassMethod Delete() As %Status
{
}

Method DeleteSessions() As %Status [ Private ]
{
}

/// Get server supported algorithms
/// This method is deprecated. Use the <b>GetSupportedAlgorithms</b> method in <class>%OAuth2.Utils</class> instead.
ClassMethod GetSupportedAlgorithms(Output sigalgs As %List, Output encalgs As %List, Output keyalgs As %List) [ Deprecated ]
{
}

/// Update the server metadata.
/// This method is called before creating the JSON string requested using the discovery URL to
/// update the metadata properties which can be changed after compile time.
Method UpdateMetadata() [ Internal ]
{
}

Parameter HTTP200OK As STRING = "200 OK";

Parameter HTTP500INTERNALSERVERERROR As STRING = "500 Internal Server Error";

/// Return authorization server metadata as JSON object per OpenID Connect Discovery.
ClassMethod Discovery() As %Status [ Internal, ServerOnly = 1 ]
{
}

/// Rotate the auhtorization server's public/private key pairs by adding a new key pair to the JWKS and saving the JWKS.
/// At this time, all private keys are kept.  In the future only a limited set of private keys will be kept.
Method RotateKeys() As %Status
{
}

/// This callback method is invoked when the current object is added to the SaveSet,
/// either because %Save() was invoked on this object or on an object that references this object.
/// %OnAddToSaveSet can modify the current object. It can also add other objects to the current
/// SaveSet by invoking %AddToSaveSet or remove objects by calling %RemoveFromSaveSet.
///
/// <P>If this method returns an error status then %Save() will fail and the transaction
/// will be rolled back.
Method %OnAddToSaveSet(depth As %Integer = 3, insert As %Integer = 0, callcount As %Integer = 0) As %Status [ Internal ]
{
}

Method %OnValidateObject() As %Status [ Internal, Private ]
{
}

/// This callback method is invoked by the <METHOD>%Save</METHOD> method to
/// provide notification that the object is being saved. It is called before
/// any data is written to disk.
///
/// <P><VAR>insert</VAR> will be set to 1 if this object is being saved for the first time.
///
/// <P>If this method returns an error then the call to <METHOD>%Save</METHOD> will fail.
Method %OnBeforeSave(insert As %Boolean) As %Status [ Internal, Private ]
{
}

/// This callback method is invoked by the <METHOD>%Delete</METHOD> method to
/// provide notification that the object specified by <VAR>oid</VAR> is being deleted.
///
/// <P>If this method returns an error then the object will not be deleted.
/// [Previously private]
ClassMethod %OnDelete(oid As %ObjectIdentity) As %Status [ Internal ]
{
}

/// Get the CSP application name for OAuth2
ClassMethod GetCSPApplication(server As %Boolean) As %String [ Internal ]
{
}

/// Create CSP application that is used by OAuth2
ClassMethod CreateCSPApplication(server As %Boolean) As %Status [ Internal ]
{
}

}
