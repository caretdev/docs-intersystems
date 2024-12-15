/// This class is for InterSystems internal use.
/// Helper methods for %Net.Remote classes.
Class %Net.Remote.Utility Extends %RegisteredObject [ System = 4 ]
{

/// This query returns all classes found inside pFilename (passed to Execute() as the 1st argument).
/// Must also pass the name/IP of the server (2nd argument) and port (3rd argument) of a running Object Gateway Server.
ClassMethod GetAllClassesExecute(ByRef qHandle As %Binary, pFilename As %String, pServer As %String, pPort As %String) As %Status
{
}

ClassMethod GetAllClassesFetch(ByRef qHandle As %Binary, ByRef Row As %List, ByRef AtEnd As %Integer = 0) As %Status [ PlaceAfter = GetAllClassesExecute ]
{
}

ClassMethod GetAllClassesClose(ByRef qHandle As %Binary) As %Status [ PlaceAfter = GetAllClassesExecute ]
{
}

/// Run a command using a CPIPE device.
/// The first unused CPIPE device is allocated and returned in pDevice.  Upon exit the device is open;
/// it is up to the caller to close that device when done with it. <br/>
/// <var>pTimeoutOpen</var> indicates how long to wait for the initial OPEN and <var>pTimeoutRead</var> indicates how long to wait between reading the output chunks</var>. <br/>
/// Note that CPIPE (and PIPE) devices are supported on Unix and Windows, but not on VMS.  If this method is invoked
/// on an instance installed on VMS, execution flow will be diverted to method <method>RunCommandViaZF</method>
/// which uses a different technique.
ClassMethod RunCommandViaCPIPE(pCmd As %String, Output pDevice As %String, Output pOutput As %String, pTimeoutOpen As %Integer = 10, pTimeoutRead As %Integer = 5, ByRef pCmdArgs, ByRef pEnvVars) As %Status
{
}

/// Run a command using $ZF(-100) and an external temporary file to store the command output. <br>
/// If <var>pDeleteTempFile</var> is 0 (false), the temporary file is not deleted; in this case, it is up to the caller to delete it when done with it.
ClassMethod RunCommandViaZF(pCmd As %String, Output pTempFileName As %String, Output pOutput As %String, pOpenTimeout As %Integer = 5, pDeleteTempFile As %Boolean = 1, Output pRetCode As %String, ByRef pCmdArgs, pAsynchronous As %Boolean = 0) As %Status
{
}

/// Check if Gateway is running and optionally if it is responding to PING. <br/>
/// Same as method ##class(%Net.Remote.Service).IsGatewayRunning(pServer, pPort, pVerbose, pPing, pInterface).
ClassMethod CheckGateway(pServer As %String, pPort As %String, pVerbose As %Boolean = 0, pPing As %Boolean = 1, pInterface As %String = "") As %Boolean
{
}

/// Check if the server address or name corresponds to the local machine.
ClassMethod IsServerLocal(pServer As %String) As %Boolean
{
}

/// This method tries to detect if a local port is in use. It does not check that the:
///   - host is local
///   - port is within the TCP range [0,65535]
ClassMethod CheckLocalPortFree(host As %String = "127.0.0.1", port As %Integer, interface As %String = "") As %Boolean [ Internal ]
{
}

/// Checks for production-enabled namespace.
ClassMethod IsEnsembleNamespace() As %Boolean
{
}

/// Generates a Pass phrase for a given Port and records.
/// It returns the Pass phrase to use on the Command Line
/// Uses pNoPassPhrase to clear a previous PassPhrase for this port
ClassMethod GeneratePassphrase(pName As %String = "", pNoPassphrase As %Boolean = 0) As %String
{
}

/// This method is deprecated
ClassMethod RecordPassphrase(pName As %String = "", pPassphraseList As %String) As %Boolean [ Internal ]
{
}

/// Clears recording of the last tPassPhrase
ClassMethod ClearPassphrase(pName As %String = "") [ Internal ]
{
}

ClassMethod GetPassphrase(pName As %String = "", Output pPhrase As %Integer = 0, Output pPhraseHex As %String = "") As %Boolean [ Internal ]
{
}

/// Internal helper method for GeneratePassphrase. For InterSystems use.
ClassMethod toHex(pValue As %String = "", pExactLengh As %Integer = 8, pNormalOrder As %Boolean = 1) As %String [ Internal ]
{
}

ClassMethod getAuthenticationToken() As %String
{
}

}
