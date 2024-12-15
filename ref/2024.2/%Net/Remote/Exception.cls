Class %Net.Remote.Exception Extends %Exception.AbstractException [ System = 3 ]
{

Property RemoteError As %String(MAXLEN = "");

Property RawData As %String(MAXLEN = "");

Method OnAsStatus() As %Status [ CodeMode = expression, Private ]
{
}

Method DisplayString(pLevel As %Integer = 0) As %String
{
}

Method StackAsArray(ByRef array) As %Status
{
}

}
