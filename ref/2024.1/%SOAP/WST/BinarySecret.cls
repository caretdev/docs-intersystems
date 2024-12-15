/// BinarySecretType type from WS-Trust 1.3.
Class %SOAP.WST.BinarySecret Extends %XML.Security.KeyInfoClause [ System = 4 ]
{

Parameter XMLFORMAT = "literal";

Parameter NAMESPACE = "http://docs.oasis-open.org/ws-sx/ws-trust/200512";

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLPREFIX = "wst";

Property value As %xsd.base64Binary(XMLPROJECTION = "content");

/// Alias for the BinarySecret value when being used as a key
Property Key As %xsd.base64Binary(XMLPROJECTION = "none") [ Calculated ];

Method KeyGet() As %xsd.base64Binary [ CodeMode = expression, Internal ]
{
}

Method KeySet(value As %xsd.base64Binary) As %Status [ Internal ]
{
}

Property Type As %xsd.anyURI(XMLPROJECTION = "attribute");

/// Size of key.  This property overrides key size that implied by Algorithm.
Property KeySize As %Integer(XMLPROJECTION = "none");

/// Create a BinarySecret element of specified type and size.
/// Default type is $$$SOAPWSTNonce and default size is $$$SOAPWSSCDEFAULTKEYSIZE.
ClassMethod Create(type As %xsd.anyURI = "", size As %Integer = "") As %SOAP.WST.BinarySecret
{
}

/// Initialize an BinarySecret element that is intended for elements which will not be in the Security header.
/// Type and KeySize are expected to be set or defaulted.
Method Initialize() As %Status
{
}

/// Initialize the symmetric key
Method InitializeKey(service As %SOAP.WebBase, algorithm As %String) As %Status [ Internal ]
{
}

/// Validate the key decryption.
/// If invalid return an error code.
Method ValidateKey(service As %SOAP.WebBase) As %String [ Internal ]
{
}

/// Validate this input BinarySecret used as a KeyInfo clause.
/// If valid, set credentials and tokenType and return "".  credentials is this EncryptedKey element
Method ValidateTokenRef(service As %SOAP.WebBase, ByRef tokenType As %String, Output credentials As %RawString) As %String [ Internal ]
{
}

/// Return true if the same Key.
Method Equals(credentials As %SOAP.WST.BinarySecret) As %Boolean
{
}

}
