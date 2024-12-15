/// This is the API for setting and getting the configuration values for the log daemon.
/// Use this class to set and get the configuration values for the log daemon.
/// See <class>SYS.LogDmn</class> for the top level API for starts and stops the daemon.
Class Config.Logging Extends (%Persistent, Config.CommonSingleMethods, Config.CommonProperties, %SYSTEM.Help) [ Final, Inheritance = right, System = 4 ]
{

/// This is the command the parent log daemon will use to invoke the daemon child process on start up.
/// Everytime the parent log daemon scans the messages.log and %SYS.Audit database, it will send the new messages found in these places
/// to the child process's stdin. While this child process could be the demo executable we provide
/// <pre><mgr>/bin/irislogd</pre>, it can technically be any executable
/// so long as that executable is daemon (so it runs as long as the log daemon) and listens to its standard in.
Property ChildProcessLaunchCommand As %String [ InitialExpression = {##Expression("""irislogd"_$SELECT($$$ISWINDOWS:".exe",1:"")_" -f /tmp/irislogd.log""")}, Internal ];

ClassMethod ChildProcessLaunchCommandIsValid(value As %String) As %Status
{
}

/// Parses the command string and returns whether the pipe command input is valid
ClassMethod ParseChildProcessLaunchCommand(pipecmd As %String, ByRef argc As %Integer, ByRef argv As %Integer) As %Status [ Internal ]
{
}

/// Property is 1 (true) if the logging daemon is enabled.
/// If property is 0 (false), any attempt to start the daemon will fail.
/// Setting <property>Enabled</property> to 1 will NOT start the daemon.
/// To start the daemon that, invoke ##class(SYS.LogDmn).Start() after setting this property equal to 1.
Property Enabled As %Boolean [ InitialExpression = 0 ];

/// This property determines the format of log entries.
/// This property can currently take two values: "NVP" and "JSON"
/// This property is not case sensitive.
/// If Format="NVP", then entries will look like
/// when="2023-10-17 19:25:16.190" pid=89734 level=INFO event=Audit.OSCommand text="Execute O/S command" ...
/// If Format="JSON" then entries will look like
/// { "when": "2023-10-17 18:47:26.244", "pid": "89317" }
Property Format As %String(VALUELIST = ",NVP,JSON") [ InitialExpression = "NVP", SqlComputeCode = {Set {*}=$ZCONVERT({*}, "U")}, SqlComputed ];

ClassMethod FormatNormalize(value As %String(VALUELIST=",NVP,JSON")) As %String(VALUELIST=",NVP,JSON")
{
}

Method FormatSet(value As %String) As %Status [ Internal ]
{
}

/// The number of seconds the log daemon waits before scanning the messages.log file and %SYS.Audit log
/// for new entries. The messages.log file can be determined by calling
/// ##class(Config.config).GetConsoleFileName()
/// <property>Interval</property> may be expressed as a decimal up to two digit
/// points (to the 10th of a millisecond) and can be no larger than 3600 (equivalent to 1 hour).
/// For example, the following values of  <property>Interval</property> are valid
/// 0.10 - Wait 100 ms before rescanning for the messages.log and %SYS.Audit log for new entries
/// 0.01 - Wait 10 ms before rescanning for the messages.log and %SYS.Audit log for new entries
/// 1.5 - Wait 1.5 seconds before rescanning the messages.log and %SYS.Audit log for new entries
/// 10 - Wait 10 seconds before rescanning the messages.log and %SYS.Audit log for new entries
/// 3600 - Wait 3600 seconds (1 hour) before rescanning the messages.log and %SYS.Audit for new entries
Property Interval As %Decimal(MAXVAL = 3600, MINVAL = 0.01) [ InitialExpression = 10 ];

/// Ensure the bounds are respected for the Interval configuration setting
ClassMethod IntervalIsValid(value As %Decimal(MAXVAL=3600,MINVAL=0.01)) As %Status
{
}

/// This property sets the minimum level of message from the console.log that the logging daemon will
/// emit. This property is case insensitive. For instance, if <property>Level</property> is "INFO", then the logging daemon will
/// only emit messages from the console.log whose level is INFO, WARN, SEVERE, or FATAL.
/// Set <property>Level</property> to be "FATAL" if you only wish the log daemon
/// to be terse and only consider fatal errors, and set <property>Level</property> to be "DEBGUG2"
/// if you wish the log daemon verbose and emit all messages from the messages.log and %SYS.Audit log
Property Level As %String(VALUELIST = ",DEBUG2,DEBUG,INFO,WARN,SEVERE,FATAL") [ InitialExpression = "WARN", SqlComputeCode = {Set {*}=$ZCONVERT({*}, "U")}, SqlComputed ];

ClassMethod LevelNormalize(value As %String(VALUELIST=",DEBUG2,DEBUG,INFO,WARN,SEVERE,FATAL")) As %String(VALUELIST=",DEBUG2,DEBUG,INFO,WARN,SEVERE,FATAL")
{
}

Method LevelSet(value As %String) As %Status [ Internal ]
{
}

/// Load the parameters into memory and activate.<br>
/// Parameters:<br>
/// <b>Obj</b> = Handle to the object which caused the load. If "",
/// then load everything, only called from STU.<br>
/// <b>Flags</b> = Type of modification.<br>
/// 0 - Modify<br>
/// 1 - Create/Insert<br>
ClassMethod Load(Obj As %ObjectHandle = "", Flags As %Integer = 1) As %Status [ Internal ]
{
}

/// This method sets the log daemon configuration options to their default values.
/// You can find the default value for each configurable property by looking at the InitialExpression
/// property keyword in this class (<class>Config.Logging</class>)
ClassMethod SetDefault() As %Status
{
}

/// This helper method should not be invoked directly
/// It is called by <class>Config.CPF</class> convertTo202337
/// and populates kvPairs with kvPairs(<sectionFieldName>)=<value>
/// It contains the domain logic necessary to translate from the old
/// log daemon configuration system and values found in ^SYS("LOGDMN", "config")
/// to the new one which will now be stored in this CPF. If there is no
/// pre-existing log daemon configuration, the default (and sane) values for each config property are used.
ClassMethod convertTo20337(Output kvPairs) [ Internal ]
{
}

}
