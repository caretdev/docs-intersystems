/// OAuth2.Server.REST acts as the router for REST requests to the authorization server.
Class OAuth2.Server.REST Extends %CSP.REST [ System = 4 ]
{

/// Specifies the character set to be used for all authorization server responses.
Parameter CHARSET = "utf-8";

/// Turn on CORS processing for the authorization server.
Parameter HandleCorsRequest = 1;

/// Specifies if input %request.Content is to be converted from its original character set on input.
Parameter CONVERTINPUTSTREAM = 1;

XData UrlMap
{
}

}
