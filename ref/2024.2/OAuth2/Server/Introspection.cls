/// OAuth2.Server.Introspection implements the token introspection endpoint as defined by RFC 7662
/// and the token revocation endpoint as defined by RFC 7009.
Class OAuth2.Server.Introspection Extends %RegisteredObject [ System = 4 ]
{

Parameter HTTP200OK As STRING = "200 OK";

Parameter HTTP400BADREQUEST As STRING = "400 Bad Request";

Parameter HTTP401UNAUTHORIZED As STRING = "401 Unauthorized";

Parameter HTTP500INTERNALSERVERERROR As STRING = "500 Internal Server Error";

/// Process introspection request
ClassMethod ProcessIntrospection() As %Status [ Internal ]
{
}

/// Process revocation request
ClassMethod ProcessRevocation() As %Status [ Internal ]
{
}

/// The common processing of introspection and revocation requests until token object is found
ClassMethod Process(requireTLS As %Boolean, requireConfidential As %Boolean, Output error As %String, Output client As OAuth2.Server.Client) As OAuth2.Server.AccessToken [ Internal ]
{
}

/// The additional properties that are required for introspection endpoint.
ClassMethod AddRequiredClaims(json As %DynamicObject, token As OAuth2.Server.AccessToken) [ Internal ]
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

}
