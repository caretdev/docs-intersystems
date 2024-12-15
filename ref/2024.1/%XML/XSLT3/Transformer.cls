Class %XML.XSLT3.Transformer Extends %RegisteredObject
{

ClassMethod StartGateway(Output gateway As %Net.Remote.Gateway = {$$$NULLOREF}, useSharedMemoryIfPossible As %Boolean = 0) As %Status
{
}

ClassMethod StopGateway(gateway As %Net.Remote.Gateway) As %Status
{
}

/// This method transforms a source file according to an XSL stylesheet and writes the output
/// to the specified output file. If errors occur during processing, callbacks will be made to
/// the supplied error handler. If an error handler is not supplied then the default is to use
/// a newly created instance of %XML.XSLT.ErrorHandler.  The pParams argument is either a CoS
/// array, or %ArrayOfDataTypes of name/value pairs to be passed as $ variables.
ClassMethod TransformFile(pSource As %String = "", pXSL As %String, pOutput As %String, pErrorHandler As %XML.XSLT.ErrorHandler = {$$$NULLOREF}, ByRef pParams = {$$$NULLOREF}, pCallbackHandler = {$$$NULLOREF}, pResolver As %XML.SAX.EntityResolver = {$$$NULLOREF}, gateway As %Net.Remote.Gateway = {$$$NULLOREF}, enableStreaming As %Boolean = 0, compiledPackages As %List = {$$$NULLOREF}, ByRef pOptions = {$$$NULLOREF}) As %Status
{
}

/// This method transforms a source file according to an XSL stylesheet and writes the output
/// to the specified output file. If errors occur during processing, callbacks will be made to
/// the supplied error handler. If an error handler is not supplied then the default is to use
/// a newly created instance of %XML.XSLT.ErrorHandler.  The pParams argument is either a CoS
/// array, or %ArrayOfDataTypes of name/value pairs to be passed as $ variables.
ClassMethod TransformFileWithCompiledXSL(pSource As %String = "", pXSL As %XML.XSLT3.CompiledStyleSheet, pOutput As %String, pErrorHandler As %XML.XSLT.ErrorHandler = {$$$NULLOREF}, ByRef pParams = {$$$NULLOREF}, pCallbackHandler = {$$$NULLOREF}, pResolver As %XML.SAX.EntityResolver = {$$$NULLOREF}, gateway As %Net.Remote.Gateway = {$$$NULLOREF}, enableStreaming As %Boolean = 0, ByRef pOptions = {$$$NULLOREF}) As %Status
{
}

/// This method transforms a source stream according to an XSL stylesheet and writes the output
/// to the supplied binary stream. If errors occur during processing, callbacks will be made to the
/// supplied error handler. If an error handler is not supplied then the default is to use a newly created
/// instance of %XML.XSLT.ErrorHandler.  The pParams argument is either a CoS
/// array, or %ArrayOfDataTypes of name/value pairs to be passed as $ variables.
/// Note that that the XSLT transform engine will produce a stream with line terminator $c(10),
/// regardless of the line terminator of the input stream.
/// If an existing output stream is passed to this method, its LineTerminator property will be set to $c(10),
/// so anything written to the stream before calling this method should also use $c(10) as its line terminator.
ClassMethod TransformStream(pSource As %Stream.Object = {$$$NULLOREF}, pXSL As %Stream.Object, ByRef pOutput As %BinaryStream = {$$$NULLOREF}, pErrorHandler As %XML.XSLT.ErrorHandler = {$$$NULLOREF}, ByRef pParams = {$$$NULLOREF}, pCallbackHandler = {$$$NULLOREF}, pResolver As %XML.SAX.EntityResolver = {$$$NULLOREF}, gateway As %Net.Remote.Gateway = {$$$NULLOREF}, compiledPackages As %List = {$$$NULLOREF}, ByRef pOptions = {$$$NULLOREF}, XMLBaseDir As %String = "", XSLBaseDir As %String = "") As %Status
{
}

/// This method transforms a source stream according to an XSL stylesheet and writes the output
/// to the supplied binary stream. If errors occur during processing, callbacks will be made to the
/// supplied error handler. If an error handler is not supplied then the default is to use a newly created
/// instance of %XML.XSLT.ErrorHandler.  The pParams argument is either a CoS
/// array, or %ArrayOfDataTypes of name/value pairs to be passed as $ variables.
/// Note that that the XSLT transform engine will produce a stream with line terminator $c(10),
/// regardless of the line terminator of the input stream.
/// If an existing output stream is passed to this method, its LineTerminator property will be set to $c(10),
/// so anything written to the stream before calling this method should also use $c(10) as its line terminator.
ClassMethod TransformStreamWithCompiledXSL(pSource As %Stream.Object = {$$$NULLOREF}, pXSL As %XML.XSLT3.CompiledStyleSheet, ByRef pOutput As %BinaryStream = {$$$NULLOREF}, pErrorHandler As %XML.XSLT.ErrorHandler = {$$$NULLOREF}, ByRef pParams = {$$$NULLOREF}, pCallbackHandler = {$$$NULLOREF}, pResolver As %XML.SAX.EntityResolver = {$$$NULLOREF}, gateway As %Net.Remote.Gateway = {$$$NULLOREF}, ByRef pOptions = {$$$NULLOREF}, XMLBaseDir As %String = "") As %Status
{
}

/// This method transforms a source string according to an XSL stylesheet and returns the output
/// to the supplied string. If errors occur during processing, callbacks will be made to the
/// supplied error handler. If an error handler is not supplied then the default is to use a newly created
/// instance of %XML.XSLT.ErrorHandler.  The pParams argument is either a CoS
/// array, or %ArrayOfDataTypes of name/value pairs to be passed as $ variables.
ClassMethod TransformStringWithCompiledXSL(pSource As %String = "", pXSL As %XML.XSLT3.CompiledStyleSheet, ByRef pOutput As %String = "", pErrorHandler As %XML.XSLT.ErrorHandler = {$$$NULLOREF}, ByRef pParams = {$$$NULLOREF}, pCallbackHandler = {$$$NULLOREF}, pResolver As %XML.SAX.EntityResolver = {$$$NULLOREF}, gateway As %Net.Remote.Gateway = {$$$NULLOREF}, ByRef pOptions = {$$$NULLOREF}, XMLBaseDir As %String = "") As %Status
{
}

ClassMethod SetupErrorHandler(ByRef errorHandler As %XML.XSLT.ErrorHandler) As %Status
{
}

ClassMethod BuildParams(ByRef pParams) As %List [ Private ]
{
}

ClassMethod BuildOptionsParams(ByRef pParams) As %List [ Private ]
{
}

ClassMethod SetupOutput(ByRef output As %BinaryStream, Output translateTable As %ObjectHandle) As %Status
{
}

/// This method clears the evaluate cache.
/// If errors occur during processing, callbacks will be made to the supplied error handler.
/// If an error handler is not supplied then the default is to use a newly created instance of %XML.XSLT.ErrorHandler.
ClassMethod ClearEvaluateCache(pErrorHandler As %XML.XSLT.ErrorHandler = {$$$NULLOREF}, gateway As %Net.Remote.Gateway = {$$$NULLOREF}) As %Status
{
}

/// This method sets the maximum size of the evaluate cache. The default size is 1000.
/// If errors occur during processing, callbacks will be made to the supplied error handler.
/// If an error handler is not supplied then the default is to use a newly created instance of %XML.XSLT.ErrorHandler.
ClassMethod SetEvaluateCacheSize(size As %Integer = 1000, pErrorHandler As %XML.XSLT.ErrorHandler = {$$$NULLOREF}, gateway As %Net.Remote.Gateway = {$$$NULLOREF}) As %Status
{
}

/// This method adds a function name to the evaluate cache filter list.
/// Note that this does not limit the cache size in any way. There may be any number of calls
/// to the same function, but with different arguments and return values. Each combination
/// of function name + arguments would be a separate entry in the cache.
/// If errors occur during processing, callbacks will be made to the supplied error handler.
/// If an error handler is not supplied then the default is to use a newly created instance of %XML.XSLT.ErrorHandler.
ClassMethod AddToEvaluateCacheFilterList(filterListEntry As %String = "", pErrorHandler As %XML.XSLT.ErrorHandler = {$$$NULLOREF}, gateway As %Net.Remote.Gateway = {$$$NULLOREF}) As %Status
{
}

/// This method removes a function name from the evaluate cache filter list.
/// If errors occur during processing, callbacks will be made to the supplied error handler.
/// If an error handler is not supplied then the default is to use a newly created instance of %XML.XSLT.ErrorHandler.
ClassMethod RemoveFromEvaluateCacheFilterList(filterListEntry As %String = "", pErrorHandler As %XML.XSLT.ErrorHandler = {$$$NULLOREF}, gateway As %Net.Remote.Gateway = {$$$NULLOREF}) As %Status
{
}

/// This method clears the evaluate cache filter list.
/// If errors occur during processing, callbacks will be made to the supplied error handler.
/// If an error handler is not supplied then the default is to use a newly created instance of %XML.XSLT.ErrorHandler.
ClassMethod ClearEvaluateCacheFilterList(pErrorHandler As %XML.XSLT.ErrorHandler = {$$$NULLOREF}, gateway As %Net.Remote.Gateway = {$$$NULLOREF}) As %Status
{
}

/// This method sets the cache everything boolean for the evaluate cache.
/// This overrides the filter list and allows calls to all functions to be cached.
/// If errors occur during processing, callbacks will be made to the supplied error handler.
/// If an error handler is not supplied then the default is to use a newly created instance of %XML.XSLT.ErrorHandler.
ClassMethod SetCacheEverythingBoolean(cacheEverything As %Boolean = 0, pErrorHandler As %XML.XSLT.ErrorHandler = {$$$NULLOREF}, gateway As %Net.Remote.Gateway = {$$$NULLOREF}) As %Status
{
}

/// This method dumps the evaluate cache to a list, with the following format:
/// 		total number of cache entries
/// 		for each entry:
/// 			total number of evaluate arguments = function name + up to 9 arguments
/// 			all evaluate arguments
/// 			evaluate value
/// If errors occur during processing, callbacks will be made to the supplied error handler.
/// If an error handler is not supplied then the default is to use a newly created instance of %XML.XSLT.ErrorHandler.
ClassMethod DumpEvaluateCacheToList(Output evaluateCache As %List, pErrorHandler As %XML.XSLT.ErrorHandler = {$$$NULLOREF}, gateway As %Net.Remote.Gateway = {$$$NULLOREF}) As %Status
{
}

/// This method loads (or pre-populates) the evaluate cache from a list, with the following format:
/// 		total number of cache entries
/// 		for each entry:
/// 			total number of evaluate arguments = function name + up to 9 arguments
/// 			all evaluate arguments
/// 			evaluate value
/// If errors occur during processing, callbacks will be made to the supplied error handler.
/// If an error handler is not supplied then the default is to use a newly created instance of %XML.XSLT.ErrorHandler.
ClassMethod LoadEvaluateCacheFromList(evaluateCache As %List = "", pErrorHandler As %XML.XSLT.ErrorHandler = {$$$NULLOREF}, gateway As %Net.Remote.Gateway = {$$$NULLOREF}) As %Status
{
}

}
