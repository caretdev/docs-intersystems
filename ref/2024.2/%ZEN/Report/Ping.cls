///
Class %ZEN.Report.Ping Extends %RegisteredObject [ Deprecated, System = 4 ]
{

ClassMethod ping(port As %String, timeout As %Integer = 5, ByRef mainport, ByRef servertype, ByRef memMax As %Integer, ByRef memCommitted As %Integer, ByRef memUse As %Integer, ByRef runtimeName) As %Status
{
}

ClassMethod shutdown(port As %String, timeout As %Integer = 5, ByRef mainport, ByRef servertype) As %Status
{
}

}
