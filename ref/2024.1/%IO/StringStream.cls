/// A stream class that uses a String for its storage. The underlying String may be in any supported encoding;
/// Set the CharEncoding property to control the interpretation of the string. Note that on Unicode systems it
/// is possible to use a string containing wide-character values. In this case the results of any encoding other than 'Native' are undefined.
Class %IO.StringStream Extends %IO.I.CharacterSeekableStream [ System = 2 ]
{

/// Names the character encoding used to encode this character stream in its storage or transport format
/// A value of "Native" in this property means the stream is encoded in the native format for the local installation, with no translation done.
/// Values of "RawBytes" or "Binary" mean that each character is represented by the corresponding byte in the external storage or transport format.
/// (This property is overridden from %IO.IParts.ByteIO but has a different meaning in this character IO context.)
Property CharEncoding As %String(TRUNCATE = 1) [ InitialExpression = "Native" ];

/// cached value of the encoding translation table derived from CharEncoding
Property %TranslationTable As %String(TRUNCATE = 1) [ ReadOnly ];

/// Underlying encoded string data
Property Data As %String(TRUNCATE = 1) [ ReadOnly ];

/// Map of byte positions to character positions
Property charposmap [ MultiDimensional, Private ];

Method CharEncodingSet(pCharEncoding As %String) As %Status
{
}

Method %OnNew(initvalue As %String) As %Status [ Private, ProcedureBlock = 1 ]
{
}

Method Write(pData As %String = "", pFlush As %Boolean, Output pSC As %Status)
{
}

Method Read(pMaxReadLen As %Integer, ByRef pTimeout As %Numeric, Output pSC As %Status) As %String
{
}

Method ReadLine(pMaxReadLen As %Integer, ByRef pTimeout As %Numeric, Output pSC As %Status, ByRef pLineTerminator As %String = {..LineTerminator}) As %String
{
}

Method ExternalByteSizeGet() As %Integer [ CodeMode = expression ]
{
}

/// Return the current character size of the data stream.
Method SizeGet() As %Integer
{
}

Method ExternalByteSeek(pBytePos As %Integer, Output pSC As %Status) As %Boolean
{
}

Method Seek(pPosition As %Integer = 1, Output pSC As %Status) As %Boolean
{
}

Method ExternalByteTruncateAt(pBytePos As %Integer, Output pSC As %Status) As %Boolean
{
}

Method TruncateAt(pPosition As %Integer, Output pSC As %Status) As %Boolean
{
}

/// Override so as not to call Close()
Method %OnClose() As %Status [ Internal, Private ]
{
}

}
