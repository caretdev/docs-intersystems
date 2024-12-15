/// OAuth2.AccessToken stores an OAuth 2.0 access token and its related information.<br>
/// OAuth2.AccessToken is indexed by the combination of SessionId and ApplicationName.
/// Therefore, only one scope may be requested for each SessionId/ApplicationName.
/// If a second request is made with a different scope and access token has yet been granted,
/// the scope in the new request becomes the expected scope.<br>
Class OAuth2.AccessToken Extends %Persistent [ System = 4 ]
{

/// <Parameter>LogoutInterval</Parameter> specifies the timeout interval (in seconds) used
/// during RP-initiated front-channel logout. If the user agent has not returned to the
/// post logout redirect url before this time the <Class>OAuth2.AccessToken</Class> record
/// is considered abandoned, and may be automatically deleted.
Parameter LogoutInterval As INTEGER [ Internal ] = 15;

/// An access token is linked to the combination of a session and client application
/// The access token is indexed by hash of its value
/// The IDToken is indexed by hash of its value
/// The access token is indexed by the State during Authorization Server requests
/// The access token is indexed by the State during Authorization Server requests
/// This access token is linked to the session whose id is here.
Property SessionId As %String(COLLATION = "EXACT") [ Required ];

/// This access token is linked to this client application.
Property ApplicationName As %String(COLLATION = "EXACT", MAXLEN = 128, MINLEN = 1) [ Required ];

/// The base64 encoded random state associated with request to Authorization Server.
Property State As %String(COLLATION = "EXACT", MAXLEN = 1024);

/// Stage reflects the stage of the token usage process and is used for keeping track of usage attempts.
/// Possible values of Stage: "new", "loggedin".<br>
/// "new": Access token was just initiated. System is waiting for csp url.<br>
/// "loggedin": system is logged in.
///
Property Stage As %String(VALUELIST = ",new,loggedin") [ Internal ];

/// The access token
Property AccessToken As %String(COLLATION = "EXACT", MAXLEN = "");

Method AccessTokenSet(accessToken As %String) As %Status [ Internal ]
{
}

/// SHA512 hash of the AccessToken to be used for indexing
Property Hash As %String(COLLATION = "EXACT", MAXLEN = 64);

/// The IDToken
Property IDToken As %String(COLLATION = "EXACT", MAXLEN = "");

Method IDTokenSet(IDToken As %String) As %Status [ Internal ]
{
}

/// SHA512 hash of the IDToken to be used for indexing
Property IDHash As %String(COLLATION = "EXACT", MAXLEN = 64);

/// The token type that is returned from the authorization server.
Property TokenType As %String;

/// The time when the token expires in seconds since December 31st, 1840 (i.e. since beginning of $h)
Property Expires As %Integer;

/// Blank separated list of scope names which this token supports
Property Scope As %String(MAXLEN = "");

/// The refresh token that is returned by the authorization server or "".
Property RefreshToken As %String(MAXLEN = "");

/// The URL of the CSP page which will be invoked after the access token is obtained.
/// By default, this is the page that began the token request workflow.
Property RedirectURL As %String(MAXLEN = 1024) [ Internal ];

/// GrantType is the grant type that was used to create this access token:
/// - "A" - Authorization Code
/// - "I" - Implicit
/// - "P" - Resource Owner Password Credentials
/// - "C" - Client Credentials
/// - "J" - JWT Authorization
Property GrantType As %String(VALUELIST = ",A,I,P,C,J");

/// Nonce for OpenID Connect request.  This nonce must be included in the IDToken.
Property Nonce As %String(MAXLEN = 1024);

/// The response_type of the access token request
Property ResponseType As %String;

/// The response_mode of the access token request: query or fragment
Property ResponseMode As %String;

/// ResponseProperties contains the response properties from the access token request
/// where the key is the property name and the value is the property value.
Property ResponseProperties As array Of %String(MAXLEN = "");

/// Error object for error during authorization
Property Error As %OAuth2.Error;

/// If TemporarySession is true, then this access token object was created for a temproary session by %OAuth2.Login.
/// This object should not be deleted by the end session event handler.
Property TemporarySession As %Boolean [ Deprecated, InitialExpression = 0 ];

/// Code verifier sent with authorization requests when using the authorization_code grant type.
/// This is in accordance with PKCE (RFC7636).
Property CodeVerifier As %String(MAXLEN = "");

/// If HasNonStandardImplicitIdToken is true, then this access token object contains an id token that was not
/// accompanied by the openid scope in the server response (and this object's scope has been modified to include
/// "openid" as a reflection of this). This behavior is governed by the AcceptNonStandardImplicitIdToken property
/// in OAuth2.Client and should not be set by the user
Property HasNonStandardImplicitIdToken As %Boolean [ InitialExpression = 0, Internal ];

/// LogoutRedirectURL is stored during RP-initiated front-channel logout. This value indicates the
/// URL to navigate to after a successful logout.
Property LogoutRedirectURL As %String(MAXLEN = 1024) [ Internal ];

/// The base64 encoded random state associated with a logout request to the Authorization Server.
Property LogoutState As %String(COLLATION = "EXACT", MAXLEN = 1024);

/// The InLogout flag is set to true during RP-iniated front-channel logout. If true, we should not delete this record
/// until the logout sequence is completed. This is needed so we can keep the value in <Property>LogoutRedirectURL</Property>.
Property InLogout As %Boolean [ InitialExpression = 0, Internal ];

/// LoginRedirectURL stores the redirectURL to the authorization server
Property LoginRedirectURL As %String(MAXLEN = "") [ Internal ];

/// Set the error.
Method SetError(error As %OAuth2.Error)
{
}

/// Clear the error.
Method ClearError()
{
}

/// Return if an error been set.
Method IsError() As %Boolean
{
}

/// Check if this token is expired
Method IsExpired() As %Boolean
{
}

/// Is this an OpenID authorization request?  Find out by looking for openid scope.
Method IsOpenID() As %Boolean [ CodeMode = expression ]
{
}

/// Open an OAuth2.AccessToken instance based on the session and client application that it is linked to.
ClassMethod OpenForSession(applicationName As %String, sessionId As %String, Output sc As %Status) As OAuth2.AccessToken
{
}

/// Open an OAuth2.AccessToken instance based on the AccessToken property
ClassMethod Open(accessToken As %String, Output sc As %Status) As OAuth2.AccessToken
{
}

/// Open an OAuth2.AccessToken instance based on the IDToken property
ClassMethod OpenByIDToken(IDToken As %String, Output sc As %Status) As OAuth2.AccessToken
{
}

/// Remove this token from the client. If this token is currently processing a RP-initiated front-channel logout request
/// (That is, if <Property>InLogout</Property> is true,) then the token(s) will be removed, but the AccessToken record will not be deleted
/// until the logout is completed or times out.
Method Remove() As %Status
{
}

/// Clean up all expired tokens
ClassMethod Cleanup() [ Internal ]
{
}

/// This callback method is invoked by the <METHOD>%Save</METHOD> method to
/// provide notification that the object is being saved. It is called before
/// any data is written to disk.
///
/// <P><VAR>insert</VAR> will be set to 1 if this object is being saved for the first time.
///
/// <P>If this method returns an error then the call to <METHOD>%Save</METHOD> will fail.
Method %OnBeforeSave(insert As %Boolean) As %Status [ Internal, Private ]
{
}

/// This callback method is invoked by the <METHOD>%Delete</METHOD> method to
/// provide notification that the object specified by <VAR>oid</VAR> is being deleted.
///
/// <P>If this method returns an error then the object will not be deleted.
/// [Previously private]
ClassMethod %OnDelete(oid As %ObjectIdentity) As %Status [ Internal ]
{
}

}
