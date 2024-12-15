/// This class allows manipulation and display of InterSystems IRIS processes running on the system.<br>
/// An instance of the class can be opened by passing the PID (O/S process id)
/// to the %OpenId Method. The PID is in decimal form ($J) for all platforms.<br><br>
/// NOTE: Previous versions of this class allowed you to call the %OpenId method
/// and pass in either a PID preceded by the letter "P", or a job number preceded
/// by the letter "J". This functionality has been removed from the %OpenId() method,
/// and moved to the new Open() method which supports this syntax.<br><br>
/// For example, the following open a process with a PID of 2078:<br><br>
/// s Process=##CLASS(%SYS.ProcessQuery).%OpenId("2078")<br>
/// s Process=##CLASS(%SYS.ProcessQuery).Open("P2078")<br>
/// s Process=##CLASS(%SYS.ProcessQuery).Open("2078")<br><br>
/// The following will open Job number 23<br><br>
/// s Process=##CLASS(%SYS.ProcessQuery).Open("J23")<br><br>
/// Performance considerations:<br>
/// When you use %OpenId() to examine a process, several mailbox messages will get sent to
/// the process to return ALL of the properties for the object. On systems with lots of processes
/// running, and you are collecting data for a lot of processes, this can cause a lot of overhead.
/// The call to each %OpenId() in this case may actually take several seconds to complete.
/// Most of a processes properties can be retrieved without the overhead of a mailbox message. See
/// the description of the individual properties below for which properties require a mailbox message
/// to be sent.<br>
/// If you want to minimize overhead, you should use an SQL statement to select ONLY the data
/// which you want returned. For example, here is some code which loops through all the processes
/// on the system, and retrieves specific data for each process. Note that the properties which
/// are returned in this example are ones which do not require a mailbox messages to be sent to the
/// process being examined. Note that the %syPidtab.inc file needs to be included in your routine
/// in order for the following code to compile cleanly.<br><br>
/// #include %syPidtab<br>
/// Set Rset = ##class(%ResultSet).%New("%SYS.ProcessQuery:ListPids")<br>
/// d Rset.Execute()<br>
/// While Rset.Next() {<br>
/// 	&sql(SELECT CommandsExecuted,GlobalReferences INTO :CommandsExecuted,:GlobalReferences<br>
///   		FROM %SYS.ProcessQuery <br>
///    	WHERE Pid = :Rset.GetData(1))<br>
/// 	i SQLCODE'=0 w !,"SQL Error "_SQLCODE continue ; 100 means process does not exist (halted)<br>
/// 	w !,Rset.GetData(1)," ",CommandsExecuted," ",GlobalReferences<br>
/// }<br>
/// d Rset.Close()<br><br>
/// Security considerations:<br>
/// Any process can open an instance to their own process by passing the value of $J to
/// the %OpenId() method:<br><br>
/// s Process=##CLASS(%SYS.ProcessQuery).%OpenId($j)<br><br>
/// If you wish to open another process, you must own the %Admin_Manage:Use
/// resource, or have read or write access to the CACHESYS database. To minimize overhead in
/// the %OpenId() method, having the %Admin_Manage:Use privilege is recommended.<br>
/// This class has an SQL table called %SYS.ProcessQuery where you can execute an SQL
/// query to return process data. For example you could execute the following
/// queries:<br><br>
/// Select * from %SYS.ProcessQuery - Return all information about all processes<br>
/// Select * from %SYS.ProcessQuery where NameSpace = 'User" - Return all information about
/// all processes in the USER namespace.<br>
/// Note that in order to run this from an unprivileged user, you may need to grant privileges
/// to that user on the table as follows:<br><br>
/// GRANT SELECT ON %SYS.ProcessQuery TO _PUBLIC<br><br>
/// Notes:<br>
/// Replace _PUBLIC to a specific user or role name if you don't want everyone to have the privilege.<br>
/// This is per-namespace. This needs to be executed in each namespace the table needs to be queried from.<br>
Class %SYS.ProcessQuery Extends (%Persistent, %SYSTEM.Help) [ Inheritance = right, StorageStrategy = Process, System = 4 ]
{

Parameter DEFAULTCONCURRENCY = 0;

/// Set this to the correct domain.
Parameter DOMAIN = "%Utility";

/// The entire application metadata frame information.
Property AppFrameInfo As %List [ ReadOnly, SqlColumnNumber = 52 ];

/// Process can be examined.<br>
/// Flag checked by JOBEXAM and Management Portal to see if a process can
/// be examined in detail.
Property CanBeExamined As %Boolean [ ReadOnly, SqlColumnNumber = 20 ];

/// Process can be suspended.<br>
/// Flag checked by JOBEXAM and Management Portal to see if a process can
/// be suspended.
Property CanBeSuspended As %Boolean [ ReadOnly, SqlColumnNumber = 21 ];

/// Process can be terminated.<br>
/// Flag checked by JOBEXAM and Management Portal to see if a process can
/// be terminated.
Property CanBeTerminated As %Boolean [ ReadOnly, SqlColumnNumber = 22 ];

/// Process can receive broadcast.<br>
/// Flag checked by JOBEXAM and Management Portal to see if a process can
/// receive a broadcast. Usually this means they are attached to a terminal.
Property CanReceiveBroadcast As %Boolean [ ReadOnly, SqlColumnNumber = 23 ];

/// Executable name of the process on the client.<br>
/// The name of the Executable or DLL on the client which initiated the connection.
/// It is passed down to the process as part of the initial connection message.
/// This property may be set by the end-user if they are managing their own connections.
Property ClientExecutableName As %String [ SqlColumnNumber = 16 ];

Method ClientExecutableNameSet(Val) As %Status [ Internal ]
{
}

/// IP Address of client connected to the process.<br>
/// IP address of the client which initiated the connection.
/// It is passed down to the process as part of the initial connection message.
/// This property may be set by the end-user if they are managing their own connections.
Property ClientIPAddress As %String [ SqlColumnNumber = 9 ];

Method ClientIPAddressSet(Val) As %Status [ Internal ]
{
}

/// Node Name of the client connected to the process.<br>
/// Node name of the client which initiated the connection.
/// It is passed down to the process as part of the initial connection message.
/// This property may be set by the end-user if they are managing their own connections.
Property ClientNodeName As %String [ SqlColumnNumber = 10 ];

Method ClientNodeNameSet(Val) As %Status [ Internal ]
{
}

/// Number of Commands Executed.<br>
/// Total number of commands which the process has executed.
Property CommandsExecuted As %BigInt [ ReadOnly, SqlColumnNumber = 38 ];

/// CSP Session ID of client connected to process.<br>
/// CSP session ID of the client which initiated the connection.
/// It is passed down to the process as part of the initial connection message,
/// and used to manager the CSP session.
Property CSPSessionID As %String [ ReadOnly, SqlColumnNumber = 24 ];

/// Current Device ($i).<br>
/// Current device that the process has open and is USEing via the USE command.
Property CurrentDevice As %String [ ReadOnly, SqlColumnNumber = 11 ];

/// Current Line and Routine.<br>
/// Current line and routine that the process is executing.
/// Returned in +number^routine format.<br>
/// This property requires a mailbox message to be sent to the process being examined.
Property CurrentLineAndRoutine As %String [ ReadOnly, SqlColumnNumber = 13 ];

/// Current Source Line being executed.<br>
/// Current line of source code which is being executed by the process. If "",
/// then the source code line is unavailable.<br>
/// This property requires a mailbox message to be sent to the process being examined.
/// If the routine has been modified compared to the pcode being run then this will point to
/// the current routine source rather than the actual source of the code being executed.
Property CurrentSrcLine As %String(MAXLEN = "") [ ReadOnly, SqlColumnNumber = 14 ];

/// Additional roles granted to the set of login roles.<br>
Property EscalatedRoles As %String [ Calculated, SqlColumnNumber = 47 ];

Method EscalatedRolesGet() [ Internal ]
{
}

/// Number of Global References.<br>
/// Total number of global references the process has made.
Property GlobalReferences As %BigInt [ ReadOnly, SqlColumnNumber = 5 ];

/// Number of Global Updates.<br>
/// Total number of global updates (sets and kills) the process has made.
Property GlobalUpdates As %Integer [ ReadOnly, SqlColumnNumber = 40 ];

/// Number of Physical Database Reads.<br>
/// Total number of times the process has fetched data from disk.
Property GlobalDiskReads As %Integer [ ReadOnly, SqlColumnNumber = 41 ];

/// Number of Database Block Allocations.<br>
/// Total number of new database blocks the process has allocated. An indication of database growth.
Property GlobalBlocks As %Integer [ ReadOnly, SqlColumnNumber = 42 ];

/// Total number of database blocks queued for writing by this process.
Property DataBlockWrites As %Integer [ ReadOnly, SqlColumnNumber = 48 ];

/// In a transaction.<br>
/// If 0, the process is not in a transaction.<br>
/// If >0, the process has executed a tstart command, is in a transaction, and the value
/// is the offset in the journal file where the transaction has started.
Property InTransaction As %Integer [ ReadOnly, SqlColumnNumber = 25 ];

/// Is a Ghost process.<br>
/// The process has been killed at the O/S level, and has not yet been cleaned
/// up by the CLNDMN process. Until the process is cleaned, there may be outstanding
/// locks or resources which may be unavailable to other processes.<br>
/// This property requires a mailbox message to be sent to the process being examined.
Property IsGhost As %Boolean [ ReadOnly, SqlColumnNumber = 26 ];

/// Job number in process table.<br>
/// Used as an index into the job table. May be passed to the Open() method to
/// open an object instance to that process.
Property JobNumber As %Integer [ ReadOnly, SqlColumnNumber = 27 ];

/// Job type.<br>
/// Number which tells what type of process it is.<br>
/// See the %syPidtab.inc include file for a definition of macros for these fields.
/// Only use the defined macros in %syPidtab when referencing these fields.
/// For example:<br><br>
/// If Process.JobType=$$$WDTYPE w !,"Process is the write daemon"<br>
Property JobType As %Integer [ ReadOnly, SqlColumnNumber = 28 ];

/// Number of Journal Entries.<br>
/// Total number of journaled global updates the process has recorded. An indication of journal file growth.
Property JournalEntries As %Integer [ ReadOnly, SqlColumnNumber = 43 ];

/// Last Global Reference.<br>
/// Last global reference that the process made.<br>
/// This property requires a mailbox message to be sent to the process being examined.
Property LastGlobalReference As %String(MAXLEN = "") [ ReadOnly, SqlColumnNumber = 15 ];

/// User Id used for license.<br>
/// The User ID which took out the license for the process.
Property LicenseUserId As %String [ ReadOnly, SqlColumnNumber = 29 ];

/// Number of Lines Executed.<br>
/// Total number of lines which the process has executed.
/// NOTE: This property is deprecated, line counts are no longer available and this actually returns the CommandsExecuted.
/// It is left here for backwards compatibility, but should no longer be used.
Property LinesExecuted As %BigInt [ Deprecated, ReadOnly, SqlColumnNumber = 4 ];

/// Location.<br>
/// If a system process, will be the system processes name.<br>
/// If a user process, will be the value of $g(^%IS(0,Job.CurrentDevice),"")
Property Location As %String [ ReadOnly, SqlColumnNumber = 30 ];

/// Login roles.<br>
/// Roles a process has when it initially logs in.<br>
Property LoginRoles As %String [ ReadOnly, SqlColumnNumber = 46 ];

/// Maximum memory able to be used in KB ($ZS).<br>
/// Maximum amount of memory in KB that the process is allowed to use.<br>
/// This property requires a mailbox message to be sent to the process being examined.
Property MemoryAllocated As %Integer [ ReadOnly, SqlColumnNumber = 17 ];

/// Memory used in KB (Current $s).<br>
/// Current amount of memory the process has used in KB.<br>
/// This property requires a mailbox message to be sent to the process being examined.
Property MemoryUsed As %Integer [ ReadOnly, SqlColumnNumber = 18 ];

/// Peak memory allocated in KB.<br>
/// This property requires a mailbox message to be sent to the process being examined.
Property MemoryPeak As %Integer [ ReadOnly, SqlColumnNumber = 44 ];

/// Namespace process is executing in.<br>
Property NameSpace As %String [ ReadOnly, SqlColumnNumber = 2 ];

/// List of open devices.<br>
/// List of devices which the process has opened. Returned as a
/// comma separated string.<br>
/// If any device name in the list contained ",", users won't be able to parse the list.
/// Users should use $LFS(OpenDevices,",",2) to convert the comma separated string to
/// a $List() format string in order to get each device in the list.<br>
/// This property requires a mailbox message to be sent to the process being examined.
Property OpenDevices As %String [ ReadOnly, SqlColumnNumber = 19 ];

/// Operating system username of process.<br>
/// Username given to the process by the operating system when the process
/// is created. When displayed, it is truncated to 16 characters. Note that the real O/S
/// username is only returned when connecting to UNIX or VMS systems; For Windows, it
/// will return the O/S username for a console process, but for telnet it will return
/// the $USERNAME of the process. For client connections, it contains the O/S username
/// of the client. This field is truncated at 16 characters.
Property OSUserName As %String [ ReadOnly, SqlColumnNumber = 31 ];

/// Sum of system and user CPU Time in ms for process (no mailbox message)
Property CPUTime As %BigInt [ ReadOnly, SqlColumnNumber = 51 ];

/// Process ID.<br>
/// Process ID ($J) given to the process by the O/S, decimal form on all platforms.
Property Pid As %Integer [ ReadOnly, SqlColumnNumber = 32 ];

/// Number of private global database blocks.<br>
/// This property contains the # of database blocks currently
/// allocated to store process private globals.
Property PrivateGlobalBlockCount As %Integer [ ReadOnly, SqlColumnNumber = 37 ];

/// Number of Process Private Global References.<br>
/// Total number of private global references the process has made.
Property PrivateGlobalReferences As %BigInt [ ReadOnly, SqlColumnNumber = 49 ];

/// Number of Process Private Global Updates.<br>
/// Total number of private global updates (sets and kills) the process has made.
Property PrivateGlobalUpdates As %BigInt [ ReadOnly, SqlColumnNumber = 50 ];

/// Index on Pid field.<br>
/// Uses NextProcess(Pid) to retrieve next process id.
/// External Process PID.
/// Decimal value for Windows, Unix and Mac, hex for VMS.
Property PidExternal As %String [ ReadOnly, SqlColumnNumber = 7 ];

/// Principal Device ($P).<br>
/// This property requires a mailbox message to be sent to the process being examined.
Property PrincipalDevice As %String [ ReadOnly, SqlColumnNumber = 39 ];

/// Priority.<br>
/// Priority of the process at the O/S level.
Property Priority As %Integer [ ReadOnly, SqlColumnNumber = 33 ];

/// $Roles.<br>
/// Roles a process currently has.<br>
Property Roles As %String [ ReadOnly, SqlColumnNumber = 45 ];

/// Routine currently executing.<br>
/// Name of the routine which the process is currently executing.
Property Routine As %String [ ReadOnly, SqlColumnNumber = 3 ];

/// Startup IP Address of client.<br>
/// IP address of the client as detected on the TCP channel by the server process.
Property StartupClientIPAddress As %String [ ReadOnly, SqlColumnNumber = 34 ];

/// Startup Node Name of client.<br>
/// IP Node name of the client as detected on the TCP channel by the server process.
Property StartupClientNodeName As %String [ ReadOnly, SqlColumnNumber = 35 ];

/// Current state of the process as determined by the processes state bits.<br>
/// The following are all the different states a process can be in. The process may
/// also have a number of different flags within these states which are appended to
/// the end of the state name:
/// <p>
/// LOCK - Executing a Lock command<br>
/// OPEN - Opening a device<br>
/// CLOS - Closing a device<br>
/// USE  - Using a device<br>
/// READ - Read command<br>
/// WRT  - Write command<br>
/// GET  - Executing a $Get on a global<br>
/// GSET - Setting a global<br>
/// GKLL - Killing a global<br>
/// GORD - $Order on a global<br>
/// GQRY - $Query on a global<br>
/// GDEF - $Data on a global<br>
/// ZF   - Executing a $ZF command<br>
/// HANG - Executing a Hang command<br>
/// JOB  - Executing a Job command<br>
/// EXAM - Executing a variable exam<br>
/// BRD  - Executing a broadcast<br>
/// SUSP - Process is suspended<br>
/// INCR - Executing a $Increment<br>
/// BSET - Global Set $Bit<br>
/// BGET - Global $Bit<br>
/// EVT  - Waiting on event<br>
/// SLCT - $System.Socket wait<br>
/// SEM  - $System.Semaphore wait<br>
/// IPQ  - Inter-process queue wait<br>
/// DEQ  - Dequeue wait (currently unusued)<br>
/// VSET - Global Set vector element<br>
/// VKLL - Global Kill vector element<br>
/// RUN  - Process is running in none of the aformentioned states<br>
/// <p>
/// The following flags can be appended to the state:<br><br>
/// NL - Net lock waiting<br>
/// DT - The dead job has open transaction<br>
/// S  - Suspension requested<br>
/// GW - Global Wait<br>
/// NR - Net Read<br>
/// D  - Dead<br>
/// H  - Halting<br>
/// NH - Netharden<br>
/// N  - Remote network<br>
/// W  - Hibernating<br>
Property State As %String [ ReadOnly, SqlColumnNumber = 6 ];

/// Process Owns switch 10.<br>
/// This property is set to 1 if the process has set switch 10.
Property Switch10 As %Boolean [ ReadOnly, SqlColumnNumber = 36 ];

/// User defined information.<br>
/// This is a user-defined property where the process can set any value into it up
/// to 16 bytes long. The data in it is viewable in JOBEXAM. Note that
/// the information can only be set into one's own process, not into
/// another user's process.
Property UserInfo As %String(MAXLEN = 16) [ SqlColumnNumber = 12 ];

Method UserInfoSet(Val) As %Status [ Internal ]
{
}

/// $Username of process.<br>
/// $Username of the process as set by the processes authentication method.
Property UserName As %String(MAXLEN = 160) [ ReadOnly, SqlColumnNumber = 8 ];

/// Check to see if permissions allow us to open the process.<br>
/// The %SYS.ProcessQuery class is available to all users in all namespaces.
/// It is intended that
/// any process can open an instance of this class and examine their own properties,
/// but not any other process on the system, unless they own the %Admin_Manage:Use
/// resource, or are in the %SYS namespace.<br>
ClassMethod AllowToOpen(Pid) As %Status [ Internal ]
{
}

/// Get the current line and routine for a process.<br>
/// Parameters:<br>
/// JobNumber - Job number of the process<br>
/// Return Value:<br>
/// On success, the method will return the current line and routine of the selected process
/// in +number^routine format. on failure, or if unavailable, it will return ""
ClassMethod GetCurrentLineAndRoutine(JobNumber) As %String [ Internal ]
{
}

/// Get the current source line for the process.<br>
/// Parameters:<br>
/// JobNumber - Job number of the process<br>
/// Return Value:<br>
/// On success, the method will return the current source line of the selected process.<br>
/// On failure, or if source unavailable, it will return ""
ClassMethod GetCurrentSrcLine(JobNumber) As %String [ Internal ]
{
}

/// Get the last global reference for the process.<br>
/// Parameters:<br>
/// JobNumber - Job number of the process<br>
/// Return Value:<br>
/// On success, the method will return the last global reference the selected process.<br>
/// On failure, it will return ""
ClassMethod GetLastGlobalReference(JobNumber) As %String [ Internal ]
{
}

/// Query the process for some properties.<br>
/// Parameters:<br>
/// Pid - Pid (decimal) of the process<br>
/// Return Value:<br>
/// On success, the method will return the values of $v(-1,Pid)<br>
/// On failure, or if source unavailable, it will return all fields as 0.
ClassMethod GetView(Pid) As %String [ Internal ]
{
}

/// Query the process for some properties.<br>
/// Parameters:<br>
/// Pid - Pid (decimal) of the process<br>
/// Return Value:<br>
/// On success, the method will return the $LIST from $v(-1,Pid,2)<br>
/// On failure, or if source unavailable, it will return all fields as 0.
ClassMethod GetViewList(Pid) As %List [ Internal ]
{
}

/// Get routine and label specified in process login.<br>
/// <br>
/// Available only for the current process, you can not query
/// another process. If a class method is passed on the command line
/// then 'Label' will be the method name and 'Routine' will be the
/// class name with a trailing '#' to identify it as a class. <br>
ClassMethod GetLoginRoutine(ByRef Label As %String, ByRef Routine As %String) As %Status
{
}

/// Get CPU time used for current process (without method arguments)<br>
/// or CPU time for the process specified by pid (with method arguments)<br>
/// <br>
/// Parameters:<br>
///   pid (optional) - JobNumber (integer +$J)<br>
///                    of the IRIS process you want to get information about<br><br>
/// Return Value:<br>
/// Returns two comma-delimited pieces, "system" CPU time and "user" CPU time
/// Time is returned as milliseconds of CPU time.<br>
/// 0,0 is returned if the specified pid does not exist.<br>
ClassMethod GetCPUTime(pid As %Integer) As %String
{
}

/// This method returns the OSUsername of the process as returned by the operating system.
/// This method differs from the OSUsername property in that it is the actual username assigned to
/// the process by the operating system.
ClassMethod GetOSUsername() As %String
{
}

/// Return the entire application metadata frame information for the current process
/// or the specified process.
/// Parameters:<br>
/// Pid - Pid (decimal) of the process<br>
/// Return Value:<br>
/// The application frame information in $LIST form.
ClassMethod GetAppFrameInfo(pid As %Integer) As %List
{
}

/// Kill all process private globals for the calling process.<br>
ClassMethod KillAllPrivateGlobals() As %Status
{
}

/// Get a list of all variables defined at the specified internal execution stack level.
/// If no stack level is given, the current stack level is the default.<br>
/// The list is returned as nodes of the <VAR>listvar</VAR> argument.<br>
/// <VAR>listvar</VAR> will be set to the number of sublists.<br>
/// <VAR>listvar(1)</VAR> will be set to the first sublist, <VAR>listvar(2)</VAR> to
/// the second, etc.<br>
/// Each sublist is a $List of variable entries.<br>
/// Each variable entry is a $ListBuild(name,$Data(name)).<br>
/// Private variables are identified with a tilde (~) as the first character in the name.<br>
/// The names are not sorted, except private variables follow the public variables.<br>
/// The return value of the method is the total number of variables in the sublists.
ClassMethod GetVariableList(InternalStack As %Integer = 0, ByRef ListVar)
{
}

/// Get the value of a variable at the specified internal execution stack level.
/// If no stack level is given, the current stack level is the default.<br>
/// The variable reference may include subscripts.<br>
/// To get the value of a private variable, add a tilde in front of the
/// name, as in "~info".<br>
/// If the variable is undefined an &lt;UNDEFINED&gt; error will be thrown.
ClassMethod VariableValue(Variable As %String, InternalStack As %Integer = 0)
{
}

/// Get the $Data() value of a variable at the specified internal execution stack level.
/// If no stack level is given, the current stack level is the default.<br>
/// The variable reference may include subscripts.<br>
/// To get the value for a private variable, add a tilde in front of the
/// name, as in "~info".
ClassMethod VariableDataFlags(Variable As %String, InternalStack As %Integer = 0) As %Integer
{
}

/// Perform a $Query() operation on a variable reference at the specified internal execution stack level.
/// If no stack level is given, the current stack level is the default.<br>
/// The variable reference may include subscripts.<br>
/// To operate on a private variable, add a tilde in front of the
/// name, as in "~info".
ClassMethod VariableQuery(Variable As %String, InternalStack As %Integer = 0) As %String
{
}

/// Convert a $STACK value to the corresponding internal stack level that can be used
/// for the VariableList query and Variable methods that have an InternalStack argument.
/// <br>The default for <VAR>stack</VAR> is the current $STACK value.
/// <br>When there are NEW commands in a level, each NEW command creates a new internal
/// stack level without increasing $STACK. This method returns the highest internal stack
/// level for the given $STACK. If there are other internal levels created by NEW commands
/// within the given $STACK, they are returned in the <VAR>newlevels</VAR> argument
/// as a $LIST of values. There may be different variables defined at each of those
/// levels  and the same variable may have different values at each level.
ClassMethod GetInternalStackLevel(stack As %Integer = 0, ByRef newlevels) As %Integer
{
}

/// Returns the next process pid on the system.<br>
/// This is like a $order function on processes running on the system, similar to the way
/// $ZJOB works. It differs from $zjob in one respect though. If the pid passed into
/// the function has halted before this call, we will still return the next pid on the
/// system. $zjob would return the first pid on the system in this case. Using $zjob in
/// this way with lots of processes starting and halting could lead to inaccurate results.
/// Flag=1 means pass in and return the internal decimal representation of a VMS pid ($zh(pid))
ClassMethod NextProcess(Pid As %String, Flag As %Integer = 0) As %String
{
}

/// Open an instance to a process.<br>
/// This method will open an instance to a process by passing either
/// a PID or Job number to the method. A Pid can either be directly passed in or
/// prefaced with a "P". A Job number can be passed in prefaced by a "J".<br>
/// The following open an instance to a process with a pid = 2078:<br>
/// s Process=##CLASS(%SYS.ProcessQuery).Open("P2078")<br>
/// s Process=##CLASS(%SYS.ProcessQuery).Open("2078")<br><br>
/// The following will open Job number 23<br><br>
/// s Process=##CLASS(%SYS.ProcessQuery).Open("J23")<br><br>
/// Parameters:<br>
/// Id - Pid or Job number to open<br>
/// Concurrency - Pass -1 or use default<br>
/// sc (by ref)- Status of the Open<br>
/// Return values:<br>
/// On success, the method returns an object handle to the opened process.<br>
/// On failure, the method returns a null string, and an error in sc.
ClassMethod Open(Id As %String, concurrency As %Integer = -1, ByRef sc As %Status = 1) As %ObjectHandle
{
}

/// Translates an internal state flag to an external display.<br>
/// See the State property for what can be returned here.
ClassMethod StateLogicalToDisplay(State) As %String [ Internal ]
{
}

/// Takes an internal state code from $zu(61,4) and returns a $list with the
/// following list elements.
/// <li>1 - the base process State without any letter flags appended
/// <li>2 - the letter flags to append for <PROPERTY>State</PROPERTY>
/// <li>3 - an internal "wait reason" when the process is blocked in the IRIS kernel
/// <li>4 - an internal psuedo-trace of calls within the IRIS kernel
/// <li>5 - boolean true/false if the process state is one that is expected to use CPU
/// <p>
/// The wait reason can take the following values, and is subject to change.
/// Some but not all of these correspond to the "W" letter flag, and not all cases of
/// the "W" have an internal reason reflected here.  For example, waiting on a LOCK
/// usually has a "W" but in not reflected here, as it is an expected application
/// wait rather than a wait within the IRIS kernel.
/// <li>diskio: waiting for database physical block read
/// <li>inusebufwt: waiting due to block collision (^BLKCOL utility may help identify application cause)
/// <li>expand: waiting for database expansion
/// <li>ecpwait: waiting for an answer from the ECP server
/// <li>jrniowait: no space in journal buffer, waiting for journal I/O
/// <li>jrnsyncblk: waiting for journal data to be committed
/// <li>jrnlckwait: waiting to access journal buffer
/// <li>mirrorwait: waiting for active backup mirror member
/// <li>mirrortrouble: blocked due to mirror trouble state
/// <li>globwait: waiting because of an internal condition blocking global updates
/// <li>aiowait: waiting for asynchronous disk I/O to complete
/// <li>wdqwait: waiting for a write cycle to complete
/// <li>freebuf: global buffers are completely exhausted and waiting for database writes
/// <ll>gfownwait: access to database is blocked
/// <li>resenqXYZ: waiting on an internal resource XYZ
ClassMethod DecodeState(Code As %String, DaemonCode As %String = "", ResNameList As %List = "") As %List [ Internal ]
{
}

/// This callback method is invoked by the <METHOD>%Open</METHOD> method to
/// provide notification that the object specified by <VAR>oid</VAR> is being opened.
///
/// <P>If this method returns an error then the object will not be opened.
Method %OnOpen() As %Status [ Internal, Private ]
{
}

ClassMethod %SQLAcquireLock(%rowid As %String, s As %Boolean = 0, ByRef unlockref As %String) [ Internal, ProcedureBlock = 0, ServerOnly = 1 ]
{
}

ClassMethod %SQLAcquireTableLock(s As %Boolean = 0, ByRef SQLCODE As %Integer, to As %Integer = "") [ Internal, ProcedureBlock = 0, ServerOnly = 1 ]
{
}

ClassMethod %SQLReleaseLock(%rowid As %String, s As %Boolean = 0, i As %Boolean = 0) [ Internal, ProcedureBlock = 0, ServerOnly = 1 ]
{
}

ClassMethod %SQLReleaseTableLock(s As %Boolean = 0, i As %Boolean = 0) [ Internal, ProcedureBlock = 0, ServerOnly = 1 ]
{
}

/// Returns ALL properties for a process<br>
/// This query performs a Select * on %SYS.ProcessQuery SQL query.
/// Note that this query uses a $v(-1,$j) mailbox message to
/// query processes. This causes a lot of overhead, but is necessary in
/// order to return all fields. Use the JOBEXAM, CONTROLPANEL, or SS
/// query for less overhead.
/// This query will change in future versions as field are added or removed.
/// Returns fields for the Management Portal display<br>
/// Note that this query does not use a $v(-1,$j) mailbox message to
/// query processes. This avoids unnecessary overhead.
/// This query may change in future versions.<br>
/// Parameters:<br>
/// JobNumber - Job number of where to start the query, default = 1 (first job)<br>
/// Filter - Display processes which contain this filter in the line, "" means display all.
/// For example, if Filter="READ", this will only display processes which have the word
/// "READ" in one of the columns.<br>
ClassMethod CONTROLPANELExecute(ByRef qHandle As %Binary, JobNumber As %Integer = 1, Filter As %String = "") As %Status [ Internal ]
{
}

ClassMethod CONTROLPANELFetch(ByRef qHandle As %Binary, ByRef Row As %List, ByRef AtEnd As %Integer = 0) As %Status [ Internal ]
{
}

ClassMethod CONTROLPANELClose(ByRef qHandle As %Binary) As %Status [ Internal ]
{
}

/// Returns fields for the JOBEXAM display.<br>
/// Note that this query does not use a $v(-1,$j) mailbox message to
/// query processes. This avoids unnecessary overhead.
/// This query may change in future versions.<br>
/// Parameters:<br>
/// JobNumber - Job number of where to start the query, default = 1 (first job)
ClassMethod JOBEXAMExecute(ByRef qHandle As %Binary, JobNumber As %Integer = 1) As %Status [ Internal ]
{
}

ClassMethod JOBEXAMFetch(ByRef qHandle As %Binary, ByRef Row As %List, ByRef AtEnd As %Integer = 0) As %Status [ Internal ]
{
}

ClassMethod JOBEXAMClose(ByRef qHandle As %Binary) As %Status [ Internal ]
{
}

/// Return PIDS for all processes running on the system.<br>
/// This query returns the internal pid for each process on the system. This pid can
/// then be passed directly to the %OpenId() method, or as an argument to an embedded
/// SQL query which does a SELECT based on the Pid. See the example above for SQL usage.<br>
/// Parameters:<br>
/// JobNumber - Job number of where to start the query, default = 1 (first job)
ClassMethod ListPidsExecute(ByRef qHandle As %Binary, JobNumber As %Integer = 1) As %Status [ Internal ]
{
}

ClassMethod ListPidsFetch(ByRef qHandle As %Binary, ByRef Row As %List, ByRef AtEnd As %Integer = 0) As %Status [ Internal ]
{
}

ClassMethod ListPidsClose(ByRef qHandle As %Binary) As %Status [ Internal ]
{
}

/// Returns fields for the %SS display.<br>
/// Note that this query does not use a $v(-1,$j) mailbox message to
/// query processes. This avoids unnecessary overhead.
/// This query may change in future versions.<br>
/// Parameters:<br>
/// JobNumber - Job number of where to start the query, default = 1 (first job)
ClassMethod SSExecute(ByRef qHandle As %Binary, JobNumber As %Integer = 1) As %Status [ Internal ]
{
}

ClassMethod SSFetch(ByRef qHandle As %Binary, ByRef Row As %List, ByRef AtEnd As %Integer = 0) As %Status [ CodeMode = call, Internal ]
{
}

ClassMethod SSClose(ByRef qHandle As %Binary) As %Status [ Internal ]
{
}

/// Returns the variables of a process.<br>
/// Pass VariableName as a null string to return all variables.<br>
/// This query requires the %Admin_Manage:Use permission to execute.<br><br>
/// Parameters:<br>
/// JobNumber - Job number to query.<br>
/// NOTE: You may not use this query to examine your own job.<br>
/// VariableName - Variable to return, or ""=All<br>
/// Format - Bit string of how to format the variable data, default = 0 (no formatting)<br>
/// Bit 0 - Format the data with $c() and $lb() notation<br>
/// Bit 1 - Embed bolded cursor sequences around $c() and $lb() notation<br>
/// MaxRows - Maximum number of rows to return<br>
/// Filter - Filters the data returned (case insensitive). If the variable contains the filter, then return it. ""=no filter<br>
/// This query may change in future versions.
ClassMethod VariableByJobNumberExecute(ByRef qHandle As %Binary, JobNumber As %Integer = 1, Variable As %String = "", Format As %Integer = 0, MaxRows As %Integer = 9999999, Filter As %String = "") As %Status [ Internal ]
{
}

ClassMethod VariableByJobNumberFetch(ByRef qHandle As %Binary, ByRef Row As %List, ByRef AtEnd As %Integer = 0) As %Status [ Internal ]
{
}

ClassMethod VariableByJobNumberClose(ByRef qHandle As %Binary) As %Status [ Internal, PlaceAfter = VariableByJobNumberExecute ]
{
}

/// Returns the variables of a process, PID is decimal value for all platforms.<br>
/// Pass VariableName as a null string to return all variables.<br>
/// This query requires the %Admin_Manage:Use permission to execute.<br><br>
/// Parameters:<br>
/// Pid - Pid of process to query<br>
/// VariableName - Variable to return, or ""=All<br>
/// Format - Bit string of how to format the variable data, default = 0 (no formatting)<br>
/// Bit 0 - Format the data with $c() and $lb() notation<br>
/// Bit 1 - Embed bolded cursor sequences around $c() and $lb() notation<br>
/// MaxRows - Maximum number of rows to return<br>
/// Filter - Filters the data returned (case insensitive). If the variable contains the filter, then return it. ""=no filter<br>
/// Note that the fields returned here may change or be removed in future versions.
ClassMethod VariableByPidExecute(ByRef qHandle As %Binary, Pid As %String, Variable As %String = "", Format As %Integer = 0, MaxRows As %Integer = 9999999, Filter As %String = "") As %Status [ Internal ]
{
}

ClassMethod VariableByPidFetch(ByRef qHandle As %Binary, ByRef Row As %List, ByRef AtEnd As %Integer = 0) As %Status [ Internal ]
{
}

ClassMethod VariableByPidClose(ByRef qHandle As %Binary) As %Status [ Internal, PlaceAfter = VariableByPidExecute ]
{
}

/// Returns the variables that are visible to the current process
/// at the current or specified execution internal stack level. 'DataFlags' is
/// the $DATA() value of the variable.
/// <br><br>
/// Parameters:<br>
/// 'InternalStack' is a value less than or equal to the current stack level, as
/// reported by the %STACK utility.
/// If no stack level is given, the current stack level is the default.<br>
/// 'Type' is the kind of query to run. The default is 0 which returns a sorted
/// list of variables. Type 1 returns an unsorted list and may be quicker
/// because it uses no global variables.
/// <br><br>
/// The query returns only plain variable names without subscripts. Private
/// variables are distinguished from public variables by a tilde prefix. Thus
/// the private variable 'info' will be presented as '~info'. All private variables
/// are returned after all public variables.
ClassMethod VariableListExecute(ByRef qHandle As %Binary, InternalStack As %Integer = 0, Type As %Integer = 0) As %Status [ Internal ]
{
}

ClassMethod VariableListFetch(ByRef qHandle As %Binary, ByRef Row As %List, ByRef AtEnd As %Integer = 0) As %Status [ Internal ]
{
}

ClassMethod VariableListClose(ByRef qHandle As %Binary) As %Status [ Internal ]
{
}

///     Select information about Process Private Globals.<br><br>
///     The 'filter' parameter can be a variable name definition and/or subscript
/// definition, using * as wildcards. A filter name of '*' will return all
/// PPG variables for that process id.<br>
///     As an example of using the wildcards, a filter specification of "CUST*(12*,*COOP*" would
/// mean return all PPG variables whose name starts with CUST, that have 2 or more subscripts,
/// the first subscript must start with 12, the second subscript must contain COOP.<br><br>
///     pid can be any valid process id, or -1 for the caller's process.<br><br>
///     options can be one or more of the following characters<br>
///     "N"      Do not return subscripts of a PPG, just return the root name<br>
///     "B"      Return the number of blocks used by the PPG (needs the "N" option)<br>
///     "b"      Returns the number of bytes used by the PPG (needs the "N" option)<br><br>
/// Example<br>
///     set rs=##class(%ResultSet).%New("%SYS.ProcessQuery:PPG")<br>
///     do  rs.Execute("*",$J,"NB")<br>
///     for {<br>
///         q:'rs.Next()<br>
///         w "PPG name "_rs.GetData(1)_" is using "_rs.GetData(3)_" disc blocks",!<br>
///     }<br>
/// This query requires the %Admin_Manage:Use permission to execute.<br>
ClassMethod PPGExecute(ByRef qHandle As %Binary, filter As %String = "*", pid As %Integer = -1, options As %String = "") As %Status [ Internal ]
{
}

ClassMethod PPGClose(ByRef qHandle As %Binary) As %Status [ Internal ]
{
}

ClassMethod PPGFetch(ByRef qHandle As %Binary, ByRef Row As %List, ByRef AtEnd As %Integer = 0) As %Status [ Internal ]
{
}

ClassMethod PPGInfo(pid As %Integer) As %String [ Internal ]
{
}

/// Returns the top Processes as measured by the recent activity of either
/// CommandsExecuted or GlobalReferences<br><br>
/// Parameters:<br>
/// Sort - sort by "COMMANDS" (default) or "GLOREFS"<br>
/// Number - number of processes to list. Default is 10 and max is 50<br><br>
/// Note that the evaluation of the actual 'top' process list is handled by the
/// Application Monitor (%MONAPP) using the %Monitor.System.Dashboard2 class. This
/// is 'on' by default and can be managed using the %MONAPPMGR utility. Also, the
/// counts of CommandsExecuted and GlobalReferences returned are for the latest sample
/// period and not the total for the life of the process.
ClassMethod TopExecute(ByRef qHandle As %Binary, Sort, Number) As %Status [ Internal ]
{
}

ClassMethod TopFetch(ByRef qHandle As %Binary, ByRef Row As %List, ByRef AtEnd As %Integer = 0) As %Status [ Internal ]
{
}

ClassMethod TopClose(ByRef qHandle As %Binary) As %Status [ Internal ]
{
}

/// Returns the top Processes for certain types of database activity for the next 'n' seconds.
/// The query can be sorted by one of the following properties: 'GlobalReferences',
/// 'GlobalUpdates', 'GlobalDiskReads', 'GlobalBlocks', or 'PrivateGlobalBlockCount'.<br><br>
/// Parameters:<br>
/// Sort - sort by "REFS", "UPDATES", "READS", "BLOCKS", "PPG". Default is "REFS". <br>
/// Number - number of processes to list. Default is 20.<br>
/// Seconds - number of seconds to wait. Default is 5 seconds.<br><br>
/// The query will fetch the values for all processes, wait for 'n' seconds, and then
/// fetch the values again. It will return the list of the 'top' processes for the selected
/// 'Sort' property, and the delta values for properties over that time period. Note that
/// PrivateGlobalBlockCount is returned as the total number used, not a delta.
ClassMethod TopGlobalExecute(ByRef qHandle As %Binary, Sort, Number, Seconds) As %Status [ Internal ]
{
}

ClassMethod TopGlobalFetch(ByRef qHandle As %Binary, ByRef Row As %List, ByRef AtEnd As %Integer = 0) As %Status [ Internal ]
{
}

ClassMethod TopGlobalClose(ByRef qHandle As %Binary) As %Status [ Internal ]
{
}

/// Enable journaling within the process, with temporarily elevated role
ClassMethod EnableJournalInt() As %Status [ Internal ]
{
}

/// Disable journaling within the process, with temporarily elevated role.<br>
/// Returns 1 if journaling was active prior to this; 0 otherwise (i.e., no
/// action taken)
///
ClassMethod DisableJournalInt() As %Boolean [ Internal ]
{
}

/// Retrieve a snapshot of the execution stack and variables for a process in
/// the same format as JOBEXAM.
/// <br><br>
/// Parameters:
/// <br><br>
/// Pid - Process ID ($J) of the process to examine
/// <br>
/// <br>GetVariables - Flag specifies variable and/or object info should be returned
/// <li>0 - do not dump local variable or object info
/// <li>1 - dump all local variable info
/// <li>2 - dump all active oref info
/// <li>3 - dump local variable and object info
/// <br>
/// <br>Timeout - How long to wait for the process to respond to the request
/// <br>
/// <br>Return Value:
/// <br>On success, the method will return an index of the ^mtemp global (greater
/// than zero).  If an error occurs a status code is returned.
/// <br>
/// <br>Note that, like JOBEXAM, the request will time out if the process is
/// not executing commands.
/// <br>
/// <br>The data in the ^mtemp node can be displayed by calling Show^%STACK(index).
/// It is the responsibility of the caller to Kill ^mtemp(index) when
/// finished with the data.
/// <br>
/// <br>The data is returned in these nodes of the ^mtemp(index) global:
/// <br>("*STACK") = the number of stack levels
/// <br>("*STACK",0,"V",SpecialVar) = the values of special variables such as $S
/// and $ZE
/// <br>("*STACK",level,"L") = the text line for this level, as displayed
/// by %STACK or JOBEXAM
/// <br>("*STACK",level,"S") = the source line for this level, with a tilde
/// inserted in front of the current command
/// <br>("*STACK",level,"I") = the internal data for this level
/// <br>
/// <br>If variables are requested:
/// <br>("*LEVEL",level,variable) = the base level of a 'variable' that is
/// visible at this 'level'
/// <br>("*NAMES",variable,base,level) - this is the same information as
/// *LEVEL in a different format
/// <br>("*STACK",base,"V",variable) - top of subtree containing information
/// of 'variable' defined at 'base' level
/// <br>The function call $$VGetn^%STACK(index,l,v) returns information about
/// the value of variable 'v' at stack level 'l'.  If the variable is a
/// private local variable then argument 'v' must be string starting with
/// a tilde character, "~", followed by the variable identifier text.  The
/// variable 'v' can include a parenthesized list of subscript literals.
/// Note that lookup of a subscripted local variable requires that the
/// examined process and the examining process are using the same local
/// collation.  It returns "" if the variable 'v' is undefined at that
/// stack level; otherwise it returns $LISTBUILD(flags,value) where
/// 'value' is the value of the variable and 'flags' is a sequence of flag
/// letters.  If flags["O" then the variable contains an oref and 'value'
/// is the oref string representation.
/// <br>
/// <br>If objects are requested:
/// <br>("*CLASS",class) = number of active local objects in Class 'class'
/// <br>("*CLASS",class,oref) = "" is defined if 'oref' value is a local object of
/// class 'class'.  The function call $$OGetn^%STACK(index,oref,property) returns
/// $LISTBUILD(flags,value) if the object 'oref' has a property name 'property' and
/// it returns "" if either the oref or the property does not exist.  If the
/// property is multidimensional then the property name can include a
/// parenthesized list of subscript literals.  Note that lookup of a subscripted
/// multidim property requires that the examined process and the examining
/// process are using the same local collation.  The 'value' of the returned $LIST
/// is usually the value of the property (see 'flags'.)  The 'flags' of the
/// returned $LIST is a sequence of flag letters.
/// <li> An empty flags string means 'value' is an ordinary ObjectScript value.
/// <li>The flag "U" means the property is not defined, which may indicate an
/// internal error.
/// <li>The flag "J" means the object is a %DynamicAbstractObject and 'value'
/// contains the oref.%FromJSON() JSON string as the result of any attempt
/// to access a property.
/// <li>The flag "O" means 'value' is the string representation of
/// an object reference.
/// <li>The flags "G" or "C" mean the property has a propertyGet method or is
/// Calculated. Evaluating such a property can cause unwanted side effects so the
/// returned 'value' is the internal value of the i%property name which might be
/// undefined or might not contain useful information.
///
ClassMethod ExamStackByPid(Pid As %String, GetVariables As %Boolean = 0, Timeout As %Integer = 10) As %Status
{
}

/// Get a $LIST of devices that a process has open.<br>
/// <br>
/// Parameters:<br>
/// Pid - Process ID ($J) of the process to examine<br>
/// <br>
/// Return Value:<br>
/// On success, the method will return a $LIST of devices that are currently open by the process.
/// The principal device is the first item in the list. The current device has an asterisk appended to the name.<br>
/// If an error occurs an empty string is returned.<br>
ClassMethod GetOpenDevices(Pid As %Integer) As %List
{
}

}
