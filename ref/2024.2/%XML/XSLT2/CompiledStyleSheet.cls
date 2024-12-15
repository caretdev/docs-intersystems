/// <p><b>For details on using this class</b>, see
/// <a target="_top" href="/csp/docbook/Doc.View.cls?FIND=CLASSES+%25XML.XSLT2.CompiledStyleSheet">Performing XSLT Transformations</a>.</p>
/// Implements an interface to the XSLT2 CompiledStyleSheet. %XML.XSLT2.CompiledStyleSheet should never be
/// created directly with %New(), but via the CreateFromFile() or CreateFromStream() factory methods
Class %XML.XSLT2.CompiledStyleSheet Extends %RegisteredObject
{

Property ReleaseOnClose As %Boolean [ InitialExpression = 1 ];

/// Use this method a create an instance of an %XML.XSLT2.CompiledStyleSheet from a file path name
ClassMethod CreateFromFile(source As %String, Output compiledStyleSheet As %XML.XSLT2.CompiledStyleSheet, errorHandler As %XML.XSLT.ErrorHandler = {$$$NULLOREF}, gateway As %Net.Remote.Gateway = {$$$NULLOREF}) As %Status
{
}

/// Use this method to create an instance of an %XML.XSLT2.CompiledStyleSheet from a binary stream
ClassMethod CreateFromStream(stream As %Stream.Object, Output compiledStyleSheet As %XML.XSLT2.CompiledStyleSheet, errorHandler As %XML.XSLT.ErrorHandler = {$$$NULLOREF}, gateway As %Net.Remote.Gateway = {$$$NULLOREF}) As %Status
{
}

ClassMethod ReleaseFromServer(compiledStyleSheet As %XML.XSLT2.CompiledStyleSheet, errorHandler As %XML.XSLT.ErrorHandler = {$$$NULLOREF}, gateway As %Net.Remote.Gateway = {$$$NULLOREF}) As %Status
{
}

Method %OnClose() As %Status [ Private, ProcedureBlock = 1 ]
{
}

}
