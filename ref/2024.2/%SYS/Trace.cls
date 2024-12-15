/// This class provides methods to trace the execution of a process.  Traced processes
/// write events to a trace file with information about the routine line where it ocurred
/// and, if applicable, the global reference.  The events available for tracing
/// correspond to the metrics reported in performance monitoring tools (PERFMON,
/// %SYS.MONLBL, etc).  Raw data is written to a trace file, iristrace_<i>pid</i>.txt,
/// in a specified directory, which is parsed by this class.
/// <p>
/// Different sets of trace events can be selected to produce traces for different purposes.
/// Highly detailed application execution tracing can be achieved, including all
/// global references (the GloRef event), all application subroutine calls (RtnLoad)
/// and/or every line of application code executed (RtnLines).  Or, tracing can be limited
/// to less common events such as physical block reads (DataBlkRd, UpntBlkRd, etc),
/// network cache misses (NCacheMiss), and/or block collisions (BlkWait), in order to
/// find all the locations in the application where these occurenced may be affecting
/// performance.
Class %SYS.Trace Extends %SYSTEM.Help [ Abstract ]
{

/// Returns the directory where trace files will be written by processes being traced.
ClassMethod GetDirectory() As %SysPath
{
}

/// Sets the directory where trace files will be written by processes being traced.
/// Note that trace files may contain sensitive information such as global references
/// (but not values) or parameters passed to subroutines.  The trace directory must
/// exist and must be writeable by the processes being traced (i.e. on UNIX and Linux
/// systems it must be writeable by the effective group selected at installation).
ClassMethod SetDirectory(dir As %SysPath) As %Status
{
}

/// Validates a directory argument for tracing.
/// Returns status success or error and, if validation passes,
/// passes the normalized directory back in ndir.
///
ClassMethod ValidateDirectory(dir As %SysPath, ByRef ndir As %SysPath) As %Status
{
}

/// Returns a list where each list element is a monitor event to record.
/// See <METHOD>SetEvents</METHOD>.
ClassMethod GetEvents() As %List
{
}

/// Set the default list of monitor events that traced processes will record in the trace file.
/// The list of available events is returned by <METHOD>EventNames</METHOD> and listed in
/// by the ^TRACE or ^%SYS.MONLBL utilities.
/// <p>
/// Note that the "RtnLoad" event is treated specially, and traces not just literal
/// routine loads but all subroutine calls and returns.  This allows for tracing the
/// application stack and time spent in subroutines, methods, and extrinsic functions.
ClassMethod SetEvents(events As %List) As %Status
{
}

/// Validate a list of monitor events for trace files.
/// Returns status success if the event list is valid and an error if not.
///
ClassMethod ValidateEvents(events As %List) As %Status
{
}

/// Validate a list of monitor events for trace files and, if status is OK,
/// returns a list of numerical event codes in nlist. Wrapped by ValidateEvents
/// to obscure nlist, which is for internal use only. Called directly by StartPID.
///
ClassMethod GetEventCodes(events As %List, ByRef nlist As %List) As %Status [ Internal ]
{
}

/// Returns the system-wide default for maximum trace file size in MB. See SetMaxSize.
ClassMethod GetMaxSize() As %Integer
{
}

/// Sets the system-wide default for maximum trace file size in MB. The default value is 0 (no cap).
/// The value, when converted from MB to bytes, must be a valid integer (maximum ~2047 MB).
ClassMethod SetMaxSize(maxsize As %Integer) As %Status
{
}

/// Accepts as input a size cap in MB, converts to bytes, and checks if the byte count is within range.
/// If the byte count is negative or too large for a 32-bit integer, it is invalid.
ClassMethod ValidateMaxSize(maxsize As %Integer) As %Status
{
}

/// Start tracing in a target process.  If a trace file of the same name
/// already exists, it will be recreated. If arguments are empty,
/// system-wide defaults will be used.
/// Note that a successful return status does not wait for the target
/// process to (re)create the trace file.
ClassMethod StartPID(pid, dir As %String = "", events As %List = "", maxsize As %Integer = "") As %Status
{
}

/// Stop a process's trace
ClassMethod StopPID(pid) As %Status
{
}

/// Returns a list all process IDs that are being traced
ClassMethod PIDList() As %List
{
}

/// Returns a list of event names
ClassMethod EventNames() As %List
{
}

/// Reads a trace file and parses records into rows with the following columns:
/// <li><b>Event:</b> the event (monitor metric) name, or special markers CALL, QUIT, START, STOP, HALT, ARG, STACK
/// <li><b>Text:</b> some events (ARG and STACK) carry only an unstructured text note relating to the previous event (with all other columns null)
/// <li><b>TOffset:</b> time offset from start in microseconds
/// <li><b>Level:</b> the stack level if subroutine calls are being traced, otherwise -1
/// <li><b>Count:</b> the number that this event would add to the corresponding performance metric (typically 1)
/// <li><b>LineAndRoutine:</b> routine line where the event occurred
/// <li><b>RoutineSFN:</b> internal SFN (system file number) for the routine database (directly from trace file)
/// <li><b>RoutineLoc:</b> an implied namespace (^sys^directory) corresponding to RoutineSFN. If the trace file was created prior to the last
/// startup (or created on a different machine), this column may be inaccurate or null.
/// <li><b>SrcLine:</b> the line of source code, if the "s" flag is used and if the source is available)
/// <li><b>GlobalRef:</b> Null if the trace event is not an operation on a global, otherwise the global
/// reference (gvn).  The reference includes a leading ^.  No environment is specified - it is not given
/// as an extended reference - except in the case of a process private global, which will include ^||.
/// In some unusual cases the global reference may not be able to be translated properly and either the
/// last subscript may appear incomplete, or the value of GlobalRef may instead be a printable sequence
/// of hex characters with no leading ^.  Therefore the caller should be mindful if doing any
/// manipulations of this value (e.g. use try/catch if operating on this value with $qlength or $qsubscript).
/// If "q" is specified in the flags parameter, non-printing characters in the global reference will be
/// quoted (similarly to the output of the ZWRITE command).
/// <li><b>GlobalSFN:</b> internal SFN (system file number) for the database (directly from trace file)
/// <li><b>GlobalLoc:</b> an implied namespace (^sys^directory) corresponding to GlobalSFN.  If the trace file was created prior to the last
/// startup (or created on a different machine), this column may be inaccurate or null.  Process private globals also report null.
/// <p>
/// The flags parameter may include the following characters
/// <br>s - fetch source line into SrcLine column from routine INT code
/// <br>q - quote global reference to avoid non-printing characters in subscript
/// <p>
/// Note that if the end of the trace file is reached before a STOP or HALT record up fetching the
/// next row, an error $$$UnexpectedEndOfFile, will be returned and additional rows may become
/// available later if the traced process is still running.
ClassMethod ReadFileExecute(ByRef qHandle As %Binary, file As %String, flags As %String) As %Status [ Internal ]
{
}

ClassMethod ReadFileFetch(ByRef qHandle As %Binary, ByRef Row As %List, ByRef AtEnd As %Integer = 0) As %Status [ Internal ]
{
}

ClassMethod ReadFileClose(ByRef qHandle As %Binary) As %Status [ Internal ]
{
}

/// Writes a formatted display of a trace file to the current device.
/// <p>
/// The flags parameter may include the following characters
/// <br>d - Display databases for routines and globals.  If possible, ^sys^directory is displayed,
/// otherwise, internal system file numbers.  If the trace file was created prior to the last
/// startup (or created on a different machine), the reported ^sys^directory may be inaccurate.
/// <br>n - Display databases for routines and global references as internal system file numbers.
/// <br>s - Display source line
/// <br>w - Wait for more data if end of the file is encountered and the process is still being traced (ctrl-c to stop)
ClassMethod Display(file As %String, flags As %String)
{
}

}
