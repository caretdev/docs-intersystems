/// X509Data reference for SOAP SecurityTokenReference or KeyInfo.
///
/// This class is used internally by InterSystems IRIS. You should not make direct
/// use of it within your applications. There is no guarantee made about either
/// the behavior or future operation of this class."
Class %XML.Security.X509Data Extends %XML.Security.KeyInfoClause [ System = 4 ]
{

Parameter XMLFORMAT = "literal";

Parameter NAMESPACE = "http://www.w3.org/2000/09/xmldsig#";

Parameter ELEMENTQUALIFIED = 1;

Property Identifiers As list Of %XML.Security.X509DataElement(XMLPROJECTION = "element", XMLREF = 1, XMLTYPECONSTRAINT = "choice") [ Internal ];

/// Create a X509Data element.<br>
/// credentials is the %SYS.X509Credentials object that defines the X509 data.<br>
/// valueType is a comma separated list of value types.<br>
/// If no X509Data element is returned the status argument is set to the error %Status.
ClassMethod Create(valueType As %String, credentials As %SYS.X509Credentials, Output status As %Status) As %XML.Security.X509Data
{
}

/// Validate this input X509Data KeyInfo clause.
/// If valid, set credentials and tokenType and return "".  credentials is either %SYS.X509Credentials or %Binary
/// If not valid, return error code.
/// If there are multiple X509 Certificates in the X509 Data Elements then the first certificate is taken as the
/// one to return and we do not check if the subsequent certificates are the same as they are taken to part of the
/// certificate chain - https://www.w3.org/TR/xmldsig-core1/#sec-X509Data
Method ValidateTokenRef(service As %SOAP.WebBase, ByRef tokenType As %String, Output credentials As %RawString) As %String [ Internal ]
{
}

/// Get description string for logging
Method GetLoggingString() As %String [ CodeMode = expression, Internal ]
{
}

}
