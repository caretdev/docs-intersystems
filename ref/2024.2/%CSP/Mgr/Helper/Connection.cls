/// </br >This object is part of the <class>%CSP.Mgr.GatewaySystemStatus</class> object.
Class %CSP.Mgr.Helper.Connection Extends (%SerialObject, %XML.Adaptor)
{

Parameter XMLIGNOREINVALIDTAG As BOOLEAN = 1;

Parameter XMLIGNORENULL As STRING = 1;

/// The Gateway (or hosting web server) process ID for the connection.
Property WebServerPID As %String;

/// Name of the system connected to.
Property CacheServerName As %String;

/// IP address of the InterSystems IRIS server
Property IPAddress As %String;

/// TCP port on the InterSystems IRIS server through which the connection communicates.
Property TCPPort As %String;

/// Process ID on the InterSystems IRIS server.
Property CacheServerPID As %String;

/// Indicates whether information is being sent to or from the system. If this
/// column reads 'Free', no information is being sent and the connection is read to process
/// the next request. If it reads 'In Use', information is being transmitted through the
/// connection. If it reads 'Private', the connection is state-aware (preserve mode 1)
/// and is not free for general use.
Property Status As %String;

/// Formatted as 'number1/number2'. The first number is the idle time. The second number is the timeout time.
Property IdleTime As %String;

/// Number of transactions (hits) the connection has processed.
Property Activity As %String;

}
