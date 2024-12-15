/// This is a null character stream, so although you can write to it the length will always be
/// zero bytes.
Class %Stream.NullCharacter Extends %AbstractStream [ ClientDataType = CHARACTERSTREAM, OdbcType = LONGVARCHAR, Not ProcedureBlock, System = 3 ]
{

Method Read(ByRef len As %Integer = 32000, ByRef sc As %Status) As %String
{
}

Method WriteLine(data As %String = "") As %Status [ CodeMode = expression ]
{
}

Method ReadLine(ByRef len As %Integer = 32000, ByRef sc As %Status, ByRef eol As %Boolean) As %String
{
}

Method Write(data As %String = "") As %Status [ CodeMode = expression ]
{
}

Method MoveToEnd() As %Status [ CodeMode = expression ]
{
}

Method SizeGet() As %Integer [ CodeMode = expression ]
{
}

Method LineTerminatorGet() As %String [ CodeMode = expression ]
{
}

Method LineTerminatorSet(terminator As %String) As %Status
{
}

Method IsNull() As %Boolean [ CodeMode = expression ]
{
}

Method SaveStream() As %Status [ CodeMode = expression ]
{
}

}
