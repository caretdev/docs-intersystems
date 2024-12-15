Class %OAuth2.JWT Extends %RegisteredObject [ Deprecated, System = 4 ]
{

/// This method is deprecated. Use the <b>GetJWK</b> method in <class>%Net.JSON.JWKS</class> instead.
ClassMethod GetJWK(JWKS As %DynamicObject, Alg As %String, Kid As %String) As %DynamicObject [ Deprecated ]
{
}

/// This method generates a JSON Web Token (JWT), performing signature and/or encryption operations as requested.<br>
/// <br>
/// Input parameters:<br>
/// <br>
/// JOSE - Array of Strings used to specify the JSON Object Signature and/or Encryption operations to be performed on the JWT<br>
/// <br>
/// For JSON Web Signature (JWS):<br><br>
/// JOSE("sigalg") - Signature or MAC algorithm, supported options:<br>
/// "HS256", HMAC with SHA-256<br>
/// "HS384", HMAC with SHA-384<br>
/// "HS512", HMAC with SHA-512<br>
/// "RS256", RSASSA-PKCS1-V1_5 using SHA-256<br>
/// "RS384", RSASSA-PKCS1-V1_5 using SHA-384<br>
/// "RS512", RSASSA-PKCS1-V1_5 using SHA-512<br>
/// "ES256", ECDSA using P-256 and SHA-256<br>
/// "ES384", ECDSA using P-384 and SHA-384<br>
/// "ES512", ECDSA using P-521 and SHA-512<br>
/// <br>
/// For JSON Web Encryption (JWE):<br><br>
/// JOSE("keyalg") - Key management algorithm, supported options:<br>
/// "RSA1_5", Encryption with RSAES-PKCS1-V1_5<br>
/// "RSA-OAEP", Encryption with RSAES-OAEP<br><br>
/// JOSE("encalg") - Content encryption algorithm, supported options:<br>
/// "A128CBC-HS256", 128-bit AES in CBC mode with HMAC SHA-256<br>
/// "A192CBC-HS384", 192-bit AES in CBC mode with HMAC SHA-384<br>
/// "A256CBC-HS512", 256-bit AES in CBC mode with HMAC SHA-512<br><br>
/// Note, JOSE("keyalg") and JOSE("encalg") must both be specified or null.<br>
/// <br>
/// If JWS and JWE are both specified the JWT will be signed, then encrypted.<br>
/// <br>
/// JOSE("jku") - If defined, the JWK Url will be included in the JOSE header. <br>
/// The relevant URL value must be included in JOSE("jku_local") or JOSE("jku_remote").<br>
/// <br>
/// JOSE("jwk") - If defined, the JWK public key will be included in the JOSE header. <br>
/// If performing a signature, the local public JWKS must be included in the JOSE("jwks_local") <br>
/// <br>
/// Body - Object representation of the Claims contained in the JWT<br>
/// <br>
/// LocalPrivate - Local Private JWKS<br>
/// <br>
/// RemotePublic - Remote Public JWKS<br>
/// Output parameter:<br>
/// <br>
/// JWT - JSON Web Token<br>
/// This method is deprecated. Use the <b>Create</b> method in <class>%Net.JSON.JWT</class> instead.
ClassMethod ObjectToJWT(ByRef JOSE As %String, Body As %DynamicObject, LocalPrivate As %String = "", RemotePublic As %String = "", Output JWT As %String) As %Status [ Deprecated ]
{
}

/// This method processes a JSON Web Token (JWT), performing decryption and/or signature verification operations as required.<br>
/// <br>
/// Input parameters:<br>
/// <br>
/// JWT - JSON Web Token<br>
/// <br>
/// LocalPrivate - Local Private JWKS
/// <br>
/// RemotePublic - Remote Public JWKS
/// <br>
/// Output parameters:<br>
/// <br>
/// JOSE - Output Array of Strings containing the algorithms used for
/// Signature and/or Encryption operations performed on the JWT.<br>
/// JOSE("sigalg") - Signature or MAC algorithm<br>
/// JOSE("keyalg") - Key management algorithm<br>
/// JOSE("encalg") - Content encryption algorithm<br>
/// <br>
/// Body - Output Object representation of the claims contained in the JWT<br>
/// Header - Output Object representation of the JWT header<br>
/// AcceptUnsecured - Boolean value indicating whether to consider a JWT signed with "alg":"none" as valid. Default is false (0).<br>
/// This method is deprecated. Use the <b>Validate</b> method in <class>%Net.JSON.JWT</class> instead.
ClassMethod JWTToObject(JWT As %String, LocalPrivate As %String = "", RemotePublic As %String = "", Output JOSE As %String, Output Body As %DynamicObject, Output Header As %DynamicObject, AcceptUnsecured As %Boolean = 0) As %Status [ Deprecated ]
{
}

ClassMethod GetSymmetricKeys(srcJWKS, dstJWKS) [ Private ]
{
}

}
