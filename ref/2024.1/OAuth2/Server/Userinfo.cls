/// OAuth2.Server.Userinfo implements the OpenID Connect Userinfo endpoint.
Class OAuth2.Server.Userinfo Extends %RegisteredObject [ System = 4 ]
{

Parameter HTTP200OK As STRING = "200 OK";

Parameter HTTP400BADREQUEST As STRING = "400 Bad Request";

Parameter HTTP401UNAUTHORIZED As STRING = "401 Unauthorized";

Parameter HTTP500INTERNALSERVERERROR As STRING = "500 Internal Server Error";

ClassMethod Process() As %Status [ Internal, ServerOnly = 1 ]
{
}

/// Return an internal server error
ClassMethod StatusError(sc As %Status) [ Internal ]
{
}

/// Return error response
ClassMethod ReturnError(error As %OAuth2.Error) [ Internal, ServerOnly = 1 ]
{
}

}
