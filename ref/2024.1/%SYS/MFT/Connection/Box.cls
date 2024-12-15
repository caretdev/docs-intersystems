Class %SYS.MFT.Connection.Box Extends %SYS.MFT.Connection.Base [ System = 4 ]
{

/// Each subclass will define the DefaultURL method to supply the default URL for the service.
ClassMethod DefaultURL() As %String
{
}

/// The URL for uploading and downloading files.
Method ContentURL() As %String
{
}

/// The default scope to use for obtaining the access token.
ClassMethod DefaultScope() As %String
{
}

/// Create an OAuth 2.0 client with the parameters required to authorize with Box.<br>
/// name is the name to be given to the OAuth 2.0 client.<br>
/// sslConfiguration is the SSLConfiguration used to make the HTTP request.<br>
/// clientId and ClientSecret are the id and secret for the OAuth 2.0 client which is obtained from
/// the Box App definition.<br>
/// If addiitonal properties are needed, then the Dropbox OAuth 2.0 client may be opened and modified.<br>
/// If a server definition does not yet exist for Dropbox, then a new server definition is created.
ClassMethod CreateClient(name As %String, sslConfiguration As %String, clientId As %String, clientSecret As %String, issuer As %String = "https://account.box.com", host As %String = "localhost", port As %Integer = "", prefix As %String = "", useSSL As %Boolean = 1) As %Status
{
}

/// Revoke the token associated with this connection.
/// Revoke the token in Box as well as locally.
Method RevokeToken() As %Status
{
}

/// Make an http request to Box API
Method MakeRequest(method As %String, parameters As %String, request As %DynamicObject = "", ByRef queryParameters As %String, Output response As %DynamicObject) As %Status
{
}

/// Make an upload http request to Box API
Method MakeUploadRequest(parameters As %String, filename As %String, request As %DynamicObject = "", body As %BinaryStream, Output response As %DynamicObject) As %Status
{
}

/// Make an Download style http request to Box API
Method MakeDownloadRequest(parameters As %String, body As %BinaryStream, Output response As %DynamicObject) As %Status
{
}

}
