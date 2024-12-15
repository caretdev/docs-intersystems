/// Zen Report Render Server definition and utility methods/queries.
/// Also a superclass for other types of Zen Report Hot Servers.
Class %ZEN.Report.RenderServer Extends %Persistent [ Deprecated, System = 3 ]
{

Parameter DOMAIN = "%Utility";

/// "0" indicates a Render Server.
/// Subclasses must override this parameter.
Parameter TYPE = 0;

/// Get the Zen Report Hot Server name given its port.
ClassMethod PortToName(pPort As %String, Output pName As %String) As %Status
{
}

/// Determine the state of a Hot Server: <br>
/// 0 = Inactive and ready to be started; <br>
/// 1 = Active and responsive to PING; <br>
/// 2 = Unresponsive (one or both ports are in use but it is unresponsive to PING); <br>
/// 3 = Troubled (main port is not in use but it is responsive to PING); <br>
/// 4 = Error with port and/or ping port configuration; <br>
/// 5 = Ping returns mismatching main port and/or server type.
ClassMethod GetState(port As %Integer, pingport As %Integer, timeout As %Integer = 5, Output reportedPort As %String, Output reportedType As %String) As %Integer
{
}

/// / Startup a Zen Report Hot Server given its name.
ClassMethod Start(pName As %String, Output pPreviousState As %Integer, Output pReturn As %String, pVerbose As %Boolean = 0) As %Status
{
}

/// Startup a Zen Report Hot Server given its main port.
ClassMethod StartByPort(pPort As %String, Output pPreviousState As %Integer, Output pReturn As %String, pVerbose As %Boolean = 0) As %Status
{
}

/// Stop a Zen Report Hot Server given its name.
ClassMethod Stop(pName, pVerbose As %Boolean = 0) As %Status
{
}

/// Generate the command line to run the script to start up the Render Server.
/// Subclasses must override this method.
ClassMethod CmdLine(pReportServer As %ZEN.Report.RenderServer, Output pCmd As %String, Output pCmdArgs) As %String
{
}

/// Lookup Zen Report Render Servers, get basic data plus state.
/// Subclasses must override query methods as needed.
ClassMethod ByServerExecute(ByRef qHandle As %Binary) As %Status [ Internal ]
{
}

ClassMethod ByServerFetch(ByRef qHandle As %Binary, ByRef Row As %List, ByRef AtEnd As %Integer = 0) As %Status [ Internal, PlaceAfter = ByServerExecute ]
{
}

ClassMethod ByServerClose(ByRef qHandle As %Binary) As %Status [ Internal, PlaceAfter = ByServerExecute ]
{
}

/// Lookup all Zen Report Render Servers.
ClassMethod LogStart(time As %String = "0", name As %String = "", cmd As %String = "", return As %String)
{
}

ClassMethod LogStartFailure(time As %String = "0", name As %String = "", state As %String = "", tSC As %String = "")
{
}

ClassMethod LogReportInfo(time As %String = "0", endtime As %String = "0", port As %String = "", tSC As %String = "", info As %String = "", filename As %String = "")
{
}

ClassMethod LogStop(time As %String = "0", name As %String = "", tSC As %String = "")
{
}

/// Invoked on system shutdown to terminate the external Hot JVM processes.
/// Lookup active (registered) Zen Report Servers.
ClassMethod TerminateAllRenderServers()
{
}

/// Invoked on system shutdown to terminate the external Hot JVM processes.
/// Lookup all Zen Report Server definitions.
ClassMethod TerminateAllRenderServers2()
{
}

/// Lookup all servers of all types
/// Check if there exists a Zen Report Hot Server with a given name.
ClassMethod ZenReportServerExists(pName As %String, Output pType As %String) As %Boolean
{
}

/// Index for property Name.
/// Unique mnemonic identifier.
Property Name As %String [ Required ];

/// Type is "0" (or null/empty for backward compatibility) for Render Servers.
Property ServerType As %String [ InitialExpression = "0" ];

/// IP address or name of the machine where the JVM to be used by the Render Server is located.
/// Currently not exposed to the UI as we only support local JVMs.
Property Server As %String [ InitialExpression = "127.0.0.1", Required ];

/// TCP port number for communication with the Render Server.
Property Port As %String [ Required ];

/// TCP port number for pinging the Render Server.
Property PingPort As %String [ Required ];

/// Number of threads.
Property NumThreads As %Integer(MAXVAL = 100, MINVAL = 1) [ InitialExpression = 5 ];

/// Number of ping threads.
Property NumPingThreads As %Integer(MAXVAL = 10, MINVAL = 1) [ InitialExpression = 5 ];

/// Log level: <br>
/// 0 = no logging, <br>
/// 1 = log errors, <br>
/// 2 = log warnings, <br>
/// 3 = log info (default).
/// The logs are created in the user's home directory.
/// These logs have the name renderserver.log.n.  renderserver.log.0 is the current log.
Property LogLevel As %String [ InitialExpression = "3", Required ];

/// Fully qualified name of the log file.
/// If a file name is not specified and logging is enabled, the file used is renderserver.log in the
/// user's home directory (or the root directory if the home directory does not exist).
Property LogFile As %String(MAXLEN = 260);

/// Maximum size, in bytes, for each log file.
/// The default is 32000 bytes and the maximum allowed is 2147483647 bytes (2 GB). A value of 0 indicates no maximum defined.
Property MaxLogFileSize As %Integer(MAXVAL = 2147483647, MINVAL = 0) [ InitialExpression = 32000 ];

/// Number of log files accumulated before we recycle through log files.
/// The default is 100.
Property LogRotationCount As %Integer(MAXVAL = 1000, MINVAL = 1) [ InitialExpression = 100 ];

/// Number of seconds to wait for the Render Server to start up.  The default is 5 s.
Property InitializationTimeout As %Integer(MAXVAL = 300, MINVAL = 2) [ InitialExpression = 5 ];

/// Number of seconds to wait for a connection to be established with the Render Server.  The default is 5 s.
Property ConnectionTimeout As %Integer(MAXVAL = 60, MINVAL = 2) [ InitialExpression = 5 ];

/// Initial size of rendering queue.
/// If left blank (default) it will be the same as the number of threads; otherwise it must be an integer between 1 and the number of threads.
Property InitQueueSize As %Integer;

/// Miliseconds to wait to poll memory threshold.  Used for memory checking.  The default is 0 (off).
Property ThresholdPollingPeriod As %Integer(MINVAL = 0) [ InitialExpression = 0 ];

/// Number of bytes that define memory usage threshold.  Used for memory checking.  The default is 0 (off).
Property MemoryThreshold As %Integer(MINVAL = 0) [ InitialExpression = 0 ];

/// Location of the JVM (similar to the JAVA_HOME environment variable).  It is used to find the target JVM
/// and assemble the command to start the Render Server. <br>
/// If there is a default JVM on the machine that is usable without the need to specify its location,
/// this setting may be left blank.
Property JavaHome As %String(MAXLEN = 260);

/// Optional additional arguments to be passed to the Java Virtual Machine (JVM) to include when assembling the
/// command to start the Render Server. <br>
/// For example, you can specify system properties: <b>Dsystemvar=value</b> <br>
/// or set the maximum heap size: <b>Xmx256mb</b> <br>
/// and so on, as needed.
Property JVMArgs As %String(MAXLEN = 32000);

/// Fully qualified name of the renderer configuration file.
/// <br>Note: This property applies to Render Servers only.
Property ConfigFile As %String(MAXLEN = 260);

/// This callback method is invoked by the <METHOD>%ValidateObject</METHOD> method to
/// provide notification that the current object is being validated.
/// <P>If this method returns an error then <METHOD>%ValidateObject</METHOD> will fail.
Method %OnValidateObject() As %Status [ Internal, Private, ServerOnly = 1 ]
{
}

}
