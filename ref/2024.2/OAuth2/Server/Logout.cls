/// OAuth2.Server.Logout implements the OpenID Connect logout endpoint.
Class OAuth2.Server.Logout Extends %RegisteredObject
{

Parameter HTTP200OK As STRING = "200 OK";

Parameter HTTP400BADREQUEST As STRING = "400 Bad Request";

Parameter HTTP401UNAUTHORIZED As STRING = "401 Unauthorized";

Parameter HTTP500INTERNALSERVERERROR As STRING = "500 Internal Server Error";

/// Handle the logout request from the /logout endpoint
ClassMethod Process() As %Status [ Internal, ServerOnly = 1 ]
{
}

ClassMethod PrepareFrontChannelLogout(token As OAuth2.Server.AccessToken, Output logoutUriList As %List) As %Status [ Internal ]
{
}

ClassMethod FinishLogoutAndRedirect(logoutUriList As %List, uri As %String) As %Status [ Internal ]
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
