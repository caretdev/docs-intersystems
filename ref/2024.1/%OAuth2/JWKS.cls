Class %OAuth2.JWKS Extends %RegisteredObject [ Deprecated, System = 4 ]
{

/// This method is deprecated. Use the <b>GetAlgInfo</b> method in <class>%Net.JSON.JWA</class> instead.
ClassMethod GetAlg(Alg As %String) As %DynamicObject [ Deprecated, Internal ]
{
}

/// This algorithm adds a new RSA private and public key pair to JSON Web Key Sets (JWKS).<br>
/// <br>
/// Input parameter:<br>
/// <br>
/// Alg - The algorithm with which the keys are intended for use.<br>
/// Supported options for signature:<br>
/// "RS256", RSASSA-PKCS1-V1_5 using SHA-256<br>
/// "RS384", RSASSA-PKCS1-V1_5 using SHA-384<br>
/// "RS512", RSASSA-PKCS1-V1_5 using SHA-512<br>
/// Supported options for key management:<br>
/// "RSA1_5", Encryption with RSAES-PKCS1-V1_5<br>
/// "RSA-OAEP", Encryption with RSAES-OAEP<br><br>
/// <br>
/// Output parameters:<br>
/// <br>
/// LocalPrivate - The Local Private JWKS to which the RSA private key will be added.
/// If it does not already exist it will be created.<br>
/// <br>
/// Local Public - The Local Public JWKS to which the RSA public key will be added.
/// If it does not already exist it will be created.<br>
/// This method is deprecated. Use the <class>%Net.JSON.JWK</class> and <class>%Net.JSON.JWKS</class>
/// classes to manipulate JWK and JWKS definitions.
ClassMethod AddRSA(Alg As %String, ByRef LocalPrivate As %String, ByRef LocalPublic As %String) As %Status [ Deprecated ]
{
}

/// This method adds a new shared symmetric key to a JSON Web Key Set (JWKS).<br>
/// <br>
/// Alg - The algorithm for which the key is intended for use.<br>
/// Supported options for signature:<br>
/// "HS256", HMAC with SHA-256<br>
/// "HS384", HMAC with SHA-384<br>
/// "HS512", HMAC with SHA-512<br>
/// Supported options for key management:<br>
/// "A128KW", AES Key Wrap with 128-bit key<br>
/// "A192KW", AES Key Wrap with 192-bit key<br>
/// "A256KW", AES Key Wrap with 256-bit key<br>
/// "dir", direct encryption with a shared symmetric key<br>
/// <br>
/// ClientSecret - Secret shared between a client and a server.  This must have sufficient entropy to support the specified algorithm.<br>
/// <br>
/// Output Parameter:<br>
/// <br>
/// RemotePublic - The Remote Public JWKS to which the shared symmetric key will be added.
/// If it does not already exist it will be created.<br>
/// This method is deprecated. Use the <class>%Net.JSON.JWK</class> and <class>%Net.JSON.JWKS</class>
/// classes to manipulate JWK and JWKS definitions.
ClassMethod AddOct(Alg As %String, ClientSecret As %String, ByRef RemotePublic As %String, EncAlg As %String) As %Status [ Deprecated ]
{
}

/// This method adds the RSA keys contained in a %SYS.X509Credentials object to JSON Web Key Sets (JWKS).<br>
/// <br>
/// Input parameters:<br>
/// <br>
/// Alg - The algorithm with which the keys are intended for use.<br>
/// Supported options for signature:<br>
/// "RS256", RSASSA-PKCS1-V1_5 using SHA-256<br>
/// "RS384", RSASSA-PKCS1-V1_5 using SHA-384<br>
/// "RS512", RSASSA-PKCS1-V1_5 using SHA-512<br>
/// Supported options for key encryption:<br>
/// "RSA1_5", Encryption with RSAES-PKCS1-V1_5<br>
/// "RSA-OAEP", Encryption with RSAES-OAEP<br><br>
/// <br>
/// Output parameters:<br>
/// <br>
/// If the %SYS.X509Credentials object PrivateKey property is set:<br>
/// <br>
/// LocalPrivate - The Local Private JWKS to which the RSA private key will be added.
/// If it does not already exist it will be created.<br>
/// <br>
/// Public - The Local Public JWKS to which the RSA public key will be added.
/// If it does not already exist it will be created.<br>
/// <br>
/// If the %SYS.X509Credentials object PrivateKey property is null:<br>
/// <br>
/// Public - The Remote Public JWKS to which the RSA public key will be added.
/// If it does not already exist it will be created.<br>
/// This method is deprecated. Use the <class>%Net.JSON.JWK</class> and <class>%Net.JSON.JWKS</class>
/// classes to manipulate JWK and JWKS definitions.
ClassMethod AddX509(Alg As %String, X509 As %SYS.X509Credentials, ByRef LocalPrivate As %String, ByRef Public As %String) As %Status [ Deprecated ]
{
}

/// This algorithm adds a new EC private and public key pair to JSON Web Key Sets (JWKS).<br>
/// <br>
/// Input parameter:<br>
/// <br>
/// Alg - The algorithm with which the keys are intended for use.<br>
/// Supported options for signature:<br>
/// "ES256", ECDSA using P-256 and SHA-256<br>
/// "ES384", ECDSA using P-384 and SHA-384<br>
/// "ES512", ECDSA using P-521 and SHA-512<br>
/// <br>
/// Output parameters:<br>
/// <br>
/// LocalPrivate - The Local Private JWKS to which the EC private key will be added.
/// If it does not already exist it will be created.<br>
/// <br>
/// Local Public - The Local Public JWKS to which the EC public key will be added.
/// If it does not already exist it will be created.<br>
/// This method is deprecated. Use the <class>%Net.JSON.JWK</class> and <class>%Net.JSON.JWKS</class>
/// classes to manipulate JWK and JWKS definitions.
ClassMethod AddEC(Alg As %String, ByRef LocalPrivate As %String, ByRef LocalPublic As %String) As %Status [ Deprecated ]
{
}

ClassMethod AddAsymmetric(alg As %String, X509 As %SYS.X509Credentials = "", ByRef private As %String, ByRef public As %String) As %Status [ Private ]
{
}

}
