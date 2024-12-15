/// This class provides methods to work with JSON Object Signing and Encryption Headers, as defined
/// in RFC 7515 (and extended in RFC 7516). It also defines the JOSE header parameters that are understood
/// and supported by all JSON Web classes (JWS, JWE, JWK, etc.).
///
/// This class is intended for internal use by InterSystems IRIS only.
Class %Net.JSON.JOSE Extends %RegisteredObject [ System = 4 ]
{

/// The registered JOSE header parameters that the JWS/JWE/etc. classes can understand
Parameter JOSESupportedParams [ Internal ] = ",alg,enc,kid,zip,typ,cty,crit,";

/// The extension JOSE header parameters that the JWS/JWE/etc. classes can understand
Parameter JOSESupportedExtensions [ Internal ];

/// This internal helper method ensures that the JOSE header parameters in the provided header object conform to the
/// specs laid out in RFC 7515 section 4 and (if applicable) RFC 7516 section 4. It also retrieves the key from the
/// provided JSON Web Key Set that matches the provided header parameters.
/// <br><br>
/// Input parameters:
/// <ul><li>
/// header - The header object whose parameters are being checked.
/// </li><li>
/// JWKS - The JSON Web Key Set that contains the key that corresponds to this header's parameters.
/// </li><li>
/// serialization - The JWS or JWE Serialization format used by the JWS or JWE the provided header is for.
/// Accepted serialization formats are "compact" and "json".
/// </li><li>
/// structure - The JSON web data structure this header is for.
/// Accepted values are "jws" and "jwe".
/// </li></ul><br>
/// Output parameters:
/// <ul><li>
/// algInfo - An object containing information about the algorithm in the header's "alg" field.
/// </li><li>
/// encInfo - An object containing information about the algorithm in the header's "enc" field.
/// </li><li>
/// JWK - An object representing the JSON Web Key from the provided JWKS that matches the header's "alg" and "kid" fields.
/// </li></ul><br>
/// Return value:
/// <ul><li>
/// A status indicating if the provided header conforms to the specs and the provided JWKS contains a key that can
/// be used with the algorithm defined in the header's alg field. Success means that the header conforms to the
/// specs and an appropriate key was found in the given JWKS.
/// </li></ul><br>
/// Notes:
/// <ul><li>
/// The provided header should be the combination of all of the protected and unprotected headers for a given JWS/JWE.
/// </li><li>
/// If no header is provided, this method will fail.
/// </li><li>
/// If no JWKS is provided this validation will fail unless the header's "alg" value is "none".
/// </li><li>
/// See %Net.JSON.JWA:GetAlgInfo for a description of what the algInfo and encInfo objects contain.
/// </li><li>
/// For a JWS, algInfo will contain information about the algorithm used to sign the JWS.
/// For a JWE, algInfo will contain information about the algorithm used to create or encrypt the CEK.
/// </li><li>
/// For a JWS, encInfo will be empty.
/// For a JWE, encInfo will contain information about the algorithm used to encrypt the content of the JWE.
/// </li><li>
/// For a JWS, JWK will be the key used for signing the JWS.
/// For a JWE, JWK will be the key used for creating or encrypting the CEK.</li></ul>
ClassMethod ValidateHeaderParams(header As %DynamicObject, JWKS As %String, serialization As %String, structure As %String, Output algInfo As %DynamicObject, Output encInfo As %DynamicObject, Output JWK As %DynamicObject) As %Status [ Internal ]
{
}

/// This internal helper method combines a protected header and up to two unprotected headers into one object.
/// <br><br>
/// Input parameters:
/// <ul><li>
/// protectedHeader - The protected header to combine.
/// </li><li>
/// unprotectedHeader1 - The first unprotected header to combine.
/// </li><li>
/// unprotectedHeader2 - The second unprotected header to combine.
/// </li></ul><br>
/// Output parameters:
/// <ul><li>
/// header - The combined header object.
/// </li></ul><br>
/// Return value:
/// <ul><li>
/// A status indicating whether or not the headers were successfully combined into one object. Success means that
/// the headers were successfully combined and that no parameters were present in more than one header.
/// </li></ul><br>
/// Notes:
/// <ul><li>
/// This method returns an error if it finds a header parameter that is present in more than one of the headers, as
/// specified in RFC 7515 section 7.2.1 and RFC 7516 section 7.2.1.
/// </li><li>
/// This method can actually take any number of headers. If passed only one header, it will just return that header.</li></ul>
ClassMethod CombineHeaderObjects(protectedHeader As %DynamicObject = "", unprotectedHeader1 As %DynamicObject = "", unprotectedHeader2 As %DynamicObject = "", Output header As %DynamicObject) As %Status [ Internal ]
{
}

}
