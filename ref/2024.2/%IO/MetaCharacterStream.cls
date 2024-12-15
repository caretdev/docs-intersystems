/// Provides a %IO seekable stream wrapper for one or more %IO streams, %Library streams or %Stream streams. It can use different streams for input/Read and output/Write, and
/// it can write a copy of input stream data to one or more additional output streams.
Class %IO.MetaCharacterStream Extends (%IO.I.CharacterSeekableStream, %IO.IParts.MetaIO) [ Inheritance = right, System = 2 ]
{

/// Buffer to hold leftover line data when reading GlobalStream line where LineTerminator is a superset string
Property %GlobalLineExtra As %String [ Internal ];

Method %OnNew(pBaseStream As %IO.I.Stream = "") As %Status
{
}

Method ReadLine(pMaxReadLen As %Integer, ByRef pTimeout As %Numeric = -1, Output pSC As %Status, ByRef pLineTerminator As %String = {..LineTerminator}) As %String
{
}

Method AtEndGet() As %Boolean [ CodeMode = expression ]
{
}

Method BindInput(pInputStream As %IO.I.Stream, Output pSC As %Status)
{
}

ClassMethod delegateRead(s As %RegisteredObject, ByRef pMaxReadLen As %Integer, ByRef pTimeout As %Numeric, Output pSC As %Status) [ Private ]
{
}

Method delegateWrite(s As %RegisteredObject, pData As %String, ByRef pFlush As %Boolean, Output pSC As %Status) [ Private ]
{
}

Method Seek(pPosition As %Integer, Output pSC As %Status) As %Boolean
{
}

Method SizeGet() As %Integer
{
}

Method PositionGet() As %Integer
{
}

Method IsOpenGet() As %Boolean
{
}

Method LineTerminatorSet(pTerm As %String) As %Status
{
}

}
