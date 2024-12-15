/// DerivedKeyToken from WS-SecureConversation 1.4.
Class %SOAP.WSSC.DerivedKeyToken Extends %SOAP.Security.Element [ System = 4 ]
{

Parameter XMLFORMAT = "literal";

Parameter NAMESPACE = "http://docs.oasis-open.org/ws-sx/ws-secureconversation/200512";

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLPREFIX = "wsc";

Property SecurityTokenReference As %SOAP.Security.SecurityTokenReference(REFELEMENTQUALIFIED = 1, REFNAMESPACE = "http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-secext-1.0.xsd", XMLREF = 1);

Property Properties As %SOAP.WSSC.Properties;

Property Generation As %xsd.unsignedLong;

Property Offset As %xsd.unsignedLong;

Property Length As %xsd.unsignedLong;

Property Label As %String(MAXLEN = "");

Property Nonce As %xsd.base64Binary;

Property Algorithm As %xsd.anyURI(XMLPROJECTION = "attribute");

/// Set Implied property = 1 to indicate make this an implied DerivedKeyToken.
/// Am implied DerivedKeyToken should not be included in token list of Security header.
Property Implied As %Boolean(XMLPROJECTION = "none") [ Internal ];

/// ReferenceOption argument from the Create call.
Property ReferenceOption As %String(XMLPROJECTION = "none") [ Internal ];

/// The key element which contains the key material to use for creating the Key.
/// The type of this property depends on the reference option.
Property KeyElement As %SOAP.Security.Element(XMLPROJECTION = "none") [ Internal ];

/// The symmetric derived key.
Property Key As %Binary(XMLPROJECTION = "none") [ Internal ];

/// Create a DerivedKeyToken element that is to be referenced from an
/// EncryptedKey, EncryptedData or Signature element and that is to carry
/// a key derived from a symmetric key specified by its SecurityTokenReference element.<br><br>
/// The properties of %SOAP.WSSC.DerivedKeyToken instance may be set after the instance is created.
/// The SecurityTokenReference is set by the Create method.  The other properties default as specified by
/// WS-SecureConversation.  If not otherwise set, the Nonce property defaults to a 16 octet random binary string.
/// <ul>
/// <li>keyElement is the Security element which will supply the symmetric key:
/// either an EncryptedKey or SecurityContextToken element.
/// The required keyElement type depends on referenceOption specified.  See referenceOption for details.</li>
/// <li>The referenceOption argument specifies the type of reference which will be in the SecurityTokenReference.
/// <ul>
/// <li>$$$SOAPWSReferenceEncryptedKey is reference to an EncryptedKey element in this message.
/// The keyElement argument must be specified and is the EncryptedKey element.</li>
/// <li>$$$SOAPWSReferenceEncryptedKeySHA1 is reference by the SHA1 hash of the key contained
/// in the EncryptedKey element specified as the first argument.
/// If the keyElement is not specified, the key from the first EncryptedKey element in the received message
/// is used.</li>
/// <li>$$$SOAPWSReferenceDerivedKey is reference to a DerivedKeyToken element in this message.
/// The keyElement argument must be specified and is the DerivedKeyToken element.</li>
/// <li>$$$SOAPWSReferenceSCT is reference by wsu:Id to a SecurityContextToken element in this message.
/// The keyElement argument must be specified and is the SecurityContextToken element.</li>
/// <li>$$$SOAPWSReferenceSCTIdentifier is reference by Identifier and Instance to a SecurityContextToken
/// element not necessarily in this message.
/// The keyElement argument must be specified and is the SecurityContextToken element.</li>
/// <li>If referenceOption is "" or not specified, no SecurityTokenReference is created.</li>
/// </ul>
/// </ul>
ClassMethod Create(keyElement As %SOAP.Security.Element = "", referenceOption As %Integer = "") As %SOAP.WSSC.DerivedKeyToken
{
}

/// Initialize
Method InitializeForService(service As %SOAP.WebBase, header As %SOAP.Security.Header) As %Status [ Internal ]
{
}

/// Initialize the derived key.
Method InitializeKey(service As %SOAP.WebBase, algorithm As %String) As %Status [ Internal ]
{
}

/// Compute DerivedKey based on properties of this class
Method ComputeDerivedKey(basekey As %Binary, Output error As %String) As %Binary [ Internal ]
{
}

/// Compute P_SHA-1 from RFC 2246.
/// Return computation of function of specified length.
ClassMethod PSHA1(secret As %Binary, seed As %Binary, length As %Integer) As %Binary [ Internal ]
{
}

/// Validate the derived key.
/// If invalid return an error code.
Method ValidateKey(service As %SOAP.WebBase) As %String [ Internal ]
{
}

/// Validate the security header element.
/// If invalid return an error code.
Method ValidateElement(document As %XML.Document, service As %SOAP.WebBase) As %String [ Internal ]
{
}

/// Reset the element.
Method Reset()
{
}

/// Return true if the same Key.
Method Equals(credentials As %SOAP.WSSC.DerivedKeyToken) As %Boolean
{
}

}
