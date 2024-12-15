/// API for managing the log daemon.
/// See <class>Config.Logging</class> for changing the log daemon's
/// configuration values, by using the inherited Config.Logging::Get and
/// Config.Logging::Modify methods.
/// All the methods that modify the state of the log daemon
/// require USE permission for the %Admin_Manage resource.<br><br>
/// The log daemon is the LOGDMN routine. At predetermined intervals
/// it scans various sources of logs (currently only mgr/messages.log, and the DB in %SYS.Audit.cls),
/// rewrites the messages in a specified format (name-value pairs (NVP) or JSON)
/// and sends them through a pipe to be consumed by an external program.
/// The command to launch the external program is found in Config.Logging::ChildProcessLaunchCommand
/// For more info on configuring the log daemon, view the class documentation in <class>Config.Logging</class>
Class SYS.LogDmn Extends %SYSTEM.Help
{

/// Enable the log daemon
/// If the log daemon is enabled, then the the daemon will be launched automatically
/// every time the instance starts up.
/// IMPORTANT:
/// If the daemon is stopped and this method (##class(SYS.LogDmn).Enable())
/// is called, then the daemon will start up automatically.
ClassMethod Enable() As %Status
{
}

/// Disable the log daemon
/// If the log daemon is disabled, the daemon will NOT be launched on instance startup
/// and any attempts to start the daemon via ##class(SYS.LogDmn).Start() will fail with an error
/// that instructs the caller to call ##class(SYS.LogDmn).Enable().
/// IMPORTANT:
/// If the daemon is running and this method (##class(SYS.LogDmn).Disable())
/// is called, then the daemon will stop automatically.
ClassMethod Disable() As %Status
{
}

/// Start the log daemon
/// The log daemon must be enabled be this method can be called. You can enable the log daemon by calling
/// ##class(SYS.LogDmn).Enable()
///
/// Parameters:
/// pid - Deprecated and optional parameter, it is recommended you do not pass it in.
///     If passed by reference, the pid variable will be set to the PID of the log daemon process, otherwise it will be some non positive number.
///     See the ##class(SYS.LogDmn).Status() explaining how to interpret and non positive value for pid.
/// timeout - The number of seconds we wait
///    for the daemon process to start before we declare it to be unnresponsive.
ClassMethod Start(ByRef pid As %Integer, timeout As %Double = 5) As %Status
{
}

/// Stop the log daemon
ClassMethod Stop() As %Status
{
}

/// Restart the log daemon
///
/// Parameters:
/// pid - Deprecated and optional parameter, it is recommended you do not pass it in.
///     If passed by reference, the pid variable will be set to the PID of the log daemon process, otherwise it will be some non positive number.
///     See the ##class(SYS.LogDmn).Status() explaining how to interpret and non positive value for pid.
ClassMethod Restart(ByRef pid As %Integer) As %Status
{
}

/// Returns status of the log daemon<br>
/// <ul>
/// <li>(PID) - running </li>
/// <li> 0 - not running</li>
/// <li>-1 - died</li>
/// </ul>
ClassMethod Status() As %Integer
{
}

}
