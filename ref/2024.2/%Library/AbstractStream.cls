/// Deprecated class, the base stream class is <class>%Stream.Object</class>. This is kept for legacy reasons.
/// <p>A stream represents an arbitrary array of characters (or bytes) and
/// a current position. The basic stream interface provides the ability to
/// read data from a stream, write data to the stream, and rewind the
/// current position to the beginning of the stream.
///
/// <p>Within InterSystems IRIS streams are used to create large (greater than 32K)
/// object attributes.
Class %Library.AbstractStream Extends %Stream.Object [ Abstract, ClientDataType = CHARACTERSTREAM, MemberSuper = %Compiler.Type.StreamLegacy, System = 2 ]
{

/// The maximum number of characters (or bytes) allowed in a stream.
Parameter MAXLEN = 2147483647;

/// Turns off property validation.
Parameter PROPERTYVALIDATION As INTEGER [ Constraint = "0,1,2", Flags = ENUM ] = 0;

Parameter MAXLOCALSIZE = 32000;

Parameter READNODATA [ Final ] = 0;

Parameter READNOTCHANGED [ Final ] = 1;

Parameter READCHANGED [ Final ] = 2;

Parameter WRITE [ Final ] = 3;

/// An array of strings containing any attribute values associated with this stream.
Property Attributes As %String [ MultiDimensional ];

Property Mode As %Integer [ InitialExpression = 0, Private ];

/// Retrieves the named attribute value
Method GetAttribute(name As %String, default As %String = "") As %String [ CodeMode = expression, Final ]
{
}

/// Inserts an attribute variable by name into the collection
Method SetAttribute(name As %String, value As %String) [ Final ]
{
}

/// Returns true if the named attribute variable exists in the collection, false otherwise
Method IsDefinedAttribute(name As %String) As %Boolean [ CodeMode = expression, Final ]
{
}

/// Retrieves the next attribute variable name in the sequence, skip any '%' names
Method NextAttribute(name As %String) As %String [ Final ]
{
}

/// Removes this attribute variable from the collection. Returns true is it existed and false if it
/// did not exist.
Method DeleteAttribute(name As %String) As %Boolean [ Final ]
{
}

Method GetAttributeList() As %String
{
}

Method SetAttributeList(attr As %String)
{
}

/// Copies the contents of <i>source</i> into this Stream.
/// <p>For example, you can copy <var>oldstream</var> into a new stream:
/// <EXAMPLE>
/// Set newstream=##class(%GlobalCharacterStream).%New()
/// Do newstream.CopyFrom(oldstream)
/// </EXAMPLE>
///
/// <p>Returns a <CLASS>%Status</CLASS> value indicating success or failure.
Method CopyFrom(source As %Stream.Object) As %Status
{
}

/// Perform any initialization required by the StreamAdaptor.
/// This is called by the containing stream's <b>%OnNew</b> method.
Method IOOnNew(initval As %String = "") As %Status [ Private ]
{
}

/// Initialize member variable used by the StreamAdaptor. This
/// This is called when the containing stream is opened via <b>%SetSerial</b>.
Method IOInit() [ Private ]
{
}

/// Perform any clean up required by the StreamAdaptor.
/// This is called by the containing stream's <b>%OnClose</b> method.
Method IOOnClose() As %Status [ Private ]
{
}

Method IORewind() As %Status [ Private ]
{
}

Method IOFlush() As %Status [ Private ]
{
}

/// Return the current size of the data stream.
Method IOGetSize() As %Integer [ Private ]
{
}

/// Return the <i>id</i> for a stream; that is, an identifier that can later be used
/// to open the same stream.
Method IOGetStreamId() As %String [ Private ]
{
}

/// Open the stream identified by <var>sid</var>.
Method IOOpenStream(sid As %String) As %Status [ Private ]
{
}

/// Write the stream to storage.
Method IOSaveStream() As %Status [ Private ]
{
}

/// Delete the storage for the stream identified by <var>sid</var>.
ClassMethod IODeleteStream(sid As %String, concurrency As %Integer = 0) As %Status [ Private ]
{
}

/// Reads up to <var>len</var> characters from the current position
/// in the stream. The current position is advanced by the number of
/// characers read. Upon exit, <var>len</var> is set to the actual
/// number of characters read. If a read occurs when the stream position
/// is at the end of the stream, <var>len</var> will be set to 0 and
/// <METHOD>IOReadData</METHOD> will return a null string ("").
///
/// <p>Returns a string up to <var>len</var> characters long.
Method IOReadData(ByRef len As %Integer, ByRef sc As %Status) As %String [ Private ]
{
}

/// Writes <var>data</var> to the stream at the current location.
Method IOWriteData(data As %String) As %Status [ Private ]
{
}

/// Move to the end of the stream and set ourselves to #WRITE mode so the
/// next <METHOD>IOWriteData</METHOD> will append data to the stream.
Method IOMoveToEnd() As %Status [ Private ]
{
}

Method %Load(sid As %String) As %Status [ CodeMode = call, Private ]
{
}

ClassMethod %DeleteData(soid As %String, concurrency As %Integer) As %Status [ CodeMode = call, Private ]
{
}

Method %SaveData(ByRef sid As %String) As %Status [ Private ]
{
}

Method %OnNew(initval As %String = "") As %Status [ CodeMode = call, Private ]
{
}

Method %OnClose() As %Status [ CodeMode = call, Private ]
{
}

Method Rewind() As %Status [ CodeMode = call ]
{
}

Method Flush() As %Status [ CodeMode = call ]
{
}

/// Returns an full id value (including class name) with which the Stream implementation has stored
/// the stream.
Method GetStreamId() As %String
{
}

Method OpenStream(sid As %String) As %Status [ CodeMode = call ]
{
}

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

/// Deprecated method, use <method>%Save</method> instead.
/// Saves the temporary copy of the stream data to a persistent location. Note that
/// any locking or transaction handling must be done by the caller.
///
/// <p>Returns a <CLASS>%Status</CLASS> value indicating success or failure.
Method SaveStream() As %Status [ CodeMode = call ]
{
}

/// Deprecated method, use <method>%Delete</method> instead.
/// Deletes the stored stream identified by <var>oid</var>. This will not remove the stream attributes of any
/// saved streams, it will just remove the stream data. If you need to clear the attributes as well you will
/// have to call <METHOD>Clear</METHOD> on the stream object.
ClassMethod DeleteStream(oid As %ObjectIdentity, concurrency As %Integer = 0) As %Status [ CodeMode = generator ]
{
}

Method %GetSerial(force As %Integer = 0) As %String [ CodeMode = call, Private ]
{
}

Method %SetSerial(serialized As %String) As %Status [ CodeMode = call, Private ]
{
}

/// Returns the persistent object Id, if there is one, of this object.
/// <p>Returns a null string if there is no object Id.
Method %Id() As %String
{
}

Method %LoadData(serialized As %String) As %Status [ Private ]
{
}

Method SizeGet() As %Integer [ CodeMode = call ]
{
}

/// Type of line terminator we use for this stream, defaults to Cr/Lf. Maximum length is 10 characters.
/// This is stored as an attribute of the stream called 'LineTerminator'.
Property LineTerminator As %String(MAXLEN = 10) [ InitialExpression = {$char(13,10)} ];

Method LineTerminatorSet(terminator As %String) As %Status
{
}

Method Read(ByRef len As %Integer = 32656, ByRef sc As %Status) As %RawString [ CodeMode = call ]
{
}

Method ReadLine(ByRef len As %Integer = 32000, ByRef sc As %Status, ByRef eol As %Boolean) As %RawString
{
}

/// This reads from the stream until it find the <property>LineTerminator</property> and returns
/// this as a stream. If the stream does not contain the line terminator this can potentially be the
/// entire stream.
Method ReadLineIntoStream() As %AbstractStream
{
}

Method Write(data As %RawString = "") As %Status [ CodeMode = call ]
{
}

/// Appends the string <var>data</var> along with a line terminator to the stream and advances the
/// current stream position by the number of characters in <var>data</var> plus the line terminator.
///
/// <p>Returns a <CLASS>%Status</CLASS> value indicating success or failure.
Method WriteLine(data As %RawString = "") As %Status
{
}

Method MoveToEnd() As %Status [ CodeMode = call ]
{
}

Method %IsModified() As %Integer
{
}

Method %ObjectModified() As %Integer
{
}

}
