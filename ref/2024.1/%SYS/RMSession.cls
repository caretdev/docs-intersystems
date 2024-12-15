/// Utility class to save and load session information from WS-ReliableMessaging 1.2.
/// A session consists of a request and response sequence.
/// This class is used by %SOAP.RM classes to do the work that must be done
/// by a class in the %SYS package.
///
/// The persistent operations in this class are used only on the service side.
/// This class is used as a registered object for both the client and the service.
///
/// This class is used internally by InterSystems IRIS. You should not make direct
/// use of it within your applications. There is no guarantee made about either
/// the behavior or future operation of this class."
Class %SYS.RMSession Extends %RegisteredObject [ System = 3 ]
{

/// Identifier for the request sequence
Property RequestIdentifier As %xsd.anyURI [ Internal ];

/// Identifier for the response sequence.  ResponseIndentifier="" for a one way session.
Property ResponseIdentifier As %xsd.anyURI [ Internal ];

/// UTC expiration time in seconds
Property ExpiresInSeconds As %Integer [ Internal ];

/// Inactivity timeout interval in seconds
/// Defaults to 600 if not specified.
Property InactivityTimeout As %Integer [ Internal ];

/// The endpoint of the web service to which this token applies
Property AppliesTo As %xsd.anyURI [ Internal ];

/// The time in seconds to wait before retry on client.  Default is 0.
Property RetryInterval As %Float [ Internal ];

/// The maxiumum number of retries on client. Default is 4.
Property MaxRetryCount As %Integer [ Internal ];

/// If InOrder true, deliver in order.
Property InOrder As %Boolean [ InitialExpression = 1, Internal ];

/// Delivery Assurance: "ExactlyOnce", "AtLeastOnce", "AtMostOnce" or "".
Property DeliveryAssurance As %String [ Internal ];

/// Identifier of SecurityContextToken to be used to secure sequence
Property SCTIdentifier As %String [ Internal ];

/// Last message number sent or received
Property MessageNumber As %Integer [ InitialExpression = 0, Internal ];

/// Received messages bit string.
Property Bits As %String [ Internal ];

/// Session Terminated boolean
Property Terminated As %Boolean [ InitialExpression = 0, Internal ];

/// Process no more messages after first gap
Property DiscardFollowingFirstGap As %Boolean [ Internal ];

/// If true the entire Sequence must be protected by the same SSL session.
/// This property is client only.
Property SSLSecurity As %Boolean [ Internal ];

/// Save this RMSession in a system wide global.
/// The global format is:
///    ^SYS("SOAPRMSession",RequestIdentifier)=$lb(type,ResponseIdentifier,ExpiresInSeconds,nextExpiresInSeconds,InactivityTimeout,AppliesTo,InOrder,DeliveryAssurance,SCTIdentifier,MessageNumber,Bits,Terminated,DiscardFollowingFirstGap)
/// The index for cleanup is
///    ^SYS("SOAPRMSession",0,NextExpiresInSeconds,RequestIdentifier)=""
/// where NextExpiresInSeconds is the next expiration which is the smaller of ExpireInSeconds and InactivityTimeinSeconds and
///   type is always = 1 for RMSession.
Method Save() As %Status [ Internal ]
{
}

/// Retrieve the RMSession with this identifier from system wide global.
/// See Save method description for details.
ClassMethod Open(identifier As %xsd.anyURI) As %SYS.RMSession [ Internal ]
{
}

/// Retrieve the RMSession properties for token with this identifier from system wide global.
/// See Save method description for details.
Method Load() As %Boolean [ Internal ]
{
}

/// Log list of RMSessions
ClassMethod Log(terminal As %Boolean = 1, test As %Boolean = 0) [ Internal ]
{
}

/// Remove expired RMSessions
Method Cleanup() [ Internal ]
{
}

/// Remove this RMSession from session list
Method Remove() [ Internal ]
{
}

/// Remove all RMSessions
ClassMethod RemoveAll() [ Internal ]
{
}

/// Get acknowledgement ranges for this RM session
Method GetRange(ranges As %ListOfObjects) [ Internal ]
{
}

/// Convert bit string to acknowledgement ranges for this RM session
ClassMethod BitToRange(bits As %String, ranges As %ListOfObjects) [ Internal ]
{
}

/// Set bit string from acknowledgement ranges for this RM session
Method SetRange(ranges As %ListOfObjects) [ Internal ]
{
}

/// Update range to indicate last message sent successfully
Method MessageOK() [ Internal ]
{
}

/// Set message acknowledged state
Method SetMessageState(messageNumber As %Integer, acknowledged As %Boolean) [ Internal ]
{
}

/// Get message acknowledged state
Method GetMessageState(messageNumber As %Integer) As %Boolean [ Internal ]
{
}

/// Check for gap in received messages
Method CheckGap() As %Boolean [ Internal ]
{
}

/// Check correct SCT (or no SCT) for this session
Method CheckSCT(soapClass As %SOAP.WebBase) As %Boolean [ Internal ]
{
}

}
