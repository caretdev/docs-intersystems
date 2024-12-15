/// This class allows you to modify and view the [config] section of the CPF file through
/// programatic APIs. While properties are usually modified through the System Management
/// portal, there may be some occasion where modifying them through the API's is best
/// for your system. In all the Config methods, if you do not specify the CPFFile parameter,
/// the currently active CPF file is used. If you wish to modify a CPF file which is not
/// the currently active one, then specify the CPFFile you wish to modify in the method call.<br>
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
/// %SYS>s Status=##Class(Config.config).Get(.Properties)
/// %SYS>i 'Status w !,"Error="_$SYSTEM.Status.GetErrorText(Status)
/// %SYS>zw Properties("MaxServers")
/// Properties("MaxServers")=2
/// %SYS>s Properties("MaxServers")=3
/// %SYS>s Status=##Class(Config.config).Modify(.Properties)
/// %SYS>i 'Status w !,"Error="_$SYSTEM.Status.GetErrorText(Status)
/// ; Now use Objects to modify properties
/// %SYS>s Obj=##Class(Config.config).Open()
/// %SYS>w Obj.MaxServers
/// 3
/// %SYS>s Obj.MaxServers=4
/// %SYS>s Status=Obj.%Save()
/// %SYS>i 'Status w !,"Error="_$SYSTEM.Status.GetErrorText(Status)
/// </pre>
Class Config.config Extends (%Persistent, Config.CommonSingleMethods, Config.CommonProperties, %SYSTEM.Help) [ Final, Inheritance = right, System = 4 ]
{

/// List of properties which are in the class but not in the CPF file.<br>
/// These are properties which are combined with other properties to create
/// a property in the CPF file.
Parameter PROPERTIESNOTINCPF = "BackoffDisabled,ConsoleFile,globals2kb,globals4kb,globals8kb,globals16kb,globals32kb,globals64kb,LargePagesDisabled,LargePagesRequired,LockSharedMemory,LockTextSegment,OsType,PageSizeAlt,Platform,synctypePresent,VMSConsoleTerminal,ZFString,ZFSize";

/// List of properties which may or may not be in the CPF file.<br>
/// They have a corresponding %Boolean
/// property to determine if they are in the file or not. For example, the property
/// "Asyncwij" will have a %Boolean "AsyncwijPresent" property associated with it.<br>
///  These properties are for InterSystems use only.<br>
Parameter PROPERTIESMAYBEINCPF = "Asyncwij,Edstrategy,expflags,maxglorecord,Maxprocesses,SecureKernel,synctype,usedirectio,useresidentmem,wdparm,wdstrategy,wduseasyncio";

/// List of properties in the CPF file which are constructed from multiple different
/// properties in this class.<br>
Parameter PROPERTIESCOMBINEDINCPF = "globals,console,memlock,overview,zfheap";

/// List of properties which do not require a restart to activate
Parameter PROPERTIESACTIVATENORESTART = "bbsiz,ConsoleFile,LibPath,history,locksiz,MaxServers,netjob,PythonPath,PythonRuntimeLibrary,PythonRuntimeLibraryVersion,targwijsz,VMSConsoleTerminal,wijdir,ZFSize,ZFString,UUIDv1RandomMac";

/// Controls  how writes to the WIJ file on systems which support asynchronous
/// WIJ I/O.<br> Zero disables asynchronous writes. A non-zero value represents the # of I/O
/// buffers the system should use when writing to the WIJ. 1 and 2 are the same and indicate
/// 2 buffers. The maximum value is constrained by the maximum number of writes the system
/// was built to support.
/// <br><br>
/// Modifying this property will require a restart of the system to make it active.
Property Asyncwij As %Integer(MAXVAL = 1024, MINVAL = 0) [ InitialExpression = 0, Internal ];

Property AsyncwijPresent As %Boolean [ InitialExpression = 0, Internal ];

/// Upon failure to allocate memory, do not retry with a reduced amount.  If shared
/// memory cannot be allocated at its configured size, startup is aborted.
/// <br><br>
/// Makes up part of the CPF parameter memlock=
/// <br><br>
/// Modifying this property will require a restart of the system to make it active.
Property BackoffDisabled As %Boolean [ InitialExpression = 0, Required ];

Method BackoffDisabledSet(Val) As %Status [ Internal ]
{
}

/// Maximum amount of memory in KB that a process can use for local variables
/// and similar process-private application memory.  This is the value of the
/// $zstorage system special variable when a process starts up.
/// <p>
/// -1 means "unlimited" (limited only by the implementation maximum of ~2TB).
/// <p>
/// Modifying this property does not require a restart of the system to make it active.
Property bbsiz As %Integer(MAXVAL = 2147483647, MINVAL = 256) [ InitialExpression = -1, Required ];

ClassMethod bbsizIsValid(Val) As %Status [ Internal ]
{
}

/// CPF file representation of console=VMSConsoleTerminal,ConsoleFile.<br>
Property console As %String(MAXLEN = 300) [ InitialExpression = ",", ReadOnly ];

/// Location of the messages.log file.<br>
/// Null means the MGR directory.<br>
/// This is the second piece of the CPF parameter console=VMSConsoleTerminal,ConsoleFile
/// <br><br>
/// Modifying this property does not require a restart of the system to make it active.
Property ConsoleFile As %SysPath(MAXLEN = 256, MINLEN = 0);

Method ConsoleFileSet(Val) As %Status [ Internal ]
{
}

/// Modifying this property will require a restart of the system to make it active.
Property Edstrategy As %Integer(MAXVAL = 256, MINVAL = -2147483648) [ InitialExpression = 0, Internal ];

Property EdstrategyPresent As %Integer [ InitialExpression = 0, Internal ];

/// A set of bit flags that impact how disk space is reserved during creation
/// and expansion of databases and the WIJ. The flags are as follows:
/// <br>
/// 1 - Disable unwritten extent allocation for databases.<br>
/// 2 - Disable unwritten extent allocation for the WIJ.<br>
/// <br>
/// Modifying this property will require a restart of the system to make it active.
Property expflags As %Integer(MAXVAL = 3, MINVAL = 0) [ InitialExpression = 0, Internal ];

Property expflagsPresent As %Integer [ InitialExpression = 0, Internal ];

/// Size of journal buffer pool in MBs. Modifying this property will require a restart of the system to make it active. The maximum value is 1024 and the minimum, 16 on Unicode platforms or 8 otherwise.
Property jrnbufs As %Integer(MAXVAL = 1024, MINVAL = 8) [ InitialExpression = 64, Required ];

ClassMethod jrnbufsIsValid(Val) As %Status [ Internal ]
{
}

/// Maximum number of entries you want to store in the SYSLOG log file.<br>
/// The log file will expire old entries when this limit is reached.
/// <br><br>
/// Modifying this property will require a restart of the system to make it active.
Property errlog As %Integer(MINVAL = 10) [ InitialExpression = 500, Required ];

/// List of configured sizes (in MBytes) for the global caches.<br>
/// Element #1 corresponds to 2KB blocks (deprecated, always 0 now).<br>
/// Element #2 corresponds to 4KB blocks.<br>
/// Element #3 corresponds to 8KB blocks.<br>
/// Element #4 corresponds to 16KB blocks.<br>
/// Element #5 corresponds to 32KB blocks.<br>
/// Element #6 corresponds to 64KB blocks.<br>
/// <p>
/// If all values are zero, as they are by default, the system selects a value
/// based on physical memory.  This is designed so that newly installed system
/// can perform reasonably well, and it is intended to be changed.
Property globals As %String [ InitialExpression = "0,0,0,0,0,0", ReadOnly ];

/// Number of 2KB buffers in MB.<br>
/// DEPRECATED: Always set to 0 now.<br>
/// <br><br>
/// Modifying this property will require a restart of the system to make it active.
Property globals2kb As %Integer(MINVAL = 0) [ InitialExpression = 0, Internal ];

Method globals2kbSet(Val) As %Status [ Internal ]
{
}

/// Number of 4KB buffers in MB.<br>
/// <br><br>
/// Modifying this property will require a restart of the system to make it active.
Property globals4kb As %Integer(MINVAL = 0) [ InitialExpression = 0 ];

Method globals4kbSet(Val) As %Status [ Internal ]
{
}

/// Number of 8KB buffers in MB.<br>
/// <br><br>
/// Modifying this property will require a restart of the system to make it active.
Property globals8kb As %Integer(MINVAL = 0) [ InitialExpression = 0 ];

Method globals8kbSet(Val) As %Status [ Internal ]
{
}

/// Number of 16KB buffers in MB.<br>
/// <br><br>
/// Modifying this property will require a restart of the system to make it active.
Property globals16kb As %Integer(MINVAL = 0) [ InitialExpression = 0 ];

Method globals16kbSet(Val) As %Status [ Internal ]
{
}

/// Number of 32KB buffers in MB.<br>
/// <br><br>
/// Modifying this property will require a restart of the system to make it active.
Property globals32kb As %Integer(MINVAL = 0) [ InitialExpression = 0 ];

Method globals32kbSet(Val) As %Status [ Internal ]
{
}

/// Number of 64KB buffers in MB.<br>
/// <br><br>
/// Modifying this property will require a restart of the system to make it active.
Property globals64kb As %Integer(MINVAL = 0) [ InitialExpression = 0 ];

Method globals64kbSet(Val) As %Status [ Internal ]
{
}

/// Shared Memory Heap Size in KB.
/// <p>
/// The shared memory heap is a pool of memory within the large shared memory
/// segment allocated at startup.  It is used by many subsystems that require
/// dynamic shared memory reservations (from within this fixed-size heap),
/// including the lock table, dejournaling, NLS tables, and more.
/// <p>
/// A value of 0 (the default) allows the system to choose a value based on
/// the sizing info inferred from other parameters, and is designed to be
/// sufficient for most systems.  Small non-zero values are subject to internal
/// lower limits.
/// <p>
/// Modifying this property requires a restart of the system to make it active.
Property gmheap As %Integer(MAXVAL = 1073741760) [ InitialExpression = 0, Required ];

ClassMethod gmheapIsValid(Val) As %Status [ Internal ]
{
}

/// The number of entries held in the command line/read line recall buffer.<br>
/// <br><br>
/// Modifying this property does not require a restart of the system to make it active.
Property history As %Integer(MAXVAL = 1000, MINVAL = 0) [ InitialExpression = "500", Required ];

/// Number of bytes allocated for each InterJob Communication Device.<br>
/// <br><br>
/// Modifying this property will require a restart of the system to make it active.
Property ijcbuff As %Integer(MAXVAL = 8192, MINVAL = 512) [ InitialExpression = 512, Required ];

/// The number of InterJob Communication devices.<br>
/// <br><br>
/// Modifying this property will require a restart of the system to make it active.
Property ijcnum As %Integer(MAXVAL = 256, MINVAL = 0) [ InitialExpression = 16, Required ];

/// On Unix systems this sets the LD_LIBRARY_PATH environment variable to set
/// search paths for third-party shared libraries. Ignored on Windows and VMS.
/// <br><br>
/// Modifying this property does not require a restart of the system to make it active.
Property LibPath As %String(MAXLEN = 1024);

/// If true, on platforms supporting large/huge pages, instructs the system not
/// to use them for global and routine buffers.
/// <br><br>
/// Makes up part of the CPF parameter memlock=
/// <br><br>
/// Modifying this property will require a restart of the system to make it active.
Property LargePagesDisabled As %Boolean [ InitialExpression = 0, Required ];

Method LargePagesDisabledSet(Val) As %Status [ Internal ]
{
}

/// If true, on platforms supporting large or huge pages, requires shared memory to
/// be allocated from them.  Ignored on other platforms or if large pages are
/// disabled by <PROPERTY>LargePagesDisabled</PROPERTY>.  If true and not ignored,
/// and memory cannot be allocated in large/huge pages, startup is aborted.  Note:
/// startup may retry with a small reduction in memory size, but the extent to which
/// memory may be reduced is smaller than would be allowed in absence of this flag.
/// You can disable this retry altogether with <PROPERTY>BackoffDisabled</PROPERTY>.
/// <br><br>
/// Makes up part of the CPF parameter memlock=
/// <br><br>
/// Modifying this property will require a restart of the system to make it active.
Property LargePagesRequired As %Boolean [ InitialExpression = 0, Required ];

Method LargePagesRequiredSet(Val) As %Status [ Internal ]
{
}

/// On platforms that support it, requests control structures, global and routine
/// buffers to be locked in physical memory.  When using large or huge pages for
/// shared memory, there is no need to set this property since they are
/// automatically locked in physical memory.
/// <br><br>
/// Makes up part of the CPF parameter memlock=.
/// <br><br>
/// Modifying this property will require a restart of the system to make it active.
Property LockSharedMemory As %Boolean [ InitialExpression = 0, Required ];

Method LockSharedMemorySet(Val) As %Status [ Internal ]
{
}

/// On some UNIX platforms, requests the text segment (executable image) to be
/// locked in physical memory.
/// <br><br>
/// Makes up part of the CPF parameter memlock=
/// <br><br>
/// Modifying this property will require a restart of the system to make it active.
Property LockTextSegment As %Boolean [ InitialExpression = 0, Required ];

Method LockTextSegmentSet(Val) As %Status [ Internal ]
{
}

/// An upper bound on the amount of shared memory heap (see
/// <PROPERTY>gmheap</PROPERTY>) that is allowed to be consumed by the lock
/// table as a result of application-level locks.  A value of 0 is appropriate
/// for most systems, and allows the lock table to grow unlimited up to the
/// available shared memory heap space as the application demands (lock memory
/// can be freed to the Shared Memory Heap if it's no longer used).  If a
/// different value is selected, it acts as an upper limit in bytes.
/// <p>
/// Modifying this property does not require a restart of the system to make it active.
Property locksiz As %Integer(MAXVAL = 1099511562240) [ InitialExpression = 0, Required ];

ClassMethod locksizIsValid(Val) As %Status [ Internal ]
{
}

/// Number of global module trace table entries.<br>
Property maxglorecord As %Integer(MINVAL = 200000) [ InitialExpression = 200000, Internal ];

Property maxglorecordPresent As %Boolean [ InitialExpression = 0, Internal ];

/// On USEU2 systems this sets an upper limit on the number of jobs we will
/// allow at any one time.<br>
/// Zero is the default value which means that we do not limit the # of jobs.
/// Any other value sets an upper limit on the job # we'll assign to an incoming
/// job. This means that if the value is reduced while the system is running, until
/// the jobs which have higher pidtab slot #'s exit, we may allow more jobs than
/// requested. <br><br>
/// This can be changed on the running system with $ZU(11,2,<newvalue>).
/// <br><br>
/// Modifying this property will require a restart of the system to make it active.
Property Maxprocesses As %Integer(MAXVAL = 65535, MINVAL = 0) [ InitialExpression = 128, Internal ];

Property MaxprocessesPresent As %Boolean [ InitialExpression = 0, Internal ];

/// Maximum number of clients that can access this server simultaneously.<br>
/// <br><br>
/// Modifying this property will require a restart of the system to make it active.
Property MaxServerConn As %Integer(MAXVAL = 254, MINVAL = 0) [ InitialExpression = 1, Required ];

/// Maximum number of ECP servers that can be accessed from this system.<br>
/// <br><br>
/// Modifying this property does not require a restart of the system to make it active if memory is available in the shared memory heap.
Property MaxServers As %Integer(MAXVAL = 254, MINVAL = 0) [ InitialExpression = 2, Required ];

/// When checked, this allows you to lock control structures in memory to improve access time.<br>
/// CPF file representation of memlock=
Property memlock As %Integer [ InitialExpression = 0, ReadOnly ];

/// Modify a sections properties in a CPF file.<br>
/// <br>
/// Parameters:<br>
/// <b>Properties (byref)</b> - List of the properties to modify in Properties(Name)=Value format.
/// See the subclass for a list of valid properties. If a specific property is not passed in the
/// properties array, the value is not modified.<br>
/// <b>CPFFile (byref)</b> - Name of the CPF file to use, Default=current active CPF file. The file must have a .CPF file extension if specified.<br>
/// <b>Flags</b> - Bit string of options to perform if the object is later saved with the %Save() method.
/// See the <METHOD>Open</METHOD> method for values.<br>
/// <br>
/// Return values:<br>
/// <b>CPFFile (byref)</b> - Name of the CPF file the modification was made in.<br>
ClassMethod Modify(ByRef Properties As %String, ByRef CPFFile As %String = "", Flags As %Integer = {$$$CPFSave+$$$CPFWrite+$$$CPFActivate}) As %Status
{
}

/// Allows jobs from remote connections to run on your server.<br>
/// <br><br>
/// Modifying this property does not require a restart of the system to make it active.
Property netjob As %Boolean [ InitialExpression = 1, Required ];

/// Enter the maximum number of collation tables. This instructs InterSystems IRIS to reserve space for that many tables at startup.<sp>
/// <br><br>
/// Modifying this property will require a restart of the system to make it active.
Property nlstab As %Integer(MAXVAL = 64, MINVAL = 0) [ InitialExpression = 50, Required ];

Property OsType As %String [ InitialExpression = "Windows", Internal, Required ];

Method OsTypeSet(Val) As %Status [ Internal ]
{
}

Property overview As %String [ InitialExpression = "Windows (Intel)~Windows", ReadOnly ];

/// Ignored on platforms other than AIX.  If true on AIX, use huge (16GB) pages
/// instead of large (16MB) pages for shared memory.  On failure to allocate memory
/// in this way, startup will retry with standard pages, unless
/// <PROPERTY>LargePagesRequired</PROPERTY> is true.
/// <br><br>
/// Makes up part of the CPF parameter memlock=
/// <br><br>
/// Modifying this property will require a restart of the system to make it active.
Property PageSizeAlt As %Boolean [ InitialExpression = 0, Internal, Required ];

Method PageSizeAltSet(Val) As %Status [ Internal ]
{
}

/// Path string appended to the PATH= environment variable for system processes.
/// This is valid for Unix systems only.<br>
/// <br><br>
/// Modifying this property will require a restart of the system to make it active.
Property Path As %String(MAXLEN = 1024) [ Internal ];

/// Directory to store the cluster image journal.<br>
/// <br><br>
/// Modifying this property will require a restart of the system to make it active.
Property pijdir As %SysPath(MAXLEN = 256, MINLEN = 0);

Property Platform As %String [ InitialExpression = "Windows (Intel)", Internal, Required ];

Method PlatformSet(Val) As %Status [ Internal ]
{
}

/// Non instance relative sys.path element to be added to sys.path for all Embedded Python methods and Shell()<br>
/// Also see iris_site.py (in the instance directory) and Embedded Python documentation for other ways to affect sys.path.
/// <br><br>
/// Modifying this property does not require a restart of the system to make it active.
Property PythonPath As %String(MAXLEN = 1024);

/// Absolute path & file name of the python runtime library that you want Embedded Python to use to override the<br>
/// default Embedded Python that Intersystems tests with.<br>
/// Example on Ubuntu 22:<br>
/// "/lib/x86_64-linux-gnu/libpython3.11.so.1.0"<br>
/// Example on windows:<br>
/// "C:\Program Files\Python39\python3.dll"<br>
/// "C:\Program Files\Python311\python3.dll"<br>
/// <br>
/// Use a string(quotes) when setting it in object script. It appears in the iris.cpf file without quotes surrounding it.<br>
/// <br><br>
/// Modifying this property does not require a restart of the system to make it active.
Property PythonRuntimeLibrary As %String(MAXLEN = 1024);

/// Version of Python used by PythonRuntimeLibrary in Major.Minor format: 3.9, 3.11, etc.
/// <br>Used in properly loading PythonRuntimeLibrary into IRIS.
/// <br>Use a string(quotes) when setting it in object script: set properties("PythonRuntimeLibraryVersion")="3.11"
/// <br>It appears in the iris.cpf file without quotes surrounding the 3.11
/// <br><br>
/// Modifying this property does not require a restart of the system to make it active.
Property PythonRuntimeLibraryVersion As %String(MAXLEN = 16);

/// Controls whether the $System.Util.CreateGUID() and $System.Util.CreateGUID(1) API use a random mac<br>
/// as described in RFC4122 section 4.5. Please read the CreateGUID documentation for why you would want to do this.<br>
/// 1 means use random mac<br>
/// 0 means use existing mac - (the system will autodetect one of your ethernet ports or make up a combined non mac value to use if detection doesnt work) <br>
///
Property UUIDv1RandomMac As %Integer(MAXVAL = 1, MINVAL = 0) [ InitialExpression = 0, Required ];

/// Number of MB allocated for caching routine buffers.<br>
/// <br><br>
/// Modifying this property will require a restart of the system to make it active.
Property routines As %String [ InitialExpression = 0, Required ];

Property SecureKernel As %Boolean [ InitialExpression = 0, Internal, Required ];

Property SecureKernelPresent As %Boolean [ InitialExpression = 0, Internal ];

/// <br><br>
/// Modifying this property will require a restart of the system to make it active.
Property synctype As %String [ Internal ];

Property synctypePresent As %Boolean [ InitialExpression = 0, Internal ];

/// When targwijsz is non-zero it is the desired size of the WIJ file in MB.
/// The maximum effective value is the size of the buffer pool. While it would not hurt
/// to have a larger WIJ, it does not help anything. The minimum value is 100MB. When
/// the size of the global buffer pool is less than 100MB at startup the WIJ is sized
/// to hold the entire buffer pool; the minimum size of the WIJ at startup is either
/// 100MB or the size required to hold the entire buffer pool (which is slightly larger
/// than the actual size of the buffer pool). If an existing WIJ is larger than
/// the specified target, the size of the WIJ is not reduced. <br><br>
/// When the target size is larger than the size of the existing WIJ, the system will
/// expand the WIJ while the write daemon is idle up to the specified target (but
/// not to exceed the actual size of the WIJ needed to hold the entire buffer pool). The
/// system can expand the WIJ past the target size if that becomes necessary to
/// complete a write cycle.<br><br>
/// Leaving this value set to 0 is fine. The system will grow the WIJ as needed based
/// on activity. Generally the WIJ quickly reaches whatever size is needed to
/// support the activity level/the size of the buffer pool.  The purpose of setting
/// a target size is that if space has been reserved for the WIJ, setting a target
/// allows the WIJ to grow to occupy that space early on in the life of the system.
/// Since user activity can be blocked if the WIJ is too small (the WIJ will try to expand
/// if this happens), setting the target may lead to a better user experience after
/// startup. If the target is set to 0, the WIJ may quickly expand as needed however
/// users may be blocked at times when this happens until the WIJ reaches the size
/// required by the system.
Property targwijsz As %Integer(MINVAL = 0) [ InitialExpression = 0, Required ];

/// Maximum size in bytes of the device table.<br>
/// <br><br>
/// Modifying this property will require a restart of the system to make it active.
Property udevtabsiz As %Integer(MAXVAL = 65535, MINVAL = 0) [ InitialExpression = 24576, Required ];

/// <br><br>
/// Modifying this property will require a restart of the system to make it active.
Property usedirectio As %String [ Internal ];

Property usedirectioPresent As %Integer [ InitialExpression = 0, Internal ];

/// VMS system resident memory name.<br>
/// <br><br>
/// Modifying this property will require a restart of the system to make it active.
Property useresidentmem As %String(MAXLEN = 128, MINLEN = 0);

Property useresidentmemPresent As %Boolean [ InitialExpression = 0, Internal ];

/// Location of the VMS console terminal.<br>
/// This is the first piece of the CPF parameter console=VMSConsoleTerminal,ConsoleFile
/// <br><br>
/// Modifying this property does not require a restart of the system to make it active.
Property VMSConsoleTerminal As %SysPath(MAXLEN = 256, MINLEN = 0);

Method VMSConsoleTerminalSet(Val) As %Status [ Internal ]
{
}

/// <br><br>
/// Modifying this property will require a restart of the system to make it active.
Property wdparm As %String [ Internal ];

Property wdparmPresent As %Integer [ InitialExpression = 0, Internal ];

/// For systems with multiple write daemons this parameter controls how work is
/// assigned when writing blocks back to the database files. <br>
/// 0 - When databases are mounted they are assigned to write
/// daemons based on their physical device with all files for a given device getting
/// assigned to the same write daemon.<br><br>
/// 1 - (Default) On every write daemon cycle the system tracks how many blocks
/// are being written to each volume and assigns the volumes to the write daemons
/// to spread out the work as much as possible.
/// <br><br>
/// Modifying this property will require a restart of the system to make it active.
Property wdstrategy As %Integer(MAXVAL = 1, MINVAL = 0) [ InitialExpression = 0, Internal ];

Property wdstrategyPresent As %Integer [ InitialExpression = 0, Internal ];

/// On Unix systems this means the wd uses async I/O to write to databases.<br>
/// If a database cannot be opened for direct I/O we fail to mount it.
/// When set to 0 we use writev() to write blocks back to the databases.
/// <br><br>
/// Modifying this property will require a restart of the system to make it active.
Property wduseasyncio As %Integer(MAXVAL = 1, MINVAL = 0) [ InitialExpression = 0, Internal ];

Property wduseasyncioPresent As %Integer [ InitialExpression = 0, Internal ];

/// Enter the directory for the Write Image Journal file into this text box.<br>
/// <br><br>
/// Modifying this property does not require an instance restart to activate the change except on cluster members.
Property wijdir As %SysPath(MAXLEN = 256, MINLEN = 0);

Method wijdirSet(Directory As %SysPath) As %Status [ Internal ]
{
}

/// The total number of bytes allocated in virtual memory for $ZF input and output parameters, including strings.<br>
/// This is the second piece of the CPF parameter zfheap=ZFString,ZFSize
/// <br><br>
/// Modifying this property does not require a restart of the system to make it active.
Property ZFSize As %Integer(MAXVAL = 270336, MINVAL = 0) [ InitialExpression = 0, Required ];

Method ZFSizeSet(Val) As %Status [ Internal ]
{
}

/// Number of bytes allocated for the each output byte array or string parameter on the $ZF heap.<br>
/// This is the First piece of the CPF parameter zfheap=ZFString,ZFSize
/// <br><br>
/// Modifying this property does not require a restart of the system to make it active.
Property ZFString As %Integer(MAXVAL = 32767, MINVAL = 0) [ InitialExpression = 0, Required ];

Method ZFStringSet(Val) As %Status [ Internal ]
{
}

/// CPF file representation of zfheap=ZFString,ZFSize
Property zfheap As %String [ InitialExpression = "0,0", Internal, ReadOnly ];

/// Callback called from the Create method which handles the setting of properties
/// which are constructed from a different property.<br>
ClassMethod CreateCallBack(Obj As %ObjectHandle, ByRef Props As %String) [ Internal ]
{
}

/// Get the console.log file name being used by the system.<br>
/// This will always return a filename. If a %Status error is returned,
/// the name of the file returned will be $zu(12)_messages.log. Note that this will
/// return the messages.log file the system currently has open, not the one
/// which is defined in the CPF file and not yet activated. <br>
ClassMethod GetConsoleFileName(ByRef Status As %Status) As %String
{
}

ClassMethod Load(Obj As %ObjectHandle = "", Flags As %Integer = 1) As %Status [ Internal ]
{
}

/// Special handling for EMS. We can't use IsModified() so we compare against the $System values.
ClassMethod EMSLoad(Obj As %ObjectHandle = "", Flags As %Integer = 1) As %Status [ Internal ]
{
}

/// Answers the question "Does the property require a restart?"
ClassMethod NoRestartOnActivate(Property As %String) As %Boolean
{
}

/// Updates MaxServerConn to 14 when JoinCluster=1.
ClassMethod UpdateMaxServerConn(CPFFile As %String, Flags As %Integer) As %Status [ Internal ]
{
}

ClassMethod %OnBeforeSaveCallBack(insert As %Integer, Obj As %ObjectHandle) As %Status [ Internal, Private ]
{
}

/// Called from %Save().<br>
/// Validate that the database being created has all its parameters set correctly.<br>
/// Any error returned here will abort the creation of the database.<br>
Method %OnValidateObject() As %Status [ Internal ]
{
}

}
