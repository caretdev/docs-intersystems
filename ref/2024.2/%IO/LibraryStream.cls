/// Adapts %IO stream classes to provide a legacy %Library.AbstractStream interface
Class %IO.LibraryStream Extends %Library.AbstractStream [ ClassType = "", System = 2 ]
{

/// The %IO.I.Stream that we are wrapping
Property IOStream As %IO.I.Stream;

Property AtEnd As %Boolean;

Method %OnNew(initvalue As %String) As %Status [ Private ]
{
}

Method AtEndGet() As %Boolean [ CodeMode = expression ]
{
}

Property Size As %Integer [ Calculated ];

Method SizeGet() As %Integer [ CodeMode = expression ]
{
}

Property LastModified As %TimeStamp [ Calculated, ReadOnly ];

Method LastModifiedGet() As %TimeStamp [ CodeMode = expression ]
{
}

Property LineTerminator As %String(MAXLEN = 10);

Method LineTerminatorGet() As %String [ CodeMode = expression ]
{
}

Method LineTerminatorSet(terminator As %String) As %Status
{
}

Method Rewind() As %Status
{
}

Method Flush() As %Status
{
}

Method Read(ByRef len As %Integer = 32000, ByRef sc As %Status) As %RawString
{
}

Method ReadLine(ByRef len As %Integer = 32000, ByRef sc As %Status, ByRef eol As %Boolean) As %RawString
{
}

Method ReadLineIntoStream(ByRef sc As %Status) As %Library.AbstractStream
{
}

Method Write(data As %RawString) As %Status
{
}

/// Appends the string <var>data</var> along with a line terminator to the stream and advances the
/// current stream position by the number of characters in <var>data</var> plus the line terminator.
///
/// <p>Returns a <CLASS>%Status</CLASS> value indicating success or failure.
Method WriteLine(data As %RawString = "") As %Status
{
}

/// Copy the contents of the given source %IO, %Library or %Stream stream to the wrappered %IO stream
Method CopyFrom(source As %Stream.Object) As %Status
{
}

Method Clear() As %Status
{
}

Method MoveToEnd() As %Status
{
}

Method MoveTo(position As %Integer) As %Boolean
{
}

/// Find the first occurrence of <var>target</var> in the stream starting the
/// search at <var>position</var>. It returns the position at this match starting
/// at the beginning of the stream. If it does not find the target string then
/// return -1. If <var>position</var>=-1 then start searching from the current
/// location and just return the offset from the last search, useful for searching
/// through the entire file. If you are doing this you should pass in <var>tmpstr</var>
/// by reference in every call which is used as a temporary location to store information
/// being read so the next call will start where the last one left off.
Method FindAt(position As %Integer, target As %RawString, ByRef tmpstr As %RawString) As %Integer
{
}

/// Write out <var>len</var> characters of the stream to the current device starting from the current position. This
/// method is optimised for performance by the various sub classes. If <var>len</var> is omitted or set to -1 then
/// it will write out the entire stream starting at the beginning.
Method OutputToDevice(ByRef len As %Integer = -1) As %Status
{
}

/// Input <var>len</var> characters from the current device into the stream. This is equivalent to doing a series of
/// reads and calling <METHOD>Write</METHOD> for each of them but it may be optimised by the subclasses. On return
/// <var>len</var> will be the number of characters still to read in (if no timeout has occured this should be 0).
Method InputFromDevice(ByRef len As %Integer = 0, timeout As %Integer = 20) As %Status
{
}

/// Output the stream to the current device starting at <var>position</var> of length
/// <var>length</var>. The length if passed by reference returns the number of characters
/// output.
Method OutputToDeviceAt(position As %Integer, ByRef length As %Integer) As %Status
{
}

Method CopyFromAndSave(source As %Stream.Object) As %Status
{
}

}
