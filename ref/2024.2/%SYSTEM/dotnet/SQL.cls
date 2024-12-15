/// This class implements SQL functions to support %SYSTEM.dotnet
Class %SYSTEM.dotnet.SQL [ Language = objectscript, Owner = {%Manager}, System = 4 ]
{

/// Add a path to executables to the current dotnet gateway path.
ClassMethod addPath(path As %String) As %Integer [ SqlName = add_path, SqlProc ]
{
}

/// Close the gateway connection to the External DotNet Server.
ClassMethod closeGateway() As %Integer [ SqlName = close_gateway, SqlProc ]
{
}

}
