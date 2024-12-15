/// This class contains methods to start, monitor and stop an External Language Server for Java or .NET.
Class %Net.Remote.Service Extends %RegisteredObject [ System = 4 ]
{

ClassMethod SpawnGateway(pName As %String = "", pConfirmationTimeout As %Integer = 60) As %Status
{
}

/// Start up the External Language Server whose definition is identified by pName.
/// To supress write of progress messages, pass pVerbose = 0.
ClassMethod StartGateway(pName As %String = "", pVerbose As %Boolean = 0, Output pOutput As %String, pConfirm As %Boolean = 0) As %Status [ Internal ]
{
}

/// This method is internal, it's called from ^%SYS.Gateway after granting resources
ClassMethod StartGatewayInternal(pName As %String, pVerbose As %Boolean = 0, Output pOutput As %String, pConfirm As %Boolean = 0) As %Status [ Internal ]
{
}

/// Start up the External Language Server whose definition is an object reference variable pGateway.
/// To supress write of progress messages, pass pVerbose = 0.
ClassMethod StartGatewayObject(pGateway As %DynamicObject, pVerbose As %Boolean = 0, Output pOutput As %String, pConfirm As %Boolean = 0) As %Status [ Internal ]
{
}

/// Run command to start the Gateway Server.
ClassMethod RunStartCmd(pGateway As %DynamicObject, Output pOutput As %String, pVerbose As %Boolean = 0) As %Status [ Internal ]
{
}

/// True if the .NET version is .NET Core (ex: Core 2.1)
ClassMethod IsCore(pGateway As %DynamicObject) As %Boolean [ Internal ]
{
}

/// True if the .NET version is .NET 5 or greater
ClassMethod IsNet(pGateway As %DynamicObject) As %Boolean [ Internal ]
{
}

/// Assemble the command to start the External Language Server for .NET based on the settings.
ClassMethod CmdLineForDotNet(pGateway As %DynamicObject, Output pCmd As %String, Output pCmdArgs, Output pEnvVars, Output pPredictedCmdStr As %String) As %Status [ Internal ]
{
}

ClassMethod GetDotNetAssembly(pGateway As %DynamicObject, Output pCmd As %String, Output pCmdArgs, Output pPredictedCmdStr As %String) As %Status [ Internal ]
{
}

/// Assemble the command to start the External Language Server for Java based on the settings.
ClassMethod CmdLineForJava(pGateway As %DynamicObject, Output pCmd As %String, Output pCmdArgs, Output pEnvVars, Output pPredictedCmdStr As %String) As %Status [ Internal ]
{
}

/// Assemble the command to start the External Language Server for Python based on the settings.
ClassMethod CmdLineForPython(pGateway As %DynamicObject, Output pCmd As %String, Output pCmdArgs, Output pEnvVars, Output pPredictedCmdStr As %String) As %Status [ Internal ]
{
}

/// Assemble the command to start the External Language Server for Python based on the settings.
ClassMethod CmdLineForODBC(pGateway As %DynamicObject, Output pCmd As %String, Output pCmdArgs, Output pEnvVars, Output pPredictedCmdStr As %String) As %Status [ Internal ]
{
}

/// Stop the External Language Server whose definition is identified by pName.
/// To supress write of progress messages, pass pVerbose = 0.
///
/// pName        : gateway name
/// pVerbose     : flag to enable verbose logging, 0 by default
/// pStopMonitor : flag to enable monitoring of gateway shutdown process, no longer in use
/// pTimeout     : soft shutdown timeout in seconds, 0 by default
ClassMethod StopGateway(pName As %String, pVerbose As %Boolean = 0, pStopMonitor As %Boolean = 1, pTimeout As %Integer = 0) As %Status
{
}

/// Stop the External Language Server whose definition is an object reference variable pGateway.
/// To supress write of progress messages, pass pVerbose = 0.
///
/// pGateway     : object with gateway configuration settings
/// pVerbose     : flag to enable verbose logging, 0 by default
/// pTimeout     : soft shutdown timeout in seconds, 0 by default
ClassMethod StopGatewayObject(pGateway As %DynamicObject, pVerbose As %Boolean = 0, pTimeout As %Integer = 0) As %Status [ Internal ]
{
}

/// Shutdown the Gateway Server.
///
/// pGateway : object with gateway configuration settings
/// pVerbose : flag to enable verbose logging, 0 by default
/// pTimeout : soft shutdown timeout in seconds, 0 by default
ClassMethod ShutdownGateway(pGateway As %DynamicObject, pVerbose As %Boolean = 0, pTimeout As %Integer = 0) As %Status [ Internal ]
{
}

/// "Ping" the Gateway server to check if it is alive.
/// If <var>pReuseSocket</var> is true (the default is false), it will try to reuse the TCP device and in case
/// the TCP connection has become invalid it will reconnect.<br>
/// Instead of using this method it is recommended to instantiate or use an
/// existing %Net.Remote.Gateway client and %Connect(), call %Ping() and then %Disconnect().
ClassMethod PingGateway(pPort As %String, pAddress As %String = "127.0.0.1", pTimeout As %Integer = 5, pReuseSocket As %Boolean = 0, pVerbose As %Boolean = 0) As %Status
{
}

/// Connect or reconnect to a running External Language Server. <br/>
/// When <var>pStartOnDemand</var> is true (which is the default), the Gateway will be started if it is not running. <br/>
ClassMethod ConnectGateway(pGateway As %DynamicObject, ByRef pGatewayConn As %Net.Remote.Gateway, pAdditionalPaths As %String = "", pStartOnDemand As %Boolean = 1, pVerbose As %Boolean = 0, useSharedMemoryIfPossible As %Boolean = 0) As %Status [ Internal ]
{
}

/// Get the Gateway definition object for a given Gateway name.
ClassMethod OpenGateway(pName As %String, Output pGateway As %DynamicObject) As %Status [ Internal ]
{
}

/// Return true if Gateway is running,  based on the status of the TCP port, and responsiveness to PING<br/>
/// If the port is not in use, then Gateway is not running on the port, otherwise, we will PING the port.
/// Parameters <var>pPing</var> is deprecated.
ClassMethod IsGatewayRunning(host As %String = "127.0.0.1", port As %String = "", pVerbose As %Boolean = 0, Output pSC As %Status, pPing As %Boolean = 1, allowedip As %String = "", sslConfiguration As %String = "") As %Boolean
{
}

/// Update local Gateway state
ClassMethod UpdateState(pPort As %String, pIsRunning As %Boolean) [ Internal ]
{
}

/// Add the status expressed in variable 's' to the activity log as either "Info" or "Error".
ClassMethod LogStatus(s As %Status, pGateway As %DynamicObject, pSource As %String, pVerbose As %Boolean = 0) [ Internal ]
{
}

/// Add the text message expressed in variable pMsg to the activity log as type pRecordType, with
/// information about the Gateway that originated the message.
/// If pVerbose=1, also write it to the current device.
/// [TO DO] If the current namespace is production-enabled, also log it in the Interoperability event log.
ClassMethod Log(pRecordType, pGateway As %DynamicObject, pText As %String, pVerbose As %Boolean = 0) [ Internal ]
{
}

ClassMethod GetJavaExecutableCommand(javaHomeDir As %String = "", Output javaExecutable As %String = "", normalizeWithSpaces As %Boolean = 1) As %Status [ Internal ]
{
}

ClassMethod GetPythonExecutableCommand(pythonPath As %String = "", Output pythonExecutable As %String = "", Output pythonVersion As %String = "", normalizeWithSpaces As %Boolean = 1) As %Status [ Internal ]
{
}

ClassMethod GetPythonGatewayScript(Output pythonGatewayScript As %String = "", scriptName As %String, normalizeWithSpaces As %Boolean = 1) As %Status [ Internal ]
{
}

ClassMethod GetPythonVersion(pythonExecutable As %String = "", Output pythonVersion As %String = "") As %Status [ Internal ]
{
}

ClassMethod GetChecksumPath(Output checksumPath As %String = "", serverName As %String) As %Status [ Internal ]
{
}

ClassMethod CompareChecksum(Output compareResult As %String = "", serverName As %String, pythonVersion As %String, pythonPath As %String, irisVersion As %String) As %Status [ Internal ]
{
}

ClassMethod SetupVirtualEnv(pythonSetupScript As %String, serverName As %String, pythonExecutable As %String, setupLevel As %String, irisVersion As %String) As %Status [ Internal ]
{
}

ClassMethod DeleteVirtualEnv(serverName As %String) As %Status [ Internal ]
{
}

/// Returns the primary Java version number.
/// For example, for 1.8.0_241, it returns 8. For 11.0.6, it returns 11.
/// Rules of how the complete version string is formatted can be found here:
/// http://www.oracle.com/technetwork/java/javase/versioning-naming-139433.html
ClassMethod GetJavaVersion(javaHomeDir As %String = "", Output version As %Integer, Output versionString As %String) As %Status [ Internal ]
{
}

ClassMethod CheckJavaVersionSupported(javaVersion As %String = "") As %Status [ Internal ]
{
}

ClassMethod GetJARDirectory(javaVersion As %Integer, Output JARDir As %String) As %Status [ Internal ]
{
}

ClassMethod GetJavaRequiredClassPath(pGateway As %DynamicObject, Output requiredClassPath As %String = "") As %Status [ Internal ]
{
}

/// Perform system startup task
ClassMethod OnSystemStartup(Output pConsoleLog As %String) [ Internal ]
{
}

ClassMethod GetJavaIntegratedMLJAR() As %String [ Internal ]
{
}

ClassMethod IntegratedMLJARInstalled() As %Boolean [ Internal ]
{
}

}
