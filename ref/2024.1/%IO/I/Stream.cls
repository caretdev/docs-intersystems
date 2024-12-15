/// Abstract base class of all streams
/// The methods of this class work for both Byte and Character streams
Class %IO.I.Stream Extends %RegisteredObject [ Abstract, System = 2 ]
{

Property IsOpen As %Boolean [ InitialExpression = 0, ReadOnly ];

Property Name As %String(MAXLEN = 500, TRUNCATE = 1);

/// InputStream interface
///
/// Does this class flush after writes by default?
Property DefaultFlushOnWrite As %Boolean [ Calculated, ReadOnly ];

Method DefaultFlushOnWriteGet() [ CodeMode = expression ]
{
}

Property AtEnd As %Boolean [ InitialExpression = 1, ReadOnly ];

Property IsCharacter As %Boolean [ Calculated, ReadOnly ];

/// Read until pMaxReadLen chars are gotten or pTimeout expires
/// On return, if pTimeout is unchanged it means the full timeout period expired. If the timeout period expired and the returned string is shorter than pMaxReadLen, then AtEnd will be 1.
Method Read(pMaxReadLen As %Integer = {$$$MaxLocalLength}, ByRef pTimeout As %Numeric = -1, Output pSC As %Status) As %String [ Abstract ]
{
}

/// Write pData to the stream buffer. If pFlush is True, ensure that the data are actually sent to the stream.
Method Write(pData As %String, pFlush As %Boolean, Output pSC As %Status) [ Abstract ]
{
}

/// Ensure that any data already written to the stream buffer are actually sent to the stream.
Method Flush(Output pSC As %Status)
{
}

/// Copy all available data from pSource to the current stream buffer. If pFlush is True, ensure that all data are actually sent to the stream.
Method CopyFrom(pSource As %IO.I.Stream, ByRef pTimeout As %Numeric = -1, pFlush As %Boolean = {..DefaultFlushOnWrite}, Output pSC As %Status) As %Integer
{
}

/// Copy all available data from the current stream to the current system device.
Method OutputToDevice(pLength As %Integer = -1, ByRef pTimeout As %Numeric = -1, Output pSC As %Status) As %Integer
{
}

Method InputFromDevice(ByRef pTotal As %Integer = 0, ByRef pTimeout As %Integer = -1, ByRef pIdleTimeout As %Integer = 20, Output pStatus As %Status) As %Integer
{
}

ClassMethod delegateRead(s As %RegisteredObject, ByRef pMaxReadLen As %Integer, ByRef pTimeout As %Numeric, Output pSC As %Status) [ Internal, Private ]
{
}

/// Close the current stream
Method Close(Output pSC As %Status) As %Boolean
{
}

Method %OnClose() As %Status [ Internal, Private ]
{
}

Method IsCharacterGet() As %Boolean [ CodeMode = expression, Internal ]
{
}

/// Read until one of the Target strings is found or a timeout occurs.<p>
/// Return any data read until pTimeout seconds have elapsed, or until pIdleTimeout seconds elapse with no further data read, or up until any of the optional pTarget strings is encountered.<p>
/// If pTarget strings are provided the pWhich output argument will contain an integer indicating which of them was matched. A value of 0 in pWhich indicates that none was matched and therefore the timeout expired or an error occurred.<p>
/// Setting pInsensitive=1 means the pTarget strings will match data received in a case-insensitive way against the pTargets strings.<p>
/// If pPrevBuf is provided, it is prepended to any data read, and is included in the attempt to find a matching target string.
Method ReadUntil(pMaxReadLen As %Integer, ByRef pTimeout As %Numeric, pIdleTimeout As %Numeric, pPrevBuf As %String, pInsensitive As %Boolean, Output pWhich As %Integer, Output pSC As %Status, pTarget...) As %String
{
}

/// Read until one of the Target strings is found or a timeout occurs.<p>
/// Return any data read until pTimeout seconds have elapsed, or until pIdleTimeout seconds elapse with no further data read, or up until any of the optional pTargets strings is encountered.<p>
/// If pTargets strings are provided the pWhich output argument will contain an integer indicating which of them was matched. A value of 0 in pWhich indicates that none was matched and therefore the timeout expired or an error occurred.<p>
/// Setting pInsensitive=1 means the pTarget strings will match data received in a case-insensitive way against the pTargets strings.<p>
/// If pPrevBuf is provided, it is prepended to any data read, and is included in the attempt to find a matching target string.
Method ReadUntilArray(pMaxReadLen As %Integer, ByRef pTimeout As %Numeric = -1, pIdleTimeout As %Numeric = 5, pPrevBuf As %String = "", pInsensitive As %Boolean = 0, Output pWhich As %Integer, Output pSC As %Status, ByRef pTargets) As %String
{
}

/// Replace from the current stream the strings contained in a list of alternating search and replace target string arguments.
/// Accepts a destination stream <var>pDest</var> into which the modified result will be written. If not supplied, <var>pDest</var> will be returned containing a newly created GlobalCharacter stream.
/// Reads until a maximum number of characters <var>pMaxReadLen</var> has been read or until a timeout <var>pTimeout</var> has occurred, or until <var>pIdleTimeout</var> seconds have elapsed with no further data read.<p>
/// Setting <var>pInsensitive</var>=1 means the search strings will match in a case-insensitive way.<p>
/// If <var>pPrevBuf</var> is provided, it is prepended to any data read, and is included in the attempt to find matching search strings.
/// Replaces from left to right and does not repeat and recurse. This means that once a substring is replaced the replacement result will not be searched or replaced again.
/// Returns the total count of characters written to the destination stream
/// If <var>pRewind</var> contains i the input stream will be rewound before copying
/// If <var>pRewind</var> contains I the input stream will be rewound after copying
/// If <var>pRewind</var> contains o the output stream will be rewound before copying
/// If <var>pRewind</var> contains O the output stream will be rewound after copying
/// If <var>pRewind</var> is 1 both streams will be rewound before and after copying. This is the default.
/// If <var>pRewind</var> is empty or zero neither stream will be rewound before or after copying
Method CopyReplace(pDest As %IO.I.Stream, pMaxReadLen As %Integer, ByRef pTimeout As %Numeric, pIdleTimeout As %Numeric, pPrevBuf As %String, pFlush As %Boolean, pInsensitive As %Boolean, pRewind As %String, Output pSC As %Status, pSearchReplace...) As %Integer
{
}

/// Replace from the current stream the strings contained in an array of alternating search and replace target string values called pSearchReplace.
/// Accepts a destination stream <var>pDest</var> into which the modified result will be written. If not supplied, <var>pDest</var> will be returned containing a newly created GlobalCharacter stream.
/// Reads until a maximum number of characters <var>pMaxReadLen</var> has been read or until a timeout <var>pTimeout</var> has occurred, or until <var>pIdleTimeout</var> seconds have elapsed with no further data read.<p>
/// Setting <var>pInsensitive</var>=1 means the search strings will match in a case-insensitive way.<p>
/// If <var>pPrevBuf</var> is provided, it is prepended to any data read, and is included in the attempt to find matching search strings.
/// Replaces from left to right and does not repeat and recurse. This means that once a substring is replaced the replacement result will not be searched or replaced again.
/// Returns the total count of characters written to the destination stream
Method CopyReplaceArray(pDest As %IO.I.Stream, pMaxReadLen As %Integer = -1, ByRef pTimeout As %Numeric = -1, pIdleTimeout As %Numeric = 5, pPrevBuf As %String = "", pFlush As %Boolean = {..DefaultFlushOnWrite}, pInsensitive As %Boolean = 0, pRewind As %String = 1, Output pSC As %Status, ByRef pSearchReplace = 0) As %Integer
{
}

}
