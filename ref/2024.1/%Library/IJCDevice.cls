/// For internal use only
Class %Library.IJCDevice [ Abstract, System = 4 ]
{

ClassMethod iopen(type As %String = "Server", drain As %Boolean = 0) As %Status [ Internal, Private ]
{
}

ClassMethod iclose(type As %String, done As %Boolean = 0) As %Status [ Internal, Private ]
{
}

ClassMethod Init(type As %String = "Server") As %Status
{
}

ClassMethod Close(type As %String = "Server") As %Status
{
}

ClassMethod Read(type As %String = "Server", ByRef code As %String, ByRef msg As %String) As %Status
{
}

ClassMethod WriteMBResponse(type As %String = "Server", msg As %String) As %Status
{
}

ClassMethod WriteIBResponse(type As %String = "Server", msg As %String) As %Status
{
}

ClassMethod CancelJob(type As %String = "Server") As %Status
{
}

}
