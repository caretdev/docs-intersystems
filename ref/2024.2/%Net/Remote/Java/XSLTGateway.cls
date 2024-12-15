Class %Net.Remote.Java.XSLTGateway Extends %Net.Remote.Gateway [ StorageStrategy = "" ]
{

Parameter XSLTREQUEST [ Final ] = "YX";

Parameter DONE [ Final ] = 1;

Parameter COMPILEFILE [ Final ] = 2;

Parameter COMPILESTREAM [ Final ] = 3;

Parameter INVOKECALLBACK [ Final ] = 4;

Parameter RESOLVEENTITY [ Final ] = 5;

Parameter WARNING [ Final ] = 6;

Parameter ERROR [ Final ] = 7;

Parameter FATALERROR [ Final ] = 8;

Parameter TRANSFORMFILEFILEFILE [ Final ] = 9;

Parameter TRANSFORMFILECOMPILEDFILE [ Final ] = 10;

Parameter TRANSFORMSTREAMSTREAMSTREAM [ Final ] = 11;

Parameter TRANSFORMSTREAMCOMPILEDSTREAM [ Final ] = 12;

Parameter TRANSFORMSTRINGCOMPILEDSTRING [ Final ] = 13;

Parameter RELEASECOMPILEDXSLT [ Final ] = 14;

Parameter CLEAREVALUATECACHE [ Final ] = 15;

Parameter SETEVALUATECACHESIZE [ Final ] = 16;

Parameter ADDTOEVALUATECACHEFILTERLIST [ Final ] = 17;

Parameter REMOVEFROMEVALUATECACHEFILTERLIST [ Final ] = 18;

Parameter CLEAREVALUATECACHEFILTERLIST [ Final ] = 19;

Parameter SETCACHEEVERYTHINGBOOLEAN [ Final ] = 20;

Parameter DUMPEVALUATECACHETOLIST [ Final ] = 21;

Parameter LOADEVALUATECACHEFROMLIST [ Final ] = 22;

Parameter XSLT3REQUEST [ Final ] = "YO";

Parameter COMPILEPACKAGEFILE = 23;

Parameter COMPILEPACKAGESTREAM = 24;

Parameter RELEASECOMPILEDXSLTPACKAGE = 25;

Parameter MESSAGE [ Final ] = 26;

/// Default host
Parameter Host = "127.0.0.1";

/// Default port is Superserver port + 3000 if it does not exceed 65535, otherwise 54773
Parameter Port As COSEXPRESSION = "$S($ZU(172,0)<=62535:$ZU(172,0)+3000,1:54773)";

/// Default log file
Parameter LogFile;

/// Default JavaHome directory
Parameter JavaHome;

/// Default additional JVM arguments
Parameter JVMArgs;

ClassMethod TransformStream(source As %Stream.Object, xslt As %ObjectHandle, target As %Stream.Object, errorHandler As %ObjectHandle, callbackHandler As %ObjectHandle, parameters As %ObjectHandle, entityResolver As %ObjectHandle, gateway As %Net.Remote.Gateway = {$$$NULLOREF}) As %Status [ Final ]
{
}

ClassMethod TransformFileFile(source As %String, xslt As %String, target As %String, errorHandler As %ObjectHandle, callbackHandler As %ObjectHandle, parameters As %ObjectHandle, entityResolver As %ObjectHandle, gateway As %Net.Remote.Gateway = {$$$NULLOREF}) As %Status [ Final ]
{
}

ClassMethod TransformFileCompiled(source As %String, xslt As %XML.XSLT2.CompiledStyleSheet, target As %String, errorHandler As %ObjectHandle, callbackHandler As %ObjectHandle, parameters As %ObjectHandle, entityResolver As %ObjectHandle, gateway As %Net.Remote.Gateway = {$$$NULLOREF}) As %Status [ Final ]
{
}

ClassMethod TransformStringCompiled(source As %String, xslt As %XML.XSLT2.CompiledStyleSheet, ByRef target As %String, errorHandler As %ObjectHandle, callbackHandler As %ObjectHandle, parameters As %ObjectHandle, entityResolver As %ObjectHandle, gateway As %Net.Remote.Gateway = {$$$NULLOREF}) As %Status [ Final ]
{
}

ClassMethod CompileXSLFile(xslt As %String, compiledStyleSheet As %XML.XSLT2.CompiledStyleSheet, errorHandler As %ObjectHandle, gateway As %Net.Remote.Gateway = {$$$NULLOREF}) As %Status [ Final ]
{
}

ClassMethod ReleaseCompiledXSLT(compiledStyleSheet As %XML.XSLT2.CompiledStyleSheet, errorHandler As %ObjectHandle = {$$$NULLOREF}, gateway As %Net.Remote.Gateway = {$$$NULLOREF}, requestObj As %Net.Remote.Java.XSLTGatewayRequest = {$$$NULLOREF}) As %Status [ Final ]
{
}

ClassMethod CompileXSLStream(xslt As %Stream.Object, compiledStyleSheet As %XML.XSLT2.CompiledStyleSheet, errorHandler As %ObjectHandle, gateway As %Net.Remote.Gateway = {$$$NULLOREF}) As %Status [ Final ]
{
}

ClassMethod ClearEvaluateCache(errorHandler As %ObjectHandle, gateway As %Net.Remote.Gateway = {$$$NULLOREF}, requestObj As %Net.Remote.Java.XSLTGatewayRequest = {$$$NULLOREF}) As %Status
{
}

ClassMethod SetEvaluateCacheSize(size As %Integer, errorHandler As %ObjectHandle, gateway As %Net.Remote.Gateway = {$$$NULLOREF}, requestObj As %Net.Remote.Java.XSLTGatewayRequest = {$$$NULLOREF}) As %Status
{
}

ClassMethod AddToEvaluateCacheFilterList(filterListEntry As %String, errorHandler As %ObjectHandle, gateway As %Net.Remote.Gateway = {$$$NULLOREF}, requestObj As %Net.Remote.Java.XSLTGatewayRequest = {$$$NULLOREF}) As %Status
{
}

ClassMethod RemoveFromEvaluateCacheFilterList(filterListEntry As %String, errorHandler As %ObjectHandle, gateway As %Net.Remote.Gateway = {$$$NULLOREF}, requestObj As %Net.Remote.Java.XSLTGatewayRequest = {$$$NULLOREF}) As %Status
{
}

ClassMethod ClearEvaluateCacheFilterList(errorHandler As %ObjectHandle, gateway As %Net.Remote.Gateway = {$$$NULLOREF}, requestObj As %Net.Remote.Java.XSLTGatewayRequest = {$$$NULLOREF}) As %Status
{
}

ClassMethod SetCacheEverythingBoolean(cacheEverything As %Boolean, errorHandler As %ObjectHandle, gateway As %Net.Remote.Gateway = {$$$NULLOREF}, requestObj As %Net.Remote.Java.XSLTGatewayRequest = {$$$NULLOREF}) As %Status
{
}

ClassMethod DumpEvaluateCacheToList(Output evaluateCache As %List, errorHandler As %ObjectHandle, gateway As %Net.Remote.Gateway = {$$$NULLOREF}, requestObj As %Net.Remote.Java.XSLTGatewayRequest = {$$$NULLOREF}) As %Status
{
}

ClassMethod LoadEvaluateCacheFromList(evaluateCache As %List, errorHandler As %ObjectHandle, gateway As %Net.Remote.Gateway = {$$$NULLOREF}, requestObj As %Net.Remote.Java.XSLTGatewayRequest = {$$$NULLOREF}) As %Status
{
}

ClassMethod ProcessCallback(gateway As %Net.Remote.Gateway, msgid As %Integer, fun As %String)
{
}

ClassMethod SendRequestToGateway(requestObj As %Net.Remote.Java.XSLTGatewayRequest, gateway As %Net.Remote.Gateway = {$$$NULLOREF}, Output targetStream As %Stream.Object, Output targetString As %String, Output evaluateCache As %List) As %Status [ Final ]
{
}

ClassMethod WaitForResponse(gateway As %Net.Remote.Gateway, ByRef outputStream As %Stream.Object = {$$$NULLOREF}, ByRef outputString As %String = "", ByRef evaluateCache As %List = {$$$NULLOREF}, requestObj As %Net.Remote.Java.XSLTGatewayRequest) As %Status [ Final, Private ]
{
}

ClassMethod ProcessError(gateway As %Net.Remote.Gateway, type As %Integer)
{
}

/// Start a Gateway for XSLT 2.0 if not already started, and return a gateway connection
/// This method is deprecated, please call $system.external.getXSLTGateway() instead.
/// All the arguments to override Gateway definition will be ignored.
/// This method will only start Gateway Server "%XSLT Server"
ClassMethod StartGateway(Output status As %Status, port As %String, host As %String, jdk As %String, javahome As %String, logfile As %String, jvmargs As %String, resource As %String, useSharedMemoryIfPossible As %Boolean = 0) As %Net.Remote.Gateway
{
}

/// Disconnect
ClassMethod StopGateway(gateway As %Net.Remote.Gateway) As %Status
{
}

/// Shutdown the gateway
/// All arguments will be ignored.
/// This method will only shutdown Gateway Server "%XSLT Server"
ClassMethod ShutdownGateway(port As %String, host As %String) As %Status
{
}

ClassMethod CompileXSLT3File(xslt As %String, compiledStyleSheet As %XML.XSLT3.CompiledStyleSheet, errorHandler As %ObjectHandle, gateway As %Net.Remote.Gateway = {$$$NULLOREF}) As %Status [ Final ]
{
}

ClassMethod CompileXSLT3XSLStream(xslt As %Stream.Object, compiledStyleSheet As %XML.XSLT3.CompiledStyleSheet, errorHandler As %ObjectHandle, gateway As %Net.Remote.Gateway = {$$$NULLOREF}, XSLBaseDir As %String) As %Status [ Final ]
{
}

ClassMethod ReleaseCompiledXSLT3(compiledStyleSheet As %XML.XSLT3.CompiledStyleSheet, errorHandler As %ObjectHandle = {$$$NULLOREF}, gateway As %Net.Remote.Gateway = {$$$NULLOREF}, requestObj As %Net.Remote.Java.XSLTGatewayRequest = {$$$NULLOREF}) As %Status [ Final ]
{
}

ClassMethod CompileXSLPackageFile(xslt As %String, compiledPackage As %XML.XSLT3.CompiledPackage, errorHandler As %ObjectHandle, gateway As %Net.Remote.Gateway = {$$$NULLOREF}) As %Status [ Final ]
{
}

ClassMethod CompileXSLPackageStream(xslt As %Stream.Object, compiledPackage As %XML.XSLT3.CompiledPackage, errorHandler As %ObjectHandle, gateway As %Net.Remote.Gateway = {$$$NULLOREF}, XSLBaseDir As %String) As %Status [ Final ]
{
}

ClassMethod ReleaseCompiledXSLT3Package(compiledPackage As %XML.XSLT3.CompiledPackage, errorHandler As %ObjectHandle = {$$$NULLOREF}, gateway As %Net.Remote.Gateway = {$$$NULLOREF}, requestObj As %Net.Remote.Java.XSLTGatewayRequest = {$$$NULLOREF}) As %Status [ Final ]
{
}

ClassMethod XSLT3TransformFileFile(source As %String, xslt As %String, target As %String, enableStreaming As %Boolean = 0, compiledPackages As %List = {$$$NULLOREF}, errorHandler As %ObjectHandle, callbackHandler As %ObjectHandle, parameters As %ObjectHandle, gateway As %Net.Remote.Gateway = {$$$NULLOREF}, options As %ObjectHandle) As %Status [ Final ]
{
}

ClassMethod XSLT3TransformFileCompiled(source As %String, xslt As %XML.XSLT3.CompiledStyleSheet, target As %String, enableStreaming As %Boolean = 0, errorHandler As %ObjectHandle, callbackHandler As %ObjectHandle, parameters As %ObjectHandle, gateway As %Net.Remote.Gateway = {$$$NULLOREF}, options As %ObjectHandle) As %Status [ Final ]
{
}

ClassMethod XSLT3TransformStream(source As %Stream.Object, xslt As %ObjectHandle, target As %Stream.Object, compiledPackages As %List, errorHandler As %ObjectHandle, callbackHandler As %ObjectHandle, parameters As %ObjectHandle, gateway As %Net.Remote.Gateway = {$$$NULLOREF}, options As %ObjectHandle, XMLBaseDir As %String, XSLBaseDir As %String) As %Status [ Final ]
{
}

ClassMethod XSLT3TransformStringCompiled(source As %String, xslt As %XML.XSLT3.CompiledStyleSheet, ByRef target As %String, errorHandler As %ObjectHandle, callbackHandler As %ObjectHandle, parameters As %ObjectHandle, gateway As %Net.Remote.Gateway = {$$$NULLOREF}, options As %ObjectHandle, XMLBaseDir As %String = "") As %Status [ Final ]
{
}

ClassMethod %SetStatus(exception As %Exception.StatusException) As %Status
{
}

/// This method is no longer used internally by this class.
ClassMethod Transform(gateway As %Net.Remote.Gateway, errorHandler As %ObjectHandle, callbackHandler As %ObjectHandle, parameters As %ObjectHandle, entityResolver As %ObjectHandle, ByRef outputStream As %Stream.Object = {$$$NULLOREF}) As %Status [ Deprecated, Final ]
{
}

/// This method is no longer used internally by this class.
ClassMethod CallXSLTProcessor(gateway As %Net.Remote.Gateway, errorHandler As %ObjectHandle = {$$$NULLOREF}, ByRef outputStream As %Stream.Object = {$$$NULLOREF}) As %Status [ Deprecated, Final ]
{
}

}
