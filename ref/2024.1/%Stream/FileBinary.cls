/// <p><b>For information on this class</b>, see
/// <a target="_top" href="/csp/docbook/Doc.View.cls?FIND=CLASSES+%25Stream.FileBinary">Working with Streams</a>.</p>
/// Stream class that stores binary data in files.
/// For example, the following code opens a file binary stream, points it at a particular file
/// on the filesystem, and then reads it in chunks of 32,000 bytes:
/// <example>
/// Set stream=##class(%Stream.FileBinary).%New()
/// Set sc=stream.LinkToFile("c:\myfile.txt")
/// While 'stream.AtEnd {
/// Set line=stream.Read()
/// ; Process the chunk here
/// }
/// </example>
Class %Stream.FileBinary Extends %Stream.Object [ ClientDataType = BINARYSTREAM, OdbcType = LONGVARBINARY, System = 2 ]
{

Parameter STORAGE = "OTHER";

Parameter FILEEXT = "stream";

Parameter OPENREAD = "RUK\RAW\";

Parameter OPENWRITE = "WUNK\RAW\";

Parameter OPENAPPEND = "AWUK\RAW\";

Parameter OPENREADTERM = "RSK\RAW\";

Parameter GZIP = 0;

Method %IsNull() As %Boolean [ CodeMode = expression ]
{
}

/// Hold the filename part of the permanent storage location
Property StoreFile As %String [ Internal, Private, Transient ];

Method IdSet(id As %String) As %Status
{
}

/// If true then when saving this file we need to move it to the default permanent location
Property MakePermLoc As %Boolean [ InitialExpression = 0, Private, Transient ];

/// Note that setting the <property>%Location</property> will cause a few things to happen.
/// It will delete any temporary file that may have been created. It will not touch any
/// permanent file that this object was associated with, if you wish to delete this pre-existing
/// permanent file then call <method>Clear</method> passing '1' as the argument before setting
/// the %Location. It then marks this object as pointing to a null stream in the new directory
/// you specified.
Method %LocationSet(dir As %String) As %Status
{
}

/// The filename that this stream is currently using<p>
/// If you set this property to update the file we will write to/read from
/// this operation can fail if for example the directory specified does not exist.
/// To detect this failure either check the %Status return code of the <method>FilenameSet</method>
/// or if using 'Set stream.Filename=newname' then check %objlasterror after the call to see if it
/// reported an error.
Property Filename As %String(MAXLEN = 5000) [ Calculated ];

Method FilenameSet(file As %String) As %Status [ CodeMode = call ]
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

Property Mode As %Integer [ InitialExpression = 0, Private ];

/// Normalized form of the directory. This is used for access to the file (as it adds the
/// extra '/' if needed), but it stores the <Property>%Location</Property> in the Id as
/// this may be a relative path.
Property NormalizedDirectory As %String(MAXLEN = 5000) [ Private ];

/// Name of file (without directory) containing temporary stream.
Property TempFile As %String(MAXLEN = 5000) [ Private, Transient ];

/// Full path name of currently opened file. Equal to "" if no file is open.
Property CurrFile As %String(MAXLEN = 5000) [ Private, Transient ];

/// If true then remove the permanent file as well as any temp file when this object is closed.
/// If you call %Save on a stream where RemoveOnClose is true it will set this to false as if you
/// explicitly save the stream you no longer want it to be removed when the object is closed. In order
/// to make sure %Save always runs the logic to reset the flag setting this to true
/// causes %IsModified/%ObjectModified to return true.
Property RemoveOnClose As %Boolean [ InitialExpression = 0, Transient ];

/// Mode the device is opened in, either with terminators as delimitors or not.
Property ReadMode As %Integer [ InitialExpression = {$$$modeREADNORMAL}, Private, Transient ];

/// While reading this holds the file size
Property ReadSize As %Integer [ Transient ];

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

/// Return the default directory to use for streams if none specified
ClassMethod DefaultStreamDir(skip As %Boolean = 0) As %String
{
}

Method %LoadData(id As %String) As %Status [ Private ]
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
Method SizeGet() As %Integer [ CodeMode = expression ]
{
}

/// Return the current size of the file in bytes.
Method FileBinarySize() As %Integer
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

Method %SaveData(ByRef sid As %String) As %Status [ Private ]
{
}

ClassMethod %DeleteData(streamvalue As %String, concurrency As %Integer) As %Status [ Private ]
{
}

ClassMethod NewFileName(ext As %String = "", directory As %String = "") As %String
{
}

Method Read(ByRef len As %Integer = 32000, ByRef sc As %Status) As %RawString
{
}

/// Move to this <var>position</var> in the stream. If this suceeds then return
/// true, else return false.
/// Note that moving to position 1 will be at the start of the stream, position 2 will be
/// at the second character of the stream, etc.
Method MoveTo(position As %Integer) As %Boolean
{
}

Method SetupRead(newMode As %Integer, pos As %Integer = 0) As %Status [ Private ]
{
}

Method Write(data As %RawString = "") As %Status
{
}

/// Appends the string <var>data</var> along with a line terminator to the stream and advances the
/// current stream position by the number of characters in <var>data</var> plus the line terminator.
///
/// <p>Returns a <CLASS>%Status</CLASS> value indicating success or failure.
Method WriteLine(data As %RawString = "") As %Status
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

Method OpenDevice(filename As %String, mode As %Integer, nocheck As %Boolean = 0) As %Status [ Private ]
{
}

Method GetWriteOpenParameter(filename As %String, mode As %Integer) As %String [ CodeMode = expression, Private ]
{
}

/// Read a line from the file. Note that besides the normal ReadLine arguments this can also be passed a <var>term</var> which
/// will return the terminator that completed the line if we read in a whole line.
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

Method %ObjectModified() As %Integer [ ServerOnly = 1 ]
{
}

Method %IsModified() As %Integer
{
}

ClassMethod %ObjectIsNull(soid As %ObjectIdentity) As %Boolean
{
}

}
