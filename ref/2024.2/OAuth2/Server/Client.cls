/// OAuth2.Server.Client is a persistent class which describes the clients
/// which have registered with this authorization server.
///
/// This class is used internally by InterSystems IRIS. You should not make direct
/// use of it within your applications. There is no guarantee made about either
/// the behavior or future operation of this class.
Class OAuth2.Server.Client Extends %Persistent [ System = 4 ]
{

/// The IDKEY for the client configuration class.
/// The unique id which we generate for this client.
Property ClientId As %String(MAXLEN = 1024, MINLEN = 1) [ Required ];

/// ClientSecret is the secret which is used as a client password.
Property ClientSecret As %String(MAXLEN = 1024);

/// The name of this client. When using dynamic registration the initial value will be the value of the "client_name" metadata field.
Property Name As %String(MAXLEN = 128) [ Required ];

/// RedirectURL is the expected redirect URL for this client.
Property RedirectURL As list Of %String(MAXLEN = "");

/// LaunchURL is the URL used to launch this client.
/// LaunchURL may be used in some circumstances to identify the client and as the value of the aud claim.
Property LaunchURL As %String(MAXLEN = "");

/// DefaultScope is a blank separated list containing the default for access token scope
/// if scope is not specified in the access token request.
Property DefaultScope As %String(MAXLEN = "");

/// Description of the client.<br>
/// Chosen by user during configuration.
Property Description As %String(MAXLEN = 256);

/// The type of client configuration:<br>
/// public - a public client.  See RFC 6749
/// confidential - a confidential client.  See RFC 6749
/// resource - a resource server which is not also a client.<br>
/// Chosen by user during configuration.  Will usually be confidential client for an InterSystems IRIS application.
Property ClientType As %String(VALUELIST = ",public,confidential,resource") [ Required ];

/// ClientCredentials is the alias of the %SYS.X509Credentials object which contains the client's certificate.
Property ClientCredentials As %String;

/// PublicJWKS is the JWKS which contains the public asymmetric keys for this client obtained manually or via
/// the jwks or jwks_uri metadata property during client dynamic registration.<br>
/// This property should never be set directly for configuration.
Property PublicJWKS As %String(MAXLEN = "") [ Internal ];

/// This property is deprecated. The public keys are stored in <property>PublicJWKS</property>
/// and the symmetric keys are stored in <property>SymmetricJWKS</property>.
Property RemotePublicJWKS As %String(MAXLEN = "") [ Deprecated, Internal ];

/// PublicJWKSExpires gives the time (in seconds) when the PublicJWKS will expire, or -1 if the PublicJWKS does not expire,
/// or 0, meaning that it should not be stored. If the PublicJWKS was retrieved from the jwks_uri metadata parameter,
/// this value will be determined based on the HTTP headers of the response. Otherwise, it should be -1 (no expiration.)
/// This property should not be directly manipulated.
Property PublicJWKSExpires As %Integer [ Internal ];

/// SymmetricJWKS stores the symmetric keys used by this OAuth2 client configuration. These keys are typically derived from the
/// client secret.
Property SymmetricJWKS As %String(MAXLEN = "") [ Internal ];

/// **** Moved to OAuth2.Client.Metadata when dynamic client support introduced<br>
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

/// **** Moved to OAuth2.Client.Metadata when dynamic client support introduced<br>
/// client_name is the name of the Client to be presented to the EndUser.
Property "client_name" As %String(MAXLEN = 128);

/// Store value in metadata for compatibility
Method "client_nameSet"(clientName As %String) As %Status [ Internal ]
{
}

/// Get value from metadata for compatibility
Method "client_nameGet"() As %String [ Internal ]
{
}

/// **** Moved to OAuth2.Client.Metadata when dynamic client support introduced<br>
/// logo_uri is a URL that references a logo for the Client application.
/// If present, the authorization server will display this image to the EndUser during approval.
/// The value of this field must point to a valid image file.
Property "logo_uri" As %OAuth2.uri;

/// Store value in metadata for compatibility
Method "logo_uriSet"(logoUri As %String) As %Status [ Internal ]
{
}

/// Get value from metadata for compatibility
Method "logo_uriGet"() As %String [ Internal ]
{
}

/// **** Moved to OAuth2.Client.Metadata when dynamic client support introduced<br>
/// client_uri is the URL of the home page of the Client.
/// The value of this field must point to a valid Web page.
/// If present, the authorization server will display this URL to the EndUser in a followable fashion.
Property "client_uri" As %OAuth2.uri;

/// Store value in metadata for compatibility
Method "client_uriSet"(clientUri As %String) As %Status [ Internal ]
{
}

/// Get value from metadata for compatibility
Method "client_uriGet"() As %String [ Internal ]
{
}

/// **** Moved to OAuth2.Client.Metadata when dynamic client support introduced<br>
/// policy_uri is the that the Relying Party Client provides to the EndUser to
/// read about the how the profile data will be used.
/// The value of this field must point to a valid web page.
Property "policy_uri" As %OAuth2.uri;

/// Store value in metadata for compatibility
Method "policy_uriSet"(policyUri As %String) As %Status [ Internal ]
{
}

/// Get value from metadata for compatibility
Method "policy_uriGet"() As %String [ Internal ]
{
}

/// **** Moved to OAuth2.Client.Metadata when dynamic client support introduced<br>
/// tos_uri is the URL that the Relying Party Client provides to the EndUser to
/// read about the Relying Party's terms of service.
/// The value of this field must point to a valid web page.
Property "tos_uri" As %OAuth2.uri;

/// Store value in metadata for compatibility
Method "tos_uriSet"(tosUri As %String) As %Status [ Internal ]
{
}

/// Get value from metadata for compatibility
Method "tos_uriGet"() As %String [ Internal ]
{
}

/// The meta data which describes this client.
Property Metadata As OAuth2.Client.Metadata;

/// Get a new OAuth2.Server.Client instance with a newly generated ClientId and ClientSecret.
Method %OnNew() As %Status [ Internal, Private ]
{
}

/// Manually set the client supplied public JWKS and optionally jwks_uri.
Method SetPublicJWKS(publicJWKS As %String, jwksUri As %String) As %Status
{
}

/// Open the OAuth2.Server.Client instance.
ClassMethod Open(clientId As %String, Output sc As %Status) As OAuth2.Server.Client
{
}

/// Save this OAuth2.Server.Client instance.
Method Save() As %Status
{
}

/// Delete this client configuration.
ClassMethod DeleteId(id As %String) As %Status
{
}

/// Upgrade OAuth2.Client instance when dynamic client support introduced
Method Upgrade() As %Status [ Internal ]
{
}

/// Get and save a new public JWKS for this client if the JWKS was specified using jwks_uri metadata.
/// Returns a status code. <br>
/// This method is deprecated. New code should use <Method>RefreshJWKS</Method> instead.
Method UpdateJWKS(server As OAuth2.Server.Configuration, Output sc As %Status) As %Status [ Deprecated ]
{
}

/// If the client's JWKS was specified using the jwks_uri metadata parameter, this method will fetch the jwks if
/// it has expired. <br/> <br/>
/// <b>Parameters</b>:
/// 	<ul>
/// 	<li><b>sslConfig</b> - the name of an SSL configuration to use when communicating with the remote server</li>
/// 	<li><b>force</b> - refresh the jwks even if the cached version is still valid (default is 0)</li>
/// 	<li><b>save</b> - save the client definition (default is 1)</li>
/// 	<li><b>sc</b> (output) - Status code structure containing any errors</li>
/// 	</ul>
/// <b>Returns</b>:
/// 	<ul>
/// 	<li><b>1</b> - if the jwks was updated</li>
/// 	<li><b>0</b> - if the cached version was still valid</li>
/// 	</ul>
Method RefreshJWKS(sslConfig As %String, force As %Boolean = 0, save As %Boolean = 1, Output sc As %Status) As %Boolean
{
}

/// This callback method is invoked when the current object is added to the SaveSet,
/// either because %Save() was invoked on this object or on an object that references this object.
/// %OnAddToSaveSet can modify the current object. It can also add other objects to the current
/// SaveSet by invoking %AddToSaveSet or remove objects by calling %RemoveFromSaveSet.
///
/// <P>If this method returns an error status then %Save() will fail and the transaction
/// will be rolled back.
Method %OnAddToSaveSet(depth As %Integer = 3, insert As %Integer = 0, callcount As %Integer = 0) As %Status [ Private, ServerOnly = 1 ]
{
}

Method %OnValidateObject() As %Status [ Internal, Private ]
{
}

/// Validate the redirect uris
Method ValidateRedirectURL(Output baseurls) As %Status [ Internal ]
{
}

/// Validate Client URLs
Method ValidateURL(name As %String, uri As %String, ByRef baseurls) As %Status [ Internal ]
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

/// List client registrations for SMP page
}
