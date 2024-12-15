/// <p><b>For details on using this class</b>, see
/// <a target="_top" href="/csp/docbook/Doc.View.cls?FIND=CLASSES+%25XML.Security.EncryptedKey+xml">Encrypting XML Documents</a>.
/// and <a target="_top" href="/csp/docbook/Doc.View.cls?FIND=CLASSES+%25XML.Security.EncryptedKey+soap">Encrypting SOAP Security Headers</a>.
/// </p>
/// XML Encryption element.
Class %XML.Security.EncryptedKey Extends (%XML.Security.KeyInfoClause, %XML.Security.EncryptedType) [ System = 4 ]
{

Parameter XMLFORMAT = "literal";

Parameter NAMESPACE = "http://www.w3.org/2001/04/xmlenc#";

Parameter ELEMENTQUALIFIED = 1;

Property CipherData As %XML.Security.CipherData(XMLREF = 1) [ Required ];

Property EncryptionProperties As %XML.Security.EncryptionProperties(XMLREF = 1);

Property ReferenceList As %XML.Security.ReferenceList(XMLREF = 1);

Property CarriedKeyName As %String(MAXLEN = "");

Property Recipient As %String(MAXLEN = "", XMLPROJECTION = "attribute");

/// UsedAsSigningKey is true if this EncryptedKey element was used for signing
Property UsedAsSigningKey As %Boolean(XMLPROJECTION = "none");

/// UsedAsEncryptionKey is true if this EncryptedKey element was used for encryption
Property UsedAsEncryptionKey As %Boolean(XMLPROJECTION = "none");

/// EncryptionOptions specifies which parts of the message are to be signed.
/// See %soap.inc definitions of $$$SOAPWSEncrypt.... for possibilities.
Property EncryptionOptions As %Integer(XMLPROJECTION = "none");

/// The algorithm used for encryption
Property EncryptionAlgorithm As %String(XMLPROJECTION = "none") [ Calculated, Internal ];

Method EncryptionAlgorithmGet() As %String [ CodeMode = expression, Internal ]
{
}

/// Create an EncryptedKey element that is to carry a symmetric key which is encrypted using
/// an X.509 certificate's public key.
/// <ul>
/// <li>The certificate is specified in the token argument by
/// a %SYS.X509Credentials instance containing the certificate or
/// a BinarySecurityToken containing the X509 certificate.</li>
/// <li>The encryptionOptions argument specifies the parts of the SOAP message to be encrypted.
/// The default is to encrypt the body - $$$SOAPWSEncryptSoapBody.
/// $$$SOAPWSEncryptNoBody means body will not be encrypted, but other parts added using AddReference method.
/// $$$SOAPWSEncryptNone means there will be no ReferenceList in the EncryptedKey element.
/// See %soap.inc definitions of $$$SOAPWSEncrypt.... for possibilities.</li>
/// <li>The referenceOption argument specifies the type of reference to create.
/// See %soap.inc definitions of $$$SOAPWSReference....  The default is to use
/// the Thumbprint if the first argument is a %SYS.X509Credentials instance.</li>
/// </ul>
ClassMethod CreateX509(credentials As %SYS.X509Credentials = "", encryptionOptions As %Integer, referenceOption As %Integer, Output status As %Status) As %XML.Security.EncryptedKey
{
}

/// Get EncryptedKeySHA1 format of this EncryptedKey element.
/// Get EncryptedKeySHA1 format of this EncryptedKey element.
Method GetEncryptedKeySHA1() As %Binary
{
}

/// Initialize an EncryptedKey element that is intended for creating EncryptedKey
/// elements which will not be in the Security header.
/// EncryptionMethod, and Algorithm or KeySize are expected to be set or defaulted.
Method Initialize() As %Status
{
}

/// Initialize
Method InitializeForService(service As %SOAP.WebBase, header As %SOAP.Security.Header) As %Status [ Internal ]
{
}

/// Encrypt the symmetric key
Method EncryptKey() As %Status [ Internal ]
{
}

/// Add a reference to XML element using a %XML.Security.DataReference.
/// The reference may be created by using the ##class(%XML.Security.Reference).Create method.
/// If doNotReuse is true, then this reference will be removed during Reset
Method AddReference(reference As %XML.Security.DataReference, doNotReuse As %Boolean = 0)
{
}

/// Perform encryption
Method Perform(messageStream As %BinaryStream, header As %SOAP.Security.Header) As %Status [ Internal ]
{
}

/// Reset the element.
Method Reset()
{
}

/// Validate the key decryption.
/// If invalid return an error code.
Method ValidateKey(service As %SOAP.WebBase) As %String [ Internal ]
{
}

/// Validate this input EncryptedKey used as a KeyInfo clause.
/// If valid, set credentials and tokenType and return "".  credentials is this EncryptedKey element
Method ValidateTokenRef(service As %SOAP.WebBase, ByRef tokenType As %String, Output credentials As %RawString) As %String [ Internal ]
{
}

/// Validate the security header element.
/// If invalid return an error code.
Method ValidateElement(ByRef document As %XML.Document, service As %SOAP.WebBase, mimeAttachments As %Net.MIMEPart = "") As %String [ Internal ]
{
}

/// Return true if the same Key.
Method Equals(credentials As %XML.Security.EncryptedKey) As %Boolean
{
}

}
