/// Represents an SSH session object.  Each SSH session object must first be connected, then authenticated
/// with the remote system.  Note that there are multiple methods of authentication, this class supports
/// password and publickey.  Once connected and authenticated, the SSH object can be used to perform
/// SCP (Secure Copy) operations of single files to and from the remote system, it can also be used
/// to execute remote commands, tunnel TCP traffic and forms the base connection for SFTP operations (see
/// %Net.SSH.SFTP).
/// <br/>
/// The Test() method of this class illustrates some basic usage scenarios for this class.
/// <br/>
/// <b>NOTE:</b> %Net.SSH is currently not supported on OpenVMS platforms.
Class %Net.SSH.Session Extends %RegisteredObject [ System = 3 ]
{

/// Default SSH port
Parameter SSHPORT As INTEGER [ Final ] = 22;

/// Enables tracing of SSH transactions
Parameter SSHTRACETRANS As INTEGER [ Final ] = 2;

/// Enables tracing of SSH key exchange
Parameter SSHTRACEKEX As INTEGER [ Final ] = 4;

/// Enables tracing of SSH authentication
Parameter SSHTRACEAUTH As INTEGER [ Final ] = 8;

/// Enables tracing of SSH connections
Parameter SSHTRACECONN As INTEGER [ Final ] = 16;

/// Enables tracing of SSH/SCP operations
Parameter SSHTRACESCP As INTEGER [ Final ] = 32;

/// Enables tracing of SSH/SFTP operations
Parameter SSHTRACESFTP As INTEGER [ Final ] = 64;

/// Enables tracing of SSH error operations
Parameter SSHTRACEERROR As INTEGER [ Final ] = 128;

/// Enables tracing of SSH public key operations
Parameter SSHTRACEPUBLICKEY As INTEGER [ Final ] = 256;

/// Enables tracing of low level socket operations
Parameter SSHTRACESOCKET As INTEGER [ Final ] = 512;

/// Host Key Type: MD5
Parameter SSHHOSTKEYMD5 As STRING [ Final ] = "MD5";

/// Host Key Type: SHA1
Parameter SSHHOSTKEYSHA1 As STRING [ Final ] = "SHA1";

/// Host Key Type: SHA256
Parameter SSHHOSTKEYSHA256 As STRING [ Final ] = "SHA256";

/// Remote host key.  The hash type is determined from the
/// number of bits (from the number of hex chars) in the hash:
/// <li>MD5: 128 bits / 32 hex chars</li>
/// <li>SHA1: 160 bits / 40 hex chars</li>
/// <li>SHA256: 256 bits / 64 hex chars</li>
///
Property HostKey As %String;

/// Character set used by the remote server.  Will almost certainly be
/// UTF-8 for any SSH server.
Property RemoteCharset As %String [ InitialExpression = "UTF8" ];

/// Character set used by the local system.  Defaults to the system call
/// translation table (which is likely UTF8 on UNIX).
///
Property LocalCharset As %String [ InitialExpression = {$$GetPDefIO^%SYS.NLS(8)} ];

/// SSH Session handle
Property Session As %String [ Internal, Private ];

Method %OnNew() As %Status [ Private, ProcedureBlock = 1, ServerOnly = 1 ]
{
}

/// Called before connecting to a remote host to specify various preferred algorithms and methods that
/// should be used.  Format of the preferences string is as follows:
/// <blockquote>
/// &lt;category&gt;=&lt;option&gt;[:&lt;category1&gt;=&lt;option1&gt;[:...]]
/// </blockquote>
/// Where &lt;category&gt; is one of:
/// <li><b>KEX</b> Key Exchange Methods</li>
/// <li><b>HOSTKEY</b> Hostkey public key algorithms</li>
/// <li><b>CRYPT</b> Encryption algorithms</li>
/// <li><b>MAC</b> MAC algorithms</li>
/// <li><b>COMP</b>Compression Algorithms</li>
/// <b>NOTE:</b> The allowed values can be found here:<br/>
///       http://libssh2.sourceforge.net/doc/#libssh2sessionmethodpref
/// And &lt;option&gt; is a comma delimited list of one or more values.
///
Method SetPreferredAlgorithms(preferences As %String) As %Status
{
}

/// Called to retrieve the current set of negotiated algorithms/methods for various categories.
/// Format of the result string is as follows:
/// <blockquote>
/// &lt;category&gt;=&lt;option&gt;[:&lt;category1&gt;=&lt;option1&gt;[:...]]
/// </blockquote>
/// Where &lt;category&gt; is one of:
/// <li><b>KEX</b> Key Exchange Methods</li>
/// <li><b>HOSTKEY</b> Hostkey public key algorithms</li>
/// <li><b>CRYPT</b> Encryption algorithms</li>
/// <li><b>MAC</b> MAC algorithms</li>
/// <li><b>COMP</b>Compression Algorithms</li>
/// <b>NOTE:</b> The allowed values can be found here:<br/>
///       http://libssh2.sourceforge.net/doc/#libssh2sessionmethodpref
/// And &lt;option&gt; is a comma delimited list of one or more values.
///
Method GetAlgorithms(ByRef preferences As %String) As %Status
{
}

/// Called to retrieve the set of supported algorithms for various categories.
/// Format of the string is as follows:
/// <blockquote>
/// &lt;category&gt;=&lt;option&gt;[:&lt;category1&gt;=&lt;option1&gt;[:...]]
/// </blockquote>
/// Where &lt;category&gt; is one of:
/// <li><b>KEX</b> Key Exchange Methods</li>
/// <li><b>HOSTKEY</b> Hostkey public key algorithms</li>
/// <li><b>CRYPT</b> Encryption algorithms</li>
/// <li><b>MAC</b> MAC algorithms</li>
/// <li><b>COMP</b> Compression Algorithms</li>
/// <b>NOTE:</b> The allowed values can be found here:<br/>
///       http://libssh2.sourceforge.net/doc/#libssh2sessionmethodpref
///
Method GetSupportedAlgorithms(ByRef algs As %String) As %Status
{
}

/// Connect to a remote host, specifying the hostname, and optionally the port and remote hostkey to match.
/// The hostkey helps prevent impersonation attacks, it is a hash of the remote hosts' public key as a
/// string of ASCII hex digits representing the bytes of the hash.  The type of hash is determined from the
/// number of bits (from the number of hex chars) in the hash:
/// <li>MD5: 128 bits / 32 hex chars</li>
/// <li>SHA1: 160 bits / 40 hex chars</li>
/// <li>SHA256: 256 bits / 64 hex chars</li>
/// The returned host key can be specified by passing one of "MD5", "SHA1" or "SHA256" (see ..#SSHHOSTKEYxyz values),
/// the default is "MD5".  If the host key isn't available, it will be "" (e.g. MD5 in FIPS mode).
///
Method Connect(hostname As %String, port As %Integer = {..#SSHPORT}, hostkey As %String = "", hostkeytype As %String = "") As %Status
{
}

/// Clean up any resources
Method %OnClose() As %Status
{
}

/// Disconnect from the remote host
Method Disconnect() As %Status
{
}

/// Authenticate with the remote server using a username/password via the "password" authentication
/// scheme.  Note that this is NOT the same as keyboard-interactive which is typically what login
/// sessions use.
/// <br/>
/// See notes in <method>AuthenticateWithKeyPair()</method> when using multiple forms of authentication.
/// <br/>
///
Method AuthenticateWithUsername(username As %String, password As %String) As %Status
{
}

/// Authenticate with the remote server using a public/private key pair and passphrase (for the private key).
/// The private keys are PEM encoded and the public keys are in OpenSSH format.<br/>
/// If multiple forms of authentication are required by the server, for example <tt>/etc/ssh/sshd_config</tt>
/// contains:<br/>
/// <pre>
/// AuthenticationMethods publickey,password
/// </pre>
/// Then in this case read the "," (comma) as AND; the server will require <i>both</i> forms of authentication.</br>
/// <br/>
/// Calling AuthenticateWithKeyPair fails with <tt>LIBSSH2_ERROR_PUBLICKEY_UNVERIFIED</tt> which is a bit
/// misleading ... it's really "authenticated with partial success" so we can then try authenticating with
/// a password which should then succeed (or <tt>keyboard-interactive</tt>).<br/>
///
Method AuthenticateWithKeyPair(username As %String, publickeyfile As %String, privatekeyfile As %String, passphrase As %String) As %Status
{
}

/// Authenticate with the remote server using the "keyboard-interactive" authentication scheme.  This requires
/// a callback lambda/function that will be called with a list of one or challenges to which the lambda will return
/// the responses to the challenge(s).  The lambda is invoked with the following arguments:
/// <li><tt>username As %String</tt> Username being authenticated</li>
/// <li><tt>instructions As %String</tt> Instructions from the server (optional)</li>
/// <li><tt>prompts As %List</tt> A $LIST of challenge prompt(s)</li>
/// <li><tt>promptflags As %List</tt> A $LIST of flags for each of the challenge prompt(s)</li>
/// <li><tt>ByRef context</tt> A pass-by-ref context value</li>
/// The lambda must return a $LIST of responses, with each Nth element in the $LIST corresponding to the Nth
/// challenge prompt.  If there is no response for a prompt, then that Nth $LIST element should be empty.
/// The allowed values for <tt>promptflags</tt> are as follows:<br/>
/// <li><tt>E</tt> Echo on.  If E is missing DO NOT ECHO! (e.g. password entry)</li>
/// <b>NOTE:</b> The <tt>context</tt> can be anything of your choosing (an array, object or whatever) and it is passed
/// by reference.
/// <br/>
/// See notes in <method>AuthenticateWithKeyPair()</method> when using multiple forms of authentication.
/// <br/>
///
Method AuthenticateWithKeyboardInteractive(username As %String, lambda As %String, ByRef context) As %Status [ PublicList = (lambda, context) ]
{
}

/// Internal helper method to act as a callback for keyboard-interactive authentication.
Method kbdintcallback(username As %String, instructions As %String, prompts As %List, promptflags As %List) As %List [ CodeMode = expression, Internal, PublicList = (lambda, context) ]
{
}

/// Open up an SFTP session for SFTP activity.
Method OpenSFTP(ByRef sftp As %Net.SSH.SFTP) As %Status
{
}

/// Execute a remote command on the remote system.  In order to do I/O with the remote
/// command, an XDEV device instance is passed back via the pDevice parameter.  This is
/// a normal device and can be used with the USE/READ/WRITE/CLOSE commands.
/// Note that environment variables for the remote command can be passed as an array
/// of name/value pairs.
Method Execute(pCommand As %String, ByRef pDevice As %String, ByRef pEnv) As %Status
{
}

/// Demonstrates the execution of a remote command (by default, uname -a).
ClassMethod TestExecute(host As %String, username As %String, password As %String, command As %String = "uname -a", pTimeout As %Integer = -1) As %Status
{
}

/// Forwards traffic via the SSH connection to a remote host/port.  The traffic is sent via an XDEV device
/// that is opened by ForwardPort() and passed back by reference via the pDevice parameter.
Method ForwardPort(pRemoteHost As %String, pRemotePort As %Integer, ByRef pDevice As %String) As %Status
{
}

/// Retrieves the client and server SSH versions.  If the server version is not available,
/// or if the session is not connected, then pServerVersion will be undefined.  Note that the
/// client version refers to the release of libssh2 being used.
Method VersionInfo(ByRef pClientVersion As %String, ByRef pServerVersion As %String) As %Status
{
}

/// Sets the timeout for SSH operations in milliseconds.  An infinite timeout can be set by passing -1 to this
/// methods; the default timeout is set to 30 seconds.
Method SetTimeout(pTimeoutMS As %Integer = -1) As %Status
{
}

/// Gets the timeout for SSH operations in milliseconds.  An infinite timeout is represented by the value of -1;
/// the default timeout is set to 30 seconds.
Method GetTimeout(ByRef pTimeoutMS As %Integer = -1) As %Status
{
}

/// Demonstrates the use of port forwarding to whatismyipaddress.com via the remote SSH server.
ClassMethod TestForwardPort(host As %String, username As %String, password As %String, remotehost As %String = "whatismyipaddress.com", remoteport As %Integer = 80) As %Status
{
}

/// Sets the trace mask and log file for SSH tracing/logging.  The trace mask is a bitmap consisting
/// of flags specified above in the SSHTRACE* parameters.
Method SetTraceMask(pTraceMask As %Integer, pTraceFile As %String = "") As %Status [ Internal ]
{
}

/// Sets up an XDEV device for use with port forwarding or remote command execution.
ClassMethod openXDEV(pXDEV As %String, pOwner As %String, pType As %String, ByRef pDevice As %String, pCharset As %String = "UTF8") As %Status [ Internal, Private ]
{
}

/// Maps COM_HRESULT error codes to the equivalent status codes.
ClassMethod ssherror(pHResult As %Integer, pText As %String, pOrigin As %String = "") As %Status [ Internal ]
{
}

}
