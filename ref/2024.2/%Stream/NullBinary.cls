/// This is a null binary stream, so although you can write to it the length will always be
/// zero bytes.
Class %Stream.NullBinary Extends %AbstractStream [ ClientDataType = BINARYSTREAM, OdbcType = LONGVARBINARY, Not ProcedureBlock, System = 3 ]
{

Method Read(ByRef len As %Integer = 32000, ByRef sc As %Status) As %Binary
{
}

Method Write(data As %Binary = "") As %Status [ CodeMode = expression ]
{
}

Method WriteLine(data As %Binary = "") As %Status [ CodeMode = expression ]
{
}

Method ReadLine(ByRef len As %Integer = 32000, ByRef sc As %Status, ByRef eol As %Boolean) As %Binary
{
}

Method MoveToEnd() As %Status [ CodeMode = expression ]
{
}

Method SizeGet() As %Integer [ CodeMode = expression ]
{
}

Method IsNull() As %Boolean [ CodeMode = expression ]
{
}

Method SaveStream() As %Status [ CodeMode = expression ]
{
}

}
