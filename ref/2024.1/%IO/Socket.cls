Class %IO.Socket Extends (%IO.DeviceStream, %IO.IParts.SocketIO, %IO.SocketCommon) [ Inheritance = right, System = 2 ]
{

Property Host As %String(MAXLEN = 500);

/// Establish a TCP connection to the given host computer on the given port number, if possible within pTimeout.
Method Open(pHost As %String = "", pPort As %String = "", ByRef pTimeout As %Numeric = -1, Output pSC As %Status) As %Boolean
{
}

/// Disconnect and close the current connection
Method Close(Output pSC As %Status, pIntentional As %Boolean = 1, pSCReason As %Status = {$$$OK}) As %Boolean
{
}

Method IsOpenGet() As %Boolean [ Internal ]
{
}

}
