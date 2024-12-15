/// Enterprise Cache Protocol
/// Notes:<br>
/// <ul>
/// <li>A Server Connection is a connection from this system as a client to a remote server.
/// <li>A Client Connection is a connection from a remote client to this system as a server.
/// </ul>
Class SYS.ECP [ Abstract ]
{

/// Default Localization Domain
Parameter DOMAIN = "%Utility";

/// Asks the user to enter a remote directory nameand returns the SFN of
/// that database or 0 if they didn't chose one. (sfn #0 cannot be a remote directory).
ClassMethod AskUserForRemoteDir() As %Integer [ Internal ]
{
}

/// Changes an ECP connection state to not connected.
/// Connection name is as specified in the network panel.
/// Returns zero if the connection name is invalid
ClassMethod ChangeToNotConnected(ConnectionName As %String) As %Boolean
{
}

/// Display the list of database remote databases this client has "mounted"
ClassMethod DisplayDatabases()
{
}

/// Returns the state of an ECP Client Connection.<br>
/// Connection name is as specified in the network panel.<br>
/// Return value:<br>
/// <li>-1 - Invalid connection name
/// <li> 0 - Free
/// <li> 1 - Normal
/// <li> 2 - Trouble
/// <li> 3 - Recovering
/// <li> 4 - Restart
ClassMethod GetClientConnState(ConnectionName As %String) As %Integer
{
}

/// Returns the state of an ECP Server Connection.<br>
/// Connection name is as specified in the network panel.<br>
/// Return value:<br>
/// <li>-2 - Invalid connection name
/// <li>-1 - Invalid
/// <li> 0 - Initializing
/// <li> 1 - Not Connected
/// <li> 2 - Connection in Progress
/// <li> 3 - Connection Failed
/// <li> 4 - Disabled
/// <li> 5 - Normal
/// <li> 6 - Trouble
/// <li> 7 - Recovery
ClassMethod GetServerConnState(ConnectionName As %String) As %Integer
{
}

/// <b>dbname</b> is a mounted remote database in the form
/// ^&lt;sys&gt;^&lt;directory&gt;. This method returns the sfn of the
/// database or "0,&lt;error text&gt;" if the database does not appear to be
/// a valid remote database for the specified system.
///
ClassMethod GetSFNFromName(dbname As %String) [ Internal ]
{
}

/// Performs <var>Action</var> on an ECP Server Connection.<br>
/// Connection name is as specified in the network panel.<br>
/// <var>Action</var>:<br>
/// <li>1 - Change to Not Connected
/// <li>2 - Change to Disabled
/// <li>3 - Change to Normal
/// <br><var>Wait</var>: 1=wait for answer, 0=do not wait
ClassMethod ServerAction(ConnectionName As %String, Action As %Integer, Wait As %Boolean = 1) As %Status
{
}

/// Return the DB name for of the temporary database which is where we store the blocks
/// that form the client cache of a ECP server.
ClassMethod StorageDBName() As %String [ Internal ]
{
}

/// Remove an entry from the ECP SSL pending list.<br>
/// This is called to authorize or reject an incoming ECP connection pending for authorization, and remove the pending connection from the pending list.<br><br>
///  Input Parameters:
///  <ul>
///  <li><parameter>SSLComputerName</parameter> is the Distinguished Name of the certificate on remote client side.<br>
///  </ul>
///  <ul>
///  <li><parameter>Authorize</parameter> is non-zero to authorize the connection, otherwise the pending connection is rejected.<br>
///  </ul>
/// This method always returned 'OK' even if the specified <parameter>SSLComputerName</parameter> does not exist.<br>
ClassMethod RemoveFromPendingList(SSLComputerName As %String, Authorize As %Integer = 0) As %Status [ Final ]
{
}

/// Remove an entry from the ECP SSL authorized list.<br>
/// This is called to reject an authorized ECP connection. So the remote client needs to be re-authorized when it re-connects.
/// But this won't affect the currently connected ECP connection. <br><br>
///  Input Parameters:
///  <ul>
///  <li><parameter>SSLComputerName</parameter> is the Distinguished Name of the certificate on remote client side.<br>
///  </ul>
/// This method always returned 'OK' even if the specified <parameter>SSLComputerName</parameter> does not exist.<br>
ClassMethod RemoveAuthorizedCN(SSLComputerName As %String) As %Status [ Final ]
{
}

/// Add an entry to the ECP SSL authorized list.<br>
/// When users want to pre-authorize a remote ECP client connection, they can use this method to add the remote connection
/// the to authorized list, so when it connects to this data server, it does not need to be authorized.<br><br>
///  Input Parameters:
///  <ul>
///  <li><parameter>SSLComputerName</parameter> is the Distinguished Name of the certificate on remote client side.<br>
///  </ul>
/// This method always returned 'OK' even if the specified <parameter>SSLComputerName</parameter> does not exist.<br>
ClassMethod AddAuthorizedCN(SSLComputerName As %String) As %Status [ Final ]
{
}

/// Method to create or modify ECP SSL configuration which can be %ECPServer or %ECPClient
/// SSL configurations.
///  Input Parameters:
///  <ul>
///  <li><parameter>SSLInfo</parameter> Array of properties to create the ECP SSL configurations.
///   For creating the configuration if the property is not specified, a default value will be assigned to the property.
///   For modifying the configuration if the property is not specified, the property won't be changed.
///   This is a pass-by-reference parameter. You could see more detail of each property in <class>Security.SSLConfigs</class>.<br><ul>
///   <li>SSLInfo("CAFile") File containing X.509 certificate(s) of trusted Certificate Authorities. This must not be a null string.<br>
///   <li>SSLInfo("CRLFile") File containing X.509 Certificate Revocation List for trusted Certificate Authorities. Default is a null string.<br>
///   <li>SSLInfo("CertificateFile") File containing this configuration's X.509 certificate. Default is a null string.
///       If not null, PrivateKeyFile must also be specified.<br>
///   <li>SSLInfo("CipherList") Colon-delimited list of enabled ciphersuites. Default is "ALL:!aNULL:!eNULL:!SSLv2".<br>
///   <li>SSLInfo("CipherSuites") Colon-delimited list of enabled ciphersuitesfor TLSv1.3. Default is "TLS_AES_256_GCM_SHA384:TLS_CHACHA20_POLY1305_SHA256:TLS_AES_128_GCM_SHA256".<br>
///   <li>SSLInfo("PrivateKeyFile") File containing this configuration's private key. Default is a null string.
///       If not null, CertificateFile must also be specified.<br>
///   <li>SSLInfo("PrivateKeyPassword") Optional password used to decrypt this configuration's private key. Default is a null string.
///       If not null, PrivateKeyFile and CertificateFile must also be specified.<br>
///   <li>SSLInfo("PrivateKeyType") Private key type. 1 - DSA, 2 - RSA. Default value is 2.<br>
///   <li>SSLInfo("TLSMinVersion") Minimum TLS protocol version enabled. The value can be 2 - SSLv3, 4 - TLSv1.0, 8 - TLSv1.1, 16 - TLSv1.2, 32 - TLSv1.3.
///      Default value is 8 (TLSv1.1) for OpenSSL 1.0, 16 (TLSv1.2) for OpenSSL 1.1 and later. Note that the TLSv1.3 is not supported in OpenSSL 1.0 and earlier.<br>
///   <li>SSLInfo("TLSMaxVersion") Maximum TLS protocol version enabled. The value can be 2 - SSLv3, 4 - TLSv1.0, 8 - TLSv1.1, 16 - TLSv1.2, 32 - TLSv1.3.
///      Default value is 16 (TLSv1.2) for OpenSSL 1.0, 32 (TLSv1.3) for OpenSSL 1.1 and later. Note that the TLSv1.3 is not supported in OpenSSL 1.0 and earlier.<br>
///  </ul>
///  </ul>
///  <ul>
///  <li><parameter>Server</parameter> is non-zero for setting up %ECPServer SSL, otherwise setting up %ECPClient.<br>
///  </ul>
ClassMethod UpdateSSL(ByRef SSLInfo As %String, Server As %Integer = 1) As %Status [ Internal ]
{
}

/// Given the data server connection name and the remote directory name on this client, returns the mount status codes of the remote database.<br>
/// The Status Codes are:<br>
/// 0 - Remote database has not been mounted yet.<br>
/// 1 - Remote database is dismounted.<br>
/// 2 - Remote database is mounted read-only.<br>
/// 3 - Remote database is mounted read-write.<br>
///
ClassMethod GetRemoteDBMountStatus(ServerName As %String, Directory As %String) As %Integer
{
}

/// Query to list configured remote databases. Returned database's configuration name, server name, directory and mount status codes.<br>
/// The Status Codes are:<br>
/// 0 - Remote database has not been mounted yet.<br>
/// 1 - Remote database is dismounted.<br>
/// 2 - Remote database is mounted read-only.<br>
/// 3 - Remote database is mounted read-write.<br>
///
ClassMethod DatabaseListExecute(ByRef qHandle As %Binary, DBNames As %String = "*", ServerName As %String = "*", Directory As %String = "*") As %Status [ Internal ]
{
}

ClassMethod DatabaseListFetch(ByRef qHandle As %Binary, ByRef Row As %List, ByRef AtEnd As %Integer = 0) As %Status [ Internal, PlaceAfter = ClientListExecute ]
{
}

ClassMethod DatabaseListClose(ByRef qHandle As %Binary) As %Status [ Internal, PlaceAfter = ClientListExecute ]
{
}

/// Query to list remote app server connections. Returned app server's client name, status, IP address and port number.<br>
/// <br>The Client Name is in ConnectName:CliSysName:InstanceName formart:<br>
/// ConnectName - Connection name as defined in the app server's ECPServers configuration.<br>
/// CliSysName - <property>CliSysName</property> in <a href="%25CSP.Documatic.cls?PAGE=CLASS&LIBRARY=%25SYS&CLASSNAME=Config.Startup">Config.Startup</a> of the app server if defined. If not defined, defaults to app server's hostname..<br>
/// InstanceName - App server's instance name.<br>
/// <br>The Status can be:<br>
/// Normal - Node is actively in use.<br>
/// Trouble - Node failed, waiting for recovering.<br>
/// Recovering - Node is in process of recovering.<br>
/// Restart - Server has restarted, but this connection is awaiting for recovery.<br>
/// DeadCleanup - Server is in the process of cleaning dead dmns..<br>
/// Invalid - Node has an invalid status code.<br>
///
ClassMethod ClientListExecute(ByRef qHandle As %Binary) As %Status [ Internal ]
{
}

ClassMethod ClientListFetch(ByRef qHandle As %Binary, ByRef Row As %List, ByRef AtEnd As %Integer = 0) As %Status [ Internal, PlaceAfter = ClientListExecute ]
{
}

ClassMethod ClientListClose(ByRef qHandle As %Binary) As %Status [ Internal, PlaceAfter = ClientListExecute ]
{
}

ClassMethod ServerListExecute(ByRef qHandle As %Binary) As %Status [ Internal ]
{
}

ClassMethod ServerListFetch(ByRef qHandle As %Binary, ByRef Row As %List, ByRef AtEnd As %Integer = 0) As %Status [ Internal, PlaceAfter = ServerListExecute ]
{
}

ClassMethod ServerListClose(ByRef qHandle As %Binary) As %Status [ Internal, PlaceAfter = ServerListExecute ]
{
}

/// Query to get list of pending incoming ECP connections to be authorized.<br><br>
/// The returned columns are:
///  <ul>
///  <li><var>SSLComputerName</var> is the Distinguished Name of the certificate on remote client side.<br>
///  </ul>
///  <ul>
///  <li><var>ClientIP</var> is the IP address of remote client.<br>
///  </ul>
ClassMethod SSLPendingConnectionsExecute(ByRef qHandle As %Binary) As %Status [ Internal ]
{
}

ClassMethod SSLPendingConnectionsClose(ByRef qHandle As %Binary) As %Status [ Internal, PlaceAfter = PendingNewMembersExecute ]
{
}

ClassMethod SSLPendingConnectionsFetch(ByRef qHandle As %Binary, ByRef Row As %List, ByRef AtEnd As %Integer = 0) As %Status [ Internal, PlaceAfter = PendingNewMembersExecute ]
{
}

/// Query to get list of authorized incoming ECP connections.<br>
/// The returned column is:
///  <ul>
///  <li><var>SSLComputerName</var> is the Distinguished Name of the certificate on remote client side.<br>
///  </ul>
ClassMethod SSLAuthorizedConnectionsExecute(ByRef qHandle As %Binary) As %Status [ Internal ]
{
}

ClassMethod SSLAuthorizedConnectionsClose(ByRef qHandle As %Binary) As %Status [ Internal, PlaceAfter = PendingNewMembersExecute ]
{
}

ClassMethod SSLAuthorizedConnectionsFetch(ByRef qHandle As %Binary, ByRef Row As %List, ByRef AtEnd As %Integer = 0) As %Status [ Internal, PlaceAfter = PendingNewMembersExecute ]
{
}

}
