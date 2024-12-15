/// Aggregation holder class for methods implemented in Seekable Character stream classes
/// Seekable Character stream classes are seekable by character position as well as by raw byte position
Class %IO.IParts.CharacterSeekableIO Extends %IO.IParts.SeekableIO [ Abstract, System = 2 ]
{

Property ExternalBytePosition As %Integer [ InitialExpression = 0, ReadOnly ];

Property ExternalByteSize As %Integer [ Calculated, ReadOnly ];

Method ExternalByteSizeGet() As %Integer [ Abstract ]
{
}

Method ExternalByteSeek(pBytePos As %Integer, Output pSC As %Status) As %Boolean [ Abstract ]
{
}

Method ExternalByteTruncateAt(pBytePos As %Integer, Output pSC As %Status) As %Boolean
{
}

Method Clear(Output pSC As %Status) As %Boolean
{
}

Method Find(pMatch As %String, pPosition As %Integer = 1, pEndPosition As %Integer = -1, Output pSC As %Status, pReadLines As %Boolean = 0) As %Integer
{
}

}
