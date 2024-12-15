/// This class provides methods to create and validate JSON Web Tokens, as defined in RFC 7519.
Class %Net.JSON.JWT Extends %RegisteredObject [ System = 4 ]
{

/// This method creates a JSON Web Token (JWT).
/// <br><br>
/// Input parameters:
/// <ul><li>
/// sigJOSE - Object representation of the JSON Object Signing and Encryption (JOSE) Header to be used if this JWT is going to be signed.
/// </li><li>
/// encJOSE - Object representation of the JSON Object Signing and Encryption (JOSE) Header to be used if this JWT is going to be encrypted.
/// </li><li>
/// claims - Object representation of the claims to be contained in the JWT.
/// </li><li>
/// sigJWKS - The JSON Web Key Set (JWKS) that contains the key to be used for signing this JWT (if it is going to be signed).
/// This defaults to null.
/// </li><li>
/// encJWKS - The JWKS that contains the key to be used for encrypting this JWT (if it is going to be encrypted).
/// This defaults to null.
/// </li></ul><br>
/// Output parameters:
/// <ul><li>
/// JWT - The JWT that is created.
/// </li></ul><br>
/// Return value:
/// <ul><li>
/// A status indicating whether or not a JWT could be created given the provided inputs, where error values indicate that a
/// JWT could not be created and describe the reason why.
/// </li></ul><br>
/// Notes:
/// <ul><li>
/// If sigJOSE is defined, then sigJWKS must also be defined unless the signing algorithm is "none".
/// </li><li>
/// If encJOSE is defined, then encJWKS must also be defined.
/// </li><li>
/// If both sigJOSE and encJOSE are defined, then the JWT will be signed, then encrypted as recommended in RFC 7519 section 11.2.
/// </li><li>
/// sigJWKS and encJWKS can be the same JWKS, but if both signing and encryption are to be used then the arguments must both be passed
/// (even if they contain the same value).</li></ul>
ClassMethod Create(sigJOSE As %DynamicObject, encJOSE As %DynamicObject, claims As %DynamicObject, sigJWKS As %String = "", encJWKS As %String = "", Output JWT As %String) As %Status
{
}

/// This method validates a JSON Web Token (JWT).
/// <br><br>
/// Input parameters:
/// <ul><li>
/// JWT - The JWT to be validated.
/// </li><li>
/// sigJWKS - The JSON Web Key Set (JWKS) that contains the key to be used for verifying this JWT's signature (if it was signed).
/// This defaults to null.
/// </li><li>
/// encJWKS - The JWKS that contains the key to be used for decrypting this JWT (if it was encrypted).
/// This defaults to null.
/// </li><li>
/// acceptUnsecured - Boolean value indicating whether to accept unsecured JWTs or not.
/// This defaults to false.
/// </li></ul><br>
/// Output parameters:
/// <ul><li>
/// claims - Object representation of the claims contained in the JWT.
/// </li></ul><br>
/// Return value:
/// <ul><li>
/// A status indicating whether or not the provided JWT was validated given the provided JWKSs, where error values indicate that the
/// JWT is not valid and describe the reason why.
/// </li></ul><br>
/// Notes:
/// <ul><li>
/// sigJWKS and encJWKS can be the same JWKS, but if both signing and encryption were used then the arguments must both be passed
/// (even if they contain the same value).</li></ul>
ClassMethod Validate(JWT As %String, sigJWKS As %String = "", encJWKS As %String = "", acceptUnsecured As %Boolean = 0, Output claims As %DynamicObject, Output operations As %DynamicArray) As %Status
{
}

}
