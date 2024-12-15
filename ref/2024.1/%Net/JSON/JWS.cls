/// This class provides methods to sign and validate JSON Web Signatures, as defined in RFC 7515.
Class %Net.JSON.JWS Extends %RegisteredObject [ System = 4 ]
{

/// This method signs a header and payload to make a JWS.
/// <br><br>
/// Input parameters:
/// <ul><li>
/// protectedHeader - The JOSE Protected Header to use.
/// </li><li>
/// unprotectedHeader - The JOSE Unprotected Header to use.
/// </li><li>
/// payload - The message being signed.
/// </li><li>
/// serialization - The JWS Serialization format to use.
/// Accepted serialization formats are "compact" and "json".
/// The format type determines the structure of the JWS that is created.
/// This defaults to "compact"
/// </li><li>
/// JWKS - The JSON Web Key Set that contains the key that will be used to sign this JWS.
/// This defaults to the null string.
/// </li></ul><br>
/// Output parameters:
/// <ul><li>
/// JWS - The JSON Web Signature that is created.
/// If json serialization is used, this will be a valid JSON string. If compact serialization is used it will be a non-JSON string.
/// </li></ul><br>
/// Return value:
/// <ul><li>
/// A status indicating whether or not a JWS was created from the inputs. If this method is unable to create a JWS from the inputs
/// it will return an error indicating why this is.
/// </li></ul><br>
/// Notes:
/// <ul><li>
/// This method will fail if provided an empty payload.
/// </li><li>
/// If none of the provided headers contains a kid but in the process of creating the JWS a JWK with a kid is used, that kid
/// will be added to the protected header before the JWS is created.
/// </li><li>
/// If the "compact" serialization format is used, the protected header MUST be present and the unprotected header MUST be absent.
/// If the "json" format is used, at least one of the protected header and unprotected header MUST be present and they both CAN be present.
/// </li><li>
/// Only the JWS Compact Serialization and the flattened syntax of the JWS JSON Serialization are supported for signing (not the general
/// format of the JWS JSON Serialization).
/// </li><li>
/// Using the default JWKS (which is null) will result in an error in all cases except for when the algorithm "none" is used.</li></ul>
ClassMethod Sign(protectedHeader As %DynamicObject, unprotectedHeader As %DynamicObject, payload As %String, serialization As %String = "compact", JWKS As %String = "", Output JWS As %String) As %Status
{
}

/// This method validates a JWS.
/// <br><br>
/// Input parameters:
/// <ul><li>
/// JWS - The JSON Web Signature to be validated.
/// </li><li>
/// JWKS - The JSON Web Key Set that contains the key that will be used to validate this JWS.
/// This defaults to the null string.
/// </li><li>
/// acceptUnsecured - A boolean value indicating whether or not to accept JWSs that use the algorithm "none".
/// This defaults to false.
/// </li></ul><br>
/// Output parameters:
/// <ul><li>
/// validations - A dynamic array containing information about the validity of the signatures in the JWS.
/// The validations array contains one DynamicObject for each signature in the JWS, each containing the following fields:
/// <ul>
/// <li>"signature":    The signature this DynamicObject contains information about.</li>
/// <li>"valid":        A boolean indicating whether or not the signature is valid.</li>
/// <li>"error":        A string containing any error message that was generating during the checking of the signature.</li></ul>
/// </li></ul<br>
/// Return value:
/// <ul><li>
/// A boolean indicator of whether or not validation succeeded.
/// If the JWS contains multiple signatures, this method will return true as long as at least one of the signatures is valid.
/// </li></ul><br>
/// Notes:
/// <ul><li>
/// This method will not accept an empty JWS. If provided one, it will return false and the validations array will be null.
/// </li><li>
/// This method supports validation for the JWS Compact Serialization and both the flattened and general syntax of the JWS
/// JSON Serialization.
/// </li><li>
/// Using the default JWKS (which is null) will result in an error in all cases except for when the algorithm "none" was used (and
/// unsecured JWSs are accepted).
/// </li><li>
/// Some applications may only want to consider a JWS with multiple signatures valid if all of the signatures are valid. Since this
/// method only needs one signature to be valid in order to return true, applications that require all signatures to be valid should
/// use the error field of each signature in the validations array to meet their needs. Specifically, they should check to see if
/// any signature's error field is not null. Any signature whose error field is not null failed to validate (which is why it has an
/// error message), so the presence of any non-null error fields means that at least one signature failed to validate.</li></ul>
ClassMethod Validate(JWS As %String, JWKS As %String = "", acceptUnsecured As %Boolean = 0, Output validations As %DynamicArray) As %Boolean
{
}

/// This private method signs and creates a compact serialized JWS. It is a helper method for Sign() above and
/// should never be called on its own. See Sign() for information on the inputs and outputs.
ClassMethod SignCompact(header As %DynamicObject, payload As %String, JWKS As %String, Output JWS As %String) As %Status [ Private ]
{
}

/// This private method signs and creates a JSON serialized JWS with flattened syntax. It is a helper method for
/// Sign() above and should never be called on its own. See Sign() for information on the inputs and outputs.
ClassMethod SignJSON(protectedHeader As %DynamicObject, unprotectedHeader As %DynamicObject, payload As %String, JWKS As %String, Output JWS As %String) As %Status [ Private ]
{
}

/// This private method validates a compact serialized JWS and returns an object containing information on the validation status of the
/// signature in the JWS. It is a helper method for Validate() above and should never be called on its own. See Validate() for information
/// on the inputs and outputs.
ClassMethod ValidateCompact(JWS As %String, JWKS As %String, acceptUnsecured As %Boolean, Output validations As %DynamicArray) As %Boolean [ Private ]
{
}

/// This private method validates a JSON serialized JWS and returns an object containing information on the validation status of each
/// signature in the JWS. It is a helper method for Validate() above and should never be called on its own. See Validate() for information
/// on the inputs and outputs.
ClassMethod ValidateJSON(JWS As %String, JWKS As %String, acceptUnsecured As %Boolean, Output validations As %DynamicArray) As %Boolean [ Private ]
{
}

/// This private helper method makes the actual signature for the JWS using the provided algorithm information and JSON Web Key.
ClassMethod CreateSignature(algInfo As %DynamicObject, JWK As %DynamicObject, signingInput As %String, Output signature As %String) As %Status [ Private ]
{
}

/// This private helper method converts the given ASN.1-format signature output by the kernel code into the JWA-format signature
/// required by the JWS specs.
ClassMethod ECSigASN1toJWA(ASN1Sig As %String, curveSize As %Integer, Output JWASig As %String) As %Status [ Private ]
{
}

/// This private helper method verifies the given JWS signature using the provided algorithm information and JSON Web Key.
ClassMethod VerifySignature(algInfo As %DynamicObject, JWK As %DynamicObject, signingInput As %String, signature As %String, acceptUnsecured As %Boolean) As %Status [ Private ]
{
}

/// This private helper method converts the given JWA-format signature into the ASN.1-format signature required by the kernel code.
ClassMethod ECSigJWAtoASN1(JWASig As %String, curveSize As %Integer, Output ASN1Sig As %String) As %Status [ Private ]
{
}

/// This private helper method retrieves all of the signatures and protected and unprotected headers
/// from a JSON serialized JWS.
/// It returns the number of signatures found and outputs an array of all of the signatures,
/// protected headers, and unprotected headers found.
ClassMethod ExtractAllSignatures(JWSObj As %DynamicObject, Output signatureArray) As %Integer [ Private ]
{
}

/// This private helper method retrieves all of the signatures and protected and unprotected headers from a
/// JSON serialized JWS that uses general syntax.
/// It populates a two-dimensional array to store each signature alongside the corresponding protected
/// and unprotected header and then returns the number of signatures found.
ClassMethod ExtractGeneralFormat(JWSObj As %DynamicObject, Output signatureArray) As %Integer [ Private ]
{
}

/// This private helper method retrieves the signature and protected and unprotected header from a
/// JSON serialized JWS that uses flattened syntax.
/// In order to ensure compatibility with the general syntax of JSON serialized JWSs, this method
/// populates a two-dimensional array to store the signature alongside the protected and unprotected header.
/// It then returns the number of signatures found (which will always either be 0 or 1).
ClassMethod ExtractFlattenedFormat(JWSObj As %DynamicObject, Output signatureArray) As %Integer [ Private ]
{
}

}
