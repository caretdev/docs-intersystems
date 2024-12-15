/// KeyIdentifier reference for SOAP Security header.
///
/// This class is used internally by InterSystems IRIS. You should not make direct
/// use of it within your applications. There is no guarantee made about either
/// the behavior or future operation of this class."
Class %SOAP.Security.KeyIdentifier Extends (%RegisteredObject, %XML.Adaptor) [ Inheritance = right, System = 4 ]
{

Parameter XMLFORMAT = "literal";

Parameter NAMESPACE = "http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-secext-1.0.xsd";

Property Identifier As %String(CONTENT = "escape", MAXLEN = "", XMLPROJECTION = "content");

Method IdentifierGet() As %String [ CodeMode = expression, Internal ]
{
}

Property EncodingType As %String(MAXLEN = "", XMLPROJECTION = "attribute") [ InitialExpression = "http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-soap-message-security-1.0#Base64Binary" ];

Property ValueType As %String(MAXLEN = "", XMLPROJECTION = "attribute");

Property Id As %String(MAXLEN = "", REFNAMESPACE = "http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-utility-1.0.xsd", XMLPROJECTION = "ATTRIBUTE", XMLREF = 1);

/// Validate and get the certificate from a KeyIdentifier
/// with either SubJectKeyIdentifier or ThumbprintSHA1.
/// If valid, set credentials argument and return "".
/// If not valid, return error code.
Method ValidateTokenRef(service As %SOAP.WebBase, ByRef tokenType As %String, ByRef credentials As %SYS.X509Credentials) As %String [ Internal ]
{
}

/// Get description string for logging
Method GetLoggingString() As %String [ CodeMode = expression, Internal ]
{
}

}
