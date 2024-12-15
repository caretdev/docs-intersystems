/// %OAuth2.Server.Claim defines a claim that is requested for an access token, userinfo endpoint or IDToken.
/// The value to be returned for the claim will have the same key in the ClaimValues property of %OAuth2.Server.Properties.
Class %OAuth2.Server.Claim Extends %SerialObject [ System = 4 ]
{

/// Essential is true if the claim is essential.  Default is false for voluntary claim.
Property Essential As %Boolean [ InitialExpression = 0 ];

/// Values is the list of permissible values for this claim
/// either from the value or values property of the claims object.
Property Values As list Of %String(MAXLEN = 2048);

/// Serialize claim defintion for logging
ClassMethod LogString(claim As %OAuth2.Server.Claim) As %String [ Internal ]
{
}

}
