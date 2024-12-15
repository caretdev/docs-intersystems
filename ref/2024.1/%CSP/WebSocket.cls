/// The <CLASS>%CSP.WebSocket</CLASS> object serves as an event handler for communication between client and
/// server using the WebSocket protocol (<B>RFC 6455</B>).  All WebSocket servers derive from %CSP.WebSocket.
Class %CSP.WebSocket Extends (%RegisteredObject, %CSP.Page) [ ServerOnly = 1 ]
{

Parameter UseSession = 1;

Parameter NOCHARSETCONVERT = 1;

/// This property determines whether the communication between the client and WebSocket server should be over a dedicated Gateway
/// conection or over a pool of shared connections.  It may be set to one of the following:
/// <br><ul>
/// <li><b>SharedConnection=0</b> - The WebSocket server communicates with the client via a dedicated Gateway connection. In this mode of operation the hosting connection is effectively 'private' to the application session.</li>
/// <li><b>SharedConnection=1</b> - The WebSocket server communicates asynchronously with the client via a fixed number of shared Gateway connections.</li>
/// </ul>
Property SharedConnection As %Boolean [ InitialExpression = 0 ];

/// This property determines whether formal data framing should occur between the Web Gateway and InterSystems IRIS
/// <br><ul>
/// <li><b>NoDataFraming=0</b> - Use the READ and WRITE methods in this class to manage I/O with the WebSocket.</li>
/// <li><b>NoDataFraming=1</b> - Use the basic ObjectScript READ and WRITE commands to manage I/O with the WebSocket (<b>SharedConnection</b> cannot be set with this mode).</li>
/// </ul>
Property NoDataFraming As %Boolean [ InitialExpression = 0 ];

/// This property determines whether the data streams transmitted between the client and server should be treated as binary.
/// The default setting is to treat the incoming and outgoing data as UTF-8 encoded text.
/// <br><br>
/// This property may be set to one of the following:
/// <br><ul>
/// <li><b>BinaryData=0</b> - UTF-8 encoded text.</li>
/// <li><b>BinaryData=1</b> - Binary Data.</li>
/// </ul>
Property BinaryData As %Boolean [ InitialExpression = 0 ];

/// The unique identity of this WebSocket.
Property WebSocketID As %String;

/// The CSP Session ID from which this WebSocket was created.
Property SessionId As %String;

/// This property determines whether WebSocket closure forces the associated CSP session to end.
/// Must be set in either Server() or OnPostServer(). For WebSockets operating asynchronously, only takes effect if EndServer() is called in Server().
/// <br><br>
/// This property may be set to one of the following:
/// <br><ul>
/// <li><b>SessionEndOnClose=0</b> - Do not force the CSP session to end when the web socket closes. (For synchronous web sockets, the CSP session may still end depending on its EndSession property.) </li>
/// <li><b>SessionEndOnClose=1</b> - Ensure that the CSP session ends when the web socket closes. </li>
/// </ul>
///
Property SessionEndOnClose As %Boolean [ InitialExpression = 0 ];

/// The address through which a WebSocket operating asynchronously (<property>SharedConnection=1</property>) can communicate with the hosting CSP Gateway.
Property GWClientAddress As %String;

/// The <var>AtEnd</var> property is set to true (1) when, during a read,
/// the WebSocket server has reached the end of the current data frame.
Property AtEnd As %Boolean [ InitialExpression = 1 ];

/// The amount of client data waiting to be read.
Property BytesAvailable As %Integer [ InitialExpression = 0, Private ];

/// The type of the Data Frame waiting to be read.
Property DataFrameType As %Integer [ InitialExpression = 0, Private ];

/// The flag indicating that WebSocket data framing should be used for write operations.
Property WSDataFraming As %Integer [ InitialExpression = 0, Private ];

/// The version of the transmission protocol between the CSP Gateway and this class.
Property WSClassProtocolVersion As %Integer [ InitialExpression = 2, Private ];

/// The internal initialization status for the WebSocket.
Property WSInitStatus As %Integer [ InitialExpression = 0, Private ];

/// Event handler for the <b>PreServer</b> event: this is invoked before
/// starting the WebSockets Server.
/// Changes to the <property>SharedConnection</property> flag must be made here.
Method OnPreServer() As %Status
{
}

/// Event handler for the <b>PostServer</b> event: this is invoked after
/// closing the WebSockets Server.
Method OnPostServer() As %Status
{
}

/// The WebSocket Server.  Use the <Method>Read</Method> and <Method>Write</Method> methods
/// to receive data from, and send data to, the client.
/// Call the <Method>EndServer</Method> method to gracefully terminate the WebSocket Server.
/// A WebSocket operating asynchronously (<property>SharedConnection=1</property>) can exit this method
/// (using <b>Quit</B>) and subsequently open the WebSocket using the <Method>OpenServer</Method> method.
Method Server() As %Status
{
}

/// Event handler for the <b>ClientMessage</b> event: this method is only relevant to
/// WebSockets operating in Asynchronous mode.  In other words WebSockets for which
/// the <property>SharedConnection</property> flag is set.
/// If <method>OnClientMessage</method> successfully processes the client message it
/// must return with 1.
Method OnClientMessage(data As %String = "", close As %Integer) As %Status
{
}

/// Internal method to initialize the WebSocket Class.
Method Initialize(WebSocketID As %String = "", GWClientAddress As %String = "") As %Status
{
}

/// Internal method to initialize the WebSocket Server.
Method InitializeServer() As %Status
{
}

/// Internal method to save the WebSocket Server.
Method SaveServer() As %Status [ Final, Private ]
{
}

/// Internal method to delete the WebSocket Server.
Method DeleteServer() As %Status [ Final, Private ]
{
}

/// Method to open an existing WebSocket Server.
/// Only a WebSocket operating asynchronously (<property>SharedConnection=1</property>) can be accessed using this method.
Method OpenServer(WebSocketID As %String = "") As %Status
{
}

/// Gracefully terminate the WebSocket Server.
Method EndServer() As %Status
{
}

/// Reads up to len characters from the client.
/// If the call is successful the status (sc) will be returned as $$$OK, otherwise an error code of $$$CSPWebSocketTimeout
/// indicates a timeout and $$$CSPWebSocketClosed indicates that the client has terminated the WebSocket.
Method Read(ByRef len As %Integer = 32656, ByRef sc As %Status, timeout As %Integer = 86400) As %String
{
}

Method ReadAsync(ByRef len As %Integer = 32656, ByRef sc As %Status, timeout As %Integer = 86400) As %String [ Private ]
{
}

/// Write to the client.
Method Write(data As %String) As %Status
{
}

/// Internal handling of page processing
ClassMethod Page(skipheader As %Boolean = 1) As %Status [ Internal, ServerOnly = 1 ]
{
}

ClassMethod SendAsyncMessage(websocketid As %String, gwclientaddress As %String) As %Status [ Final ]
{
}

/// Send the basic web socket response to the gateway
ClassMethod SendNullResponse() [ Internal ]
{
}

/// Internal handling of error
ClassMethod Error(skipheader As %Boolean = 1) As %Status [ Internal, ServerOnly = 1 ]
{
}

/// Internal handling of login
ClassMethod Login(skipheader As %Boolean = 1) As %Status [ Internal, ServerOnly = 1 ]
{
}

}
