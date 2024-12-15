/// OAuth2. ServerDefinition is a persistent class which defines an authorization server which
/// is available to this InterSystems IRIS instance for OAuth 2.0 client definition.
/// The authorization server definition may be used by multiple client application definitions.
Class OAuth2.ServerDefinition Extends %Persistent [ System = 4 ]
{

/// The server definition is indexed by hash to make IssuerEndpoint unique.
/// The endpoint URL to be used to identify the authorization server.<br>
/// Required for all ClientTypes.<br>
Property IssuerEndpoint As %String(COLLATION = "EXACT", MAXLEN = "") [ Required ];

Method IssuerEndpointSet(issuerEndpoint As %String) As %Status [ Internal ]
{
}

/// SHA512 hash of the IssuerEndpoint to be used only for indexing
Property Hash As %String(COLLATION = "EXACT", MAXLEN = 64) [ Internal ];

/// The optional initial registration access token which may be specified out of band
/// and is used as a bearer token to authorize the synamic client registartion request.
Property InitialAccessToken As %String(MAXLEN = "");

/// The name of the activated TLS/SSL configuration to use for authorization server Discovery requests.<br>
/// Chosen by user during configuration.
Property SSLConfiguration As %String(MAXLEN = 64, MINLEN = 1);

/// **** Moved to OAuth2.Server.Metadata when dynamic client support introduced<br>
/// The endpoint URL to be used for to request an authorization code from the authorization server.<br>
/// Required if ClientType is public or confidential.<br>
/// Based on Authorization Server documentation.
Property AuthorizationEndpoint As %OAuth2.uri;

/// Store value in metadata for compatibility
Method AuthorizationEndpointSet(authorizationEndpoint As %String) As %Status [ Internal ]
{
}

/// Get value from metadata for compatibility
Method AuthorizationEndpointGet() As %String [ Internal ]
{
}

/// **** Moved to OAuth2.Server.Metadata when dynamic client support introduced<br>
/// The endpoint URL to be used for to request an access token from the authorization server.<br>
/// Required for all ClientTypes.<br>
/// Based on Authorization Server documentation.
Property TokenEndpoint As %OAuth2.uri;

/// Store value in metadata for compatibility
Method TokenEndpointSet(tokenEndpoint As %String) As %Status [ Internal ]
{
}

/// Get value from metadata for compatibility
Method TokenEndpointGet() As %String [ Internal ]
{
}

/// **** Moved to OAuth2.Server.Metadata when dynamic client support introduced<br>
/// The endpoint URL to be used for to make a userinfo request using an access token from the
/// authorization server for authorization
Property UserinfoEndpoint As %OAuth2.uri;

/// Store value in metadata for compatibility
Method UserinfoEndpointSet(userinfoEndpoint As %String) As %Status [ Internal ]
{
}

/// Get value from metadata for compatibility
Method UserinfoEndpointGet() As %String [ Internal ]
{
}

/// **** Moved to OAuth2.Server.Metadata when dynamic client support introduced<br>
/// The endpoint URL to be used for to make a RFC 7662 based token introspection request
/// using the client_id and client_secret for authorization.
Property IntrospectionEndpoint As %OAuth2.uri;

/// Store value in metadata for compatibility
Method IntrospectionEndpointSet(introspectionEndpoint As %String) As %Status [ Internal ]
{
}

/// Get value from metadata for compatibility
Method IntrospectionEndpointGet() As %String [ Internal ]
{
}

/// **** Moved to OAuth2.Server.Metadata when dynamic client support introduced<br>
/// The endpoint URL to be used for to make a RFC 7009 based token revocation request
/// using the client_id and client_secret for authorization.
Property RevocationEndpoint As %OAuth2.uri;

/// Store value in metadata for compatibility
Method RevocationEndpointSet(revocationEndpoint As %String) As %Status [ Internal ]
{
}

/// Get value from metadata for compatibility
Method RevocationEndpointGet() As %String [ Internal ]
{
}

/// ServerCredentials is the alias of the %SYS.X509Credentials object which contains the server's certificate.
Property ServerCredentials As %String;

/// PublicJWKS is the JWKS which contains the public asymmetric keys for this authorization server obtained manually or
/// via the jwks_uri metadata property during discovery.<br>
/// This property should never be set directly for configuration.
Property PublicJWKS As %String(MAXLEN = "") [ Internal ];

/// PublicJWKSExpires gives the time (in seconds) when the PublicJWKS will expire, or -1 if the PublicJWKS does not expire,
/// or 0, meaning that it should not be stored. If the PublicJWKS was retrieved from the jwks_uri metadata parameter,
/// this value will be determined based on the HTTP headers of the response. Otherwise, it should be -1 (no expiration.)
/// This property should not be directly manipulated.
Property PublicJWKSExpires As %Integer [ Internal ];

/// The meta data which describes this authorization server,
Property Metadata As OAuth2.Server.Metadata;

/// The clients that use this server defintion.
Relationship Clients As OAuth2.Client [ Cardinality = many, Inverse = ServerDefinition ];

/// Flag indicating if the definition is created through Discovery. If it is saved through Manual then it is 0. Otherwise it is 1.
Property IsDiscovery As %Boolean [ InitialExpression = 0, Internal ];

/// Get a new OAuth2.ServerDefinition instance.
Method %OnNew() As %Status [ Internal, Private ]
{
}

/// Manually set the authorization server supplied public JWKS and optionally jwks_uri.
Method SetPublicJWKS(publicJWKS As %String = "", jwksUri As %String = "") As %Status
{
}

/// Open the OAuth2.ServerDefinition instance.
ClassMethod Open(serverDefinitionId As %String, Output sc As %Status) As OAuth2.ServerDefinition
{
}

/// Open an OAuth2.ServerDefinition instance based on the IssuerEndpoint property
ClassMethod OpenByIssuer(issuerEndpoint As %String, Output sc As %Status) As OAuth2.ServerDefinition
{
}

/// Get the authorization server metadata from the server's discovery endpoint.
ClassMethod GetServerMetadata(issuerEndpoint As %String, sslConfiguration As %String, Output metadata As OAuth2.Server.Metadata) As %Status [ Internal ]
{
}

/// Upgrade OAuth2.ServerDefinition instance when dynamic client support introduced
Method Upgrade() As %Status [ Internal ]
{
}

/// Get and save a new public JWKS for the authorization server if the JWKS was specified using jwks_uri metadata.
/// Returns a status code. <br>
/// This method is deprecated. New code should use <Method>RefreshJWKS</Method> instead.
Method UpdateJWKS(Output sc As %Status) As %Status [ Deprecated ]
{
}

/// If the server's public JWKS was specified using the jwks_uri metadata parameter, this method will fetch the jwks if
/// it has expired. <br/> <br/>
/// <b>Parameters</b>:
/// 	<ul>
/// 	<li><b>force</b> - refresh the jwks even if the cached version is still valid (default is 0)</li>
/// 	<li><b>save</b> - save the server definition (default is 1)</li>
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
Method %OnAddToSaveSet(depth As %Integer = 3, insert As %Integer = 0, callcount As %Integer = 0) As %Status [ Internal ]
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

/// Delete this server definition.
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

/// Get count of clients for this server definition
Method ClientCount() As %Integer
{
}

/// List authorization servers available to client applications for SMP page
}
