/// LifetimeType type from WS-Trust 1.3.
Class %SOAP.WST.Lifetime Extends (%RegisteredObject, %XML.Adaptor) [ System = 4 ]
{

Parameter XMLFORMAT = "literal";

Parameter NAMESPACE = "http://docs.oasis-open.org/ws-sx/ws-trust/200512";

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLPREFIX = "wst";

Property Created As %xsd.dateTime(REFELEMENTQUALIFIED = 1, REFNAMESPACE = "http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-utility-1.0.xsd", XMLREF = 1);

Property Expires As %xsd.dateTime(REFELEMENTQUALIFIED = 1, REFNAMESPACE = "http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-utility-1.0.xsd", XMLREF = 1);

/// Create a Lifetime element with specified interval in seconds.
ClassMethod Create(interval As %Integer = 300) As %SOAP.WST.Lifetime
{
}

}
