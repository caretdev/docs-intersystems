/// The OAuth2.Server.Session class is the default OAuth2 session maintenance class used by the OAuth2 Server configuration.
/// The logic for this class is primarily inherited from <Class>%OAuth2.Server.CookieSession</Class>.
/// This class cannot be extended. Custom code should extend either <Class>%OAuth2.Server.CookieSession</Class> or
/// <Class>%OAuth2.Server.AbstractSession</Class>
Class OAuth2.Server.Session Extends %OAuth2.Server.CookieSession [ Final, System = 4 ]
{

Parameter COOKIENAME As STRING = "CSPOAuth2Session";

}
