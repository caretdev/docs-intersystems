/// <p>
/// This class implements the IRIS Native API for Object Script Connection interface. This class
/// should never be instantiated directly, only through <class>%Net.DB.DataSource</class> using the
/// CreateMethod() function.
/// </p>
/// <p>
/// The public interface for this class includes only those items specified here. All other members are internal.
/// <br>
/// 	<table border="1" cellspacing="0" cellpadding="1">
/// 		<tr>
/// 			<td><property>Host</property></td>
/// 			<td>property</td>
/// 			<td>The host specified when establishing the connection </td>
/// 		</tr>
/// 		<tr>
/// 			<td><property>Port</property></td>
/// 			<td>property</td>
/// 			<td>The port that this connection is connected. </td>
/// 		</tr>
/// 		<tr>
/// 			<td><property>Namespace</property></td>
/// 			<td>property</td>
/// 			<td>The namespace that this connection is connected. </td>
/// 		</tr>
/// 		<tr>
/// 			<td><property>Timeout</property></td>
/// 			<td>property</td>
/// 			<td>The timeout value specified establishing the connection </td>
/// 		</tr>
/// 		<tr>
/// 			<td><method>IsClosed</method></td>
/// 			<td>method</td>
/// 			<td>Returns true if this connection instance is no longer connected. </td>
/// 		</tr>
/// 		<tr>
/// 			<td><method>Close</method></td>
/// 			<td>method</td>
/// 			<td>Close this connection. </td>
/// 		</tr>
/// 		<tr>
/// 			<td><method>CreateIris</method></td>
/// 			<td>method</td>
/// 			<td>Returns an instance of <class>%Net.DB.Iris</class>. </td>
/// 		</tr>
/// 	</table>
/// </p>
/// <p>
/// </p>
Class %Net.DB.Connection Extends %RegisteredObject
{

Method CreateIris()
{
}

Method Close() As %Boolean
{
}

Method IsClosed() As %Boolean
{
}

Property Host As %String;

Property Port As %Integer;

Property Namespace As %String;

Property Timeout As %Integer [ InitialExpression = 5 ];

Property IsConnected As %Boolean [ InitialExpression = 0, Internal ];

Property Type As %String [ Internal ];

Property RemoteIPAddress As %String [ Internal ];

Property RemoteProtocol As %Integer [ Internal ];

Property RemoteUnicode As %Boolean [ Internal ];

Property RemoteLocale As %String [ Internal ];

Property RemoteJobNumber As %String [ Internal ];

Property BufferSize As %Integer [ InitialExpression = {1024*1024}, Internal ];

Property TCPDevice As %String [ Internal ];

Property SHMFileName As %String [ Internal ];

Property SHMSize As %Integer [ Internal ];

Property SHMWaitFlag As %Boolean [ InitialExpression = 1, Internal ];

Property SHMTimeout As %Integer [ Internal ];

Property Device As %String [ Internal ];

Property MessageId As %Integer [ InitialExpression = 1, Internal ];

/// Constructor.
/// parameters:
/// 	remoteHost		[required] "SHM" for shared memory, host address for TCP
/// 						(plan to allow full shared memory host string to overwrite the other arguments in the future, but this is not supported yet)
/// 	remotePort		[required] port number for TCP connection
/// 	remoteNamespace	[required] namespace to connect to on server
/// 	bufferSize		[optional] TCP buffer size, and also the shared memory size if not specified separately. defaults to 2^20 bytes.
/// 	timeout			[optional] TCP device open timeout, and also the shared memory device timeout if not specified separately. defaults to 5 seconds.
/// 	shmFileName		[optional] name of physical file. defaults to empty string, indicating virtual page file.
/// 	shmSize			[optional] shared memory size. defaults to the TCP buffer size if not specified.
/// 	shmWaitFlag		[optional] controls logging on/off = 1/0. default is logging on = 1. possibly controls other options also, but not sure.
/// 	shmTimeout		[optional] time to wait for shared memory device to open. defaults to the TCP timeout if not specified.
/// <p>
/// Examples:
/// <pre>
/// 	(1) connect and disconnect over TCP/IP
/// 	set conn = ##class(%Net.DB.Connection).%New("127.0.0.1",56773,"USER")
/// 	set tSC = conn.Connect("_SYSTEM","SYS")
/// 	set tSC = conn.Disconnect()
///
/// 	(2) connect and disconnect over shared memory
/// 	set conn = ##class(%Net.DB.Connection).%New("SHM",56773,"USER")
/// 	set tSC = conn.Connect("_SYSTEM","SYS")
/// 	set tSC = conn.Disconnect()
/// </pre>
/// </p>
Method %OnNew(remoteHost, remotePort, remoteNamespace, bufferSize, timeout, shmFileName, shmSize, shmWaitFlag, shmTimeout) As %Status [ Internal ]
{
}

/// Increments the MessageId property and returns the value.
Method NextMessageId() As %Integer [ Final, Internal ]
{
}

/// Connects to another InterSystems IRIS process via the DBSRV routine.
/// Sends two messages: handshake (HS), connect (CN).
/// parameters:
/// 	username			[required] server username
/// 	password			[required] server password
/// 	autoCommit			[optional] 1=yes,2=no. default is 1=yes.
/// 	isolationLevel		[optional] READ_VERIFIED=3,READ_COMMITTED=2,READ_UNCOMMITTED=1. default is 2=READ_COMMITTED.
/// 	clientSQLOptions	[optional] options supported by client, only for protocol 57+. fastSelect=1,fastInsert=2,Sharding=4,Parallel=8. default is 1=fastSelect only.
/// 	licenseIPAddress	[optional] IP address to use for license ID. only applies to TCP/IP connections.
Method Connect(username As %String = "", password As %String = "", autoCommit As %Integer = 1, isolationLevel As %Integer = 2, clientSQLOptions As %Integer = 1, licenseIPAddress As %String = "") As %Status [ Internal ]
{
}

/// Disconnects from another InterSystems IRIS process via the DBSRV routine.
/// Sends one disconnect message (DC).
Method Disconnect() As %Status [ Internal ]
{
}

Method %OnClose() As %Status [ Internal ]
{
}

}
