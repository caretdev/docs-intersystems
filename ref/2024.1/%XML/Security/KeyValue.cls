/// XML KeyInfo type of KeyValue.
///
/// This class is used internally by InterSystems IRIS. You should not make direct
/// use of it within your applications. There is no guarantee made about either
/// the behavior or future operation of this class."
Class %XML.Security.KeyValue Extends %XML.Security.KeyInfoClause [ System = 4 ]
{

Parameter XMLFORMAT = "literal";

Parameter NAMESPACE = "http://www.w3.org/2000/09/xmldsig#";

Parameter ELEMENTQUALIFIED = 1;

Property KeyValue As %XML.Adaptor(XMLCHOICELIST = "%XML.Security.DSAKeyValue,%XML.Security.RSAKeyValue", XMLPROJECTION = "element", XMLREF = 1, XMLTYPECONSTRAINT = "choice") [ Internal ];

/// Create a KeyValue containing a RSAKeyValue from a certificate
ClassMethod GetRSAKeyValue(credentials As %SYS.X509Credentials) As %XML.Security.KeyValue
{
}

/// Validate this input KeyValue KeyInfo clause.
/// If valid, set credentials and tokenType and return "".  credentials is either %SYS.X509Credentials or %Binary
/// If not valid, return error code.
Method ValidateTokenRef(service As %SOAP.WebBase, ByRef tokenType As %String, Output credentials As %RawString) As %String [ Internal ]
{
}

}
