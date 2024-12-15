/// Read returns nothing, Write does nothing
Class %IO.NullStream Extends %IO.I.ByteSeekableStream [ System = 2 ]
{

Method IsOpenGet() As %Boolean [ CodeMode = expression ]
{
}

Method AtEndGet() As %Boolean [ CodeMode = expression ]
{
}

Method Read(pMaxReadLen As %Integer, ByRef pTimeout As %Numeric = -1, Output pSC As %Status) As %String
{
}

Method Write(pData As %String = "", pFlush As %Boolean, Output pSC As %Status)
{
}

Method Seek(pPosition As %Integer, Output pSC As %Status) As %Boolean
{
}

}
