Class %Net.Remote.Gateway Extends %RegisteredObject [ System = 3 ]
{

/// Messages
Parameter CONNECT [ Final ] = "Y0";

Parameter EXECUTEMETHOD [ Final ] = "Y1";

Parameter GENERATECLASSES [ Final ] = "Y2";

Parameter GETOBJECT [ Final ] = "Y3";

Parameter DISCONNECT [ Final ] = "Y4";

Parameter EXCEPTIONRAISED [ Final ] = "Y5";

Parameter SHUTDOWN [ Final ] = "Y6";

Parameter OBJECTCREATED [ Final ] = "Y9";

Parameter GETAVAILABLECLASSES [ Final ] = "YC";

Parameter SUCCESS [ Final ] = "YY";

Parameter JAVASERVICE [ Final ] = "YK";

Parameter LOADCOSCLASS [ Final ] = "YL";

Parameter ADDTOCURRENTCLASSPATH [ Final ] = "YP";

Parameter PING [ Final ] = "YQ";

Parameter LOADJAVACLASS [ Final ] = "YZ";

Parameter LOADJAVACLASSSYNCH [ Final ] = "YW";

Parameter GETTIMESTAMP [ Final ] = "YT";

Parameter INPUTTIMEOUT = 30;

Property GatewayDevice As %String(TRUNCATE = 1);

Property CurrentDevice As %String(TRUNCATE = 1);

/// Used by GatewayLight to save current device multiple times in case of reentrancy
Property CurrentDeviceStack As %String(TRUNCATE = 1) [ MultiDimensional ];

Property SequenceNumber As %Integer [ MultiDimensional ];

Property Namespace As %String(TRUNCATE = 1);

Property ClosedProxies As %String [ MultiDimensional ];

Property Closed As %Boolean;

Property ProtocolVersion As %Integer;

Property connectParameters As %String(MAXLEN = "") [ Transient ];

Property connectClassPaths As %ListOfDataTypes [ Transient ];

Property AttemptReconnect As %Boolean [ InitialExpression = 0 ];

Property SHMConnectString As %String;

Property ProxyObjectHolder As %Library.RawString [ MultiDimensional ];

Property DisableOutputRedirect As %Boolean;

Property ExternalLanguage As %String;

Property ExternalLanguageVersion As %String;

Property IsUsingSharedMemory As %Boolean [ ReadOnly ];

Property xdbcConnection As %Boolean [ InitialExpression = 0 ];

Method %OnNew() As %Status
{
}

/// Connect to an External Language Server.
/// To connect to an External Language Server by name, please pass empty string as first argument and Gateway name as second argument.
/// Please note if a ELS definition is secure, then connecting by ELS name is required.
/// Connecting using host and port only works for unsecure External Language Servers.
Method %Connect(host As %String = "127.0.0.1", port As %Integer, namespace As %String = {$namespace}, timeout As %Numeric = 5, additionalClassPaths As %ListOfDataTypes = "", sslConfiguration As %String = "", Output isUsingSharedMemory, useSharedMemoryIfPossible As %Boolean, VerifySSLHostName As %Boolean = 0) As %Status [ Final ]
{
}

Method %Reconnect() As %Status
{
}

Method isAlive() As %Boolean
{
}

/// Check if an External Language Server still alive. <br/>
/// To connect to an External Language Server by name, please pass empty string as first argument and Gateway name as second argument
/// Please note if a ELS definition is secure, then connecting by ELS name is required.
/// Connecting using host and port only works for unsecure External Language Servers
/// When parameter <var>reuseSocket</var> is true (the default is false), the TCP socket will not be opened or closed and
/// it is up to the caller must ensure that the device is already opened.
ClassMethod %Ping(host As %String = "127.0.0.1", port As %Integer, timeout As %Numeric = 5, reuseSocket As %Boolean = 0, ByRef gatewayDevice As %String = "", ByRef serverFullName As %String = "", sslConfiguration As %String = "") As %Status [ Final ]
{
}

/// Close the connection
Method %Disconnect() As %Status [ Final ]
{
}

/// This callback method is invoked by the <METHOD>%Close</METHOD> method to
/// provide notification that the current object is being closed.
///
/// <P>The return value of this method is ignored.
Method %OnClose() As %Status [ Private, ProcedureBlock = 1 ]
{
}

/// Shut down the Gateway
Method %Shutdown(timeout = 0) As %Status [ Final ]
{
}

Method sendOneShutdown(soft = 0) As %Status [ Final ]
{
}

/// Creates all necessary proxy classes
Method %Import(javaClass As %String, ByRef javaClasses As %ListOfDataTypes, additionalClassPaths As %ListOfDataTypes = "", exclusions As %ListOfDataTypes = "", verbose As %Boolean = 0) As %Status [ Final ]
{
}

ClassMethod %RecastClass(classname, verbose)
{
}

ClassMethod %LoadCOSClass(verbose As %Boolean = 0, currentDevice As %String = "", gatewayDevice As %String = "") As %Status [ Final ]
{
}

/// Add to current classpath
Method %AddToCurrentClassPath(paths As %ListOfDataTypes, useProcessLoader As %Boolean = 0) As %Status [ Final ]
{
}

ClassMethod convertClassPaths(thelist, paths)
{
}

/// Calls Class.forName
Method %ClassForName(className As %String) As %Status [ Final ]
{
}

Method %ClassForNameSynch(className As %String) As %Status [ Final ]
{
}

/// Use the implements parameter to limit the classes to those implementing a specific interface
/// The interface must be declared either in isc-gateway, or jarFileName JAR file
Method %GetAllClasses(jarFileName As %String, ByRef allClasses As %ListOfDataTypes, implements As %String = "") As %Status
{
}

Method %GetTimestamp(msgid As %Integer)
{
}

Method %GetException() As %String [ Private ]
{
}

ClassMethod %SetStatus(exception As %Exception.StatusException) As %Status
{
}

Method %RegUpdate()
{
}

/// Generate proxy classes for an External language module.
/// To connect to an External Language Server by name, please pass empty string as first argument and Gateway name as second argument.
/// Please note if a ELS definition is secure, then connecting by ELS name is required.
/// Connecting using host and port only works for unsecure External Language Servers.
ClassMethod %ExpressImport(name As %String, port As %Integer, host As %String = "127.0.0.1", silent As %Boolean = 0, additionalClassPaths As %ListOfDataTypes = "", exclusions As %ListOfDataTypes = "") As %ListOfDataTypes [ Final ]
{
}

ClassMethod %RegisterSuperServer(name As %String, host As %String, port As %Integer = 0) [ Final ]
{
}

ClassMethod %DeregisterSuperServer(name As %String) [ Final ]
{
}

ClassMethod %FindServerByHostPort(host As %String, port As %Integer) As %String [ Final ]
{
}

ClassMethod %TerminateSuperServer(name As %String, namespace As %String, deregister As %Boolean) [ Final ]
{
}

ClassMethod %TerminateAllSuperServers() [ Final ]
{
}

ClassMethod %RemoteService(host As %String, port As %Integer, serviceName As %String, arguments As %String, additionalClassPaths As %ListOfDataTypes = "") As %String [ Final ]
{
}

Method %ServiceRequest(serviceName As %String, arguments As %String, ByRef response As %String) As %Status [ Final ]
{
}

ClassMethod %freeTCPDevice(pRequest As %Integer = 55555, pMaxTries As %Integer = 1000) As %String [ Internal ]
{
}

/// Used to check if still connected to the gateway and mark as closed if no TCP connection
Method %LostConnectionCleanup() As %Boolean
{
}

Method %PushGatewayDevice()
{
}

Method %PopGatewayDevice()
{
}

Method %ClearGatewayDevice()
{
}

/// Returns true if the connection is open and connected over shared memory, false otherwise.
Method %IsUsingSharedMemory() As %Boolean
{
}

ClassMethod %GetContextGateway() As %Net.Remote.Gateway
{
}

ClassMethod %CreateReverseGateway(device, protocol) As %Net.Remote.Gateway
{
}

ClassMethod %RetainObject(oref, gateway = "")
{
}

ClassMethod %ReleaseObjects(orefs) As %String
{
}

ClassMethod %SubscriptSortOrder(global, sub1, sub2) As %String
{
}

ClassMethod %Benchmark(options As %String = "", server As %String = "", ByRef output) As %Numeric
{
}

ClassMethod %BenchmarkOneJob(index = "", iterations = 1000000, server, language = "java", type = "shm", action = "echo", mode = "zobjexport")
{
}

Method %CallUtilityMethod(methodname, args...)
{
}

Method ExternalLanguageGet()
{
}

Method ExternalLanguageVersionGet()
{
}

Method getProductVersion()
{
}

ClassMethod %RedirectOutput(data As %String = "") As %Integer
{
}

ClassMethod %WriteOutput(data1 As %String = "", data2 As %String = "")
{
}

Property OutputRedirectHandler As %String;

Method %SetOutputRedirectHandler(classname, methodname)
{
}

Method %DumpProxyMaps()
{
}

Method %FlushClosedIRISObjects() As %Boolean
{
}

}
