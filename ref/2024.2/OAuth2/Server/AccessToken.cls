/// Access tokens are managed by the persistent class OAuth2.Server.AccessToken.
/// OAuth2.Server.AccessToken stores the access token and related properties.
/// This class is also the means of communication between the various parts of the authorization server.
///
/// This class is used internally by InterSystems IRIS. You should not make direct
/// use of it within your applications. There is no guarantee made about either
/// the behavior or future operation of this class.
Class OAuth2.Server.AccessToken Extends %Persistent [ System = 4 ]
{

/// The IDKEY for the access token class.
/// The access token is indexed by it value
/// The access token is indexed by the RefreshToken property
/// The access token is indexed by the IDToken property
/// Order by time
/// AuthorizationCode is a random number which serves as the IDKey for this class and
/// as the Authorization Code when required by the Authorization Code grant type.
/// We use AuthorizationCode as the IDKey because it comes into existence first in the process of creating an access token
Property AuthorizationCode As %String(COLLATION = "EXACT", MAXLEN = 128) [ Required ];

/// AccessToken is the access token as a string.  The default access token is a random string.
/// However, the access token is easily customized to have any structure required by the using
/// application - for example a signed JWT.
Property AccessToken As %String(COLLATION = "EXACT", MAXLEN = "");

Method AccessTokenSet(accessToken As %String) As %Status [ Internal ]
{
}

/// SHA512 hash of the AccessToken to be used for indexing
Property Hash As %String(COLLATION = "EXACT", MAXLEN = 64);

/// AccessTokenExpires is the time in seconds from beginning of the Unix epoch when the access expires.
Property AccessTokenExpires As %Integer;

/// RefreshToken is the refresh token as a random string that is used to refresh the access token.
Property RefreshToken As %String(COLLATION = "EXACT", MAXLEN = "");

/// RefreshTokenExpires is the time in seconds from beginning of the Unix epoch when
/// the refresh expires, or "" means does not expire.
Property RefreshTokenExpires As %Integer;

/// IDToken is the IDToken which is returned forf OpenID Connect requests
Property IDToken As %String(MAXLEN = "");

Method IDTokenSet(IDToken As %String) As %Status [ Internal ]
{
}

/// SHA512 hash of the IDToken to be used for indexing
Property IDHash As %String(COLLATION = "EXACT", MAXLEN = 64);

/// ClientId is the client id for the client for which this token was issued.
Property ClientId As %String(MAXLEN = 1024);

/// Scope is a blank separated list of scopes that were used to issue this token.
Property Scope As %String(MAXLEN = "");

/// An array of scopes and associated descriptions.  This matches the scopes in the Scope property.
Property ScopeArray As array Of %String(MAXLEN = "");

/// Properties is a %OAuth2.Server.Properties object that holds the various kinds of properties
/// and claims that are used by the auhtorization server.
/// The various classes which are involved in the authorization and authentication code flow
/// use the properties argument (which is this token property) to communicate amongst
/// themselves and with the authorization server.<br>
/// See the definition of the %OAuth2.Server.Properties class for details about the propertyies and claims.
Property Properties As %OAuth2.Server.Properties;

/// AuthorizationCodeExpires is the time in seconds from the bginning of the Unix epoch when the
/// Authorization code passed to the client expires for the Authorization Code grant type.
Property AuthorizationCodeExpires As %Integer;

/// GrantType is the grant type that was used to create this access token:
/// - "A" - Authorization Code
/// - "I" - Implicit
/// - "P" - Resource Owner Password Credentials
/// - "C" - Client Credentials
/// - "J" - JWT Authorization
Property GrantType As %String(VALUELIST = ",A,I,P,C,J");

/// Stage reflects the stage of the authentication process and is used for error checking.
/// Possible values of Stage: "new", "delegated:<n>", "login:<n>", "2fa:<n>", "permission", "".<br>
/// "" means process completed or not started.<br>
/// <n> is the integer count of which login attempt is taking place.
Property Stage As %String;

/// State to be returned to requester in redirected response
Property State As %String(MAXLEN = "");

/// aud property from request which will be checked when validating token.
Property Aud As list Of %String(MAXLEN = "");

/// Username is the username specified and validated by during authentication.
/// $char(0) means that authentication failed.
Property Username As %Library.Username;

/// The issuer of this access token.
Property Issuer As %String(MAXLEN = 1024);

/// The redirect used for the current token authorization
Property RedirectURL As %String(MAXLEN = "");

/// The time when the user was authenticated.
Property AuthTime As %Integer;

/// The time at which the active access token was issued. This may be different from <property>AuthTime</property>
/// if the token was issued from a refresh token, or if it was automatically issued due to a pre-existing session.
Property IssuedAt As %Integer;

/// The response_type of the access token request
Property ResponseType As %String;

/// The response_mode of the access token request: query or fragment
Property ResponseMode As %String;

/// The ID of the group that this access token object belongs to.
Property GroupId As %String(MAXLEN = "");

/// Code challenge used by public clients for PCKE.
Property CodeChallenge As %String(MAXLEN = "");

/// Code challenge method used by public clients for PCKE.
Property CodeChallengeMethod As %String(VALUELIST = ",plain,S256") [ InitialExpression = "plain" ];

/// Get a new OAuth2.Server.AccessToken instance with a newly generated AuthorizationCode as IDKey.
Method %OnNew() As %Status [ Internal, Private ]
{
}

/// RevokeUser will delete all access tokens that are associated with the specified user.
/// The count argument will be returned as the number of access tokens that were deleted.
ClassMethod RevokeUser(username As %String, Output count As %Integer) As %Status
{
}

/// RevokeByGroupId will delete all access tokens that are associated with the specified group ID.
/// The count argument will be returned as the number of access tokens that were deleted.
ClassMethod RevokeByGroupId(groupId As %String, Output count As %Integer) As %Status
{
}

/// RevokeByClientId will delete all access tokens that are associated with the specified client ID.
/// The count argument will be returned as the number of access tokens that were deleted.
ClassMethod RevokeByClientId(clientId As %String, Output count As %Integer) As %Status
{
}

/// RevokeByProperty is an internal method which will delete all access tokens that satisfy the condition
/// on the access token record: <var>propertyName</var> = <var>propertyValue</var>.
/// The count argument will be returned as the number of access tokens that were deleted.
ClassMethod RevokeByProperty(propertyName As %String, propertyValue As %String, Output count As %Integer) As %Status [ Internal, Private ]
{
}

/// Is this an OpenID authorization request?  Find out by looking for openid scope.
Method IsOpenID() As %Boolean [ CodeMode = expression, Internal ]
{
}

/// Set the Aud property based on the request parameter aud value
Method SetAud(aud As %String, client As OAuth2.Server.Client) [ Internal ]
{
}

/// Set the time when authenticated.
Method SetAuthTime(time As %Integer) [ Internal ]
{
}

/// Open the OAuth2.Server.AccessToken instance using AuthorizationCode.
ClassMethod OpenByCode(authorizationCode As %String, Output sc As %Status) As OAuth2.Server.AccessToken
{
}

/// Open the OAuth2.Server.AccessToken instance using AccessToken.
ClassMethod OpenByToken(accessToken As %String, Output sc As %Status) As OAuth2.Server.AccessToken
{
}

/// Open the OAuth2.Server.AccessToken instance using IDToken.
ClassMethod OpenByIDToken(IDToken As %String, Output sc As %Status) As OAuth2.Server.AccessToken
{
}

/// Open the OAuth2.Server.AccessToken instance using RefreshToken
ClassMethod OpenByRefresh(refreshToken As %String, Output sc As %Status) As OAuth2.Server.AccessToken
{
}

/// Clean up all expired tokens
ClassMethod Cleanup() [ Internal, Private ]
{
}

/// Save this OAuth2.Server.AccessToken instance.
Method Save() As %Status
{
}

/// Delete this access token
Method Delete() As %Status
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
