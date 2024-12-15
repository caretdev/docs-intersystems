/// This class implements SQL functions to support %SYSTEM.java
Class %SYSTEM.java.SQL [ Language = objectscript, Owner = {%Manager}, System = 4 ]
{

/// Add a path to executables to the current java gateway path.
/// For Java, this can be a folder or a jar URL.
ClassMethod addPath(path As %String) As %Integer [ SqlName = add_path, SqlProc ]
{
}

/// Close the gateway connection to the External Java Server.
ClassMethod closeGateway() As %Integer [ SqlName = close_gateway, SqlProc ]
{
}

}
