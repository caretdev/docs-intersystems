/// This class provides methods to create JSON Web Keys, as defined in RFC 7517, and convert between the JSON Web Key
/// format and other key representation formats.
Class %Net.JSON.JWK Extends %RegisteredObject [ System = 4 ]
{

/// This method creates a new public/private JSON Web Key (JWK) pair for the given algorithm.
/// <br><br>
/// Input parameters:
/// <ul><li>
/// alg - The algorithm for which to create the JWK.
/// </li><li>
/// secret - An optional shared secret to be used as the key. If this is omitted, a new secret will be generated.
/// This defaults to a null string.
/// </li></ul><br>
/// Output parameters:
/// <ul><li>
/// privJWK - The private JSON Web Key that is created.
/// </li><li>
/// pubJWK - The public JSON Web key that is created.
/// </li></ul><br>
/// Return value:
/// <ul><li>
/// A status indicating if a JWK pair (or individual JWK for symmetric key algorithms) was successfully created
/// for the given algorithm and (optionally) secret. If no JWK was created, this method will return an error
/// describing why not.
/// </li></ul><br>
/// Notes:
/// <ul><li>
/// This method does not add a kid to the keys it creates. In order to use kids, they must be added after the keys are created.
/// For example:<br><pre>
/// Set sc=##class(%Net.JSON.JWK).Create("ES256",,.privJWK,.pubJWK)
/// If $$$ISOK(sc) {
/// 	Set privJWK.kid=1
/// 	Set pubJWK.kid=1
/// }</pre>
/// </li><li>
/// This method does not encrypt the keys it creates. In order to create encrypted JWKs, convert the JWKs created by this method
/// into strings and then pass them through %Net.JSON.JWE:Encrypt() as the plaintext. For example:<br><pre>
/// Set sc=##class(%Net.JSON.JWK).Create("ES256",,.privJWK,.pubJWK)
/// If $$$ISOK(sc) {
/// 	Set privJWK=privJWK.%ToJSON()
/// 	Set pubJWK=pubJWK.%ToJSON()
/// 	Do ##class(%Net.JSON.JWE).Encrypt({"alg":"RSA1_5","enc":"A256CBC-HS512"},,,privJWK,,,JWKS,.encryptedPrivJWK)
/// 	Do ##class(%Net.JSON.JWE).Encrypt({"alg":"RSA1_5","enc":"A256CBC-HS512"},,,pubJWK,,,JWKS,.encryptedPubJWK)
/// }</pre><br>
/// Where JWKS is a JWKS that contains a key for RSA1_5.
/// </li><li>
/// This method will return an error if an unrecognized algorithm is used.
/// </li><li>
/// Assuming creation was successful, privJWK will always have a non-null value.
/// </li><li>
/// If the algorithm is symmetric, then pubJWK will be null even if creation succeeded.</li></ul>
ClassMethod Create(alg As %String, secret As %String = "", Output privJWK As %DynamicObject, Output pubJWK As %DynamicObject) As %Status
{
}

/// This method creates a new JSON Web Key (JWK) pair for the given algorithm based on the RSA key(s) contained in the given <class>%SYS.X509Credentials</class> object.
/// <br><br>
/// Input parameters:
/// <ul><li>
/// alg - The algorithm for which to create the JWK.
/// </li><li>
/// x509 - a <class>%SYS.X509Credentials</class> object containing the RSA keys to use.
/// If this object contains a private key, then a public and private JWK will be returned. Otherwise, only the pubkc JWK will be returned.
/// </li></ul><br>
/// Output parameters:
/// <ul><li>
/// privJWK - The private JSON Web Key that is created.
/// </li><li>
/// pubJWK - The public JSON Web key that is created.
/// </li></ul><br>
/// Return value:
/// <ul><li>
/// A status indicating if a JWK pair (or just a public JWK) was successfully created
/// for the given algorithm. If no JWK was created, this method will return an error describing why not.
/// </li></ul><br>
/// Notes:
/// <ul><li>
/// This method does not add a kid to the keys it creates. In order to use kids, they must be added after the keys are created.
/// For example:<br><pre>
/// Set sc=##class(%Net.JSON.JWK).CreateX509("RS256",x509,.privJWK,.pubJWK)
/// If $$$ISOK(sc) {
/// 	Set privJWK.kid=1
/// 	Set pubJWK.kid=1
/// }</pre>
/// </li><li>
/// This method does not encrypt the keys it creates. In order to create encrypted JWKs, convert the JWKs created by this method
/// into strings and then pass them through %Net.JSON.JWE:Encrypt() as the plaintext. For example:<br><pre>
/// Set sc=##class(%Net.JSON.JWK).CreateX509("RS256",x509,.privJWK,.pubJWK)
/// If $$$ISOK(sc) {
/// 	Set privJWK=privJWK.%ToJSON()
/// 	Set pubJWK=pubJWK.%ToJSON()
/// 	Do ##class(%Net.JSON.JWE).Encrypt({"alg":"RSA1_5","enc":"A256CBC-HS512"},,,privJWK,,,JWKS,.encryptedPrivJWK)
/// 	Do ##class(%Net.JSON.JWE).Encrypt({"alg":"RSA1_5","enc":"A256CBC-HS512"},,,pubJWK,,,JWKS,.encryptedPubJWK)
/// }</pre><br>
/// Where JWKS is a JWKS that contains a key for RSA1_5.
/// </li><li>
/// This method will return an error if an unrecognized algorithm is used.
/// </li><li>
/// Assuming creation was successful, pubJWK will always have a non-null value.</li></ul>
ClassMethod CreateX509(alg As %String, x509 As %SYS.X509Credentials, Output privJWK As %DynamicObject, Output pubJWK As %DynamicObject) As %Status
{
}

/// This internal helper method checks that the provided JSON Web Key (JWK) conforms to the
/// specs laid out in RFC 7517 section 4.
/// <br><br>
/// Input parameters:
/// <ul><li>
/// JWK - The JWK to check for validity.
/// </li></ul><br>
/// Return value:
/// <ul><li>
/// A status indicating whether or not the provided JWK is valid, where error values indicate that the
/// JWK is not valid and describe the reason why.
/// </li></ul><br>
/// Notes:
/// <ul><li>
/// This method checks that the given JWK exists, is non-null, is in valid JSON format, and contains a
/// "kty" parameter. If the "kty" parameter is one of the three known values defined in RFC 7517, it then
/// checks that the JWK contains the corresponding parameters laid out for each key type in RFC 7518 section 6.
/// </li><li>
/// This method does not check that the "kty" parameter is a valid key type (as there might be types in
/// private use not known to IRIS).</li></ul>
ClassMethod IsValid(JWK As %DynamicObject) As %Status [ Internal ]
{
}

/// This method converts a key in JSON Web Key (JWK) format to PEM-encoded DER ASN.1 format.
/// <br><br>
/// Input parameters:
/// <ul><li>
/// JWK - JSON Web Key representation of a private or public key.
/// </li></ul><br>
/// Output parameters:
/// <ul><li>
/// ASN1 - PEM-encoded DER ASN.1 representation of the private or public key.
/// </li></ul><br>
/// Return value:
/// <ul><li>
/// A status indicating whether or not the JWK was successfully converted to ASN.1 format, where error
/// values indicate that the conversion failed and describe the reason why.
/// </li></ul><br>
/// Notes:
/// <ul><li>
/// Currently this method only supports RSA and elliptic curve keys.</li></ul>
ClassMethod JWKtoASN1(JWK As %DynamicObject, Output ASN1 As %String) As %Status
{
}

/// This private method creates a private JWK for a symmetric algorithm.
/// It is a helper method for Create() above and should never be called on its own.
ClassMethod CreateOct(algInfo As %DynamicObject, secret As %String, Output privJWK As %DynamicObject) As %Status [ Internal, Private ]
{
}

/// This private method creates a private and public JWK pair for an RSA algorithm.
/// It is a helper method for Create() above and should never be called on its own.
ClassMethod CreateRSA(algInfo As %DynamicObject, Output privJWK As %DynamicObject, Output pubJWK As %DynamicObject) As %Status [ Internal, Private ]
{
}

/// This private method creates a private and public JWK pair for an elliptic curve algorithm.
/// It is a helper method for Create() above and should never be called on its own.
ClassMethod CreateEC(algInfo As %DynamicObject, Output privJWK As %DynamicObject, Output pubJWK As %DynamicObject) As %Status [ Internal, Private ]
{
}

/// This private method converts a PEM-encoded DER ASN.1 RSA key to JSON Web Key (JWK) format.
/// It is a helper method for CreateX509() above and should never be called on its own.
ClassMethod RSAASN1toJWK(ASN1 As %String, Password As %String = "", Output JWK As %DynamicObject) As %Status [ Internal, Private ]
{
}

/// This private method converts an RSA key in JSON Web Key (JWK) format to PEM-encoded DER ASN.1 format.
/// It is a helper method for JWKtoASN1() above and should never be called on its own.
ClassMethod RSAJWKtoASN1(JWK As %DynamicObject, Output ASN1 As %String) As %Status [ Internal, Private ]
{
}

/// This private method converts an elliptic curve key in JSON Web Key (JWK) format to PEM-encoded DER ASN.1 format.
/// It is a helper method for JWKtoASN1() above and should never be called on its own.
ClassMethod ECJWKtoASN1(JWK As %DynamicObject, Output ASN1 As %String) As %Status [ Internal, Private ]
{
}

}
