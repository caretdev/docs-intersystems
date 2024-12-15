/// Password element of UsernameToken for SOAP Security header.
Class %SOAP.Security.Password Extends (%SerialObject, %XML.Adaptor) [ Inheritance = right, System = 4 ]
{

Parameter XMLFORMAT = "literal";

Parameter NAMESPACE = "http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-secext-1.0.xsd";

Property Type As %String(MAXLEN = "", XMLPROJECTION = "attribute");

Property content As %String(CONTENT = "escape", MAXLEN = "", XMLPROJECTION = "content");

}
