/// Abstract implementation class providing methods used by MetaStreams to wrapper one or more %IO streams, %Library streams or %Stream streams.
Class %IO.IParts.MetaIO [ Abstract, System = 2 ]
{

/// Read from another stream whenever there's a Read
/// %IO.I.Stream or %Stream.Object
Property StreamIn As %IO.I.Stream;

/// Write to other streams whenever there's a Read
/// *IO.I.Stream or %Stream.Object; indexed by oref to avoid duplicates */
Property StreamsCopyInput As %ArrayOfObjects;

/// Write to other streams whenever there's a Write
/// %IO.I.Stream or %Stream.Object; indexed by oref to avoid duplicates */
Property StreamsOutput As %ArrayOfObjects;

Property WriteToStreamIn As %Boolean [ InitialExpression = 0 ];

Property %Position As %Integer [ Private, ReadOnly ];

Method %OnNew(pBaseStream As %IO.I.Stream = "") As %Status
{
}

Method Close(Output pSC As %Status) As %Boolean
{
}

Method Reset(pStream As %IO.I.Stream = {$$$NULLOREF}, pTimeout As %Numeric, Output pSC As %Status)
{
}

Method BindInput(pInputStream As %IO.I.Stream, Output pSC As %Status)
{
}

Method BindOutput(pOutputStreams...) As %Status
{
}

Method BindOutputArray(ByRef pOutputStreams) As %Status
{
}

Method BindCopyInput(pOutputStreams...) As %Status
{
}

Method BindCopyInputArray(ByRef pOutputStreams) As %Status
{
}

Method Read(pMaxReadLen As %Integer, ByRef pTimeout As %Numeric = -1, Output pSC As %Status) As %String
{
}

Method Write(pData As %String = "", pFlush As %Boolean, Output pSC As %Status)
{
}

Method delegateWrite(s As %RegisteredObject, pData As %String, ByRef pFlush As %Boolean, Output pSC As %Status) [ Private ]
{
}

Method Flush(Output pSC As %Status)
{
}

Method FlushCopyInput(Output pSC As %Status)
{
}

Method flushList(Output pSC As %Status, pList As %ArrayOfObjects, pFlush As %Boolean) [ Private ]
{
}

Method Rewind(Output pSC As %Status)
{
}

Method Seek(pPosition As %Integer, Output pSC As %Status) As %Boolean
{
}

Method AtEndGet() As %Boolean [ CodeMode = expression ]
{
}

Method IsOpenGet() As %Boolean [ CodeMode = expression ]
{
}

Method SizeGet() As %Integer
{
}

Method PositionGet() As %Integer
{
}

Method CopyFrom(pSource As %IO.I.Stream, ByRef pTimeout As %Numeric = -1, pFlush As %Boolean, Output pSC As %Status) As %Integer
{
}

}
