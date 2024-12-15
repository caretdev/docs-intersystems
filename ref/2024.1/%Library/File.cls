/// <p><b>For information on this class</b>, see
/// <a target="_top" href="/csp/docbook/DocBook.UI.Page.cls?FIND=CLASSES+%25Library.File">Using %Library.File</a>.</p>
/// The <CLASS>%File</CLASS> class represents a disk file. It contains a
/// number of class methods that provide a number of file system
/// services.
///
/// <p>For example,
///
/// <EXAMPLE>
/// If ##class(%File).Exists("file.txt") Write "It exists",!
/// </EXAMPLE>
///
/// <p>You can also create an instance of a <CLASS>%File</CLASS> object that
/// represents a particular file. <CLASS>%File</CLASS> makes a number of file
/// attributes accessible as properties as well as providing a
/// <CLASS>%AbstractStream</CLASS> interface on the file.
///
/// <p>For example,
/// <EXAMPLE>
/// Set file=##class(%File).%New("file.txt")
/// Write file.Size
/// Do file.Open("WSN")
/// Do file.WriteLine("This is a line of text")
/// </EXAMPLE>
/// Note that this class is a fairly simple wrapper around the ObjectScript file commands. For simply reading/writing to a file it is suggested that
/// you look at the <class>%Stream.FileCharacter</class> and
/// <class>%Stream.FileBinary</class> classes. These open the file using the
/// correct mode automatically in order to read or write to the file and so
/// are simpler to use.
Class %Library.File Extends %AbstractStream [ System = 2 ]
{

Parameter SQLPUBLICSECURITY = "{""File_DriveList"":""Requires:%Development:USE"",""File_FileSet"":""Requires:%Development:USE"",""File_ParseDirectory"":""E""}";

/// The name of this file.
Property Name As %String(MAXLEN = 5000);

/// Read only property that returns the canonical filename if the file is open and "" if the file is not open.
Property CanonicalName As %String(MAXLEN = 5000) [ Calculated ];

Method CanonicalNameGet() As %String
{
}

/// The creation date for this file (rounded to the millisecond). Only Windows
/// maintains the created date; other operating systems return the date
/// of the last file "status" change.
Property DateCreated As %Date [ Calculated ];

/// The last modified date for this file (rounded to the millisecond).
Property DateModified As %Date [ Calculated ];

/// True (1) if this file is currently open, false (0) otherwise.
Property IsOpen As %Boolean [ InitialExpression = 0 ];

Property openmode As %String(MAXLEN = 5000) [ Internal, Private ];

Method %Load(sid As %String) As %Status [ Private, ProcedureBlock = 1 ]
{
}

ClassMethod %DeleteData(soid As %String, concurrency As %Integer) As %Status [ Private, ProcedureBlock = 1 ]
{
}

Method %SaveData(ByRef sid As %String) As %Status [ Private, ProcedureBlock = 1 ]
{
}

/// Returns true (1) if <var>filename</var> exists.
/// Pass <var>return</var> by reference to obtain the low level return value in case of errors
/// which is the negative value of the operating system return code.
ClassMethod Exists(filename As %String, Output return As %Integer) As %Boolean
{
}

/// Tests if <var>filename</var> is a directory.
/// returns 1 if it is a directory, otherwise, returns 0.
ClassMethod DirectoryExists(filename As %String) As %Boolean
{
}

/// Returns a normalized absolute directory from the <var>directory</var> that is passed in including any trailing directory delimiter.<p>
/// If the <var>directory</var> is a relative path (rather than an absolute path) then the <var>absolutedirectory</var> parameter
/// determines what we normalize the <var>directory</var> compoent relative to. If <var>absolutedirectory</var> is "" or not passed in then
/// we normalize relative to the current default directory otherwise we will normalize relative to the passed in
/// <var>absolutedirectory</var>.<p>
/// <var>addnull</var> use is deprecated
ClassMethod NormalizeDirectory(directory As %String, absolutedirectory As %String = "", addnull As %Boolean) As %String
{
}

/// Returns the normalized form of the <var>filename</var>.
/// If you pass <var>directory</var> then it will normalize this filename relative to the provided directory,
/// if no <var>directory</var> is supplied then it is relative to the current default directory. If the
/// <var>directory</var> does not exist then this method will return the empty string. Otherwise, this method
/// returns the normalized full path name of the specified file.
ClassMethod NormalizeFilename(filename As %String, directory As %String = "") As %String
{
}

/// Returns the canonical form of the <var>filename</var>. If the file can not be opened then it will return ""
ClassMethod CanonicalFilename(filename As %String) As %String
{
}

/// Returns the path of the manager directory.
ClassMethod ManagerDirectory() As %String [ CodeMode = expression ]
{
}

/// Deletes the file <var>filename</var>. Returns true if it succeeds and false otherwise.
/// Pass <var>return</var> by reference to obtain the low level return value in case of errors
/// which is the negative value of the operating system return code.
ClassMethod Delete(filename As %String, Output return As %Integer) As %Boolean
{
}

/// Return true if the file is read only and false if it is writable
ClassMethod ReadOnly(filename As %String) As %Boolean [ CodeMode = expression ]
{
}

/// Handle delete of cases where <var>filename</var> contains a wildcard.
/// Note: this does not delete subdirectories in the given directory; only files are removed.
/// Pass <var>return</var> by reference to obtain the low level return value in case of errors
/// which is the negative value of the operating system return code.
ClassMethod ComplexDelete(filename As %String, Output return As %Integer) As %Boolean
{
}

/// Return the canonical form of the directory name <var>filename</var>.
/// When <var>filename</var> is a non-full path directory, it will prefix
/// the <var>filename</var> with Manager Path instead of current directory.
ClassMethod ComputeFullDBDir(filename As %String) As %String
{
}

/// Creates a directory with name <var>name</var>. Returns true if it succeeds and false otherwise.
/// Pass <var>return</var> by reference to obtain the low level return value in case of errors
/// which is the negative value of the operating system return code.
ClassMethod CreateDirectory(name As %String, Output return As %Integer) As %Boolean
{
}

/// Given a directory name and the name of a new directory create this directory inside
/// the given directory. Return true if it succeeds and false otherwise.
/// Pass <var>return</var> by reference to obtain the low level return value in case of errors
/// which is the negative value of the operating system return code.
ClassMethod CreateNewDir(directory As %String, name As %String, Output return As %Integer) As %Boolean
{
}

/// Create this directory and all the parent directories if they do not exist. This differs from
/// <method>CreateDirectory</method> as that method only creates one new directory where as
/// this will create the entire chain of directories. Returns true if it succeeds and false otherwise.
/// Pass <var>return</var> by reference to obtain the low level return value in case of errors
/// which is the negative value of the operating system return code.
ClassMethod CreateDirectoryChain(name As %String, Output return As %Integer) As %Boolean
{
}

/// Given a directory name and the name of a sub directory create the name for the
/// subdirectory inside the given directory. Return the new directory name.
/// This is useful as the parsing of filenames on Unix/Windows is different.
ClassMethod SubDirectoryName(directory As %String, name As %String, normalized As %Boolean = 0) As %String
{
}

/// Given a directory name, return the name of its parent directory.<br>
/// If the directory is already the root (e.g., "/" on Unix, "c:\" on Windows), return the root.
ClassMethod ParentDirectoryName(directory As %String) As %String
{
}

/// Pass in an array of paths you want to turn into a filename for the server platform, for example:
/// <example>Set dirs($i(dirs))=$system.Util.DataDirectory()
/// Set dirs($i(dirs))="httpd"
/// Set dirs($i(dirs))="logs"
/// Set filename=##class(%File).Construct(dirs...)</example>
/// If you want the name returned to be a directory terminated with a '/' or '\' then
/// pass in a null <var>dirs</var> entry as the last piece. You can also call
/// <method>Deconstruct</method> with the returned filename to turn this back into
/// an array like <var>dirs</var>. If you pass in a blank array it will return the
/// default directory.
ClassMethod Construct(dirs... As %String) As %String
{
}

/// Pass in a full valid <var>filename</var> for the server platform and it will decompose it into the <var>dirs</var> array
/// with each integer subscript being a part of the path, this array can then be passed into
/// <method>Construct</method> to reconstruct the filename again. So on a Unix server you need to pass this a valid Unix filename
/// and on a Windows server this should be passed a Windows filename.
ClassMethod Deconstruct(filename As %String, ByRef dirs As %String)
{
}

/// Given a full directory and filename this will return just the filename portion of this name.
/// This is useful as the parsing of filenames on Unix/Windows is different.
ClassMethod GetFilename(name As %String) As %String
{
}

/// Given a full directory and filename this will return just the directory portion of this name.
/// This is useful as the parsing of filenames on Unix/Windows is different.
ClassMethod GetDirectory(name As %String, keepterm As %Boolean = 0) As %String
{
}

/// Return the number of pieces in this directory name
ClassMethod GetDirectoryLength(name As %String) As %Integer
{
}

/// Return the piece of a directory name
ClassMethod GetDirectoryPiece(name As %String, piece As %Integer, ByRef fullpath As %String, ByRef IsDrive As %Boolean) As %String
{
}

/// Return the amount of total space and free space in either Bytes,MB,GB on a drive or directory
/// <br>
/// Name = Valid Drive or directory specification<br>
/// Flag = 0 - Return bytes<br>
/// Flag = 1 - Return MB (Default)<br>
/// Flag = 2 - Return GB<br>
/// <br>
/// MB and GB returned are rounded to 2 decimal places.<br>
/// Any error status returned is O/S level error. Note that on Windows
/// only drives have a measurement for free space and directories can not so
/// the <var>FreeSpace</var> is only returned for drives.
ClassMethod GetDirectorySpace(Name As %String, ByRef FreeSpace As %String, ByRef TotalSpace As %String, Flag As %Integer = 1) As %Status
{
}

/// Given a directory name return it pulled apart into individual subdirectories starting at the root node
/// and working down to the last directory name
ClassMethod ParseDirectoryExecute(ByRef QHandle As %Binary, directory As %String) As %Status
{
}

ClassMethod ParseDirectoryClose(ByRef QHandle As %Binary) As %Status
{
}

ClassMethod ParseDirectoryFetch(ByRef QHandle As %Binary, ByRef Row As %List, ByRef AtEnd As %Integer = 0) As %Status
{
}

/// Removes directory <var>name</var>. Returns true if it succeeds and false otherwise.
/// Pass <var>return</var> by reference to obtain the low level return value in case of errors
/// which is the negative value of the operating system return code.
ClassMethod RemoveDirectory(name As %String, Output return As %Integer) As %Boolean
{
}

/// Recursively remove directory <var>pTarget</var>. Returns true if it succeeds and false otherwise.
ClassMethod RemoveDirectoryTree(pTarget As %String) As %Boolean
{
}

/// Rename file <var>oldname</var> to <var>newname</var>. Returns true if it succeeds and false otherwise.
/// The rename subfunction is only intended for changing the name of a regular file, not directories or other types of files.
/// In particular, renaming a file across filesystems results in copying and deleting the original file,
/// but this will not work for a directory. Renaming a directory within a file system does work.
/// Pass <var>return</var> by reference to obtain the low level return value in case of errors
/// which is the negative value of the operating system return code.
ClassMethod Rename(oldname As %String, newname As %String, Output return As %Integer) As %Boolean
{
}

/// Copy a host file <var>from</var> to host file <var>to</var>. <br>
/// Parameter <var>pDeleteBeforeCopy</var> may be used to specify that if the target file already exists then it should be deleted before being overwritten
/// with the source file. The default is 0 or false. <br>
/// This method returns true if it succeeds and false otherwise.
/// Pass <var>return</var> by reference to obtain the low level return value in case of errors
/// which is the negative value of the operating system return code or of an IRIS simulated operating
/// system return code.<br>
/// Also see $SYSTEM.Process.OSError().
ClassMethod CopyFile(from As %String, to As %String, pDeleteBeforeCopy As %Boolean = 0, Output return As %Integer) As %Boolean
{
}

/// Copy a host directory from <var>pSource</var> to <var>pTarget</var>. <br>
/// Parameter <var>pOverlay</var>
/// Parameter <var>pDeleteBeforeCopy</var> may be used to specify that any file that already exists in the target directory should be deleted before
/// being overwritten with the source file. The default is 0 or false.<br>
/// This method returns true if it succeeds and false otherwise. <br>
/// Note: (1) If the target directory exists and <var>pOverlay</var> is false (default), then the operation fails. Also, if any of the target files exist
/// and <var>pDeleteBeforeCopy</var> is false (default), then the operation may fail usually due to operating system characteristics.
/// (2) The total number of files or directories created/copied during the operation can be gotten by passing a byref value in <var>pCreated</var>.
ClassMethod CopyDir(pSource As %String, pTarget As %String, pOverlay As %Boolean = 0, ByRef pCreated = 0, pDeleteBeforeCopy As %Boolean = 0) As %Boolean
{
}

/// Return the size of file <var>filename</var> in bytes.
ClassMethod GetFileSize(filename As %String) As %Integer [ CodeMode = expression ]
{
}

/// Return the date created of file <var>filename</var> in $H format,
/// if the operating system supports it. Windows is the only current
/// platform that tracks the created date. Other systems return the date
/// of the last file "status" change.
/// By default this is local time. If you pass <var>utc</var> as true it returns it in UTC time.
/// The value is rounded to millisecond precision.
ClassMethod GetFileDateCreated(filename As %String, utc As %Boolean = 0) As %String [ CodeMode = expression ]
{
}

/// Return the date last modified of file <var>filename</var> in $H format.
/// By default this is local time. If you pass <var>utc</var> as true it returns it in UTC time.
/// The value is rounded to millisecond precision.
ClassMethod GetFileDateModified(filename As %String, utc As %Boolean = 0) As %String [ CodeMode = expression ]
{
}

/// Return the SHA 256 hash of file <var>filename</var>.
ClassMethod GetFileSHA256Hash(filename As %String, ByRef sc = 0) As %String
{
}

/// Return true if the file/directory is writable and false if it is not
ClassMethod Writeable(filename As %String) As %Boolean [ CodeMode = expression ]
{
}

/// Return the attributes of the file.
/// The format of the returned value depends on the underlying operating system.
/// <p>
/// Microsoft Windows&reg; returns a value as a combination of bits whose meaning is:
/// <br>
/// <ul>
/// <li>1: 0x00001 - Read-only</li>
/// <li>2: 0x00002 -  Hidden</li>
/// <li>4: 0x00004 -  System</li>
/// <li>8:  0x00008 - Unused</li>
/// <li>16: 0x00010 -  Directory</li>
/// <li>32: 0x00020 -  Archive</li>
/// <li>64: 0x00040 -  Device</li>
/// <li>128: 0x00080 -  Normal</li>
/// <li>256: 0x00100 -  Temporary</li>
/// <li>512: 0x00200-  Sparse File</li>
/// <li>1024: 0x00400 -  Reparse Point</li>
/// <li>2048: 0x00800 -  Compressed</li>
/// <li>4096: 0x01000 -  Offline</li>
/// <li>8192: 0x02000 -  Content Not Indexed</li>
/// <li>16384: 0x04000 -  Encrypted</li>
/// <li>32768: 0x08000 -  Unused</li>
/// <li>65536: 0x10000 -  Virtual</li>
/// </ul>
/// <p>
/// In UNIX&reg;, the returned value represents the mode map:
/// <br>
/// <ul>
/// <li>1: 0x0001 - execute permission for others</li>
/// <li>2: 0x0002 -  write permission for others</li>
/// <li>4: 0x0004 -  read permission for others</li>
/// <li>7: 0x0007 - mask for others permissions
/// <li>8: 0x0008 -  execute permission for group</li>
/// <li>16: 0x0010 -  write permission for group</li>
/// <li>32: 0x0020 -  read permission for group</li>
/// <li>56: 0x0038 - mask for group  permissions
/// <li>64: 0x0040 -  execute permission for owner</li>
/// <li>128: 0x0080 -  write permission for owner</li>
/// <li>256: 0x0100 -  read permission for owner</li>
/// <li>448: 0x01C0 - mask for file owner permissions
/// <li>512: 0x0200 -  sticky bit</li>
/// <li>1024: 0x0400 -  set groupid</li>
/// <li>2048: 0x0800 -  set userid</li>
/// <li>4096: 0x1000 -  fifo</li>
/// <li>8192: 0x2000 -  character device</li>
/// <li>16384: 0x4000 -  directory</li>
/// <li>24576: 0x6000 - block device
/// <li>32768: 0x8000 -  regular file</li>
/// <li>40960: 0xA000 - symbolic link</li>
/// <li>49152: 0xC000 - socket</li>
/// <li>61440: 0xF000 - mask for file type</li>
/// </ul>
/// <p>
/// Note: Individual Operating System vendor differences may exist.
/// The relevant man/help pages or other associated documentation
/// should be consulted for a definitive description of the file attributes
/// on a given system.
///
ClassMethod Attributes(filename As %String) As %String [ ClientName = FileAttributes, CodeMode = expression ]
{
}

/// Set the OS specific attributes of the file.
/// See the Attribute method in this class for file attribute values.
/// Pass <var>return</var> by reference to obtain the low level return value in case of errors
/// which is the negative value of the operating system return code.
ClassMethod SetAttributes(filename As %String, attributes As %String, Output return As %Integer) As %Boolean
{
}

/// Return the Owner and Group of a file or directory in the format Owner:Group.<br>
ClassMethod GetOwnerGroup(File As %String, ByRef OwnerGroup As %String) As %Status
{
}

/// Set the Owner and Group of a file or directory.<br>
/// This uses the unix "chown" command to perform the operation, and is valid only on Unix platforms.
ClassMethod SetOwnerGroup(filename, OwnerGroup) As %Status
{
}

/// Make this file/directory writable (if we can). The <var>writeonly</var>
/// defaults to true in which case this makes the file write only, if you just
/// want to add writable to the existing permissions without modifying the
/// other permissions pass <var>writeonly</var>=0. The <var>writeonly</var>
/// has no effect on Windows so you do not need to pass this argument on this platform.
/// Pass <var>return</var> by reference to obtain the low level return value in case of errors
/// which is the negative value of the operating system return code.
ClassMethod SetWriteable(filename As %String, writeonly As %Boolean = 1, Output return As %Integer) As %Boolean
{
}

/// Make this file/directory read only (if we can).
/// If <var>leaveexisting</var> is true then it will add read permissions to the
/// file/directory without changing the existing permissions, by default
/// it will remove all other permissions other than read only flags. The <var>leaveexisting</var>
/// has no effect on Windows so you do not need to pass this argument on this platform.
/// Pass <var>return</var> by reference to obtain the low level return value in case of errors
/// which is the negative value of the operating system return code.
ClassMethod SetReadOnly(filename As %String, leaveexisting As %Boolean = 0, Output return As %Integer) As %Boolean
{
}

/// Truncate an existing file or create a new empty file.
/// Pass <var>return</var> by reference to obtain the low level return value in case of errors
/// which is the negative value of the operating system return code.
ClassMethod Truncate(filename As %String, Output return As %Integer) As %Boolean
{
}

Method %OnNew(initval As %String = "") As %Status [ Private ]
{
}

Method %OnClose() As %Status [ Private ]
{
}

/// Open the current file with mode <var>mode</var>.
///
/// <p><var>mode</var> is a string containing one or more file modes including:
/// <table COLS=2>
/// <tr><TD><B>R</B></TD><TD>Read</TD></tr>
/// <tr><TD><B>W</B></TD><TD>Write</TD></tr>
/// <tr><TD><B>S</B></TD><TD>Stream mode</TD></tr>
/// <tr><TD><B>N</B></TD><TD>Create a new file (overwrite existing file)</TD></tr>
/// </table>
/// Note that if the <var>mode</var> contains ':' characters this is a delimiter.
/// For example if the mode="RN:/SHARED" then it will open the file with the equivalent
/// of the COS command 'Open name:("RN":/SHARED):0'. The first piece before the
/// ':' is quoted and the subsequent pieces are not.
/// <P>
/// A complete discussion of the available options for <var>mode</var> can
/// be found in the online documentation in the book,
/// <B>I/O Devices Guide</B>, specifically the chapter on Sequential File I/O.
///
Method Open(mode As %String = "", timeout As %Integer = 0) As %Status
{
}

/// Close the current file.
Method Close()
{
}

/// Moves the current location to the beginning of the stream.
Method Rewind() As %Status
{
}

Method Clear() As %Status
{
}

/// Read up to <var>len</var> characters from this <b>File</b>.
Method Read(ByRef len As %Integer = 32000, ByRef sc As %Status) As %RawString
{
}

/// Write <var>data</var> to this <CLASS>%File</CLASS> object.
Method Write(data As %RawString = "") As %Status
{
}

/// Write <var>data</var> with a carriage return to this <CLASS>%File</CLASS> object.
Method WriteLine(data As %RawString = "") As %Status
{
}

Method IsOpenSet(%val As %Boolean) As %Status [ Private ]
{
}

Method DateCreatedGet() As %Date [ CodeMode = expression ]
{
}

Method DateModifiedGet() As %Date [ CodeMode = expression ]
{
}

Method SizeGet() As %Integer [ CodeMode = expression ]
{
}

/// This query was originally created to return Windows drive letters, hence its name.
/// Later it was extended to work on Unix.<ul>
/// <li>Windows: return a list of available drives</li>
/// <li>Unix: return a list of mounted file systems</li></ul>
/// On Windows, if <var>fullyqualified</var> is true then the drive letters include the
/// trailing '\' character.  The default is false; this is backward compatible and returns
/// 'c:' on Windows. This does not affect the behavior on Unix.
ClassMethod DriveListExecute(ByRef QHandle As %Binary, fullyqualified As %Boolean = 0) As %Status
{
}

ClassMethod DriveListClose(QHandle As %Binary) As %Status
{
}

ClassMethod DriveListFetch(ByRef QHandle As %Binary, ByRef Row As %List, ByRef AtEnd As %Integer = 0) As %Status
{
}

/// Return the list of files in <var>directory</var> matching the pattern <var>wildcards</var>.
/// The <var>sortby</var> can be one of:<ul>
/// <li>Name - the name of the file (the default)</li>
/// <li>Type - file type</li>
/// <li>DateCreated - the date the file was created (rounded to the millisecond)</li>
/// <li>DateModified - the date the file was last modified (rounded to the millisecond)</li>
/// <li>Size - the file size</li></ul>
/// The <var>includedirs</var> if true (default is 0) will force the list
/// of all directories to be returned before any files, the directories will ignore the pattern you supplied so it returns them all.
/// If it is false it will
/// return any files that match the pattern you give it, this may include directories if they match the pattern as well.
/// So true forces any directory to be included, but false does not exclude directories.
/// You may also specify the <var>delimiter</var> that is used to separate the <var>wildcards</var>
/// from each other, this defaults to ";".
ClassMethod FileSetExecute(ByRef QHandle As %Binary, directory As %String, wildcards As %String, sortby As %String = "", includedirs As %Boolean = 0, delimiter As %String = ";") As %Status
{
}

ClassMethod FileSetClose(QHandle As %Binary) As %Status
{
}

ClassMethod FileSetFetch(ByRef QHandle As %Binary, ByRef Row As %List, ByRef AtEnd As %Integer = 0) As %Status
{
}

Method LastModifiedGet() As %TimeStamp
{
}

/// Set the date last modified of file <var>filename</var> to be <var>ntime</var> in $H format.
/// By default ntime is local time. If you pass <var>utc</var> as true, ntime will be treated as
/// UTC time. Pass <var>return</var> by reference to obtain the low level return value
/// in case of errors which is the negative value of the operating system return code.
Method SetFileDateModified(filename As %String, ntime As %TimeStamp, utc As %Boolean = 0, Output return As %Integer) As %Boolean
{
}

/// Method not implemented as it does not make sense in context of %File interface
Method CopyFromAndSave(source As %AbstractStream) As %Status
{
}

/// Create an empty temporary file in the OS provided temp directory, or the directory
/// specified by <var>dir</var>, and return the filename.<br>
/// If you specify <var>ext</var> the filename will have this extension.<br>
/// You should delete the file after using it.<br>
/// Pass <var>return</var> by reference to obtain the low level return value in case of an error.
/// It will be the negative value of the operating system return code,
/// or 0 if there is no error.<br>
/// In case of an error, the method returns an empty string.
ClassMethod TempFilename(ext As %String, dir As %String, Output return As %Integer) As %String
{
}

/// Set umask to the given value and return the previous umask value.
/// Does not affect directories, which are always created with
/// permission 775 (UMask 002) by default.
ClassMethod SetUMask(NewMask As %Integer) As %Integer [ CodeMode = expression ]
{
}

/// Compare two files and return 1 if they are identical and 0 otherwise
ClassMethod Compare(file1 As %String, file2 As %String) As %Boolean
{
}

/// Return binary form of SHA1 hash on the <var>file</var> if <var>type</var> is 0 (the default).
/// If you want the string version then pass in <var>type</var> as 1. Note that if you already
/// have the file open in this process calling this function will close this file.
ClassMethod SHA1Hash(file As %String, type As %Integer = 0) As %String
{
}

/// Normalize filenames containing spaces for the host platform.<br>
/// <br>
/// Parameter<br>
/// pathname : A filename or pathname.<br>
/// <br>
/// Description<br>
/// The NormalizeFilenameWithSpaces class method handles spaces in pathnames as appropriate
/// to the host platform.<br>
/// <br>
/// If a pathname contains spaces NormalizeFilenameWithSpaces returns the pathname
/// enclosed in double quotes ("path name").
/// If a pathname does not contain spaces, the method returns it
/// unchanged.  NormalizeFilenameWithSpaces performs no other pathname validation.<br>
/// <br>
/// NormalizefilenameWithSpaces is commonly used with the $ZF() functions.<br>
/// <br>
/// Note that this method does not perform the normalization actions of <method>NormalizeFilename</method>.
///
ClassMethod NormalizeFilenameWithSpaces(pathname As %String) As %String [ CodeMode = expression ]
{
}

}
