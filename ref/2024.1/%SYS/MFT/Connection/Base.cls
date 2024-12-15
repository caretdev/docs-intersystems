/// The file manager to be used by %MFT classes will be described by a persistent class whose properties
/// are stored in the CACHESYS database.  This persistent file manager description will contain locations,
/// user name and authentication information - essentially the connection and authentication information
/// for the file management service.<br>
/// The user of the file management API must create a persistent description
/// of the connection to remote file management service.  This connection is defined by
/// the subclass of %SYS.MFT.Connection.Base which is implemented for the service provider being used.<br>
/// The initially supported services all authenticate by using the OAuth 2.0 protocol.
/// The file management connection will use OAuth 2.0 support to do the required authentication.
/// An OAuth2 client must be configured for use by the connection.  The details of the client are defined
/// by the requirements of the specific vendor service.  The ApplicationName property below is the
/// application name for the OAuth2 client.<br>
/// The %SYS.MFT.Connection>base class contains the base properties and methods for the remote file management
/// services that we support.  The %Admin_Secure will be required in order to open or save this object.
Class %SYS.MFT.Connection.Base Extends %Persistent [ System = 4 ]
{

/// The IDKEY for %SYS.MFT.Connection.Base is a unique user defined name.
/// Name is the name of this connection to a file management service.
/// Name serves as the IDKey for this class.
Property Name As %String(MAXLEN = 64) [ Required ];

/// Service is the name of the service that is accessed by this connection.
Property Service As %String [ InitialExpression = {$piece($classname(),".",*)} ];

/// URL is the base URL for REST access to this service including the final /.
/// URL will default to the base URL for the remote file management service that is provided by the vendor.
/// URL may be modified for locally hosted or private remote implementations.
Property URL As %OAuth2.uri [ InitialExpression = {..DefaultURL()} ];

/// SSLConfiguration is the name of the SSL Configuration to be used to communicate with the file management API.
Property SSLConfiguration As %String(MAXLEN = 64);

/// Username is the name of the user on whose behalf the file access will take place.
Property Username As %Library.Username;

/// ApplicationName is the OAuth2 application name associated with this connection.
/// The ConnectionId property will be used as the session id for the specific access token.
Property ApplicationName As %String(MAXLEN = 64);

/// ConnectionId is the base 64 URL encoded Id for this connection.
/// ConnectionId is a private property which is not readable or writable outside of this class.
/// ConnectionId is used for private access to any access token needed for this connection.
Property ConnectionId As %String(MAXLEN = 128) [ InitialExpression = {##class(%OAuth2.Utils).Base64UrlEncode($system.Encryption.GenCryptRand(32))}, Internal, Private ];

/// The current remote folder as a Unix style path.
/// The path is canonical in the sense of not having .. or. and always ending in /.
Property CurrentFolder As %String(MAXLEN = 2048) [ InitialExpression = "/", Internal ];

/// Use the same %Net.HttpRequest object for all requests in the same session.
Property HttpRequest As %Net.HttpRequest [ Transient ];

/// Each subclass will define the DefaultURL method to supply the default URL for the service.
ClassMethod DefaultURL() As %String
{
}

/// The default scope to use for obtaining the access token.
ClassMethod DefaultScope() As %String
{
}

/// Create an OAuth 2.0 client with the parameters required to authorize.<br>
/// name is the name to be given to the OAuth 2.0 client.<br>
/// sslConfiguration is the SSLConfiguration used to make the HTTP request.<br>
/// clientId and ClientSecret are the id and secret for the OAuth 2.0 client which is obtained from
/// the corresponding App definition.<br>
/// If addiitonal properties are needed, then the OAuth 2.0 client may be opened and modified.<br>
/// If a server definition does not yet exist for the OAuth 2.0 client, then a new server definition is created.
ClassMethod CreateClient(name As %String, sslConfiguration As %String, clientId As %String, clientSecret As %String, issuer, host As %String, port As %Integer, prefix As %String, useSSL As %Boolean) As %Status
{
}

/// Internal method to normalize the a file or folder path.
Method NormalizePath(path As %String) As %String [ Internal ]
{
}

/// MakeHttpRequest will add authentication to the specified %Net.HttpRequest object and
/// execute the request using the specified method with the specified REST parameters added to the URL.
/// After the request is made, the authentication information is removed to avoid making this available to user code.
Method MakeHttpRequest(httpRequest As %Net.HttpRequest, method As %String, url As %String, reset As %Boolean = 1) As %Status
{
}

/// Get the response object
ClassMethod GetJSONResponse(httpRequest As %Net.HttpRequest, json As %String, Output response As %DynamicObject) As %Status [ Final, Internal ]
{
}

/// Check if this connection has been authorized.
/// The default authorization is via OAuth 2.0 access token.
Method IsAuthorized(Output errorMessage As %String) As %Boolean
{
}

/// Get access token
ClassMethod GetAccessToken(connectionName As %String, scope As %String, accessToken As %String) As %Status [ Internal ]
{
}

/// Get the URL for use by authorization code grant type.
Method GetAuthorizationCodeURL(redirect As %String, scope As %String, ByRef properties As %String, Output sc As %Status) As %String
{
}

/// Revoke the token associated with this connection.
Method RevokeToken() As %Status
{
}

/// Open a %SYS.MFT.Connection.Base subclass instance based on the ConnectionName property.
ClassMethod Open(name As %String, Output sc As %Status) As %SYS.MFT.Connection.Base
{
}

/// The Save method saves a %SYS.MFT.Connection.Base object.
/// To save a new Connection object use the following procedure:<br>
/// - get a new object with %New of the appropriate subclass of %SYS.MFT.Connection.Base.<br>
/// - set required unique Name property.<br>
/// - set any needed properties.<br>
/// - call the Save method.
Method Save() As %Status
{
}

Method %OnValidateObject(ReadOnly As %Boolean = 0) As %Status [ Private, ServerOnly = 1 ]
{
}

/// Caller of %Save must have secureity admin resource.
Method %OnBeforeSave(insert As %Boolean) As %Status [ Internal, Private, ServerOnly = 1 ]
{
}

/// The DeleteId method deletes an existing connection object specified by its name.
/// If keepOAuth2 is true, then the associated OAuth 2.0 connection is deleted.
/// Otherwise, the OAuth2 connection is kept.
ClassMethod DeleteId(name As %String, keepOAuth2 As %Boolean = 0) As %Status
{
}

/// Get count of connection which reference the specified OAuth 2.0 client.
Method OAuth2ClientCount() As %Integer
{
}

/// Caller of %Delete must have secureity admin resource.
ClassMethod %OnDelete(oid As %ObjectIdentity) As %Status [ Internal, Private, ServerOnly = 1 ]
{
}

/// List connections.
ClassMethod ListExecute(ByRef %qHandle As %Binary) As %Status [ Internal ]
{
}

ClassMethod ListFetch(ByRef %qHandle As %Binary, ByRef Row As %List, ByRef AtEnd As %Integer = 0) As %Status [ Internal, PlaceAfter = ListExecute ]
{
}

ClassMethod ListClose(ByRef %qHandle As %Binary) As %Status [ Internal, PlaceAfter = ListExecute ]
{
}

}
