/// Implements a WebSocket client. <br />
/// Usage: <br />
/// <ul>
/// <li>Implement %Net.WebSocket.IEventListener to respond to events (most importantly, receipt of a message).</li>
/// <li>Implement %Net.WebSocket.ICredentials to provide a username/password/SSLConfiguration for the connection as needed.</li>
/// <li>Create a new instance of <class>%Net.WebSocket.Client</class>, providing a WebSocket URL and instances of the ICredentials and IEventListener implementations.</li>
/// <li>Call <method>Next</method>() to wait for the next message, and <method>Send</method> to send a message.<li>
/// </ul>
Class %Net.WebSocket.Client Extends %RegisteredObject [ Final ]
{

/// WebSocket endpoint
Property URL As %String [ ReadOnly ];

/// Provides username, password, and SSL configuration
Property Credentials As %Net.WebSocket.ICredentials [ Private ];

/// Handles open, close, message, and error events
Property EventListener As %Net.WebSocket.IEventListener [ Private ];

/// The HTTP request, wrapping use of the device used for communcation
Property Request As %Net.HttpRequest [ Private ];

/// Base64-encoded 16-byte random value provided to the server for validation
Property Nonce As %String [ InitialExpression = {$System.Encryption.Base64Encode($System.Encryption.GenCryptRand(16))}, Private ];

/// Accepted protocols (Sec-WebSocket-Protocol request header)
Property AcceptedProtocols As %String [ Private ];

/// The actual protocol in use (Sec-WebSocket-Protocol response header)
Property Protocol As %String [ Private ];

Method %OnNew(pURL As %String, pCredentials As %Net.WebSocket.ICredentials = {$$$NULLOREF}, pEventListener As %Net.WebSocket.IEventListener = {$$$NULLOREF}, pAcceptedProtocols As %String = "", pRequest As %Net.HttpRequest = {$$$NULLOREF}) As %Status
{
}

/// Makes the initial HTTP request and negotiates the upgrade to WebSocket protocol
Method EstablishConnection() [ Private ]
{
}

/// Ensures response headers are valid for upgrading to web sockets
Method ValidateProtocolSwitch() As %Status [ Private ]
{
}

/// Waits for data from the server. Returns 1 if the connection remains open, and 0 if the connection is closed or an error occurs. <br />
/// The event listener will be notified upon receiving a message, or if the connection is closed or an error occurs. <br />
/// @Argument	pTimeout	Timeout (in seconds) to wait to receive a message from the server.
/// @Argument	pTimedOut	True if the read operation timed out.
Method Next(pTimeout As %Integer = 10, Output pTimedOut As %Boolean) As %Boolean
{
}

/// Sends a binary or character stream, dynamic object, or string to the server.
/// @Argument	pContent		Binary or character stream, dynamic object, or string to the server.
/// @Argument	pFragmentSize	Maximum size (in bytes) to send in a single frame; 0 indicates no maximum.
Method Send(pContent, pFragmentSize As %Integer = 0) As %Status
{
}

/// Sends a ping frame to the server. <br />
/// Returns $$$NetWebSocketErrPingTimeout if the ping times out <br />
/// Returns $$$NetWebSocketErrPongInvalid if the pong response is not equal to <var>pMessage</var> <br />
/// Otherwise, returns $$$OK
/// @Argument	pMessage		Message to send with the ping
/// @Argument	pFragmentSize	Timeout (in seconds) to wait to receive a "pong" back from the server.
Method Ping(pMessage As %String, pTimeout As %Integer = 10) As %Status
{
}

/// Sends an <b>unsolicited</b> pong frame to the server. <br />
/// @Argument	pMessage		Message to send with the pong
Method Pong(pMessage As %String) As %Status
{
}

/// Closes the web socket connection from the client.
Method %OnClose() As %Status [ Private, ServerOnly = 1 ]
{
}

}
