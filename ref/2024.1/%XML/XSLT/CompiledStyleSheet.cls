/// <p><b>For details on using this class</b>, see
/// <a target="_top" href="/csp/docbook/Doc.View.cls?FIND=CLASSES+%25XML.XSLT.CompiledStyleSheet">Performing XSLT Transformations</a>.</p>
/// Implements an interface to the XSLT CompiledStyleSheet. %XML.XSLT.CompiledStyleSheet should never be
/// created directly with %New(), but via the CreateFromFile() or CreateFromStream() factory methods
Class %XML.XSLT.CompiledStyleSheet Extends %RegisteredObject [ System = 3 ]
{

/// This property holds a handle to the parsed source
Property ParsedSourceHandle As %Integer;

/// Use this method a create an instance of an %XML.XSLT.CompiledStyleSheet from a file path name.
ClassMethod CreateFromFile(pSource As %String, Output pCompiledStyleSheet As %XML.XSLT.CompiledStyleSheet, pErrorHandler As %XML.XSLT.ErrorHandler = {$$$NULLOREF}) As %Status
{
}

/// Use this method to create an instance of an %XML.XSLT.CompiledStyleSheet from a binary stream
ClassMethod CreateFromStream(pStream As %AbstractStream, Output pCompiledStyleSheet As %XML.XSLT.CompiledStyleSheet, pErrorHandler As %XML.XSLT.ErrorHandler = {$$$NULLOREF}) As %Status
{
}

/// This callback method is invoked by the <METHOD>%New</METHOD> method to
/// provide notification that a new instance of an object is being created.
/// For this class, client code should NOT call this method directly via %New()
/// but should use the 'CreateFromFile()' or 'CreateFromStream()' factory methods
Method %OnNew(initvalue As %RawString) As %Status [ Private, ProcedureBlock = 1 ]
{
}

Method %OnClose() As %Status [ Private, ProcedureBlock = 1 ]
{
}

/// This accesses the parsed source handle which xalan uses to identify the previously
/// parsed source document
Method ParsedSourceHandleGet()
{
}

}
