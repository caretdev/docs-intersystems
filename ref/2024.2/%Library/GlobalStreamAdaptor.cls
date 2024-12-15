/// Stream adaptor for streams that store data in global nodes. Not to be used directly.
Class %Library.GlobalStreamAdaptor Extends %AbstractStream [ Abstract, System = 2 ]
{

Parameter STORAGE = "GLOBAL";

/// Number of characters that we are storing in each global node
Parameter BUFFERLEN = 163280;

/// Default location: can be overridden at run-time
Parameter STOREGLOBALNAME = "^CacheStream";

/// Root is Global Location (name and top subscripts)
Property StoreRoot As %String(MAXLEN = 5000) [ InitialExpression = {..#STOREGLOBALNAME}, Private ];

Property rollback As %String [ MultiDimensional, Private ];

Method %LocationSet(value As %String) As %Status
{
}

Method %LocationGet() As %String [ CodeMode = expression ]
{
}

Property StoreNode As %String(MAXLEN = 5000) [ Private ];

Property TempNode As %String(MAXLEN = 5000) [ Private ];

/// Maximum subscript in data we are reading
Property MaxNodeNo As %Integer [ InitialExpression = 0, Private, Transient ];

/// The current node we are reading from.
Property NodeNo As %String(MAXLEN = 5000) [ InitialExpression = 0, Private ];

/// StoreGlvn is actual location where data is stored: StoreRoot + StoreNode
Property StoreGlvn As %String(MAXLEN = 5000) [ Calculated, Private ];

Method StoreGlvnGet() As %String [ CodeMode = expression, Private ]
{
}

/// TempGlvn is actual temp location: TEMPGLOBALNAME + TempNode
Property TempGlvn As %String(MAXLEN = 5000) [ Calculated, Private ];

Method TempGlvnGet() As %String [ CodeMode = expression, Private ]
{
}

Property Buffer As %Binary(MAXLEN = "") [ Private ];

Property Position As %Integer [ InitialExpression = 1, Private ];

Property IOSize As %Integer [ InitialExpression = 0, Private ];

Property %LastModified As %String [ Private, Transient ];

Method %OnNew(initval As %String = "") As %Status [ Private ]
{
}

Method IOInit() [ Private ]
{
}

Method %OnClose() As %Status [ Private ]
{
}

/// Returns the global reference used to lock the current stream object
/// Throws %Exception.AbstractException
ClassMethod %GetLockReference(pLocation As %String(MAXLEN="") = "", pId As %String(MAXLEN="") = "") As %String(MAXLEN="") [ Private ]
{
}

/// %LockStream()
/// 	Obtain a shared lock on the current stream object. The return value is 1 if
/// 		the stream was already locked or if it was successfully locked. If the stream
/// 		cannot be locked the return value is 0.
/// 		This version of %LockStream differs from %Stream.Object only in the arguments passed
/// 		to %GetLockReference.
Method %LockStream() [ ProcedureBlock = 1, ServerOnly = 1 ]
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

Method IOGetStreamId() As %String [ CodeMode = expression, Private ]
{
}

Method OpenStream(sid As %String) As %Status
{
}

Method %OnConstructClone(object As %RegisteredObject, deep As %Boolean = 0, ByRef cloned As %String) As %Status [ Private, ProcedureBlock = 1 ]
{
}

Method %OnRollBack() As %Status [ Private ]
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

Method Read(ByRef len As %Integer, ByRef sc As %Status) As %RawString
{
}

Method Write(data As %RawString = "") As %Status
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

Method WriteBuffer() As %Status [ Private ]
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

Method LastModifiedGet() As %TimeStamp [ CodeMode = expression ]
{
}

Method ReadLine(ByRef len As %Integer = 32656, ByRef sc As %Status, ByRef eol As %Boolean) As %RawString
{
}

/// This reads from the stream until it find the <property>LineTerminator</property> and returns
/// this as a stream. If the stream does not contain the line terminator this can potentially be the
/// entire stream.
Method ReadLineIntoStream() As %AbstractStream
{
}

/// Given a stream id this returns the root global node where this stream is stored
ClassMethod GlobalFromSid(sid As %String) As %String
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

/// Return true if this stream oid is a null stream and false if the stream is not null
ClassMethod %ObjectIsNull(soid As %ObjectIdentity) As %Boolean
{
}

/// Return true if this stream oid is a null stream and false if the stream is not null
ClassMethod StreamOIDIsNull(soid As %ObjectIdentity) As %Boolean [ CodeMode = call ]
{
}

/// Return the size of the stream pointed to by soid
ClassMethod %ObjectSizeInternal(soid As %ObjectIdentity) As %Integer [ Private ]
{
}

ClassMethod %LOBPrefetchInternal(soid As %ObjectIdentity, prefetchsize As %Integer, ByRef data As %String) As %Integer [ Private ]
{
}

}
