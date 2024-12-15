/// This class allows you to modify and view the [Startup] section of the CPF file through
/// programmatic APIs. While properties are usually modified through the System Management
/// portal, there may be some occasion where modifying them through the API's is best
/// for your system. In all the Config methods, if you do not specify the CPFFile parameter,
/// the currently active CPF file is used. If you wish to modify a CPF file which is not
/// the currently active one, specify the CPF file you wish to modify in the method call.<br>
/// The Flags parameter does not normally need to be specified; the defaults are usually
/// sufficient for most cases.<br>
/// You can use either the provided API's (Get/Modify) to modify the properties by passing
/// in the correct parameters, or use Object syntax to open and directly manipulate the config
/// objects.
/// <br>
/// <br>
/// EXAMPLE:<br>
/// <br>
/// <pre>
/// ; Use class methods to modify properties
/// %SYS>s Status=##Class(Config.Startup).Get(.Properties)
/// %SYS>i 'Status w !,"Error="_$SYSTEM.Status.GetErrorText(Status)
/// %SYS>zw Properties("MaxConsoleLogSize")
/// Properties("MaxConsoleLogSize")=5
/// %SYS>s Properties("MaxConsoleLogSize")=10
/// %SYS>s Status=##Class(Config.Startup).Modify(.Properties)
/// %SYS>i 'Status w !,"Error="_$SYSTEM.Status.GetErrorText(Status)
/// ; Now use Objects to modify properties
/// %SYS>s Obj=##Class(Config.Startup).Open()
/// %SYS>w Obj.MaxConsoleLogSize
/// 10
/// %SYS>s Obj.MaxConsoleLogSize=20
/// %SYS>s Status=Obj.%Save()
/// %SYS>i 'Status w !,"Error="_$SYSTEM.Status.GetErrorText(Status)
/// </pre>
Class Config.Startup Extends (%Persistent, Config.CommonSingleMethods, Config.CommonProperties, %SYSTEM.Help) [ Final, Inheritance = right, System = 4 ]
{

/// List of properties which may or may not be in the CPF file.<br>
/// They have a corresponding %Boolean property to determine if they
/// are in the file or not. For example, the property "DebugFlags"
/// has a %Boolean "DebugFlagsPresent" property associated with it.
/// <br>
Parameter PROPERTIESMAYBEINCPF = "EnableSharding";

/// Execute the CALLIN^%ZSTOP routine entry during calling Halt.<br>
Property CallinHalt As %Boolean [ InitialExpression = 1, Required ];

/// Executes the CALLIN^%ZSTART routine entry during Callin startup.<br>
Property CallinStart As %Boolean [ InitialExpression = 1, Required ];

/// Name used to append to $J when Config.Miscellaneous.NodeNameInPid is set.<br>
Property CliSysName As %String(MAXLEN = 64, MINLEN = 0);

/// Stores a list of allowed database block sizes.<br>
Property DBSizesAllowed As %String(MINLEN = 4) [ InitialExpression = "8192", Required ];

/// Port for the Super Server.<br>
Property DefaultPort As %Integer [ InitialExpression = 1972, Required ];

/// IP Address Super Server will bind to.<br>
/// By default, the Super Server accepts requests on all addresses, but if a DefaultPortBindAddress is specified it will accept requests only on that address.
/// You should insure that all clients, including the CSP Gateway, are also configured to connect to the address you specify.
/// If no address is specified, the Super Server will accept requests directed to any address on the server.
Property DefaultPortBindAddress As Config.Host(MAXLEN = 256, MINLEN = 0);

/// Enable Sharding.<br>
Property EnableSharding As %Boolean [ InitialExpression = 0, Internal ];

Property EnableShardingPresent As %Boolean [ InitialExpression = 0, Internal ];

/// Start the VSS Backup Daemon.<br>
Property EnableVSSBackup As %Boolean [ InitialExpression = 0, Required ];

/// Auto start the Interoperability productions.<br>
Property EnsembleAutoStart As %Boolean [ InitialExpression = 0, Required ];

/// Number of days to store application error logs before purging them.<br>
Property ErrorPurge As %Integer(MAXVAL = 1000, MINVAL = 1) [ InitialExpression = 30, Required ];

/// Use FIPS 140-2 compliant library for database encryption.<br>
Property FIPSMode As %Boolean [ InitialExpression = {..InitFIPSMode()}, Required ];

/// System is operating in an IPv6 network, with IPv6 addresses.<br>
/// 0 - IPv6 is not enabled.<br>
/// 1 - IPv6 is enabled.<br>
Property IPv6 As %Boolean [ InitialExpression = 0, Required ];

/// Execute the JOB^%ZSTOP routine entry during JOB process Halt.<br>
Property JobHalt As %Boolean [ InitialExpression = 1, Required ];

/// Number of job servers you want the system to start up with.<br>
Property JobServers As %Integer(MAXVAL = 2000, MINVAL = 0) [ InitialExpression = 0, Required ];

/// Execute the JOB^%ZSTART routine entry during JOB process startup.<br>
Property JobStart As %Boolean [ InitialExpression = 1, Required ];

/// LicenseID is used to request the license key from the License Server at startup, if there is no local key file.<br>
Property LicenseID As %String(MAXLEN = 32);

/// Maximum size in megabytes the IRISTEMP database will be when the system is
/// restarted.<br> When the system restarts, the IRISTEMP database will be truncated to
/// this size. If 0, the IRISTEMP database will not be truncated.<br>
Property MaxIRISTempSizeAtStart As %Integer(MAXVAL = 1000000, MINVAL = 0) [ InitialExpression = 0, Required ];

/// Maximum size in megabytes of the messages.log after which it will be automatically switched.<br>
Property MaxConsoleLogSize As %Integer(MAXVAL = 500, MINVAL = 1) [ InitialExpression = 5, Required ];

/// Set the IRIS password using a cryptographic hash and salt.<br>
/// The format of this field is:  <i>hash</i>,<i>salt</i>,<i>workFactor</i>,<i>algorithm</i><br>
/// <ul>
/// <li>Hash: Hex-encoded output of PBKDF2 function.  Must be correct number of bits for Algorithm.
/// <li>Salt: Hex-encoded salt input to PBKDF2.  Must be correct number of bits for Algorithm.
/// <li>WorkFactor: WorkFactor input for PBKDF2.
/// <li>Algorithm: A valid <a href="%25CSP.Documatic.cls?PAGE=CLASS&LIBRARY=%25SYS&CLASSNAME=Security.PBKDF2Alg">Security.Datatype.PBKDF2Alg</a> value.
/// </ul>
Property PasswordHash As %String(MAXLEN = 10000);

/// Execute the LOGIN^%ZSTOP routine entry during terminal user Halt.<br>
Property ProcessHalt As %Boolean [ InitialExpression = 1, Required ];

/// Execute the LOGIN^%ZSTART routine entry during terminal user startup.<br>
Property ProcessStart As %Boolean [ InitialExpression = 1, Required ];

/// Enter the time, in seconds, InterSystems IRIS should wait for shutdown to complete normally before
/// timing out and forcing a shutdown.<br>
Property ShutdownTimeout As %Integer(MAXVAL = 100000, MINVAL = 120) [ InitialExpression = 300, Required ];

/// Execute the SYSTEM^%ZSTOP routine entry during system shutdown.<br>
Property SystemHalt As %Boolean [ InitialExpression = 1, Required ];

/// The SystemMode is displayed in the title of the Management Portal web page. Currently, SystemMode string values recognized by the Management Portal include:<br>
/// <ul>
/// <li>LIVE
/// <li>TEST
/// <li>DEVELOPMENT
/// <li>FAILOVER
/// </ul>
Property SystemMode As %String(MAXLEN = 32);

/// Executes the SYSTEM^%ZSTART routine entry during system startup.<br>
Property SystemStart As %Boolean [ InitialExpression = 1, Required ];

/// Directory for temporary files.<br>
Property TempDirectory As %SysPath [ InitialExpression = "Temp" ];

/// Set the format of the terminal prompt.<br>
/// This is a comma separated string of values which set the default terminal prompt for the system.<br>
/// Values:<br>
/// 0 - Use only ">" for the prompt.<br>
/// 1 - Host name, also known as the current system name. The name assigned to your
/// computer. For example, LABLAPTOP&gt;. This is the same for all of your terminal
/// processes.<br>
/// 2 - Namespace name. For example, %SYS&gt;. The current namespace name is contained
/// in the $NAMESPACE special variable. It can be an explicit namespace name or an
/// implied namespace name.<br>
/// 3 - Config name. The name of your system installation. For example, DEVELOPMENT&gt;.
/// This is the same for all of your terminal processes.<br>
/// 4 - Current time, expressed as local time in 24-hour format with whole seconds.
/// For example, 15:59:36&gt;. This is the static time value for when the prompt was
/// returned. This value changes for each prompt.<br>
/// 5 - pid. The Process ID for your terminal. For example, 2336&gt;. This is different
/// for each terminal process. This value can also be returned from the $JOB special
/// variable.<br>
/// 6 - Username. For example, fred&gt;. This is the same for all of your terminal
/// processes.<br>
/// 7 - Elapsed time executing the last command, in seconds.milliseconds. For example,
/// .000495&gt;. Leading and trailing zeros are suppressed. This changes for each prompt.<br>
/// 8 - Transaction Level. For example, TL1&gt;.<br><br>
/// The order of the values in the string determines the order the values appear in the prompt.
/// For example TerminalPrompt="2,1" will give you a terminal prompt of "%SYS:HostName>"
Property TerminalPrompt As %String [ InitialExpression = "8,2", Required ];

/// Start the private WebServer.<br>
Property WebServer As %Boolean [ InitialExpression = {$$PlatformId^%SYS.LICENSE()=66}, Required ];

/// An optional setting to restrict the DNS Name / IP Address for which the Private Web Server
/// will accept incoming connections. For VMS, this is the IP address of the node where the
/// webserver is running.<br>
Property WebServerName As %String;

/// Private or external WebServer port.<br>
Property WebServerPort As %Integer [ InitialExpression = 52773, Required ];

/// Protocol used by WebServer.<br>
/// Returned by <CLASS>%Studio.General</CLASS> GetWebServerPort().<br>
/// If empty, <code>"http"</code> is used unless <PROPERTY>WebServerPort</PROPERTY> is <code>443</code>.<br>
Property WebServerProtocol As %String(VALUELIST = ",http,https") [ InitialExpression = "http" ];

/// Name of the SSL configuration used for creating CSP sessions for web pages opened by IDEs.<br>
Property WebServerSSLConfiguration As %String(MAXLEN = 64);

/// URL prefix.<br>
Property WebServerURLPrefix As %SysPath;

/// Run the user defined startup from the ZSTU routine at system startup.<br>
Property ZSTU As %Boolean [ InitialExpression = 1, Required ];

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

/// Load CliSysName and longid into memory.<br>
ClassMethod InitCliSysName() As %Status [ Internal ]
{
}

/// get the initial FIPSMode value from OS setup.
ClassMethod InitFIPSMode() As %Boolean
{
}

/// Purge old application errors.<br>
ClassMethod ErrorPurge() As %Status [ Internal ]
{
}

/// Restart the private webserver.<br>
ClassMethod RestartWebServer() As %Status
{
}

/// Request a test page (ping) from the private webserver.<br><br>
/// This is valid only for Windows and Unix.
/// If run on VMS, or the web server is configured to not start, it always returns success.<br>
/// Parameters:<br>
/// Delay - Number of seconds to wait before making request.<br>
ClassMethod CheckWebServerStatus(Delay As %Integer = 0, TCPPort As %Integer = 0) As %Status
{
}

/// Set the terminal prompt to the system default.<br>
ClassMethod SetTerminalPrompt() As %Status
{
}

/// Restart the private webserver.<br>
ClassMethod StopWebServer(Restart As %Integer = 0) As %Status
{
}

/// Switch the messages.log file if it is larger than the max size defined.<br>
/// On a MultiValue system, it will also switch the mv.log file if it grows too large.<br>
ClassMethod SwitchConsoleLog() As %Status
{
}

/// Rename console log file to a new file with a '.old' suffix
/// This is separated from SwitchConsoleLog() so it can also be used by the System Monitor
/// No return status, errors are just written to log file
ClassMethod MoveConsoleLog(ConsoleLog As %String, usersize As %Integer)
{
}

ClassMethod %OnAfterActivateCallback(Obj As %ObjectHandle, Flags As %Integer) As %Status [ Internal ]
{
}

ClassMethod %OnBeforeSaveCallBack(insert As %Integer, Obj As %ObjectHandle) As %Status [ Internal ]
{
}

Method %OnValidateObject() As %Status [ Internal ]
{
}

/// Change the password of all enabled accounts with non-empty role<p>
/// <b>pHash</b>		Hashed password in binhex format<br>
/// <b>pSalt</b>		Salt in binhex format<br>
/// pHash and pSalt must be of the same length.
/// They must each be a number of hex-encoded bits equal to the length of the hash algorithm used: (bits/4) hex digits.
/// <b>pScope</b>
/// <ul>
///   <li>0: Set password for non-CSPSystem users<br>
///   <li>1: Set password for CSPSystem user<br>
///   <li>2: Set password for all users<br>
/// </ul>
/// <b>pHashWorkFactor</b>		Iterations input for PBKDF2.  Must meet minimum requirements in Security.Users.<br>
/// <b>pHashAlgorithm</b>		A valid <a href="%25CSP.Documatic.cls?PAGE=CLASS&LIBRARY=%25SYS&CLASSNAME=Security.PBKDF2Alg">Security.Datatype.PBKDF2Alg</a> value.<br>
/// <b>pInitial</b>		If 1, only allow password to be set if the existing hash matches a predefined value<br>
/// <b>pUser</b>	If provided, limits the password change to this user. Password will be changed even if the user is disabled and/or no roles are assigned.
ClassMethod ChangePasswordHash(pHash As %String, pSalt As %String, pScope As %Integer = 0, pHashWorkFactor As %Integer = 1024, pHashAlgorithm As Security.Datatype.PBKDF2Alg = "SHA1", pInitial As %Boolean = 0, pUser As %String = "") As %Status [ Internal ]
{
}

}
