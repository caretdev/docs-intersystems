/// <p><b>For information on using this class</b>, see
/// <a target="_top" href="/csp/docbook/DocBook.UI.Page.cls?FIND=CLASSES+%25Net.SSH.SFTP">Using SSH</a>.</p>
/// A wrapper object for an SFTP session running over and existing SSH connection.  Use the OpenSFTP() method
/// of a previously connected and authenticated %Net.SSH.Session to instantiate a valid SFTP object for use.
/// <br/>
/// You should <b>NOT</b> create instances of %Net.SSH.SFTP directly!
/// <br/>
/// <b>NOTE:</b> %Net.SSH is currently not supported on OpenVMS platforms.
Class %Net.SSH.SFTP Extends %RegisteredObject [ System = 3 ]
{

/// SFTP Session handle
Property Session As %String [ Internal, Private ];

/// SFTP Remote Server Version
Property Version As %Integer;

/// SSH Session that hosts this SFTP session.
Property SSH As %Net.SSH.Session;

Method %OnNew(ssh As %Net.SSH.Session, sftp As %RawString) As %Status [ Private, ProcedureBlock = 1, ServerOnly = 1 ]
{
}

/// Enumerate the contents of a directory.  Populates the <var>contents</var> array with $LIST entries for
/// each file in the directory, subscripted by a integer sequence, the $LIST is composed in the same
/// format as with the <method>FileInfo()<method> method.
/// <br/>
/// The optional <var>spec</var> parameter allows for wildcards when searching the directory.  The wildcards
/// that can be used are as follows:<br/>
/// <ul>
/// <li>*: Match zero or more characters</li>
/// <li>?: Match exactly one character</li>
/// </ul>
/// Some examples are:
/// <blockquote><pre>
/// *.txt
/// journal_???.*
/// 201?-??-??.log
/// </pre></blockquote>
///
Method Dir(directory As %String, ByRef contents, spec As %String = "", dotFiles As %Boolean = 0) As %Status [ PublicList = (contents, pattern, filter) ]
{
}

/// Enumerate the contents of a directory by calling the specified instance method once for each entry
/// in the directory.  The signature of the callback should take two arguments, first an integer
/// sequence number and secondly a $LIST composed in the same format as with the FileInfo() method
/// (see FileInfo).
///
Method DirEnum(directory As %String, oref As %RegisteredObject, method As %String) As %Status
{
}

/// Gets information about a file.  On return, info is a $LIST containing:
///
///   1) Filename
///   2) Size
///   3) File type
///      P: Named pipe (FIFO)
///      C: Character special
///      D: Directory
///      B: Block special
///      F: Regular file
///      L: Symbolic link
///      S: Socket
///      U: Unknown
///   4) Permissions
///   5) UID
///   6) GID
///   7) Last Access Time
///   8) Last Modification Time
///
/// Depending on the remote system, some information may not be available and
/// will be indicated by a null list element.
///
Method FileInfo(file As %String, ByRef info As %List) As %Status
{
}

/// Create a new directory on the remote server, with the specified file mode (access).
Method MkDir(directory As %String, remotemode As %String = "0700") As %Status
{
}

/// Remove a directory on the remote server
Method RmDir(directory As %String) As %Status
{
}

/// Delete a file on the remote server
Method Delete(file As %String) As %Status
{
}

/// Rename a file on the remote server
Method Rename(old As %String, new As %String) As %Status
{
}

/// Create a symlink on the remote server
Method SymLink(source As %String, target As %String) As %Status
{
}

/// Put a file from the local filesystem to the remote server, setting the specified mode (access).
Method Put(local As %String, remote As %String, remotemode As %String = "0600", append As %Boolean = 0) As %Status
{
}

/// Put a stream to the remote system, setting the specified mode (access).
/// If <var>stream</var> is a file stream we will just link to the file already present, otherwise we create a temp file to send.
Method PutStream(stream As %Stream.Object, remote As %String, remotemode As %String = "0600", append As %Boolean = 0) As %Status
{
}

/// Get a file from the remote system, storing it in the local file system with the specified mode (access).
Method Get(remote As %String, local As %String, localmode As %String = "0600", append As %Boolean = 0) As %Status
{
}

/// Get a file from the remote system, storing it in the <var>stream</var>.
/// If <var>stream</var> not defined on entry it will create a stream for this automatically. If <var>stream</var>
/// is a file stream we will just link to the file we created.
Method GetStream(remote As %String, ByRef stream As %Stream.Object, append As %Boolean = 0) As %Status
{
}

/// Change the size of the specified file (by either truncating or extending it).
Method SetSize(remote As %String, size As %Integer) As %Status
{
}

/// Change the permissions mode for the specified file or directory.
Method SetPermissions(remote As %String, mode As %String) As %Status
{
}

/// Change the uid/gid for the specified file or directory (you must be the current owner or root).
Method SetOwnerAndGroup(remote As %String, uid As %Integer, gid As %Integer) As %Status
{
}

/// Touch the file to have an access time of now.
Method Touch(remote As %String) As %Status
{
}

/// Change the access and last modification times for the specified file (you must be the current owner or root).  NOTE: Timestamp values must be in UTC time (see $ZTIMESTAMP).
Method SetFileTime(remote As %String, atimeUTC As %TimeStamp, mtimeUTC As %TimeStamp) As %Status
{
}

/// Sets the transfer buffer size for SFTP operations (in bytes).  The default is 1MB, performance may be
/// degraded when this is set to small values.
Method SetBufferSize(pBufferSize As %Integer) As %Status
{
}

/// Gets the transfer buffer size for SFTP operations (in bytes).
Method GetBufferSize(ByRef pBufferSize As %Integer) As %Status
{
}

/// Clean up any resources
Method %OnClose() As %Status
{
}

/// Close the SFTP session
Method CloseSFTP() As %Status
{
}

/// Demonstrates use of an SFTP session to enumerate the contents of the /etc directory on the remote
/// server.
ClassMethod Test(host As %String, username As %String, password As %String, dir As %String = "/etc", spec As %String = "", dotFiles As %Boolean = 1, ByRef t) As %Status
{
}

/// Demonstrates use of an SFTP session to put a file to the remote
/// server.
ClassMethod TestPut(host As %String, username As %String, password As %String, srcfile As %String, destfile As %String) As %Status
{
}

/// Convert UNIX permissions flags to a string
ClassMethod Permissions2Text(permissions As %Integer) As %String
{
}

/// Convert UNIX file time to $HOROLOG, for UNIX time is the number of seconds since Midnight Jan 1, 1970
/// which has a $HOROLOG date of 47117,0
ClassMethod UTCFileTime2H(filetime As %Integer) As %String
{
}

/// Convert $HOROLOG to UNIX file time; note that UNIX time is the number of seconds since Midnight Jan 1, 1970
/// which has a $HOROLOG date of 47117,0
ClassMethod H2UTCFileTime(horolog As %String) As %Integer
{
}

/// Parse a UNIX 'chmod' style filemode into the integer value
ClassMethod parseMode(mode As %String, defaultmode As %Integer = 384) As %Integer [ Internal ]
{
}

/// Internal helper method to convert filenames.  If the SFTP version is >3, we use UTF8, otherwise we use
/// the value of RemoteCharset (if not specified, then nothing is done).
Method fnremote(pIn As %String, pDirection As %String) As %Integer [ CodeMode = expression, Internal ]
{
}

/// Internal helper method to convert filenames to the local character set (if not specified, then nothing is done).
Method fnlocal(pIn As %String, pDirection As %String) As %Integer [ CodeMode = expression, Internal ]
{
}

/// Internal helper method to act as a callback for directory enumeration.
Method dircallback(pIndex As %Integer, pFileInfo As %List) [ Internal, PublicList = (contents, pattern, filter) ]
{
}

/// Passed a pattern match this returns an COS style pattern and a start and stop point.
ClassMethod genPattern(pSpec As %String) As %String [ Internal ]
{
}

}
