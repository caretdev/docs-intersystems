/// This class implements SQL functions to support %SYSTEM.python
Class %SYSTEM.python.SQL [ Language = objectscript, Owner = {%Manager}, System = 4 ]
{

/// Add a path to executables to the current python gateway path.
/// For Python, this can be a folder representing a package or a .py file URL.
ClassMethod addPath(path As %String) As %Integer [ SqlName = add_path, SqlProc ]
{
}

/// Close the gateway connection to the External Python Server.
ClassMethod closeGateway() As %Integer [ SqlName = close_gateway, SqlProc ]
{
}

}
