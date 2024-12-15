/// <p><b>For information on using this class</b>, see
/// <a target="_top" href="/csp/docbook/DocBook.UI.Page.cls?FIND=CLASSES+%25Net.FtpSession">Using FTP</a>.</p>
/// The %Net.FtpSession class provides a way of interacting with a FTP server so you can
/// send/receive files, get a list of the files on the server, rename files, delete
/// files, etc.<br>
/// <br>
/// All the methods will return a boolean that is true if the
/// method succeeded and false if it failed. They will also set the two properties
/// <PROPERTY>ReturnCode</PROPERTY> and <PROPERTY>ReturnMessage</PROPERTY> with information
/// from the ftp server you are connected to. This often contains useful information if
/// a method fails. You should at the very least check the return value from each of the
/// methods after every call.<br>
/// <br>
/// Once you have created an object of this class you need to login to the server
/// you wish to communicate with before you can do anything else, this is done with the
/// <METHOD>Connect</METHOD> method. You can tell if you are connected to a server by
/// looking at the property <PROPERTY>Connected</PROPERTY>.<br>
/// <br>
/// If an ftp server at 'TestMachine' had a binary file called 'test.exe' in the root
/// ftp directory then the following example will pull this file into InterSystems IRIS.<br>
/// <EXAMPLE>
/// Set ftp=##class(%Net.FtpSession).%New()
/// If 'ftp.Connect("TestMachine","ftp","username@domain.com") Write "Not connected",! Quit
/// Write "Ftp server messsage:",!,ftp.ReturnMessage,!
/// Set stream=##class(%GlobalCharacterStream).%New()
/// If 'ftp.Binary() Write "Can not swap to binary mode",! Quit
/// Write "Mode now: ",ftp.Type,!
/// If 'ftp.Retrieve("test.exe",stream) Write "Failed to get file",! Quit
/// Write "Length of file received: ",stream.Size,!
/// If 'ftp.Logout() Write "Failed to logout",!
/// Quit
/// </EXAMPLE>
Class %Net.FtpSession Extends %RegisteredObject [ System = 3 ]
{

/// The Callback property is designed to allow user code in the class
/// <CLASS>%Net.FtpCallback</CLASS> to be called at regular intervals during
/// an ftp <METHOD>Store</METHOD> or <METHOD>Retrieve</METHOD>. This can
/// display the progress of the ftp operation to the user and could allow
/// the user to abort the transfer.
Property Callback As %Net.FtpCallback;

/// True if we are currently connected to an ftp server and false if not.
Property Connected As %Boolean [ InitialExpression = 0 ];

/// True if the connection is IPV6 protocol.
Property IsIPV6 As %Boolean [ InitialExpression = 0 ];

/// Server's IP address to be used in EPSV mode with IPV6 protocol.
Property ServerAddr As %String;

/// ReturnCode is a the three digit number that the ftp server reponds to commands
/// with. This can be used to determine if the command completed or if there
/// were problems. See the rfc on ftp for more information on these codes.
Property ReturnCode As %Integer [ InitialExpression = 0 ];

/// ReturnMessage is set to the text message
/// that the ftp server responds with, this often contains useful information if
/// a method failed, or useful information such as the text banner you get when
/// you first login to an ftp server.
Property ReturnMessage As %String;

/// The name of the activated TLS configuration to use for ftp requests.
/// If specified then we use TLS on the FTP connection as specified in RFC4217.
/// Both the data and the command channel will be secured with TLS after the initial
/// connect on the command channel tells the remote server to switch to TLS mode.
Property SSLConfiguration As %String;

/// When making an SSL connection check the server identity in the server certificate matches the name of the system we are connecting to.
/// This defaults to being off and matches based on the rules layed out in section 3.1 of RFC 2818.
Property SSLCheckServerIdentity As %Boolean [ InitialExpression = 0 ];

/// If true and you specify a <property>SSLConfiguration</property> then this class
/// will use non-standard implied SSL on the data and command channel rather than
/// using RFC4217. Depending on the configuration of the server you are talking to
/// it may be needed to also send 'PBSZ 0' and 'PROT P' before you can communicate, this
/// can be done with 'Set rc=ftp.sendCommand("PBSZ 0"),rc2=ftp.sendCommand("PROT P")'.
Property LegacySSL As %Boolean [ InitialExpression = 0 ];

/// When making the SSL connection for the data channel, reuse session parameters from the command channel.
/// This feature requires OpenSSL v1.1.x+.
Property SSLUseSessionResumption As %Boolean [ InitialExpression = 0 ];

/// Timeout is the amount of time to wait for a response from the ftp server before
/// assuming that the server is not responding or the network connection is not
/// working. The default value is 10 seconds.
Property Timeout As %Integer [ InitialExpression = 10 ];

/// Type returns the transfer mode the ftp server is currently set to. This can be
/// either Ascii or Binary. The methods <METHOD>Ascii</METHOD> and
/// <METHOD>Binary</METHOD> change the mode the server is currently set to.
Property Type As %String [ Calculated ];

/// Ftp connections are formed from two TCP/IP connections to the remote server,
/// a command channel where the ftp commands are sent down and command responses
/// are retrieved and a data channel for streaming large pieces of data. The way the
/// data channel is connected is determined by this property. In PASV mode, the default,
/// this ftp client asks the server where to connect for the data channel and it then
/// initiates this connection to the remote server. If PASV mode is not used then the
/// client tells the remote server where to connect to and the remote server initiates
/// the data connection to this client machine. PASV mode is turned on by default because
/// when going through a firewall having the remote ftp server initiate the data channel
/// often does not work, but PASV mode will work in this case.
Property UsePASV As %Boolean [ InitialExpression = 1 ];

/// When using PASV mode (see <property>UsePASV</property>) the remote server supplies the
/// IP address and port to connect to. On misconfigured servers it is possible this may report
/// a private IP address when we are connecting to it from a public IP address so the PASV
/// connection fails. We automatically detect this and use the initial IP address we had connected
/// to in this case, but if you set this property =0 it turns this detection off.
/// If this property is 2 then we never use the PASV supplied server IP and always use the original server
/// address.
Property AutoDetectPrivate As %Integer [ InitialExpression = 1 ];

/// Internal name of the ftp server we connected to
Property ServerName As %String [ Internal, Private ];

/// Indicates whether to use FTP Extensions for IPv6 and NATs.  When set, the extension commands EPRT and EPSV
/// will be used in place of the PORT and PASV commands.  The default value is 0,
/// but UseExtentions is automatically set to 1 when an IPV6 address is used.
/// The FTP Extension commmands are useful to avoid problems using FTPS with
/// Network Address Translation (NAT) as when traversing firewalls.
Property UseExtensions As %Boolean [ InitialExpression = 0 ];

/// The translate table to be used when reading or writing files.
/// See <a target="_top" href="/csp/docbook/Doc.View.cls?FIND=LANDING+TRANSLATETABLES">Translation Tables</a>.
Property TranslateTable As %String;

/// The translate table to use for the command channel, specifically for the filename/pathnames.
/// See <a target="_top" href="/csp/docbook/Doc.View.cls?FIND=LANDING+TRANSLATETABLES">Translation Tables</a>.
/// <br>Normally this should not be specified in which case if the ftp server supports UTF-8 then
/// we will use that for the filename/pathnames, if the server does not support UTF-8 then we
/// will use RAW mode and just read the bytes as sent.
Property CommandTranslateTable As %String;

Method CommandTranslateTableSet(table As %String) As %Status
{
}

Property device As %String [ Private ];

Property transferType As %Integer [ InitialExpression = 1, Private ];

Property serverIP As %String [ Private ];

Method %OnClose() As %Status [ Private ]
{
}

/// Append the data contained in <var>Stream</var> to the file named in <var>Filename</var>.
Method Append(Filename As %String, Stream As %AbstractStream) As %Boolean [ CodeMode = expression ]
{
}

/// Switch the ftp server transfer type to Ascii. This will for example convert Cr/Lf
/// to Lf for Unix systems. When transfering text files you should use this mode. The
/// current mode can be found by looking at the property <PROPERTY>Type</PROPERTY>.
Method Ascii() As %Boolean
{
}

/// Switch the ftp server transfer type to Binary. This will store the data in exactly
/// the same format it is sent in. When transfering any binary files you should use
/// this mode. The current mode can be found by looking at the property <PROPERTY>Type</PROPERTY>.
Method Binary() As %Boolean
{
}

/// Connect to an Ftp server. You should supply the server IP address or domain name
/// to connect to as the <var>Server</var> parameter. Also most Ftp server will require
/// a <var>Username</var> and a <var>Password</var> in order to allow you to login. To login to
/// an anonymous Ftp server	use the Username="anonymous" and the Password is your email address.<br>
/// <var>Port</var> is an optional parameter that specifies the IP port number to connect
/// on if it is not the standard port of 21.
Method Connect(Server As %String, Username As %String, Password As %String, Port As %Integer = 21) As %Boolean
{
}

/// See which features the ftp server supports
Method Features() As %Boolean
{
}

/// Change the user that we are logged in as. This assumes you are already connected
/// to the ftp server at this point.
Method ChangeUser(Username As %String, Password As %String) As %Boolean
{
}

/// Delete the file <var>Filename</var> on the Ftp server.
Method Delete(Filename As %String) As %Boolean [ CodeMode = expression ]
{
}

/// Return the current directory the Ftp server is in the parameter <var>Path</var> that
/// is passed by reference.
Method GetDirectory(ByRef Path As %String) As %Boolean
{
}

/// Read in the files that match the <var>Pattern</var> in a human readable format
/// into <var>Stream</var>. The <var>Pattern</var> can include a path as well pattern to
/// search for, and if no pattern is specified then it will list all the files
/// in this directory. The information returned contains server information like the file
/// size, permissions modification time as well as the filename. The format of this is
/// server specific.
Method List(Pattern As %String, ByRef Stream As %AbstractStream) As %Boolean
{
}

/// Logoff and disconnect from the Ftp server.
Method Logout() As %Boolean
{
}

/// Create a new directory on the Ftp server. <var>Path</var> should be passed by
/// reference and it will return the name of the directory created. The Ftp server
/// will translate the path you give it into its own format (which may be different)
/// and is the value returned by in <var>Path</var>.
Method MakeDirectory(ByRef Path As %String) As %Boolean
{
}

/// Given a <var>Path</var> this will return an array of filenames including their path in the parameter
/// <var>FileArray</var>, this parameter should be passed by reference and if not already
/// created it will create a new <CLASS>%ArrayOfDataTypes</CLASS>. An example of its
/// use assuming is:
/// <EXAMPLE>
/// New fileArray,key
/// If 'ftp.NameList("",.fileArray) Write "Failed to get name list",!
/// Set key=""
/// Write "List of Files:",!
/// For  Write fileArray.GetNext(.key),! Quit:(key="")
/// </EXAMPLE>
Method NameList(Path As %String, ByRef FileArray As %ArrayOfDataTypes) As %Boolean
{
}

/// Delete the directory passed in <var>Path</var> from the Ftp server.
Method RemoveDirectory(Path As %String) As %Boolean [ CodeMode = expression ]
{
}

/// Rename a file from <var>OldFilename</var> to <var>NewFilename</var>.
Method Rename(OldFilename As %String, NewFilename As %String) As %Boolean
{
}

/// Retrieve the file specified by <var>Filename</var> into <var>Stream</var>.
/// If <var>Stream</var> is not specified it will be created, in which case you
/// should pass it by reference so it can be returned to the caller.
Method Retrieve(Filename As %String, ByRef Stream As %AbstractStream) As %Integer [ CodeMode = expression ]
{
}

/// If a <METHOD>Retrieve</METHOD> failed because the connection was lost this allows
/// you to retry getting the file. So if you have got 1/2 of the original file in
/// the first attempt for <var>Filename</var> you pass the <var>Stream</var> with this half
/// into this method and it will start where the other transfer left off.
Method RetryRetrieve(Filename As %String, Stream As %AbstractStream) As %Integer [ CodeMode = expression ]
{
}

/// Set the directory on the Ftp server to <var>Path</var>.
Method SetDirectory(Path As %String) As %Boolean [ CodeMode = expression ]
{
}

/// Move to parent directory on the Ftp server.
Method SetToParentDirectory() As %Boolean [ CodeMode = expression ]
{
}

/// If the FTP server supports it then this will return a files size based on the current
/// transfer type in the <var>Size</var> output argument. Returns true if it completed correctly.
Method Size(Filename As %String, ByRef Size As %Integer) As %Boolean
{
}

/// If the FTP server supports it then this will return a files modification time based on GMT
/// as a float value in the <var>Time</var> output argument. Returns true if it completed correctly.
Method MDTM(Filename As %String, ByRef Time As %Float) As %Boolean
{
}

/// Return the status of the Ftp server in the <var>Status</var> parameter which should
/// be passed by reference.
Method Status(ByRef Status As %String) As %Boolean
{
}

/// Store the data in <var>Stream</var> in the <var>Filename</var> on the Ftp server.
Method Store(Filename As %String, Stream As %AbstractStream) As %Boolean [ CodeMode = expression ]
{
}

/// Upload the files in <var>Directory</var> matching the set of <var>Wildcards</var> to the Server.
/// Multiple <var>Wildcards</var> can be passed. In this case, each wildcard must be separated by
/// the <var>Delimiter</var>. The default <var>Delimiter</var> is ";".
/// <method>StoreFiles</method> ignores subdirectories.
/// All files will be uploaded using the current transfer mode (<property>Type</property>). This means
/// that binary and ASCII files cannot be uploaded together in a single call. If mixed file types are needed,
/// separate the upload into batches, for example:
/// <example>
/// If 'ftp.Ascii() Write "Can not swap to Ascii mode",! Quit
/// If 'ftp.StoreFiles("/myfiles","*.txt;*.csv") Write "Failed to store text files",! Quit
/// If 'ftp.Binary() Write "Failed to swap to Binary mode",! Quit
/// If 'ftp.StoreFiles("/myfiles","*.bin") Write "Failed to store binary files",! Quit
/// </example>
Method StoreFiles(Directory As %String, Wildcards As %String, Delimiter As %String = ";") As %Boolean
{
}

/// Return information about the type of computer you are connected to in the
/// by reference parameter <var>System</var>.
Method System(ByRef System As %String) As %Boolean
{
}

Method TypeGet() As %String [ CodeMode = expression ]
{
}

Method error(ReturnCode As %Integer, ReturnMessage As %String) As %Integer [ Private ]
{
}

Method genericRetrieve(Command As %String, ByRef Stream As %AbstractStream, Table As %String = "", Retry As %Boolean = 0) As %Boolean [ Private ]
{
}

Method genericStore(Command As %String, Stream As %AbstractStream, Table As %String = "") As %Boolean [ Private ]
{
}

ClassMethod getPath(Path As %String) As %String [ Private ]
{
}

Method readResponse(Quick As %Boolean = 0) As %Boolean [ Private ]
{
}

Method returnStatus() As %Boolean [ CodeMode = expression, Private ]
{
}

/// Generic method to send a command to the ftp server and read the response. It returns true if the command
/// worked and false if there was an error status returned. See <property>ReturnStatus</property> for the returned
/// status and <property>ReturnMessage</property> for the returned message.
Method sendCommand(Command As %String, noread As %Boolean = 0) As %Boolean
{
}

Method setupPASV(ByRef Device As %String, Output ServerName As %String) As %Boolean [ Private ]
{
}

/// Return true if this IPv4 address is a private address
ClassMethod isPrivate(address As %String) As %Boolean
{
}

Method setupPORT(ByRef Device As %String, Output ServerName As %String) As %Boolean [ Private ]
{
}

Method setupIPV6() As %Boolean [ Private ]
{
}

ClassMethod GetDevice() As %String
{
}

}
