/// X509IssuerSerial X509Data element.
///
/// This class is used internally by InterSystems IRIS. You should not make direct
/// use of it within your applications. There is no guarantee made about either
/// the behavior or future operation of this class."
Class %XML.Security.X509IssuerSerial Extends %XML.Security.X509DataElement [ System = 4 ]
{

Parameter XMLFORMAT = "literal";

Parameter NAMESPACE = "http://www.w3.org/2000/09/xmldsig#";

Parameter ELEMENTQUALIFIED = 1;

Property X509IssuerName As %String(CONTENT = "escape", MAXLEN = "");

/// Store big integer as string
Property X509SerialNumber As %String(CONTENT = "escape");

/// Create an element based on X509 credentials
ClassMethod Create(credentials As %SYS.X509Credentials) As %XML.Security.X509IssuerSerial
{
}

/// Validate and get the certificate with a Issuer Distinguished Name and Serial Number.
/// If valid, set credentials argument and tokenType and return "".
/// If not valid, return error code.
Method ValidateTokenRef(service As %SOAP.WebBase, ByRef tokenType As %String, ByRef credentials As %SYS.X509Credentials) As %String [ Internal ]
{
}

}
