/// Deprecated internal class.
/// Stream adaptor for streams that store data in external files. Not to be used directly.
Class %Library.FileStreamAdaptor Extends %AbstractStream [ Abstract, Deprecated, System = 2 ]
{

Parameter WRITEJUSTSAVED [ Final ] = 4;

Parameter STORAGE = "OTHER";

Parameter FILEEXT = "stream";

Parameter OPENREAD = "RUK\RAW\";

Parameter OPENWRITE = "WUNK\RAW\";

Parameter OPENAPPEND = "AWUK\RAW\";

Parameter OPENREADTERM = "RSK\RAW\";

Parameter READNORMAL [ Final ] = 0;

Parameter READLINE [ Final ] = 1;

Parameter WRITENORMAL [ Final ] = 0;

Parameter WRITEAPPEND [ Final ] = 1;

/// Directory where stream files are located.
Property Directory As %String(MAXLEN = 5000);

Method DirectorySet(dir As %String) As %Status [ Private ]
{
}

Method %LocationSet(value As %String) As %Status
{
}

Method %LocationGet() As %String [ CodeMode = expression ]
{
}

/// The filename that this stream is currently using<p>
/// If you set this property to update the file we will write to/read from
/// this operation can fail if for example the directory specified does not exist.
/// To detect this failure either check the %Status return code of the <method>FilenameSet</method>
/// or if using 'Set stream.Filename=newname' then check %objlasterror after the call to see if it
/// reported an error.
Property Filename As %String(MAXLEN = 5000) [ Calculated ];

Method FilenameSet(file As %String) As Status [ CodeMode = call ]
{
}

Method FilenameGet() As %String [ CodeMode = expression ]
{
}

/// Read only property that returns the canonical filename if the file is open and "" if the file is not open.
Property CanonicalFilename As %String(MAXLEN = 5000) [ Calculated ];

Method CanonicalFilenameGet() As %String [ CodeMode = expression ]
{
}

/// Normalized form of the directory. This is used for access to the file (as it adds the
/// extra '/' if needed), but it stores the <ATTRIBUTE>Directory</ATTRIBUTE> in the Id as
/// this may be a relative path. This is read only, you should not try and set its value.
Property NormalizedDirectory As %String(MAXLEN = 5000) [ Private ];

/// Name of file (without directory) containing stored stream.
Property StoreFile As %String(MAXLEN = 5000) [ Private ];

/// Name of file (without directory) containing temporary stream.
Property TempFile As %String(MAXLEN = 5000) [ Private ];

/// Full path name of currently opened file. Equal to "" if no file
/// is open.
Property CurrFile As %String(MAXLEN = 5000) [ Private, Transient ];

/// If true then remove the permanent file as well as any temp file when this object is closed
Property RemoveOnClose As %Boolean [ InitialExpression = 0, Transient ];

/// Mode the device is opened in, either with terminators as delimitors or not.
Property ReadMode As %Integer [ InitialExpression = {..#READNORMAL}, Private ];

/// If true then when saving this file we need to move it to the default permanent location
Property MakePermLoc As %Boolean [ InitialExpression = 0, Private ];

/// While reading this holds the file size
Property ReadSize As %Integer;

/// For file streams the line will terminate on any of the characters set in the LineTerminator, it does not support
/// multi-character line terminators because it uses the ObjectScript file behavior which terminates on any of the characters.<br>
/// Also for %FileCharacterStream even if you set this when you call <method>WriteLine</method> as the file was opened in 'S'
/// mode it will normalize the line terminator as the data is being written, so for example if you set LineTerminator to
/// $char(13,10) on Unix systems when you call <method>WriteLine</method> it will only write $char(10) to the file.
Property LineTerminator As %String(MAXLEN = 10) [ InitialExpression = {$get(^%SYS("Stream","LineTerminator"),$select($$$isUNIX:$char(10),1:$char(13,10)))}, Transient ];

Method LineTerminatorSet(terminator As %String) As %Status
{
}

Method %OnConstructClone(object As %RegisteredObject, deep As %Boolean = 0, ByRef cloned As %String) As %Status [ Private, ProcedureBlock = 1 ]
{
}

Method %OnNew(initval As %String = "") As %Status [ Private ]
{
}

Method IOInit() [ Private ]
{
}

Method %OnClose() As %Status [ Private ]
{
}

Method Rewind() As %Status
{
}

Method Flush() As %Status
{
}

/// Return the current size of the data stream.
Method SizeGet() As %Integer [ CodeMode = call ]
{
}

/// Return the current size of the file in bytes.
Method FileBinarySize() As %Integer
{
}

Method IOGetStreamId() As %String [ CodeMode = expression, Private ]
{
}

/// Open a stream given a stream id
Method OpenStream(sid As %String) As %Status
{
}

/// This method lets you connect a file stream to a file called <var>filename</var> without
/// making a copy of it. If the file does not already exist it will still allow you to link
/// to this file, and %IsNull() will return true until you write to this file.
/// <EXAMPLE>
/// Do object.Image.LinkToFile("\temp\image.jpg")
/// Do object.%Save()
/// </EXAMPLE>
/// The method as its name suggests creates a LINK to an EXISTING
/// file. So this is a 'shared public' file, as it can be shared by
/// several instances of a class, or even several classes.
/// Using the <method>CopyFrom</method> method, on the contrary, creates a
/// 'private' image, not sharable by other instances/classes, so
/// these two methods are really different.<p>
/// The problems with shared public images are that several instances
/// are all allowed to update and even delete the image, causing
/// problems for other instances.<p>
/// For example, if dog #2 has image 'test.gif', I can also
/// assign that image to dog #5 or even person #24
/// If I change the image for dog #5, then the image is changed in
/// place to another image, thus upsetting dog#2 and person#24.
/// If I delete dog#5, the image is also deleted and thus dog#2
/// and person#24 are changed.<p>
/// Also note that if there is currently some temporary data in the old stream when the
/// <method>LinkToFile</method> is called this temporary data will be removed before the
/// stream is linked to this filename.
Method LinkToFile(filename As %String) As %Status
{
}

Method %SaveData(ByRef sid As %String) As %Status [ Private, ProcedureBlock = 1 ]
{
}

Method SaveStream() As %Status
{
}

ClassMethod IODeleteStream(sid As %String, concurrency As %Integer = 0) As %Status [ Private ]
{
}

ClassMethod NewFileName(ext As %String = "", directory As %String = "") As %String
{
}

Method Read(ByRef len As %Integer = 32000, ByRef sc As %Status) As %RawString
{
}

Method SetupRead(newMode As %Integer) As %Status [ Private ]
{
}

Method Write(data As %RawString = "") As %Status
{
}

Method MoveToEnd() As %Status
{
}

Method CopyFrom(source As %AbstractStream) As %Status
{
}

Method OutputToDevice(ByRef len As %Integer = -1) As %Status
{
}

Method Clear(permanent As %Boolean = 1) As %Status
{
}

Method LastModifiedGet() As %TimeStamp
{
}

/// Generate a stream OId that links to this <var>file</var>. This can be used by the CSP
/// server to generate an OID that can be embedded in a web page and later
/// used to display this file. The <var>contenttype</var> is an optional parameter to
/// specify the content type of this stream for display with a stream server.
/// If I have a file called 'C:\Test.txt' then I can create a stream linked to this by:
/// <EXAMPLE>
/// Set id=##class(%FileCharacterStream).GetStreamIdForFile("c:\Test.txt")
/// Set stream=##class(%FileCharacterStream).%Open(id)
/// Do stream.OutputToDevice()
/// </EXAMPLE>
ClassMethod GetStreamIdForFile(file As %String, contenttype As %String = "", charset As %String = "") As %String [ CodeMode = generator ]
{
}

Method GetReadOpenParameter(filename As %String, mode As %Integer, ByRef pos As %Integer) As %String [ Private ]
{
}

Method GetWriteOpenParameter(filename As %String, mode As %Integer) As %String [ CodeMode = expression, Private ]
{
}

/// Read a line from the file. Note that besides the normal ReadLine arguments this can also be passed a <var>term</var> which
/// will return the termintor that completed the line if we read in a whole line.
Method ReadLine(ByRef len As %Integer = 32000, ByRef sc As %Status, ByRef eol As %Boolean, ByRef term As %String) As %RawString
{
}

Method ReadLineIntoStream(ByRef sc As %Status) As %AbstractStream
{
}

Method %NormalizeObject() As %Status [ CodeMode = expression ]
{
}

Method %ValidateObject(force As %Integer = 0) As %Status [ CodeMode = expression ]
{
}

ClassMethod %Exists(soid As %ObjectIdentity) As %Boolean
{
}

ClassMethod %ObjectIsNull(soid As %ObjectIdentity) As %Boolean
{
}

}
