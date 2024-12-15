/// Implements an interface to the XSLT3 CompiledPackage. %XML.XSLT3.CompiledPackage should never be
/// created directly with %New(), but via the CreateFromFile() or CreateFromStream() factory methods
Class %XML.XSLT3.CompiledPackage Extends %RegisteredObject
{

Property ReleaseOnClose As %Boolean [ InitialExpression = 1 ];

/// Use this method a create an instance of an %XML.XSLT3.CompiledPackage from a file path name
ClassMethod CreateFromFile(source As %String, Output compiledPackage As %XML.XSLT3.CompiledPackage, errorHandler As %XML.XSLT.ErrorHandler = {$$$NULLOREF}, gateway As %Net.Remote.Gateway = {$$$NULLOREF}) As %Status
{
}

/// Use this method to create an instance of an %XML.XSLT3.CompiledPackage from a binary stream
ClassMethod CreateFromStream(stream As %Stream.Object, Output compiledPackage As %XML.XSLT3.CompiledPackage, errorHandler As %XML.XSLT.ErrorHandler = {$$$NULLOREF}, gateway As %Net.Remote.Gateway = {$$$NULLOREF}, XSLBaseDir As %String = "") As %Status
{
}

ClassMethod ReleaseFromServer(compiledPackage As %XML.XSLT3.CompiledPackage, errorHandler As %XML.XSLT.ErrorHandler = {$$$NULLOREF}, gateway As %Net.Remote.Gateway = {$$$NULLOREF}) As %Status
{
}

Method %OnClose() As %Status [ Private, ProcedureBlock = 1 ]
{
}

}
