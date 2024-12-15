/// XML Signature element.
///
/// This class is used internally by InterSystems IRIS. You should not make direct
/// use of it within your applications. There is no guarantee made about either
/// the behavior or future operation of this class.
Class %XML.Security.KeyInfo Extends (%RegisteredObject, %XML.Adaptor) [ Inheritance = right, System = 4 ]
{

Parameter XMLFORMAT = "literal";

Parameter NAMESPACE = "http://www.w3.org/2000/09/xmldsig#";

Parameter ELEMENTQUALIFIED = 1;

Property KeyInfoClauseList As list Of %XML.Security.KeyInfoClause(XMLPROJECTION = "element", XMLREF = 1, XMLTYPECONSTRAINT = "choice") [ Internal ];

Property Id As %String(MAXLEN = "", XMLPROJECTION = "attribute") [ Internal ];

/// This property is provided to support parsing of XML
/// containing this tag but not as a means to access the
/// EncryptedKey. The URI value is not validated.
Property RetrievalMethod As %XML.Security.RetrievalMethod(XMLPROJECTION = "element") [ Internal ];

/// <pre>
/// Key material on input is identified by KeyType, TokenType and Credentials:
/// SAML
/// 	TokenType = $$$SOAPWSSAML
/// 	KeyType = $$$SOAPWSX509v3 or $$$SOAPWSEncryptedKey
/// 	Credentials = %XML.Security.RSAKeyValue or %SYS.X509Credentials or %XML.Security.EncryptedKey
/// KeyIdentifier #EncryptedKeySHA1
/// 	TokenType = $$$SOAPWSEncryptedKeySHA1
/// 	KeyType = $$$SOAPWSEncryptedKeySHA1
/// 	Credentials = SHA1 hash of key
/// Direct Reference to #EncryptedKey or contained EncryptedKey element
/// 	TokenType = $$$SOAPWSEncryptedKey
/// 	KeyType = $$$SOAPWSEncryptedKey
/// 	Credentials = %XML.Security.EncryptedKey
/// Direct Reference to #DerivedKey
/// 	TokenType = $$$SOAPWSDerivedKey
/// 	KeyType = $$$SOAPWSDerivedKey
/// 	Credentials = %SOAP.WSSC.DerivedKey
/// Direct Reference  or reference by Identifier to SecurityContextToken
/// 	TokenType = $$$SOAPWSSCToken
/// 	KeyType = $$$SOAPWSSCToken
/// 	Credentials = %SOAP.WSSC.SecurityContextToken
/// Direct Reference  to BinarySecret
/// 	TokenType = $$$SOAPWSTSecretSymKey
/// 	KeyType = $$$SOAPWSTSecretSymKey
/// 	Credentials = %SOAP.WSSC.SecurityContextToken
/// RSA Key Value
/// 	TokenType = "KeyValue"
/// 	KeyType = $$$SOAPWSX509v3
/// 	Credentials = %XML.Security.RSAKeyValue
/// X.509 certificate
/// 	TokenType = $$$SOAPWSX509v3
/// 	KeyType = $$$SOAPWSX509v3
/// 	X509Credentials = %SYS.X509Credentials
/// </pre>
/// Type of key information.
Property KeyType As %String(MAXLEN = "", XMLPROJECTION = "none") [ Internal ];

/// Type of token.
Property TokenType As %String(MAXLEN = "", XMLPROJECTION = "none") [ Internal ];

/// Credentials that stores key information.
/// Name X509Credentials is from original implementation and has been extended to
/// also allow binary key, %XML.Security.RSAKeyValue, %XML.Security.EncryptedKey
/// or %SOAP.WSSC.DerivedKeyToken.
Property X509Credentials As %RawString(XMLPROJECTION = "none") [ Internal ];

/// Create a KeyInfo associated with the specified X509 certificate.<br>
/// - The certificate is specified in the token argument by
/// a %SYS.X509Credentials instance containing the certificate,
/// a BinarySecurityToken containing the X509 certificate or a SAML Assertion
/// whose SubjectConfirmation is based on X.509 credentials.
/// A binary security token must be used for a direct reference.<br>
/// - The referenceOption argument specifies the type of reference to create.
/// See %soap.inc definitions of $$$SOAPWSReference.... and $$$KeyInfoX509....
/// The default is to use a direct reference if the first argument is a binary security token or to
/// use the Thumbprint if the first argument is a %SYS.X509Credentials instance.<br>
/// - If no KeyInfo is returned the status argument is set to the error %Status.
ClassMethod CreateX509(ByRef credentials As %SYS.X509Credentials, referenceOption As %Integer, Output status As %Status) As %XML.Security.KeyInfo
{
}

/// Create a KeyInfo containing the specified EncryptedKey.<br>
ClassMethod CreateEncryptedKey(encryptedKey As %XML.Security.EncryptedKey, Output status As %Status) As %XML.Security.KeyInfo
{
}

/// Create a KeyInfo containing the specified EncryptedKey.<br>
ClassMethod CreateBinarySecret(binarySecret As %SOAP.WST.BinarySecret, Output status As %Status) As %XML.Security.KeyInfo
{
}

/// Set the Identifier of %XML.SecurityTokenReference if it is ""
Method SetIdentifier(key As %Binary) [ Internal ]
{
}

/// Validate this input KeyInfo.
/// If valid, set KeyType, TokenType and Credentials properties to indicate type of KeyInfo and return "".
/// If not valid, return error code.
Method ValidateTokenRef(service As %SOAP.WebBase = "") As %String [ Internal ]
{
}

/// Validate this input KeyInfo where a symmetric key is expected.
/// If not valid, return error code.
Method ValidateKeyElement(service As %SOAP.WebBase, Output key As %Binary, signingKey As %Boolean) As %String [ Internal ]
{
}

}
