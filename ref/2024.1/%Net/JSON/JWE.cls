/// This class provides methods to encrypt and decrypt JSON Web Encryption objects, as defined in RFC 7516.
Class %Net.JSON.JWE Extends %RegisteredObject [ System = 4 ]
{

/// This method encrypts a message and makes a JWE.
/// <br><br>
/// Input parameters:
/// <ul><li>
/// protectedHeader - The JOSE Protected Header to use.
/// </li><li>
/// sharedUnprotectedHeader - The JOSE Shared Unprotected Header to use.
/// </li><li>
/// perRecipientUnprotectedHeader - The JOSE Per-Recipient Unprotected Header to use.
/// </li><li>
/// plaintext - The message being encrypted.
/// </li><li>
/// AAD - any Additional Authenticated Data to input to the content encryption algorithm.
/// This defaults to null.
/// </li><li>
/// serialization - The JWE Serialization format to use.
/// Accepted serialization formats are "compact" and "json".
/// The format type determines the structure of the JWE that is created.
/// This defaults to "compact"
/// </li><li>
/// JWKS - The JSON Web Key Set that contains the key that will be used to create the content encryption key for this JWE.
/// </li></ul><br>
/// Output parameters:
/// <ul><li>
/// JWE - The JSON Web Encryption that is created.
/// If json serialization is used, this will be a valid JSON string. If compact serialization is used it will be a non-JSON string.
/// </li></ul><br>
/// Return value:
/// <ul><li>
/// A status indicating whether or not a JWE was created from the inputs. If this method is unable to create a JWE from the inputs
/// it will return an error indicating why this is.
/// </li></ul><br>
/// Notes:
/// <ul><li>
/// At least one of the headers must be present and non-null.
/// </li><li>
/// If none of the provided headers contains a kid but in the process of creating the JWE a JWK with a kid is used, that kid
/// will be added to the protected header before the JWE is created.
/// </li><li>
/// This method will fail if provided an empty plaintext.
/// </li><li>
/// If the "compact" serialization format is used, the protected header MUST be present and both unprotected headers MUST be absent.
/// If the "json" format is used, at least one of the protected header and unprotected headers MUST be present and they all CAN be present.
/// </li><li>
/// Only the JWE Compact Serialization and the flattened syntax of the JWE JSON Serialization are supported for encryption (not the general
/// format of the JWE JSON Serialization).
ClassMethod Encrypt(protectedHeader As %DynamicObject, sharedUnprotectedHeader As %DynamicObject, perRecipientUnprotectedHeader As %DynamicObject, plaintext As %String, AAD As %String = "", serialization As %String = "compact", JWKS As %String, Output JWE As %String) As %Status
{
}

/// This method decrypts a JWE.
/// <br><br>
/// Input parameters:
/// <ul><li>
/// JWE - The JSON Web Encryption to be decrypted.
/// </li><li>
/// JWKS - The JSON Web Key Set that contains the key that will be used to create the content encryption key needed to validate this JWS.
/// </li></ul><br>
/// Output parameters:
/// <ul><li>
/// plaintext - The decrypted plaintext.
/// </li><li>
/// decryptions - A dynamic array containing information about whether or not each encrypted key in the JWE successfully decrypted the ciphertext.
/// The decryptions array contains one DynamicObject for each encrypted key in the JWE, each containing the following fields:
/// <ul>
/// <li>"encryptedKey": The encrypted key this DynamicObject contains information about.</li>
/// <li>"decrypted":    A boolean indicating whether or not the encrypted key successfully decrypted the ciphertext.</li>
/// <li>"error":        A string containing any error message that was generating during the decryption of the ciphertext.
/// </li></ul></li></ul><br>
/// Return value:
/// <ul><li>
/// A status indicating whether or not the JWE's ciphertext was successfully decrypted. (If there are multiple encrypted keys
/// in the JWE, this method will return a success as long as at least one of the keys successfully decrypts the ciphertext.)
/// If the ciphertext was not successfully decrypted this method will return an error describing why.
/// </li></ul><br>
/// Notes:
/// <ul><li>
/// This method will not accept an empty JWE. If provided one, it will return false and the decryptions array will be null.
/// </li><li>
/// This method supports decryption for the JWE Compact Serialization and both the flattened and general syntax of the JWE
/// JSON Serialization.
/// </li><li>
/// For ease of development, this method returns detailed error messages. However, applications that use this method should take care when
/// passing these errors on to end users, as doing so could allow their application to be used as an oracle for decrypting messages.
/// Note, in particular, that applications should report formatting errors to the CEK, AAD, and ciphertext of the provided JWE as a single error,
/// as per RFC 7516 section 11.4.
/// </li><li>
/// If the provided JWE contains multiple encrypted keys, this method will succeed and output the plaintext as long as at least one of
/// the keys successfully decrypted the ciphertext.
/// </li><li>
/// Some applications may only want to consider a JWE with multiple encrypted keys valid if all of the encrypted keys successfully
/// decrypt the ciphertext. Since this method only needs one encrypted key to decrypt the plaintext in order to return the plaintext,
/// applications that require all encrypted keys to successfully decrypt the ciphertext should use the error field of each encrypted
/// key in the validations array to meet their needs. Specifically, they should check to see if any encrypted key's error field is not
/// null. Any encrypted key whose error field is not null failed to decrypt the ciphertext (which is why it has an error message), so
/// the presence of any non-null error fields means that at least one encrypted key failed to decrypt the ciphertext.</li></ul>
ClassMethod Decrypt(JWE As %String, JWKS As %String, Output plaintext As %String, Output decryptions As %DynamicArray) As %Status
{
}

/// This private method encrypts and creates a compact serialized JWE. It is a helper method for Encrypt() above and
/// should never be called on its own. See Encrypt() for information on the inputs and outputs.
ClassMethod EncryptCompact(header As %DynamicObject, plaintext As %String, JWKS As %String, Output JWE As %String) As %Status [ Private ]
{
}

/// This private method encrypts and creates a JSON serialized JWE with flattened syntax. It is a helper method for
/// Encrypt() above and should never be called on its own. See Encrypt() for information on the inputs and outputs.
ClassMethod EncryptJSON(protectedHeader As %DynamicObject, sharedUnprotectedHeader As %DynamicObject, perRecipientUnprotectedHeader As %DynamicObject, plaintext As %String, JWEAAD As %String, JWKS As %String, Output JWE As %String) As %Status [ Private ]
{
}

/// This private method decrypts a compact serialized JWE and returns an object containing information on the decryption status of the
/// encrypted key in the JWE. It is a helper method for Decrypt() above and should never be called on its own. See Decrypt() for information
/// on the inputs and outputs.
ClassMethod DecryptCompact(JWE As %String, JWKS As %String, Output plaintext As %String, Output decryptions As %DynamicArray) As %Status [ Private ]
{
}

/// This private method decrypts a JSON serialized JWE and returns an object containing information on the decryption status of each
/// encrypted key in the JWE. It is a helper method for Decrypt() above and should never be called on its own. See Decrypt() for information
/// on the inputs and outputs.
ClassMethod DecryptJSON(JWE As %String, JWKS As %String, Output plaintext As %String, Output decryptions As %DynamicArray) As %Status [ Private ]
{
}

/// This private helper method creates a Content Encryption Key based on the given algorithm information and JWK.
ClassMethod CreateCEK(algInfo As %DynamicObject, encInfo As %DynamicObject, JWK As %DynamicObject, Output CEK As %String) As %Status [ Private ]
{
}

/// This private helper method encrypts the Content Encryption Key based on the given algorithm information and JWK.
ClassMethod EncryptCEK(algInfo As %DynamicObject, JWK As %DynamicObject, CEK As %String, Output encryptedCEK As %String) As %Status [ Private ]
{
}

/// This private helper method is what actually encrypts the plaintext using the provided encryption algorithm information and inputs.
/// It outputs both the ciphertext and an authentication tag.
ClassMethod CreateCiphertext(encInfo As %DynamicObject, plaintext As %String, CEK As %String, IV As %String, AAD As %String, Output ciphertext As %String, Output authTag As %String) As %Status [ Private ]
{
}

/// This private helper method decrypts the Content Encryption Key based on the given algorithm information and JWK.
ClassMethod DecryptCEK(algInfo As %DynamicObject, JWK As %DynamicObject, encryptedCEK As %String, Output CEK As %String) As %Status [ Private ]
{
}

/// This private helper method is what actually decrypts the ciphertext using the provided encryption algorithm information and inputs.
/// Before decrypting the ciphertext, it first verifies the authentication tag.
ClassMethod DecryptCiphertext(encInfo As %DynamicObject, ciphertext As %String, authTag As %String, CEK As %String, IV As %String, AAD As %String, Output plaintext As %String) As %Status [ Private ]
{
}

/// This private helper method retrieves all of the encrypted keys and per-recipient unprotected headers
/// from a JSON serialized JWE.
/// It returns the number of recipients found and outputs an array of all of the encrypted keys and
/// per-recipient unprotected headers found.
ClassMethod ExtractAllRecipients(JWEObj As %DynamicObject, Output recipientsArray) As %Integer [ Private ]
{
}

/// This private helper method retrieves all of the encrypted keys and per-recipient unprotected headers from a
/// JSON serialized JWE that uses general syntax.
/// It populates a two-dimensional array to store each encrypted key alongside the corresponding per-recipient
/// unprotected header and then returns the number of recipients found.
ClassMethod ExtractGeneralFormat(JWEObj As %DynamicObject, Output recipientsArray) As %Integer [ Private ]
{
}

/// This private helper method retrieves the encrypted key and per-recipient unprotected header from a
/// JSON serialized JWE that uses flattened syntax.
/// In order to ensure compatibility with the general syntax of JSON serialized JWEs, this method
/// populates a two-dimensional array to store the encrypted key alongside the per-recipient unprotected header.
/// It then returns the number of recipients found (which will always either be 0 or 1).
ClassMethod ExtractFlattenedFormat(JWEObj As %DynamicObject, Output recipientsArray) As %Integer [ Private ]
{
}

}
