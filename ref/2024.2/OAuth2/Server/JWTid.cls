/// The OAuth2.Server.JWTid is used to maintain a list of id of the JWTs which have been used to
/// identify a client to the authorization server.
Class OAuth2.Server.JWTid Extends %Persistent [ System = 4 ]
{

/// The IDKEY for this class.
/// JTI is the jti property of the JWT which has been sued for authentication
Property JTI As %String(MAXLEN = 1024);

/// Expires is the time in seconds from beginning of the Unix epoch when the JWT expires.
/// After this time, there is no point in keeping a record of this JTI since it has already expired.
Property Expires As %Integer;

/// A new JWT has been received.
/// Return true if the JWT has not been used and save the JWTid record.  Otherwise return false.
ClassMethod IsNewJWT(jti As %String, expires As %Integer, Output sc As %Status) As %Boolean
{
}

/// Clean up all expired JWTs
ClassMethod Cleanup() [ Internal ]
{
}

}
