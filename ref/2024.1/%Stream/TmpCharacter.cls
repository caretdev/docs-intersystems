/// <p><b>For information on this class</b>, see
/// <a target="_top" href="/csp/docbook/Doc.View.cls?FIND=CLASSES+%25Stream.TmpCharacter">Working with Streams</a>.</p>
/// Temporary character stream. Any calls to save this just return without doing any work.
Class %Stream.TmpCharacter Extends %Stream.Object [ ClientDataType = CHARACTERSTREAM, OdbcType = LONGVARCHAR, System = 2 ]
{

Property Mode As %Integer [ InitialExpression = 0, Private ];

/// Number of characters that we are storing in each global node
Parameter BUFFERLEN = 163280;

/// Where we write the temp data to
Property TempGbl As %String [ Private, Transient ];

/// Maximum subscript in data we are reading
Property MaxNodeNo As %Integer [ InitialExpression = 0, Private, Transient ];

/// The current node we are reading from
Property NodeNo As %String(MAXLEN = 5000) [ InitialExpression = 0, Private, Transient ];

/// Buffer we are currently using read from stream global
Property Buffer As %Binary(MAXLEN = "") [ Private, Transient ];

/// Internal - used for sharded streams
Property shardid As %String [ Internal, Private ];

Property rollback As %String [ MultiDimensional, Private ];

/// Where we are currently in the <property>Buffer</property>
Property Position As %Integer [ InitialExpression = 1, Private, Transient ];

/// Internal size of stream
Property IOSize As %Integer [ InitialExpression = 0, Private ];

/// Internal flag to determine if the steam data is compressed
Property Compress As %Integer [ InitialExpression = {..#COMPRESS}, Private, Transient ];

/// Compress behavior of this class.<br>
/// <br><ul>
/// <li>-1 - Do not compress streams, write old stream header format</li>
/// <li>0  - Do not compress new streams</li>
/// <li>1  - Compress new streams</li>
/// <li>2  - Always compress</li>
/// </ul>
Parameter COMPRESS = 0;

/// Type of line terminator we use for this stream, defaults to Cr/Lf. Maximum length is 10 characters.
Property LineTerminator As %String(MAXLEN = 10) [ InitialExpression = {$char(13,10)}, Transient ];

/// If true then remove the permanent global as well as any temp global when this object is closed
/// If you call %Save on a stream where RemoveOnClose is true it will set this to false as if you
/// explicitly save the stream you no longer want it to be removed when the object is closed. In order
/// to make sure %Save always runs the logic to reset the flag setting this to true
/// causes %IsModified/%ObjectModified to return true.
Property RemoveOnClose As %Boolean [ InitialExpression = 0, Transient ];

Method %NormalizeObject() As %Status [ CodeMode = expression ]
{
}

Method %ValidateObject(force As %Integer = 0) As %Status [ CodeMode = expression ]
{
}

Property mLastModified As %String [ Private, Transient ];

/// Returns true if this is a "NULL" stream; that is, a stream which has never
/// been written to and saved. This is used by the InterSystems IRIS ODBC server.
Method IsNull() As %Boolean [ CodeMode = call ]
{
}

/// Returns true if this is a "NULL" stream; that is, a stream which has never
/// been written to and saved. This is used by the InterSystems IRIS ODBC server.
Method %IsNull() As %Boolean [ CodeMode = expression ]
{
}

Method LastModifiedGet() As %TimeStamp [ CodeMode = expression, Final ]
{
}

Method %OnNew(initval As %String = "") As %Status [ Private ]
{
}

Method %OnClose() As %Status [ Private ]
{
}

Method %LoadData(id As %String) As %Status [ Private ]
{
}

Method %OnRollBack() As %Status [ Private ]
{
}

Method %SaveData(ByRef sid As %String) As %Status [ Private ]
{
}

ClassMethod %DeleteData(streamvalue As %String, concurrency As %Integer) As %Status [ Private ]
{
}

/// Returns the global reference used to lock the current stream object
/// Throws %Exception.AbstractException
ClassMethod %GetLockReference(pLocation As %String(MAXLEN="") = "", pId As %String(MAXLEN="") = "") As %String(MAXLEN="") [ Private ]
{
}

Method %OnConstructClone(object As %RegisteredObject, deep As %Boolean = 0, ByRef cloned As %String) As %Status [ Private ]
{
}

Method Read(ByRef len As %Integer, ByRef sc As %Status) As %RawString
{
}

Method ReadLine(ByRef len As %Integer = 32000, ByRef sc As %Status, ByRef eol As %Boolean) As %RawString
{
}

/// This reads from the stream until it find the <property>LineTerminator</property> and returns
/// this as a stream. If the stream does not contain the line terminator this can potentially be the
/// entire stream.
Method ReadLineIntoStream(ByRef sc As %Status) As %Stream.Object
{
}

Method Write(data As %RawString = "") As %Status
{
}

/// Setup the TempGbl location of where we will write the temp stream to
Method SetupTmpGbl() [ Private ]
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

/// Check if we are at the end of the global, but do not read the next buffer
Method CheckAtEnd() [ Private ]
{
}

/// Reads the next node into Buffer.
/// <p>Returns 0 if there is no more data.
Method ReadIntoBuffer() As %Boolean [ Private ]
{
}

Method CopyFrom(source As %Stream.Object) As %Status
{
}

Method OutputToDevice(ByRef len As %Integer = -1) As %Status
{
}

Method Clear(permanent As %Boolean = 1) As %Status
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

/// Callback for searchable stream
Method BuildValueArray(ByRef subvalue As %String) As %Status [ Private ]
{
}

ClassMethod %ObjectIsNull(soid As %ObjectIdentity) As %Boolean
{
}

/// Return true if this i%Buffer/data looks like it is not compressible.
/// Check for small buffer, known prefixes of compressed data and check a small segment of the buffer for compressibility
Method NotCompressible(data As %String) As %Boolean [ Internal, Private ]
{
}

}
