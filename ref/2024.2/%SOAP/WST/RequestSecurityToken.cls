/// RequestSecurityToken as used for request body in WS-Trust 1.3.
Class %SOAP.WST.RequestSecurityToken Extends %SOAP.RequestMessage [ System = 4 ]
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

Property AppliesTo As %XML.String(REFNAMESPACE = "http://www.w3.org/ns/ws-policy", XMLREF = 1);

Property Claims As %SOAP.WST.Claims;

Property Entropy As %SOAP.WST.Entropy;

Property Lifetime As %SOAP.WST.Lifetime;

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

Property CancelTarget As %SOAP.WST.Target;

/// If RequireServerEntropy is true, then the response to this request must have server entropy
Property RequireServerEntropy As %Boolean(XMLPROJECTION = "none") [ Internal ];

/// ComputedKeySize specifies the size in bytes of the computed key which will be established.
/// ComputedKeySize is meaningful only if client and server entropy are both specified for a computed key.
/// Default is $$$SOAPWSSCDEFAULTKEYSIZE.
Property ComputedKeySize As %Integer(XMLPROJECTION = "none");

/// Create an Issue request for WS-SecureConversation SecurityContextToken.<br>
/// If ComputedKeySize is not pre-agreed or specified by a WS-Policy then the ComputedKeySize property should be set
/// to indicate the desired KeySize in bytes before calling StartSecureConversation.<br>
/// <ul>
/// <li><var>interval</var> is lifetime of the requested token.  To include no Lifetime element pass interval as "".
/// The default interval is 300 seconds.</li>
/// <li><var>clientEntropy</var> is the client entropy to be included in the request
/// which is created using ##class(%SOAP.WST.Entropy).Create(....</li>
/// <li><var>requireServerEntropy</var> is a %Boolean argument which specifies if server entropy must be supplied.
/// Default is false.</li>
/// </ul>
ClassMethod CreateIssueRequest(interval As %Integer = 300, clientEntropy As %SOAP.WST.Entropy = "", requireServerEntropy As %Boolean) As %SOAP.WST.RequestSecurityToken
{
}

/// Create and return an Issue response for this request with WS-SecureConversation SecurityContextToken.
/// <ul>
/// <li><var>soapClass</var> is the web service to which the request was sent.</li>
/// <li><var>keysize</var> is the size of the desired key in bytes.
/// This argument is used only when key is computed based on both client and server entropy.
/// Default is the smaller of length of client entropy and server entropy.</li>
/// <li><var>requireClientEntropy</var> is true if the request must include client entropy.
/// <var>requireClientEntropy</var> is false if the request must not include client entropy.</li>
/// <li><var>serverEntropy</var> is %SOAP.WST.Entropy with server entropy or "" if no server entropy.</li>
/// <li><var>error</var> contained the returned error string. "" if successful.
/// Otherwise, fault code from section 11 of WS-Trust 1.3 specification.</li>
/// <li><var>lifetime</var> is the required duration of the lifetime token in seconds.
/// If not specifed, the client requested lifetime is used or 300 secondss if no client requested lifetime</li>
/// </ul>
Method CreateIssueResponse(soapClass As %SOAP.WebService, keysize As %Integer, requireClientEntropy As %Boolean, serverEntropy As %SOAP.WST.Entropy = "", Output error As %String, lifetime As %Integer) As %SOAP.WST.RequestSecurityTokenResponseCollection
{
}

/// Create and return an Cancel response for this Cancel request.
/// <ul>
/// <li><var>soapClass</var> is the web service to which the request was sent.</li>
/// <li><var>error</var> contained the returned error string. "" if successful.
/// Otherwise, fault code from section 11 of WS-Trust 1.3 specification.</li>
/// </ul>
Method CreateCancelResponse(soapClass As %SOAP.WebService, Output error As %String) As %SOAP.WST.RequestSecurityTokenResponseCollection
{
}

/// Return not supported error in request
Method NotSupported(property As %String, Output error As %String) As %SOAP.WST.RequestSecurityTokenResponseCollection [ Internal ]
{
}

}
