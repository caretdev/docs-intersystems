Class %SYS.TokenAuth Extends %Persistent [ Final, System = 4 ]
{

Property SID As %String(MAXLEN = 24) [ InitialExpression = {$System.Encryption.Base64Encode($System.Encryption.GenCryptRand(18))} ];

Property Expires As %BigInt;

Property SecurityContext As %String(MAXLEN = "");

Property AccessTokenHash As %String(MAXLEN = 64);

Property RefreshTokenHash As %String(MAXLEN = 64);

Property GroupId As %String(MAXLEN = "");

ClassMethod GenerateAccessToken(cspSession As %CSP.Session, Output info As %DynamicObject) As %Boolean [ Internal ]
{
}

ClassMethod ValidateAccessToken(jwt As %String, Output state As %List) As %Boolean [ Internal ]
{
}

ClassMethod RefreshToken(token As %String, Output info As %DynamicObject, state As %List) As %Boolean [ Internal ]
{
}

ClassMethod RevokeTokensForSID(sid As %String, groupId As %String = "") As %Status [ Internal ]
{
}

ClassMethod RevokeToken(token As %String, Output state As %List) As %Boolean [ Internal ]
{
}

Method CreateTokens(data As %DynamicObject, Output info As %DynamicObject) As %Boolean [ Private ]
{
}

ClassMethod ResetSystemJWKS() [ Internal ]
{
}

ClassMethod CheckToken(jwt As %String, checkExpired As %Boolean = 1, Output session As %SYS.TokenAuth, Output body As %DynamicObject) As %Boolean [ Private ]
{
}

ClassMethod UpdateGroupId(sid As %String, groupId As %String) As %Status
{
}

ClassMethod RevokeExpiredTokens() [ Internal ]
{
}

Method %OnBeforeSave() As %Status [ Private ]
{
}

ClassMethod %OnDelete() As %Status [ Private ]
{
}

Method %OnOpen() As %Status [ Private ]
{
}

}
