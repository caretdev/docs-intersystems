Class %Stream.Interface Extends %RegisteredObject [ System = 3 ]
{

ClassMethod ReadStream(handle As %Stream.Object, length As %Integer, ByRef msg As %String) As %Integer
{
}

ClassMethod ReadStreamAt(handle As %Stream.Object, position As %Integer, length As %Integer, ByRef msg As %String) As %Integer
{
}

ClassMethod WriteStream(handle As %Stream.Object, length As %Integer, ByRef msg As %String) As %Integer
{
}

ClassMethod OutputToDevice(handle As %Stream.Object, len As %Integer = -1) As %Status [ Private ]
{
}

ClassMethod InputFromDevice(handle As %Stream.Object, ByRef len As %Integer = 0) As %Status
{
}

ClassMethod AppendFromDevice(ByRef handle As %Stream.Object, len As %Integer, ByRef written As %Integer) As %Status
{
}

ClassMethod CopyFrom(source As %Stream.Object, ByRef target As %Stream.Object, offset As %Integer, length As %Integer) As %Status
{
}

ClassMethod Truncate(source As %Stream.Object, length As %Integer) As %Status
{
}

ClassMethod SetBytesAt(ByRef source As %Stream.Object, offset As %Integer, length As %Integer, ByRef written As %Integer) As %Status
{
}

ClassMethod GetError(rc As %Status) As %String [ Private ]
{
}

ClassMethod CopyFromFileStream(source As %Stream.FileBinary, dest As %Stream.Object)
{
}

}
