Class %SYS.MFT.Connection.Kiteworks Extends %SYS.MFT.Connection.Base [ System = 4 ]
{

Parameter ACCELLIONVERSION = 7.1;

/// Role definitions for this connection.  The role defintions are not saved and refreshed as needed.
Property Roles As array Of %String [ Internal, Transient ];

/// The default scope to use for obtaining the access token.
ClassMethod DefaultScope() As %String
{
}

/// Create an OAuth 2.0 client with the parameters required to authorize with Dropbox.<br>
/// name is the name to be given to the OAuth 2.0 client.<br>
/// sslConfiguration is the SSLConfiguration used to make the HTTP request.<br>
/// clientId and ClientSecret are the id and secret for the OAuth 2.0 client which is obtained from
/// the Kiteworks App definition.<br>
/// If addiitonal properties are needed, then the Kiteworks OAuth 2.0 client may be opened and modified.<br>
/// If a server definition does not yet exist for Kiteworks, then a new server definition is created.
ClassMethod CreateClient(name As %String, sslConfiguration As %String, clientId As %String, clientSecret As %String, issuer, host As %String = "localhost", port As %Integer = "", prefix As %String = "", useSSL As %Boolean = 1) As %Status
{
}

/// Revoke the token associated with this connection.
/// Revoke the token in Kiteworks as well as locally.
Method RevokeToken() As %Status
{
}

/// Make an http request to Kiteworks API
Method MakeRequest(method As %String, parameters As %String, request As %DynamicObject = "", ByRef queryParameters As %String, Output response As %DynamicObject) As %Status
{
}

/// Make an upload http request to Kiteworks API
Method MakeUploadRequest(parameters As %String, filename As %String, ByRef queryParameters As %String, body As %BinaryStream, Output response As %DynamicObject) As %Status
{
}

/// Make an Download style http request to Kiteworks API
Method MakeDownloadRequest(parameters As %String, body As %BinaryStream, Output response As %DynamicObject) As %Status
{
}

}
