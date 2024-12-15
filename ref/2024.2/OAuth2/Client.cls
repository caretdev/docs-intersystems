/// The OAuth2.Client class describes an OAuth2 client and references the Authorization server
/// that it uses to authorize the application based on RFC 6749.
/// A client system may be used with multiple authorization servers for different applications.<br>
Class OAuth2.Client Extends %Persistent [ System = 4 ]
{

/// The IDKEY for the application class.
/// The ApplicationName identifies this application (client + authorization server) configuration.<br>
/// Chosen by user during configuration.
Property ApplicationName As %String(MAXLEN = 128, MINLEN = 1) [ Required ];

/// True if client application is enabled.<br>
/// Chosen by user during configuration.
Property Enabled As %Boolean [ InitialExpression = 1, Required ];

/// Description of the application.<br>
/// Chosen by user during configuration.
Property Description As %String(MAXLEN = 256);

/// The type of client configuration:<br>
/// public - a public client.  See RFC 6749
/// confidential - a confidential client.  See RFC 6749
/// resource - a resource server which is not also a client.<br>
/// Chosen by user during configuration.  Will usually be confidential client for an InterSystems IRIS application.
Property ClientType As %String(VALUELIST = ",public,confidential,resource") [ Required ];

/// The name of the activated TLS/SSL configuration to use for authorization server requests.<br>
/// Chosen by user during configuration.
Property SSLConfiguration As %String(MAXLEN = 64, MINLEN = 1) [ Required ];

/// The endpoint object for the URL to be used by the authorization server to return the response to an authorization request.<br>
/// Required if ClientType is public or confidential,
/// Chosen by user during configuration.
Property RedirectionEndpoint As OAuth2.Endpoint;

/// The default scope, as a blank separated list, for access token requests.<br>
/// Chosen by user during configuration.
Property DefaultScope As %String(MAXLEN = "");

/// JWTInterval is the interval in seconds after which a JWT expires
/// which is used for client_secret_jwt or private_key_jwt authentication types.
/// The default is 1 minute.
/// There should be no need to change the default since this JWT may only be used once.
Property JWTInterval As %Integer [ InitialExpression = 60 ];

/// Use a getter method to force default value for existing client configurations.
Method JWTIntervalGet() As %Integer [ Internal ]
{
}

/// Defines the value to use for the "aud" claim in tokens generated
/// for private_key_jwt and client_secret_jwt authentication methods, as well as
/// for the JWT Authorization grant type. For new configurations this will be the
/// authorization server's token endpoint by default. For backwards compatibility,
/// if this is undefined the client will use the issuer endpoint.
Property JWTAudience As %String(MAXLEN = 256);

Method JWTAudienceGet() As %String
{
}

/// The client id that is supplied during client registration.<br>
/// Required for all ClientTypes.
Property ClientId As %String(MAXLEN = "");

/// The client secret that is supplied during client registration.<br>
/// Required if ClientType is confidential or resource server.
Property ClientSecret As %String(MAXLEN = "");

/// ClientCredentials is the alias of the %SYS.X509Credentials object which contains the client's
/// certificate and private key.
Property ClientCredentials As %String;

/// ClientPassword is the password for the private key in ClientCredentials if the password is not in the %SYS.X5009Credentials object
Property ClientPassword As %String(MAXLEN = 128);

/// PrivateJWKS is the JWKS which contains the private asymmetric keys for this client.
/// If ClientCredentials is specified, then PrivateJWKS is created using the public/private key pair specified by these credentials.
/// Otherwise, we generate the private/public keys pairs.<br>
/// This property should never be set directly for configuration.
Property PrivateJWKS As %String(MAXLEN = "") [ Internal ];

/// PublicJWKS is the JWKS which contains the public asymmetric keys for this client which are to be made
/// available via the jwks_uri metadata property.
/// If ClientCredentials is specified, then PublicJWKS is created along with PrivateJWKS using the
/// public/private key pair specified by these credentials.
/// Otherwise, we generate the private/public keys pairs.<br>
/// This property should never be set directly for configuration.
Property PublicJWKS As %String(MAXLEN = "") [ Internal ];

/// JWKSFromCredentials is true if the JWKSs were created from ClientCredentials<>br>
/// This property should never be set directly for configuration.
Property JWKSFromCredentials As %Boolean [ InitialExpression = 0, Internal ];

/// This property is deprecated. The public keys are stored in <b>PublicJWKS</b> property of <class>OAuth2.ServerDefinition</class>
/// and the symmetric keys are stored in <property>SymmetricJWKS</property>.
Property RemotePublicJWKS As %String(MAXLEN = "") [ Deprecated, Internal ];

/// This property is deprecated. The public keys and their expiration are managed by <class>OAuth2.ServerDefininition</class>.
Property RemotePublicJWKSExpires As %Integer [ Deprecated, Internal ];

/// SymmetricJWKS stores the symmetric keys used by this OAuth2 client configuration. These keys are typically derived from the
/// client secret.
Property SymmetricJWKS As %String(MAXLEN = "") [ Internal ];

/// **** Replaced by OAuth2.Client.Metadata properties when dynamic client support introduced<br>
/// The type of authentication (as specified in RFC 6749 or OpenID Connect Core section 9)
/// to be used for HTTP requests to the authorization server.
Property AuthenticationType As %String(VALUELIST = ",none,basic,body,client_secret_jwt,private_key_jwt") [ Deprecated, InitialExpression = "basic" ];

/// Store value in metadata for compatibility
Method AuthenticationTypeSet(authenticationType As %String) As %Status [ Internal ]
{
}

/// Get value from metadata for compatibility
Method AuthenticationTypeGet() As %String [ Internal ]
{
}

/// **** Replaced by OAuth2.Client.Metadata properties when dynamic client support introduced
Property SigningAlgorithm As %String(VALUELIST = ",RS256,RS384,RS512") [ Deprecated ];

/// Store value in metadata for compatibility
Method SigningAlgorithmSet(signingAlgorithm As %String) As %Status [ Internal ]
{
}

/// No value for kinds of JWTs
Method SigningAlgorithmGet() As %String [ Internal ]
{
}

/// **** Replaced by OAuth2.Client.Metadata properties when dynamic client support introduced
Property EncryptionAlgorithm As %String(VALUELIST = ",A128CBC-HS256,A192CBC-HS384,A256CBC-HS512") [ Deprecated ];

/// Store value in metadata for compatibility
Method EncryptionAlgorithmSet(encryptionAlgorithm As %String) As %Status [ Internal ]
{
}

/// No value for kinds of JWTs
Method EncryptionAlgorithmGet() As %String [ Internal ]
{
}

/// **** Replaced by OAuth2.Client.Metadata properties when dynamic client support introduced
Property KeyAlgorithm As %String(VALUELIST = ",RSA1_5,RSA-OAEP") [ Deprecated ];

/// Store value in metadata for compatibility
Method KeyAlgorithmSet(keyAlgorithm As %String) As %Status [ Internal ]
{
}

/// No value for kinds of JWTs
Method KeyAlgorithmGet() As %String [ Internal ]
{
}

/// The meta data which describes this client.
Property Metadata As OAuth2.Client.Metadata;

/// If AcceptNonStandardImplicitIdToken is true, then this client will accept requested id tokens even
/// when the server response they are sent in does not contain the openid scope.
Property AcceptNonStandardImplicitIdToken As %Boolean [ InitialExpression = 0 ];

/// ServerDefinition is the reference to the OAuth2.ServerDefinition object which describes
/// the authorization server to be used for this client.
Relationship ServerDefinition As OAuth2.ServerDefinition [ Cardinality = one, Inverse = Clients ];

/// Get a new OAuth2.Client instance.
Method %OnNew() As %Status [ Internal, Private ]
{
}

/// Open an OAuth2.Client instance based on the applicationName ID property
ClassMethod Open(applicationName As %String, Output sc As %Status) As OAuth2.Client
{
}

/// Upgrade OAuth2.Client instance when dynamic client support introduced
Method Upgrade() As %Status [ Internal ]
{
}

/// Update the client metadata.
/// This method is called before creating the JSON string needed for dynamic client registration
/// to update the metadata properties which can be changed after compile time.
Method UpdateMetadata() As %Status [ Internal ]
{
}

/// Update the client configuration based on the metadata response returned during dynamic registration.
Method GetReturnedMetadata() [ Internal ]
{
}

/// Register this client using OpenID Connect Dynamic Client Registration.
/// If successful, this client instance will be updated based on the registration.
Method RegisterClient() As %Status [ Internal ]
{
}

/// Read the client metadata for this client using OpenID Connect Dynamic Client Registration.
/// If successful, this client instance will be updated based on the registration.
Method ReadClient() As %Status [ Internal ]
{
}

/// Read the client metadata for this client using OpenID Connect Dynamic Client Registration.
/// If successful, this client instance will be updated based on the registration.
Method UpdateClient() As %Status [ Internal ]
{
}

/// Delete the client metadata stored on the server using Dynamic Client Registration.
/// The metadata for the client registration is removed, but the client itself is not deleted.
Method DeleteClientRegistration() As %Status [ Internal ]
{
}

Method GetMetadataFromRequest(httpRequest As %Net.HttpRequest, jsonObject As %DynamicAbstractObject, updateClient) As %Status [ Private ]
{
}

/// Rotate the client's public/private key pairs by adding a new key pair to the JWKS and saving the JWKS.
/// At this time, all private keys are kept.  In the future only a limited set of private keys will be kept.
Method RotateKeys() As %Status
{
}

/// If the server's public JWKS was specified using the jwks_uri metadata parameter, this method will fetch the jwks if
/// it has expired. <br/> <br/>
/// <b>Parameters</b>:
/// 	<ul>
/// 	<li><b>force</b> - refresh the jwks even if the cached version is still valid (default is 0)</li>
/// 	<li><b>save</b> - save the client definition (default is 1)</li>
/// 	<li><b>sc</b> (output) - Status code structure containing any errors</li>
/// 	</ul>
/// <b>Returns</b>:
/// 	<ul>
/// 	<li><b>1</b> - if the jwks was updated</li>
/// 	<li><b>0</b> - if the cached version was still valid</li>
/// 	</ul>
Method RefreshJWKS(force As %Boolean = 0, save As %Boolean = 1, Output sc As %Status) As %Boolean
{
}

Method %OnValidateObject() As %Status [ Internal, Private ]
{
}

/// This callback method is invoked when the current object is added to the SaveSet,
/// either because %Save() was invoked on this object or on an object that references this object.
/// %OnAddToSaveSet can modify the current object. It can also add other objects to the current
/// SaveSet by invoking %AddToSaveSet or remove objects by calling %RemoveFromSaveSet.
///
/// <P>If this method returns an error status then %Save() will fail and the transaction
/// will be rolled back.
Method %OnAddToSaveSet(depth As %Integer = 3, insert As %Integer = 0, callcount As %Integer = 0) As %Status [ Internal, Private, ServerOnly = 1 ]
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

/// Delete this client configuration.
ClassMethod DeleteId(id As %String) As %Status
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

/// List client applications for SMP page
/// List client applications that use the sppecified server
}
