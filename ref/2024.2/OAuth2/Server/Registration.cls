Class OAuth2.Server.Registration Extends %RegisteredObject [ System = 4 ]
{

Parameter HTTP200OK As STRING = "200 OK";

Parameter HTTP201CREATED As STRING = "201 Created";

Parameter HTTP204NOCONTENT As STRING = "204 No Content";

Parameter HTTP400BADREQUEST As STRING = "400 Bad Request";

Parameter HTTP401UNAUTHORIZED As STRING = "401 Unauthorized";

Parameter HTTP500INTERNALSERVERERROR As STRING = "500 Internal Server Error";

Parameter INVALIDMETADATA As STRING = "invalid_client_metadata";

/// Process Dynamic Registration request
ClassMethod RegisterClient() As %Status [ Internal ]
{
}

/// Read the client metadata for a dynamically registered client
ClassMethod ReadClient() As %Status [ Internal, ServerOnly = 1 ]
{
}

/// Update the client metadata for a dynamically registered client
ClassMethod UpdateClient() As %Status [ Internal, ServerOnly = 1 ]
{
}

/// Process client delete request
ClassMethod DeleteClient() As %Status [ Internal, ServerOnly = 1 ]
{
}

/// Verify the client_id and registration_access_token, and perform common setup tasks
ClassMethod AuthenticateRequest(Output client As OAuth2.Server.Client) As %OAuth2.Error [ Private ]
{
}

/// Perform common setup tasks:
/// 1) set up headers
/// 2) require TLS
/// 3) ensure that OAuth2 Server has been configured
ClassMethod Common() As %OAuth2.Error [ Private ]
{
}

/// Update client values from metadata, save client, and output metadata to client
ClassMethod ReturnClientMetadata(client As OAuth2.Server.Client, isNew As %Boolean = 0) As %OAuth2.Error [ Private ]
{
}

/// Read the metadata sent from client
ClassMethod GetMetadataFromRequest(Output metadata As OAuth2.Client.Metadata) As %OAuth2.Error [ Private ]
{
}

/// Validate the metadata supplied by the user, and update the client object accordingly
/// If this returns an error, the client should NOT be saved.
ClassMethod ValidateMetadata(client As OAuth2.Server.Client, metadata As OAuth2.Client.Metadata, isNew As %Boolean = 0) As %OAuth2.Error [ Private ]
{
}

/// Update the client metadata response for the specified client
ClassMethod UpdateClientMetadata(client As OAuth2.Server.Client) As %OAuth2.Error [ Private ]
{
}

/// Return an internal server error
ClassMethod StatusError(sc As %Status) As %OAuth2.Error [ Internal ]
{
}

/// Return error response
ClassMethod ReturnError(error As %OAuth2.Error) [ Internal, ServerOnly = 1 ]
{
}

/// Get the JWKS from jwks_uri <br/><br/>
/// <b>Parameters:</b>
/// 	<ul>
/// 	<li><b>uri</b> - the value of the jwks_uri</li>
/// 	<li><b>sslconfiguration</b> - the name of an SSL Configuration to use to communicate with the remote server</li>
/// 	<li><b>jwks</b> (output) - the jwks retrieved from the server</li>
/// 	<li><b>expires</b> (output) - The JWKS expiration. This is based on the Cache-Control header sent from the remote server. Possible values are:
/// 		<ul>
/// 		<li><b>-1</b> - no expiration</li>
/// 		<li><b>0</b> - the JWKS cannot be cached</li>
/// 		<li><b>a positive integer</b> - The time in seconds from beginning of the Unix epoch at which the JWKS will expire</li>
/// 		</ul></li>
/// 	</ul>
/// <b>Returns: </b> A status code indicating success or failure.
ClassMethod GetJWKS(uri As %String, sslConfiguration As %String, Output jwks As %String, Output expires As %Integer) As %Status
{
}

/// Add the client secret to the public JWKS
ClassMethod AddClientSecretToJWKS(JWKS As %String, clientSecret As %String, Output updatedJWKS As %String) As %Status
{
}

/// Return this server's public JWKS
ClassMethod ReturnJWKS() As %Status
{
}

}
