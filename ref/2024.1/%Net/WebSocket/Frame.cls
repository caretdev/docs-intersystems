/// Represents a sent/received frame in a WebSocket connection.
/// This class is internal to the module and should not be used directly.
Class %Net.WebSocket.Frame Extends %RegisteredObject [ Final ]
{

/// Device from which to read (for reads) or write (for writes)
Property Device As %String [ Private ];

/// Set to false if <method>Read</method> times out rather than receiving a message
Property HasMessage As %Boolean [ InitialExpression = 1 ];

Property Fin As %Boolean [ InitialExpression = 1, Required ];

/// Reserved - always 0
Property RSV1 As %Boolean [ InitialExpression = 0, Required ];

/// Reserved - always 0
Property RSV2 As %Boolean [ InitialExpression = 0, Required ];

/// Reserved - always 0
Property RSV3 As %Boolean [ InitialExpression = 0, Required ];

/// Valid values (macros in HSMOD.WebSocket.INC) are:
/// <code>
/// $$$WebSocketOpContinuation		0
/// $$$WebSocketOpTextFrame			1
/// $$$WebSocketOpBinaryFrame		2
/// $$$WebSocketOpClose				8
/// $$$WebSocketOpPing				9
/// $$$WebSocketOpPong				10
/// </code>
Property Opcode As %Integer(MAXVAL = 10, MINVAL = 0) [ Required ];

/// Set to 1 if the payload was received masked
/// Always set to 1 in send
Property Masked As %Boolean [ InitialExpression = 0, Required ];

/// The length of payload data
Property PayloadLength As %Integer [ InitialExpression = 0, Required ];

/// 4-byte masking key (if <property>Masked</property> is true)
/// If not provided prior to send, will be generated randomly
Property MaskingKey As %Binary;

/// Unmasked binary/character data received or to send -
/// on write, this is masked before sending; on read, it is unmasked automatically.
Property PayloadData As %Stream.TmpBinary [ Required ];

Method %OnNew(pDevice As %String = "") As %Status [ Private, ServerOnly = 1 ]
{
}

/// Translates bytes read from the TCP device into a frame
Method Read(pTimeout As %Integer)
{
}

/// Reads in a specified number of bytes from the TCP device
Method ReadBytes(pLength As %Integer, pTimeout As %Integer) As %String [ Private ]
{
}

/// Translates the frame into the wire format and writes it to the TCP device
Method Write()
{
}

/// Writes a stream out to the TCP device
Method WriteData(pData As %Stream.Object) [ Private ]
{
}

/// Masks the input string by XOR-ing 4-byte chunks with the masking key
Method Mask(pString As %String) As %String
{
}

}
