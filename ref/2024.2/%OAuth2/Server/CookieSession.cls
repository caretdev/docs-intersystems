/// This class implements a simple OAuth2 session maintenance class where the user's session is tracked by an opaque cookie.
/// This is a persistent class containing basic session data indexed by the cookie value.
Class %OAuth2.Server.CookieSession Extends (%Persistent, %OAuth2.Server.AbstractSession) [ Abstract, NoExtent, System = 4 ]
{

/// The name of the cookie used to maintain the session
Parameter COOKIENAME As STRING;

/// The IDKEY for the session class.
/// The session is indexed by the Username
/// Order by expiration time
/// Opaque Cookie value used to track the user's session
Property Cookie As %String(COLLATION = "EXACT", MAXLEN = 128) [ Required ];

/// The User name associated with this session
Property Username As %Library.Username(COLLATION = "EXACT");

/// Expires is the time in seconds from beginning of the Unix epoch when the session expires.
/// If Expires="", then session does not expire.
Property Expires As %Integer;

/// Scope is the blank separated list of scopes permitted for this user in this session.
Property Scope As %String(MAXLEN = "");

/// The time when the user was authenticated
Property AuthTime As %Integer;

/// Return the username (and granted scopes, and authentication time) for the current session, or "" if there is no current session.
ClassMethod GetUser(Output scope As %String, Output authTime As %Integer, Output sc As %Status, authCode As %String = "") As %String
{
}

/// Update the current session with the given scope values and timeout interval.
/// This does nothing if there is no current session.
ClassMethod Update(scope As %String, interval As %Integer) As %Status
{
}

/// Create a new session for the given user. This creates a new session Object and sets a new cookie in the User Agent
/// referencing this session.
ClassMethod Login(username As %String, scope As %String, interval As %Integer, Output authTime As %Integer, authCode As %String = "") As %Status
{
}

/// Terminate the current session. This will delete the session object and all cookies associated
/// with it and expire the cookie. Absence of a session is not seen as an error and this method will
/// still return 1 (though it won't actually do anything if no session exists).
ClassMethod Logout() As %Status
{
}

/// Delete all sessions.
ClassMethod DeleteAll() As %Status
{
}

/// This method is used to produce the cookie value for a new session.
ClassMethod MakeCookieValue() As %String
{
}

/// This method will retrieve the cookie value for the current session, if one exists.
ClassMethod GetCookie() As %String
{
}

/// This method will set the given cookie value in the User Agent, with the given expiration time.
ClassMethod SetCookie(value As %String, expires As %Integer)
{
}

/// The GetCurrentSession method returns the currently logged in session.
/// If no session exists, then "" is returned.
ClassMethod GetCurrentSession(Output sc As %Status) As %OAuth2.Server.CookieSession [ Internal ]
{
}

/// Open the OAuth2.Server.Session instance using Cookie.
ClassMethod OpenByCookie(cookie As %String, Output sc As %Status) As %OAuth2.Server.CookieSession [ Internal ]
{
}

/// Delete this session object
Method Delete() As %Status [ Internal ]
{
}

/// Delete all expired sessions
ClassMethod Cleanup() [ CodeMode = objectgenerator, Internal ]
{
}

}
