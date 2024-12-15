/// The %SYS.OAuth2.Validation class defines the methods used to validate an access token or ID token.
Class %SYS.OAuth2.Validation Extends %RegisteredObject [ System = 4 ]
{

/// ValidateJWT validates the given JWT token and creates an object to reflect the JWT properties. <br>
/// This method will accept both signed and unsigned tokens. Applications that require tokens to be signed should
/// inspect <b>securityParameters("sigalg")</b>. If this value is undefined, then the given token was not signed. <br>
/// <ul>
/// <li><b>applicationName</b> - the name of the client or resource server configuration which
/// contains authorization server access data, such as authorization server ServerCredentials.</li>
/// <li><b>scope</b> - a blank separated list of scope values.  If <b>scope</b> is specified,
/// the JWT must contain a scope claim which is a superset of the this parameter.</li>
/// <li><b>aud</b> - the audience which is using the token.  If the token has an associated aud property
/// (usually because the audience was specified when requesting the token), then <b>aud</b> is matched to
/// the token audience.  If <b>aud</b> is not specified, then no audience checking takes place.</li>
/// <li><b>jsonObject</b> - a JSON Object containing the claims in the JWT.</li>
/// <li><b>securityParameters</b> - an array of strings indicating the signature and/or encryption operations to be performed on the JWT.<br>
/// <br>
/// For JSON Web Signature (JWS):<br>
/// <ul><li><b>securityParameters("sigalg")</b> - Signature or MAC algorithm. This will only be set if the JWT is signed.</li></ul>
/// <br>
/// For JSON Web Encryption (JWE):<br><ul>
/// <li><b>securityParameters("keyalg")</b> - Key management algorithm.</li>
/// <li><b>securityParameters("encalg")</b> - Content encryption algorithm.</li></ul><br>
/// Note, <b>securityParameters("keyalg")</b> and <b>securityParameters("encalg")</b> must both be specified or null.<br>
/// See <Class>%Net.JSON.JWA</Class> for the list of supported algorithms.</li>
/// <li><b>headerObject</b> - a JSON Object containing the JWT Header fields.
/// </li></ul>
ClassMethod ValidateJWT(applicationName As %String, accessToken As %String, scope As %String, aud As %String, Output jsonObject As %DynamicObject, Output securityParameters As %String, Output sc As %Status, Output headerObject As %DynamicObject) As %Boolean
{
}

/// ValidateIDToken validates the signed OpenID Connect ID token and creates an object to reflect the JWT properties. <br>
/// ValidateIDToken also validates the access token based on the at_hash property of the IDToken. <br>
/// <ul>
/// <li><b>applicationName</b> - the name of the client or resource server configuration which
/// contains authorization server access data, such as authorization server ServerCredentials.</li>
/// <li><b>scope</b> - a blank separated list of scope values.  If <b>scope</b> is specified,
/// the JWT must contain a scope claim which is a superset of the this parameter.</li>
/// <li><b>aud</b> - the audience which is using the token.  If the token has an associated aud property
/// (usually because the audience was specified when requesting the token), then <b>aud</b> is matched to
/// the token audience.  If <b>aud</b> is not specified, then no audience checking takes place.</li>
/// <li><b>jsonObject</b> - a JSON Object containing the claims in the JWT.</li>
/// <li><b>securityParameters</b> - an array of strings indicating the signature and/or encryption operations to be performed on the ID Token.<br>
/// <br>
/// For JSON Web Signature (JWS):<br>
/// <ul><li><b>securityParameters("sigalg")</b> - Signature or MAC algorithm.</li></ul>
/// <br>
/// For JSON Web Encryption (JWE):<br><ul>
/// <li><b>securityParameters("keyalg")</b> - Key management algorithm.</li>
/// <li><b>securityParameters("encalg")</b> - Content encryption algorithm.</li></ul><br>
/// Note, <b>securityParameters("keyalg")</b> and <b>securityParameters("encalg")</b> must both be specified or null.<br>
/// See <Class>%Net.JSON.JWA</Class> for the list of supported algorithms.
/// </li></ul>
ClassMethod ValidateIDToken(applicationName As %String, IDToken As %String, accessToken As %String, scope As %String, aud As %String, Output jsonObject As %RegisteredObject, Output securityParameters As %String, Output sc As %Status) As %Boolean
{
}

/// Wrapper function to setup JWTToObject calls on client.
ClassMethod JWTToObject(client As OAuth2.Client, token As %String, ByRef securityParameters As %String, Output jsonObject As %DynamicObject, Output headerObject As %DynamicObject) As %Status [ Internal ]
{
}

}
