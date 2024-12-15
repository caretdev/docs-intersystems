/// XML Encryption element.
Class %XML.Security.ReferenceList Extends %SOAP.Security.Element [ System = 4 ]
{

Parameter XMLFORMAT = "literal";

Parameter NAMESPACE = "http://www.w3.org/2001/04/xmlenc#";

Parameter ELEMENTQUALIFIED = 1;

Property Reference As list Of %RegisteredObject(XMLCHOICELIST = "%XML.Security.DataReference,%XML.Security.KeyReference", XMLPROJECTION = "element", XMLREF = 1, XMLTYPECONSTRAINT = "choice");

/// The algorithm used for encryption
Property EncryptionAlgorithm As %String(XMLPROJECTION = "none") [ Internal ];

/// Credentials that stores key information for Body encryption.
Property X509Credentials As %RawString(XMLPROJECTION = "none") [ Internal ];

/// KeyInfo used to encrypt.
Property KeyInfo As %XML.Security.KeyInfo(XMLPROJECTION = "none") [ Internal ];

/// Add a reference to XML element using a %XML.Security.DataReference.
/// The reference may be created by using the ##class(%XML.Security.Reference).Create method.
Method AddReference(reference As %XML.Security.DataReference)
{
}

/// Initialize
Method InitializeForService(service As %SOAP.WebBase, header As %SOAP.Security.Header, key As %Binary) As %Status [ Internal ]
{
}

/// Perform encryption
Method Perform(messageStream As %BinaryStream, header As %SOAP.Security.Header) As %Status [ Internal ]
{
}

/// Reset the element.
Method Reset() [ Internal ]
{
}

/// Validate the security header element.
/// This method is also called to validate the ReferenceList in an EncryptedKey with the key as the third argument.
/// If invalid return an error code.
Method ValidateElement(ByRef document As %XML.Document, service As %SOAP.WebBase, mimeAttachments As %Net.MIMEPart = "", key As %Binary = "") As %String [ Internal ]
{
}

}
