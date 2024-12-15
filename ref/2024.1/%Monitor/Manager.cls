/// Provides system management functions for the MONITOR and Application Monitor
Class %Monitor.Manager Extends (%RegisteredObject, %XML.Adaptor) [ System = 3 ]
{

/// Activate a metrics class
ClassMethod Activate(mclass As %String) As %Integer [ Internal ]
{
}

/// Deactivate a metrics class
ClassMethod Deactivate(mclass As %String) As %Integer [ Internal ]
{
}

/// Remove a metrics class
ClassMethod Remove(mclass As %String) As %Integer [ Internal ]
{
}

/// Set the sample interval for a metrics class
ClassMethod ClassInterval(mclass As %String, ByRef interval As %Integer) As %Integer [ Internal ]
{
}

/// Purge a metrics class
ClassMethod Purge(mclass As %String) As %Integer [ Internal ]
{
}

/// Return summary active status: 0 - no active classes, else 1 (some active classes)
ClassMethod IsActive() As %Boolean
{
}

/// Start the System Monitor
ClassMethod Start() As %Integer
{
}

/// Refresh the System Monitor
ClassMethod Refresh() As %Integer
{
}

/// Halt the System monitor
ClassMethod Halt() As %Integer
{
}

/// Start the Application Monitor
ClassMethod StartApp() As %Integer [ Internal ]
{
}

/// Refresh the Monitor agent
ClassMethod RefreshApp() As %Integer [ Internal ]
{
}

/// Halt the monitor
ClassMethod HaltApp() As %Integer [ Internal ]
{
}

/// Signal the Monitor agent to run
ClassMethod SignalApp() As %Integer [ Internal ]
{
}

/// Clear the current system MONITOR counters
/// <br>
/// System = 1 indicates to specifically clear the system level counters
ClassMethod ClearSystemCounters(System As %Boolean = 0) As %Integer
{
}

/// Enable the system MONITOR counters<br>
/// <br>
/// System = 1 to separately enable only system level counters (other parameters ignored)<br>
/// <br>
/// Note that if System level counters are enabled separately, then they must also be specifically
/// stopped or cleared separately (use System = 1 for the Stop() and Clear() methods)<br>
/// <br>
/// Processes = the number of individual processes to collect counts for<br>
/// Routines = the number of individual routines to collect counts for<br>
/// Globals = the number of individual globals to collect counts for<br>
/// Network = the number of individual network nodes to collect counts for<br>
/// ProcessList = a $List of specific process IDs to collect counts for<br>
/// Databases = the number of individual databases to collect counts for<br>
/// RtnLines = choice of counting RtnLines metric (disabling this can reduce overhead)<br>
/// <br>
/// Note that the MONITOR will allocate 'slots' for the number of processes, globals,
/// routines and nodes you indicate. The first 'n' processes, routines, globals and
/// nodes to increment the counters will take those slots, and all counts from other
/// processes, globals, routines, and nodes will be added to the 'Other' slot. The maximum
/// number of 'slots' for each collection is 65,535.
/// <br>
/// These counters are the same metrics as reported by the PERFMON utility. If you plan
/// to view the data collected via ^PERFMON, you should ensure that the start time for
/// calculating per/second data is properly set for ^PERFMON by running the $$Clear^PERFMON()
/// function. This will reset the counters and start time.
ClassMethod StartSystemCounters(System As %Boolean = 0, Processes As %Integer = {$$$STmaxpid}, Routines As %Integer = 200, Globals As %Integer = 100, Network As %Integer = 5, ProcessList As %List, Databases As %Integer = 10, RtnLines As %Boolean = 1) As %Integer
{
}

/// Stop the system MONITOR counters<br>
/// <br>
/// System = 1 indicates to specifically stop the system level counters (if those were started separately)
ClassMethod StopSystemCounters(System As %Boolean = 0) As %Integer
{
}

/// Check if the system MONITOR counters are currently active<br>
/// <br>
/// Returns '0' if not active, or a positive integer if active.
/// <br>
/// A '1' indicates that PERFMON (or the SystemCounters in this class) are active.
/// <br>
/// A '2' indicates that %SYS.MONLBL (or the %Monitor.System.LineByLine class) is active.
/// <br>
/// If the 'System' parameter is included as '1', then this will also return a second
/// comma-delimited piece indicating the status of the 'system-only' level counters documented
/// above in the StartSystemCounters() method. So, a '1,1' means both PERFMON and the
/// system-only counters are active, but have been started separately. A '1,0' means that
/// just a PERFMON collection was started (which includes system-level counters, but they will
/// be stopped when PERFMON is stopped).
ClassMethod SystemCountersActive(System As %Boolean = 0) As %String
{
}

/// Set sampling interval
ClassMethod Interval(interval As %Integer) As %String
{
}

/// Set application sampling interval
ClassMethod AppInterval(interval As %Integer) As %String [ Internal ]
{
}

/// Set application default notification scheme
ClassMethod AppNotify(method As %Integer) As %Integer [ Internal ]
{
}

/// Set application default notification method
ClassMethod AppNotifyMethod(ByRef method As %String, ByRef class As %String) As %Integer [ Internal ]
{
}

/// Save latest errors generated by executing an Application Monitor user-defined classe. This would include errors
/// from methods such as %Save(), Initialize() or GetSample(). A common example of this is trying to %Save a sample
/// with a %String property longer than 50 characters. Since these errors can happen everytime we fetch a sample,
/// we don't really want to fill a logfile here. So we just save the latest error for each class/method.
/// <br>
/// <br>'Enable' may be 1 or 0 to enable/disable debugging. Enable=0 disables debugging for all classes and clears the error list. No value leaves the setting as is, and it returns the current setting.
/// <br>'ClassName' can specify a Class to debug (if Enable=1) or select Errors for a Class. No value means all Application Monitor classes.
/// <br>'Errors' returns an array of strings for the latest errors: Errors(Class,Method)=error_string
ClassMethod AppDebug(ByRef Enable As %Boolean, ClassName As %String, ByRef Errors As %String) As %Status [ Internal ]
{
}

/// Set email SMTP Server name.
/// Returns current Server name (input argument is optional).
ClassMethod SmtpServer(server As %String) As %String
{
}

/// Set email SMTP Server port.
/// Returns current Server port (input argument is optional).
ClassMethod SmtpServerPort(port As %String) As %String
{
}

/// Set email SMTP SSLConfiguration and UseSTARTTLS (as defined in %Net.SMTP).
/// Returns current SSLConfiguration and UseSTARTTLS (input arguments are optional).
ClassMethod SmtpServerSSL(ByRef SSLConfig As %String, ByRef UseSTARTTLS As %Boolean)
{
}

/// Email enabled
ClassMethod EnableEmail(enable As %Boolean) As %Boolean
{
}

/// Set email sender
ClassMethod EmailSender(sender As %String) As %String
{
}

/// Set email SMTP user name
ClassMethod SmtpUserName(name As %String) As %String
{
}

/// Set email SMTP password
ClassMethod SmtpPassword(passwd As %String) As %String
{
}

/// Set email recipients
ClassMethod Recipients(recipients As %List) As %List
{
}

/// Set Application email SMTP Server name. Returns current Server Name ('server' is optional)
/// <br>Optionally, you may also set/get the Port, SSLConfiguration, and UseSTARTTLS properties.
/// <br> See the %Net.SMTP class for descriptions and defaults of these properties.
ClassMethod AppSmtpServer(Server As %String, ByRef Port As %String, ByRef SSLConfiguration As %String, ByRef UseSTARTTLS As %Boolean) As %String [ Internal ]
{
}

/// Email enabled
ClassMethod AppEnableEmail(enable As %Boolean) As %Boolean [ Internal ]
{
}

/// Set email sender
ClassMethod AppEmailSender(sender As %String) As %String [ Internal ]
{
}

/// Set email SMTP user name
ClassMethod AppSmtpUserName(name As %String) As %String [ Internal ]
{
}

/// Set email SMTP password
ClassMethod AppSmtpPassword(passwd As %String) As %String [ Internal ]
{
}

/// Set email recipients
ClassMethod AppRecipients(recipients As %List) As %List [ Internal ]
{
}

/// Set alert level
ClassMethod AlertLevel(level As %Integer) As %Integer [ Internal ]
{
}

/// Signal AppMonSensor to clear the 'Notified' flag for a NotifyOnce Alert.
ClassMethod AlertClear(name As %String) As %Status [ Internal ]
{
}

/// Test method for custom handling Application Monitor Alerts
ClassMethod AlertTest(name As %String, values As %List) As %Status [ Internal ]
{
}

/// Register system classes in current namespace
ClassMethod Register(classname As %String, update As %Boolean = 0) As %Status [ Internal ]
{
}

}
