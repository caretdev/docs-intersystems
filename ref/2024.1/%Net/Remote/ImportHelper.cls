Class %Net.Remote.ImportHelper Extends %RegisteredObject [ System = 3 ]
{

ClassMethod ExpressImport(classOrJar As %String, port As %Integer, path As %String = "", host As %String = "127.0.0.1") [ Final ]
{
}

/// Imports the given interface
ClassMethod Import(name As %String, classPath As %ListOfDataTypes, port As %Integer, host As %String = "127.0.0.1", exclusions As %ListOfDataTypes = "") [ Final, Private ]
{
}

/// Given a jar file or a directory name, displays all available classes in tha jar file/directory
ClassMethod Browse(jarFileOrDirectoryName As %String, port As %Integer, host As %String = "127.0.0.1") [ Final ]
{
}

ClassMethod ProcessError(status As %Status) [ Final ]
{
}

ClassMethod Connect(port As %Integer, host As %String) As %Net.Remote.Gateway
{
}

}
