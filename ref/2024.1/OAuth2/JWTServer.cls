/// OAuth2.JWTServer is a simple CSP page to return JWT specified by request or JWKS specified by client name.
Class OAuth2.JWTServer Extends %CSP.Page [ System = 4 ]
{

Parameter UseSession = 0;

Parameter CSPURL = "/csp/sys/oauth2/OAuth2.JWTServer.cls";

ClassMethod OnPreHTTP() As %Boolean
{
}

ClassMethod OnPage() As %Status
{
}

ClassMethod GetPublicJWKS(clientName) As %String [ Private ]
{
}

}
