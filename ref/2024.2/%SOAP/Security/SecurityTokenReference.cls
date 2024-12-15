/// SecurityTokenReference element for SOAP Security header.
///
/// This class is used internally by InterSystems IRIS. You should not make direct
/// use of it within your applications. There is no guarantee made about either
/// the behavior or future operation of this class."
Class %SOAP.Security.SecurityTokenReference Extends (%XML.Security.KeyInfoClause, %SOAP.Security.Element) [ Inheritance = right, System = 4 ]
{

Parameter XMLFORMAT = "literal";

Parameter NAMESPACE = "http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-secext-1.0.xsd";

Property Reference As list Of %RegisteredObject(XMLCHOICELIST = "%SOAP.Security.Reference,%SOAP.Security.KeyIdentifier,%XML.Security.X509Data", XMLPROJECTION = "element", XMLREF = 1, XMLTYPECONSTRAINT = "choice");

Property Usage As %String(MAXLEN = "", XMLPROJECTION = "attribute");

Property Length As %xsd.unsignedLong(REFNAMESPACE = "http://docs.oasis-open.org/ws-sx/ws-secureconversation/200512", XMLPROJECTION = "attribute", XMLREF = 1);

Property Nonce As %xsd.base64Binary(REFNAMESPACE = "http://docs.oasis-open.org/ws-sx/ws-secureconversation/200512", XMLPROJECTION = "attribute", XMLREF = 1);

Property TokenType As %String(MAXLEN = "", REFNAMESPACE = "http://docs.oasis-open.org/wss/oasis-wss-wssecurity-secext-1.1.xsd", XMLPROJECTION = "attribute", XMLREF = 1);

/// If token is based on X509 certificate, this is the X509 credentials class.
Property X509Credentials As %RawString(XMLPROJECTION = "none") [ Internal ];

/// Create a SecurityTokenReference containing a direct reference with no ValueType.
/// This form is used for reference to EncryptedKey.
ClassMethod GetDirectReference(tokenURI As %String, valueType As %String) As %SOAP.Security.SecurityTokenReference
{
}

/// Create a SecurityTokenReference containing a direct reference to an X.509 BinarySecurityToken
ClassMethod GetX509DirectReference(tokenURI As %String) As %SOAP.Security.SecurityTokenReference
{
}

/// Create a SecurityTokenReference containing a remote reference to a SecurityContextToken
ClassMethod GetSCTReference(SCT As %SOAP.WSSC.SecurityContextToken) As %SOAP.Security.SecurityTokenReference
{
}

/// Create a SecurityTokenReference containing a direct reference to aSAML Assertion.
ClassMethod GetSAMLDirectReference(tokenURI As %String) As %SOAP.Security.SecurityTokenReference
{
}

/// Create a SecurityTokenReference containing a KeyIdentfier
/// If no SecurityTokenReference is returned the status argument is set to the error %Status.
ClassMethod GetX509KeyIdentifier(valueType As %String, credentials As %SYS.X509Credentials, Output status As %Status) As %SOAP.Security.SecurityTokenReference
{
}

/// Create a SecurityTokenReference to a SAML token containing a KeyIdentfier
ClassMethod GetSAMLKeyIdentifier(credentials As %SAML.Assertion, type As %String) As %SOAP.Security.SecurityTokenReference
{
}

/// Create a SecurityTokenReference containing an X509Data element
/// If no X509Data element is returned the status argument is set to the error %Status.
ClassMethod GetX509Data(valueType As %String, credentials As %SYS.X509Credentials, Output status As %Status) As %SOAP.Security.SecurityTokenReference
{
}

/// Create a SecurityTokenReference containing a KeyIdentfier based on an encrypted key.
ClassMethod GetKeyIdentifier(valueType As %String, value As %Binary) As %SOAP.Security.SecurityTokenReference
{
}

/// Set the Identifier of %XML.SecurityTokenReference if it is ""
Method SetIdentifier(key As %Binary) [ Internal ]
{
}

/// Validate this input KeyInfo clause.  Default behavior is to ignore the clause.
/// If valid, set credentials and tokenType and return "".  credentials is either %SYS.X509Credentials or %Binary
/// If not valid, return error code.
Method ValidateTokenRef(service As %SOAP.WebBase, ByRef tokenType As %String, Output credentials As %RawString, topLevel As %Boolean) As %String [ Internal ]
{
}

/// Validate the SecurityTokenReference element as a direct child of the Security header element.
/// If invalid return an error code.
Method ValidateElement(document As %XML.Document, service As %SOAP.WebBase) As %String [ Internal ]
{
}

}
