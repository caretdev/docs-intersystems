/// WS-Security 1.1 SignatureConfirmation element for SOAP Security header.
Class %SOAP.Security.SignatureConfirmation Extends %SOAP.Security.Element [ System = 4 ]
{

Parameter XMLFORMAT = "literal";

Parameter NAMESPACE = "http://docs.oasis-open.org/wss/oasis-wss-wssecurity-secext-1.1.xsd";

Property Value As %xsd.base64Binary(CANONICALXML = 1, XMLPROJECTION = "attribute") [ Internal ];

/// Create a SignatureConfirmation element
ClassMethod Create(value As %xsd.base64Binary) As %SOAP.Security.SignatureConfirmation
{
}

/// Validate the security header element during import of Security header.
/// SubjectConfirmation is always considered Ok at this point.
Method ValidateElement(document As %XML.Document, service As %SOAP.WebBase) As %String [ Internal ]
{
}

/// Validate the security header element during overall validation for client.
/// If valid return true.
Method Validate(service As %SOAP.WebBase) As %String [ Internal ]
{
}

}
