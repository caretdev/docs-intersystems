/// CreateSequence is used for request body in WS-ReliableMessaging 1.2.
Class %SOAP.RM.CreateSequence Extends %SOAP.RequestMessage [ System = 4 ]
{

Parameter XMLFORMAT = "literal";

Parameter NAMESPACE = "http://docs.oasis-open.org/ws-rx/wsrm/200702";

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLPREFIX = "wsrm";

Parameter XMLIGNOREINVALIDTAG = 1;

Property AcksTo As %SOAP.RM.EndpointReference;

Property Expires As %xsd.duration;

Property Offer As %SOAP.RM.Offer;

Property SecurityTokenReference As %SOAP.Security.SecurityTokenReference(REFNAMESPACE = "http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-secext-1.0.xsd", XMLREF = 1);

Property SCTIdentifier As %String(XMLPROJECTION = "none") [ Internal ];

/// The RM sequence which will be associated with the newly created sequence.
Property RMSession As %SYS.RMSession(XMLPROJECTION = "none") [ Internal ];

/// Create a RM sequence with Identifier set and the CreateSequence element for this sequence.
ClassMethod Create(addressingNamespace As %String, oneWay As %Boolean = 0, retryInterval As %Float = 1.0, maxRetryCount As %Integer = 8, expires As %xsd.duration, SSLSecurity As %Boolean = 0) As %SOAP.RM.CreateSequence
{
}

/// Add reference to SecurityContextToken to CreateSequence
Method AddSTR(sct As %SOAP.WSSC.SecurityContextToken)
{
}

}
