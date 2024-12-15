/// XML KeyInfo type of RSAKeyValue.
///
/// This class is used internally by InterSystems IRIS. You should not make direct
/// use of it within your applications. There is no guarantee made about either
/// the behavior or future operation of this class."
Class %XML.Security.RSAKeyValue Extends (%RegisteredObject, %XML.Adaptor) [ Inheritance = right, System = 4 ]
{

Parameter XMLFORMAT = "literal";

Parameter NAMESPACE = "http://www.w3.org/2000/09/xmldsig#";

Parameter ELEMENTQUALIFIED = 1;

Property Modulus As %XML.Security.CryptoBinary(XMLREF = 1) [ Internal, Required ];

Property Exponent As %XML.Security.CryptoBinary(XMLREF = 1) [ Internal, Required ];

/// Return true if the same credentials -- same RSA public key in this case.
/// credentials may be either a %XML.Security.RSAKeyValue instance,
/// a %SYS.X509Credentials instance or a certificate.
Method Equals(credentials As %XML.Security.RSAKeyValue) As %Boolean
{
}

/// Validate and return the RSA public key.
/// If valid, set credentials argument to this instance and return "".
/// If not valid, return error code.
Method ValidateTokenRef(service As %SOAP.WebBase, ByRef tokenType As %String, ByRef credentials As %SYS.X509Credentials) As %String [ Internal ]
{
}

}
