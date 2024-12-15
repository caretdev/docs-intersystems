/// <p><b>For details on using this class</b>, see
/// <a target="_top" href="/csp/docbook/Doc.View.cls?FIND=CLASSES+%25XML.XSLT.Transformer">Performing XSLT Transformations</a>.</p>
/// Implements an interface to the XSLT Parser. XML contained in a file or binary stream
/// may be transformed
Class %XML.XSLT.Transformer Extends %RegisteredObject [ System = 3 ]
{

ClassMethod BuildParams(ByRef pParams, pQuoteParams As %Boolean = 1) As %List [ Private ]
{
}

/// This method transforms a source file according to an XSL stylesheet and writes the output
/// to the specified output file. If errors occur during processing, callbacks will be made to
/// the supplied error handler. If an error handler is not supplied then the default is to use
/// a newly created instance of %XML.XSLT.ErrorHandler.  The pParams argument is either a CoS
/// array, or %ArrayOfDataTypes of name/value pairs to be passed as $ variables.
ClassMethod TransformFile(pSource As %String, pXSL As %String, pOutput As %String, pErrorHandler As %XML.XSLT.ErrorHandler = {$$$NULLOREF}, ByRef pParams = {$$$NULLOREF}, pCallbackHandler = {$$$NULLOREF}, pResolver As %XML.SAX.EntityResolver = {$$$NULLOREF}, pQuoteParams As %Boolean = 0) As %Status
{
}

/// This method transforms a source file according to an XSL stylesheet and writes the output
/// to the specified output file. If errors occur during processing, callbacks will be made to
/// the supplied error handler. If an error handler is not supplied then the default is to use
/// a newly created instance of %XML.XSLT.ErrorHandler.  The pParams argument is either a CoS
/// array, or %ArrayOfDataTypes of name/value pairs to be passed as $ variables.
ClassMethod TransformFileWithCompiledXSL(pSource As %String, pXSL As %XML.XSLT.CompiledStyleSheet, pOutput As %String, pErrorHandler As %XML.XSLT.ErrorHandler = {$$$NULLOREF}, ByRef pParams = {$$$NULLOREF}, pCallbackHandler = {$$$NULLOREF}, pResolver As %XML.SAX.EntityResolver = {$$$NULLOREF}, pQuoteParams As %Boolean = 0) As %Status
{
}

/// This method transforms a source file according to an XSL stylesheet and writes the output
/// to the specified output file. If errors occur during processing, callbacks will be made to
/// the supplied error handler. If an error handler is not supplied then the default is to use
/// a newly created instance of %XML.XSLT.ErrorHandler.  The pParams argument is either a CoS
/// array, or %ArrayOfDataTypes of name/value pairs to be passed as $ variables.
ClassMethod TransformStringWithCompiledXSL(pString As %String, pXSL As %XML.XSLT.CompiledStyleSheet, ByRef pOutput As %String, pErrorHandler As %XML.XSLT.ErrorHandler = {$$$NULLOREF}, ByRef pParams = {$$$NULLOREF}, pCallbackHandler = {$$$NULLOREF}, pResolver As %XML.SAX.EntityResolver = {$$$NULLOREF}, pQuoteParams As %Boolean = 0) As %Status
{
}

/// This method transforms a source stream according to an XSL stylesheet and writes the output
/// to the supplied binary stream. If errors occur during processing, callbacks will be made to the
/// supplied error handler. If an error handler is not supplied then the default is to use a newly created
/// instance of %XML.XSLT.ErrorHandler.  The pParams argument is either a CoS
/// array, or %ArrayOfDataTypes of name/value pairs to be passed as $ variables.
ClassMethod TransformStream(pSource As %AbstractStream, pXSL As %AbstractStream, ByRef pOutput As %BinaryStream = {$$$NULLOREF}, pErrorHandler As %XML.XSLT.ErrorHandler = {$$$NULLOREF}, ByRef pParams = {$$$NULLOREF}, pCallbackHandler = {$$$NULLOREF}, pResolver As %XML.SAX.EntityResolver = {$$$NULLOREF}, pQuoteParams As %Boolean = 0) As %Status
{
}

/// This method transforms a source stream according to an XSL stylesheet and writes the output
/// to the supplied binary stream. If errors occur during processing, callbacks will be made to the
/// supplied error handler. If an error handler is not supplied then the default is to use a newly created
/// instance of %XML.XSLT.ErrorHandler.  The pParams argument is either a CoS
/// array, or %ArrayOfDataTypes of name/value pairs to be passed as $ variables.
ClassMethod TransformStreamWithCompiledXSL(pSource As %AbstractStream, pXSL As %XML.XSLT.CompiledStyleSheet, ByRef pOutput As %BinaryStream = {$$$NULLOREF}, pErrorHandler As %XML.XSLT.ErrorHandler = {$$$NULLOREF}, ByRef pParams = {$$$NULLOREF}, pCallbackHandler = {$$$NULLOREF}, pResolver As %XML.SAX.EntityResolver = {$$$NULLOREF}, pQuoteParams As %Boolean = 0) As %Status
{
}

ClassMethod NormalizeFileName(pFilename As %String) As %String
{
}

/// Example, Transform a stream. For this example, streams are derived from XDATA blocks within this class. In
/// a real-world scenario streams would come from an external source
ClassMethod Example()
{
}

/// Example 2, Transform a stream. For this example, streams are derived from XDATA blocks within this class. In
/// a real-world scenario streams would come from an external source. The XSL specification is first compiled
/// and then is used to transform the source. This is useful for when the same stylesheet needs to be applied
/// to many different xml sources as it can result in considerable performance improvements.
ClassMethod Example2()
{
}

/// Example3, Transform a stream. For this example, streams are derived from XDATA blocks within this class. In
/// a real-world scenario streams would come from an external source. Here we install the default Callback Handler
ClassMethod Example3()
{
}

XData ExampleXML
{
}

XData ExampleXSL
{
}

XData Example3XSL
{
}

}
