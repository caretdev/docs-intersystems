///
/// SAML Assert Token for SOAP Security header.
Class %SAML.Assertion Extends (%SOAP.WST.AbstractToken, %SOAP.Security.Element, %SAML.AssertionReference) [ Inheritance = right, System = 4 ]
{

Parameter XMLFORMAT = "literal";

Parameter NAMESPACE = "urn:oasis:names:tc:SAML:2.0:assertion";

Parameter ELEMENTQUALIFIED = 0;

Parameter XMLPREFIX = "saml";

/// Need to distinguish the 2 different possible Signature elements.
Parameter XMLSEQUENCE = 1;

Property Issuer As %SAML.NameID(XMLREF = 1) [ Required ];

Property Signature As %XML.Security.Signature(REFELEMENTQUALIFIED = 1, REFNAMESPACE = "http://www.w3.org/2000/09/xmldsig#", XMLREF = 1);

Property Subject As %SAML.Subject(XMLREF = 1);

Property Conditions As %SAML.Conditions(XMLREF = 1);

Property Advice As list Of %SAML.AssertionReference(REFELEMENTQUALIFIED = 1, XMLREF = 1, XMLTYPECONSTRAINT = "choice");

Property Statement As list Of %SAML.Statement(XMLPROJECTION = "element", XMLREF = 1, XMLTYPECONSTRAINT = "choice");

Property WSSecuritySignature As %XML.Security.Signature(REFELEMENTQUALIFIED = 1, REFNAMESPACE = "http://www.w3.org/2000/09/xmldsig#", XMLNAME = "Signature", XMLREF = 1) [ Internal ];

Property SAMLID As %String(MAXLEN = "", XMLNAME = "ID", XMLPROJECTION = "attribute") [ Required ];

Property IssueInstant As %xsd.dateTime(XMLPROJECTION = "attribute") [ Required ];

Property Version As %String(MAXLEN = "", XMLPROJECTION = "attribute") [ Required ];

/// Save the node id of this element in the tree during import.
Property NodeId As %String(XMLPROJECTION = "none") [ Internal ];

/// Save the text this element in the tree during import.
Property Text As %String(XMLPROJECTION = "none") [ Internal ];

/// If SubjectConfirmation is based on X509 certificate, this is the X509 certificate class.
/// This property is read-only.
Property X509Credentials As %RawString(XMLPROJECTION = "none") [ Internal ];

Method X509CredentialsGet() As %SYS.X509Credentials [ Internal ]
{
}

/// Get the X.509 credentials associated with this Security header element on input.
Method GetX509Credentials() As %SYS.X509Credentials [ CodeMode = expression ]
{
}

/// The optional prefix list to be used for inclusive namespace prefix when creating WSSecuritySignature.
/// The PrefixList that is specified for this SAML assertion as a list of NMTOKENS.
Property PrefixList As %String(MAXLEN = "", XMLPROJECTION = "none") [ Internal ];

/// Save the node if when getting a new class instance.
ClassMethod XMLNew(document As %XML.Document, nodeId As %Integer, containerOref As %RegisteredObject = "") As %RegisteredObject
{
}

/// Create an unsigned SAML Asssertion
ClassMethod Create() As %SAML.Assertion
{
}

/// Create an SAML Asssertion with WS-Security Signature based on X.509 credentials.<br>
/// prefixList that is specified as a list of NMTOKENS for signing this SAML assertion.
ClassMethod CreateX509(credentials As %SYS.X509Credentials, referenceOption As %Integer, prefixList As %String = "") As %SAML.Assertion
{
}

/// Validate and get the credentials from the Assertion's SubjectConfirmationData element
/// with holder-of-key method.
/// If valid, set credentials argument and return "".
/// If not valid, return error code.
Method ValidateTokenRef(service As %SOAP.WebBase, ByRef tokenType As %String, ByRef credentials As %SYS.X509Credentials) As %String [ Internal ]
{
}

/// Initialize the signature in the SAML assertion.
Method InitializeForService(service As %SOAP.WebBase, header As %SOAP.Security.Header) As %Status [ Internal ]
{
}

/// Complete the Signature element by adding the Reference elements to the
/// SignedInfo based on the SignatureOptions and computing the signature value.
Method Perform(messageStream As %BinaryStream, header As %SOAP.Security.Header) As %Status [ Internal ]
{
}

/// Reset the SAML assertion.
Method Reset() [ Internal ]
{
}

/// Validate the SAML assertion.
/// If invalid return an error code.
Method ValidateElement(document As %XML.Document, service As %SOAP.WebBase, mimeAttachments As %Net.MIMEPart = "") As %String [ Internal ]
{
}

}
