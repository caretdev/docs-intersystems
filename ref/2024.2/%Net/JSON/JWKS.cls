/// This class provides methods to create and manage JSON Web Key Sets, as defined in RFC 7517.
Class %Net.JSON.JWKS Extends %RegisteredObject [ System = 4 ]
{

/// This method creates a new JSON Web Key Set (JWKS).
/// <br><br>
/// Output parameters:
/// <ul><li>
/// JWKS - An empty JWKS.
/// </li></ul><br>
/// Return value:
/// <ul><li>
/// A status value indicating whether or not the JWKS was created, where errors indicate that
/// it wasn't created and describe why.
/// </li></ul><br>
/// Notes:
/// <ul><li>
/// This simply creates an empty JWKS.</li></ul>
ClassMethod InitializeJWKS(Output JWKS As %String) As %Status
{
}

/// This internal helper method checks that the provided JSON Web Key Set (JWKS) conforms to the
/// specs laid out in RFC 7517 section 5.
/// <br><br>
/// Input parameters:
/// <ul><li>
/// JWKS - The JWKS to check for validity.
/// </li></ul><br>
/// Output parameters:
/// <ul><li>
/// JWKSObj - The provided JWKS in object form.
/// </li></ul><br>
/// Return value:
/// <ul><li>
/// A status indicating whether or not the provided JWKS is valid, where error values indicate that the
/// JWKS is not valid and describe the reason why.
/// </li></ul><br>
/// Notes:
/// <ul><li>
/// This method checks that the given JWKS exists, is non-null, is in valid JSON format, and contains a
/// "keys" parameter that is an array.
/// </li><li>
/// This method does not check that the contents of the "keys" array are valid JWKs.
/// </li><li>
/// If the provided JWKS is not valid, then JWKSObj will be null.</li></ul>
ClassMethod IsValid(JWKS As %String, Output JWKSObj As %DynamicObject) As %Status [ Internal ]
{
}

/// This methods adds a JSON Web Key (JWK) to a JSON Web Key Set (JWKS).
/// <br><br>
/// Input parameters:
/// <ul><li>
/// JWK - The JWK to add to the JWKS.
/// </li><li>
/// JWKS - The JWKS to add the JWK into.
/// </li></ul><br>
/// Return value:
/// <ul><li>
/// A status indicating whether or not the provided JWK was added to the JWKS, where error values
/// indicate that it was not added and describe the reason why.
/// </li></ul><br>
/// Notes:
/// <ul><li>
/// If JWKS is null, then a new JWKS will be created and the key will be added to it.
/// </li><li>
/// This method does not add a kid to keys when it puts them in the JWKS. In order to use kids, they must be added before the key is added to the JWKS.
/// For example:<br><pre>
/// Set JWK.kid=1
/// Do ##class(%Net.JSON.JWKS).PutJWK(JWK,.JWKS)</pre></li></ul>
ClassMethod PutJWK(JWK As %DynamicObject, ByRef JWKS As %String) As %Status
{
}

/// This method returns a JSON Web Key (JWK) that matches the provided algorithm and/or key ID from the given JSON Web Key Set (JWKS).
/// <br><br>
/// Input parameters:
/// <ul><li>
/// alg - The algorithm of the desired JWK.
/// </li><li>
/// kid - The key ID of the desired JWK.
/// </li><li>
/// JWKS - The JWKS to search for the desired key.
/// </li></ul><br>
/// Output parameters:
/// <ul><li>
/// JWK - The JWK that matches the provided algorithm and/or key ID.
/// </li></ul><br>
/// Return value:
/// <ul><li>
/// A status indicating whether or not the method was able to use the provided inputs to search the given JWKS, where
/// error values indicate that it was unable to search and describe the reason why.
/// </li></ul><br>
/// Notes:
/// <ul><li>
/// This method uses the following criteria, listed in order of priority, to determine which key to return:<ol>
/// <li> alg/kid combination exact match</li>
/// <li> alg (but not kid) match</li>
/// <li> kid match and the key is for an algorithm with the same key type as alg</li>
/// <li> kid match</li></ol>
/// </li><li>
/// If more than one key is found for a given criterium, then the last key that meets that criterium is returned.
/// </li><li>
/// This method will return an error if it finds a key in the JWKS that is not a valid JWK.
/// </li><li>
/// This method will succeed if no key is found for the given alg/kid, but the JWK output value will be emtpy.</li></ul>
ClassMethod GetJWK(alg As %String, kid As %String, JWKS As %String, Output JWK As %DynamicObject) As %Status
{
}

/// This method removes JSON Web Keys (JWK) that match the provided algorithm and/or key ID from a JSON Web Key Set (JWKS).
/// <br><br>
/// Input parameters:
/// <ul><li>
/// alg - The algorithm of the JWKs that are to be removed from the JWKS.
/// </li><li>
/// kid - The key ID of the JWKs that are to be removed from the JWKS.
/// </li><li>
/// JWKS - The JWKS to remove keys from.
/// </li></ul><br>
/// Return value:
/// <ul><li>
/// A status indicating whether or not the method was able to use the provided inputs to search the given JWKS to
/// attempt to remove keys, where error values indicate that it was unable to search and describe the reason why.
/// </li></ul><br>
/// Notes:
/// <ul><li>
/// If both alg and kid are defined, this method will remove only those keys that match both alg and kid.
/// </li><li>
/// If only alg is defined, this method will remove all keys for that algorithm.
/// </li><li>
/// If only kid is defined, this method will remove all keys with that key ID.</li></ul>
ClassMethod RemoveJWK(alg As %String, kid As %String, ByRef JWKS As %String) As %Status
{
}

}
