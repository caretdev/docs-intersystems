Class %IO.ServerSocket Extends (%IO.DeviceStream, %IO.IParts.ServerSocketIO, %IO.SocketCommon) [ Inheritance = right, System = 2 ]
{

/// Until pTimeout, wait for an inbound TCP connection to be received on the port specified in the prior Open() call.
/// Note that the OS may accept up to ConnectionQueueSize connections for the port on your behalf before you call this method.
/// If the OS has queued one or more accepted connections, this method will return immediately with one of them connected.
Method Listen(ByRef pTimeout As %Numeric = -1, Output pSC As %Status) As %Boolean
{
}

/// Test whether the remote TCP socket conforms to the given list of allowed IP addresses / host names. Also return a formatted string representing the remote address.
ClassMethod remoteIPAllowed(pAllowedIPAddresses As %String, Output pRemote As %String, Output pStatus As %Status) As %Boolean [ Internal ]
{
}

/// Until pTimeout, listen for incoming connections and spawn a job for each one, up to pMaxJobs. If pMaxJobs
/// threshold has already been reached, wait for an existing connected job to quit and then spawn a job for the new connection.
/// When the timeout expires, this method will return but any spawned jobs will continue running until they terminate on their own.
/// pOnConnectedClass is the classname of a customer defined class that must contain a classmethod called OnConnected().  ListenJob() will arrange for this classmethod to be called each time a new connection arrives. It will call OnConnected() with 2 arguments, a  %IO.ServerSocket instance representing the connected socket, and a string that was passed in to ListenJob() in the pJobArgs argument.  This allows the OnConnected() method to engage in TCP communications over the socket from within a fresh job created for the purpose.
/// The pSocketClass argument to ListenJob() allows you to specify a subclass of %IO.ServerSocket should be instantiated in the connection jobs. This could implement additional methods for handling common protocol elements expected to be exchanged across the TCP connection. Normally you will just use %IO.ServerSocket and its Read() and Write() methods.
/// The pDummy argument is ignored.
Method ListenJob(ByRef pTimeout As %Numeric = -1, pOnConnectedClass As %String, pJobArgs As %String = "", pSocketClass As %String = "%IO.ServerSocket", pMaxJobs As %Integer = -1, pDummy As %Boolean, Output pSC As %Status) As %Integer
{
}

Method jobAttachProps(pSocketProps As %String, pDevice As %String) [ Internal ]
{
}

ClassMethod connectionJob(pSubscript As %String, pOnConnectedClass As %String, pSocketClass As %String, pSocketProps As %String, pJobArgs As %String) As %Status [ Internal ]
{
}

/// Open the socket for listening on the port given by pPort, waiting up to pTimeout for the port to be available to listen on.
Method Open(pPort As %String = "", ByRef pTimeout As %Numeric = -1, Output pSC As %Status) As %Boolean
{
}

/// Disconnect the current connection but keep the socket open for listening
Method Disconnect(Output pSC As %Status, pIntentional As %Boolean = 1, pSCReason As %Status = {$$$OK})
{
}

/// Disconnect the current connection and close the Socket for listening.  Any connections the OS may have accepted
/// for the current port and queued for us will be disconnected as well.
Method Close(Output pSC As %Status) As %Boolean
{
}

Method IsConnectedGet() As %Boolean [ Internal ]
{
}

}
