/// Reference element in SecurityTokenReference for SOAP Security header.
///
/// This class is used internally by InterSystems IRIS. You should not make direct
/// use of it within your applications. There is no guarantee made about either
/// the behavior or future operation of this class."
Class %SOAP.Security.Reference Extends (%RegisteredObject, %XML.Adaptor) [ Inheritance = right, System = 4 ]
{

Parameter XMLFORMAT = "literal";

Parameter NAMESPACE = "http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-secext-1.0.xsd";

/// Instance for WS-SecureConversation
Property Instance As %String(MAXLEN = "", REFNAMESPACE = "http://docs.oasis-open.org/ws-sx/ws-secureconversation/200512", XMLPROJECTION = "attribute", XMLREF = 1);

Property URI As %String(MAXLEN = "", XMLPROJECTION = "attribute");

Property ValueType As %String(MAXLEN = "", XMLPROJECTION = "attribute");

Property Token As %RegisteredObject(XMLPROJECTION = "none") [ Internal ];

/// Validate and get the certificate from a local direct reference.
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
