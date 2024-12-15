/// This class implements SQL functions to support %SYSTEM.external
Class %SYSTEM.external.SQL [ Language = objectscript, System = 4 ]
{

/// Add a path to executables to the current java gateway path.
/// For Java, this can be a folder or a jar URL.
ClassMethod addPath(serverName As %String, path As %String) As %Integer [ SqlName = add_path, SqlProc ]
{
}

ClassMethod closeGateway(serverName As %String) As %Integer [ SqlName = close_gateway, SqlProc ]
{
}

}
