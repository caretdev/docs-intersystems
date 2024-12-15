/// Timestamp element for SOAP Security header.
Class %SOAP.Security.Timestamp Extends %SOAP.Security.Element [ System = 4 ]
{

Parameter XMLFORMAT = "literal";

Parameter NAMESPACE = "http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-utility-1.0.xsd";

Property Created As %xsd.dateTime;

Property Expires As %xsd.dateTime;

/// If TimestampAtEnd is false, then this Timestamp element is put first in the element list.
/// The default is false.
/// If TimestampAtEnd is true, then this Timestamp element is put last in the element list.
Property TimestampAtEnd As %Boolean(XMLPROJECTION = "NONE");

/// Return the value of the Id property.
/// Populate the Id property if it is not yet set.
Method GetId() As %String [ Internal ]
{
}

/// Create a Timestamp element that expires in <interval> seconds.
ClassMethod Create(interval As %Integer = 300) As %SOAP.Security.Timestamp
{
}

/// Validate the security header element.
/// If invalid return an error code.
Method ValidateElement(document As %XML.Document, service As %SOAP.WebBase) As %String [ Internal ]
{
}

}
