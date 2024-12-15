/// RequestSecurityTokenResponse as used for response body in WS-Trust 1.3.
Class %SOAP.WST.RequestSecurityTokenResponse Extends (%RegisteredObject, %XML.Adaptor) [ System = 4 ]
{

Parameter XMLFORMAT = "literal";

Parameter NAMESPACE = "http://docs.oasis-open.org/ws-sx/ws-trust/200512";

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLPREFIX = "wst";

Parameter XMLSEQUENCE = 0;

Parameter XMLIGNOREINVALIDTAG = 1;

Property TokenType As %xsd.anyURI(XMLREF = 1);

Property RequestType As %xsd.anyURI(XMLREF = 1) [ Required ];

Property Context As %xsd.anyURI(XMLPROJECTION = "attribute");

Property RequestedSecurityToken As %SOAP.WST.RequestedSecurityToken;

Property AppliesTo As %XML.String(REFNAMESPACE = "http://www.w3.org/ns/ws-policy", XMLREF = 1);

Property RequestedAttachedReference As %XML.String;

Property RequestedUnattachedReference As %XML.String;

Property RequestedProofToken As %SOAP.WST.RequestedProofToken;

Property Claims As %SOAP.WST.Claims;

Property Entropy As %SOAP.WST.Entropy;

Property Lifetime As %SOAP.WST.Lifetime;

Property Status As %SOAP.WST.Status;

Property RenewTarget As %SOAP.WST.Target;

Property AllowPostdating As %String;

Property Renewing As %SOAP.WST.Renewing;

Property OnBehalfOf As %SOAP.WST.Target;

Property Issuer As %SOAP.Addressing.EndpointReference(REFNAMESPACE = "http://www.w3.org/2005/08/addressing", XMLREF = 1);

Property AuthenticationType As %xsd.anyURI;

Property KeyType As %xsd.anyURI;

Property KeySize As %xsd.unsignedInt;

Property SignatureAlgorithm As %xsd.anyURI;

Property Encryption As %XML.String;

Property EncryptionAlgorithm As %xsd.anyURI;

Property CanonicalizationAlgorithm As %xsd.anyURI;

Property ComputedKeyAlgorithm As %xsd.anyURI;

Property ProofEncryption As %SOAP.WST.Target;

Property KeyWrapAlgorithm As %xsd.anyURI;

Property UseKey As %SOAP.WST.Target;

Property SignWith As %xsd.anyURI;

Property EncryptWith As %xsd.anyURI;

Property DelegateTo As %SOAP.WST.Target;

Property Forwardable As %Boolean;

Property Delegatable As %Boolean;

Property Policy As %SOAP.Policy(REFNAMESPACE = "http://www.w3.org/ns/ws-policy", XMLREF = 1);

Property PolicyReference As %SOAP.PolicyReference(REFNAMESPACE = "http://www.w3.org/ns/ws-policy", XMLREF = 1);

Property Participants As %SOAP.WST.Participants;

Property RequestedTokenCancelled As %String;

/// Create a WS-Trust security fault.
ClassMethod MakeFault(faultCode As %String) As %SOAP.Fault [ ServerOnly = 1 ]
{
}

/// Process the final Issue response for this request with WS-SecureConversation SecurityContextToken.
/// Return the SecurityContextToken from the response.
/// <ul>
/// <li><var>soapClass</var> is the web client which received the response.</li>
/// <li><var>keysize</var> is the size of the desired key in bytes.  Default is $$$SOAPWSSCDEFAULTKEYSIZE.</li>
/// <li><var>requireServerEntropy</var> is true if the response must include server entropy.
/// <var>requireServerEntropy</var> is false if the response must not include server entropy.</li>
/// <li><var>clientEntropy</var> is %SOAP.WST.Entropy with client entropy or "" if no client entropy.</li>
/// <li><var>status</var> is the returned %Status.
/// </ul>
Method ProcessIssueResponse(soapClass As %SOAP.WebClient, keysize As %Integer, requireServerEntropy As %Boolean, clientEntropy As %SOAP.WST.Entropy = "", Output status As %Status) As %SOAP.WSSC.SecurityContextToken [ Internal ]
{
}

/// Return not supported error in request
Method NotSupported(property As %String, Output status As %Status) As %SOAP.WSSC.SecurityContextToken [ Internal ]
{
}

}
