/// Utility methods for OAuth 2.0 support.
///
/// This class is used internally by InterSystems IRIS. You should not make direct
/// use of it within your applications. There is no guarantee made about either
/// the behavior or future operation of this class.
Class %OAuth2.Utils Extends %RegisteredObject [ System = 3 ]
{

/// Encode binary value using base64url encoding
ClassMethod Base64UrlEncode(bin As %Binary) As %String [ CodeMode = expression ]
{
}

/// Decode base64url encoded string
ClassMethod Base64UrlDecode(text As %String) As %Binary [ CodeMode = expression ]
{
}

/// Convert $h value to seconds since start of the Unix epoch,<br>
/// time is $h value.<br>
/// interval is interval to be added in seconds.
ClassMethod TimeInSeconds(time As %String, interval As %Integer = 0) As %Integer [ Internal ]
{
}

/// Convert seconds since start of the Unix epoch to $h format.
ClassMethod TimeInH(time As %Integer) As %String [ Internal ]
{
}

/// Check if apecified algorithm is symmetric
/// This method is deprecated. Use the <b>IsAlgSymmetric</b> method in <class>%Net.JSON.JWA</class> instead.
ClassMethod IsAlgSymmetric(alg As %String) As %Boolean [ Deprecated ]
{
}

/// Check if specified algorithm is RSA algorithm
/// This method is deprecated. Use the <b>IsAlgRSA</b> method in <class>%Net.JSON.JWA</class> instead.
ClassMethod IsAlgRSA(alg As %String) As %Boolean [ Deprecated ]
{
}

/// Check if specified algorithm is EC algorithm
/// This method is deprecated. Use the <b>IsAlgEC</b> method in <class>%Net.JSON.JWA</class> instead.
ClassMethod IsAlgEC(alg As %String) As %Boolean [ Deprecated ]
{
}

ClassMethod GetSupportedAlgorithms(Output sigalgs As %List, Output encalgs As %List, Output keyalgs As %List)
{
}

/// Update the private JWKS for client or authorization server with a new private/public key pair or each supported algorithm.
/// UpdatePrivateJWKS is used to initially create the JWKS or to do key rotation.
ClassMethod UpdatePrivateJWKS(ByRef privateJWKS As %String, ByRef publicJWKS As %String) As %Status [ Internal ]
{
}

ClassMethod FindLastKid(jwks As %String) As %Integer
{
}

ClassMethod GetSecurityParams(ops As %DynamicObject, Output securityParams) [ Internal ]
{
}

/// Convert a comma separated list to a $list
ClassMethod CommaToList(str As %String) As %List
{
}

/// Convert a $list to comman separated list
ClassMethod ListToComma(list As %List) As %String
{
}

/// Check that scope is subset of valid scopes for this token
ClassMethod CheckScope(tokenScope As %String, scope As %String) As %OAuth2.Error
{
}

/// Normalize scope
ClassMethod NormalizeScope(scope As %String) As %String [ Internal ]
{
}

/// Select the language for Authentication Class localization.<br>
/// uiLocales is the value of the ui_locales request parameter.<br>
/// The return value is the selected language code.<br>
/// Call looks like:
///   Set language=##class(%OAuth2.Utils).SelectLanguage(properties.RequestProperties.GetAt("ui_locales"),domain)
ClassMethod SelectLanguage(uiLocales As %String, domain As %String) As %String
{
}

/// Get the default sessionId if none is specified.
ClassMethod GetDefaultSessionId(ByRef sessionId As %String) As %String [ Internal ]
{
}

/// Output JSON object to the current device
ClassMethod ObjectToJSON(object As %DynamicAbstractObject) As %Status
{
}

/// Log an OAuth 2.0 error
ClassMethod LogError(methodName As %String, server As %Boolean, sc As %Status, data As %String) [ Internal ]
{
}

/// Log details of HTTP request received by CSP
ClassMethod LogCSPRequest(methodName As %String, server As %Boolean) [ Internal ]
{
}

/// Log details of HTTP request to be made
ClassMethod LogHTTPRequest(methodName As %String, server As %Boolean, httpRequest As %Net.HttpRequest, method As %String, url As %String, ByRef formData, logLevel As %Integer = 3) [ Internal ]
{
}

/// Log details of HTTP response
ClassMethod LogHTTPResponse(methodName As %String, server As %Boolean, httpRequest As %Net.HttpRequest, logLevel As %Integer = 3) [ Internal ]
{
}

/// Log a server token
ClassMethod LogServerToken(methodName As %String, token As OAuth2.Server.AccessToken) [ Internal ]
{
}

/// Log a server token
ClassMethod LogServerScope(methodName As %String, token As OAuth2.Server.AccessToken) [ Internal ]
{
}

/// Log a local array
ClassMethod LogArray(methodName As %String, server As %Boolean, desc As %String, ByRef array) [ Internal ]
{
}

/// Log a JSON object
ClassMethod LogJSON(methodName As %String, server As %Boolean, desc As %String, json As %DynamicObject) [ Internal ]
{
}

/// Display ^ISCLOG
ClassMethod DisplayLog(file As %String = "oauth2.log", testMode As %Boolean = 0) [ Internal ]
{
}

/// Needed for internal code generators.
ClassMethod GetJSONvalue(prop As %String, type As %String) As %String [ Internal ]
{
}

/// Get the response object
/// Called by OAuth2.Response and %SYS.OAuth2.AccessToken
ClassMethod GetJSONResponse(httpRequest As %Net.HttpRequest, Output json As %DynamicObject, Output error As %OAuth2.Error) As %Status [ Final, Internal ]
{
}

}
