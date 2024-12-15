/// This class is used internally by InterSystems. You should not make direct use of it within your applications. There is no guarantee made about either the behavior or future operation of this class.<p>
/// <center><b><font size=+2>System Debugging in InterSystems IRIS</font></b></center>
/// <b><font size=+1>Overview</font></b>
/// <p>The system debugger allows external debugging of processes via a set of debugging
/// commands provided by the class %Debugger.System.
/// The debugger may be used to attach to processes running ObjectScript routines, or to start routines for debugging. In
/// either case, the user must: <o:p></o:p></span></p>
/// <ul type=disc>
/// <li>Start a target process, specifying what routine it is to
///     execute (optional) </li>
/// <li>Attach to the target process </li>
/// <li>Issue commands to the target process to control its execution </li>
/// </ul>
/// <p>Any process
/// executing routines may be attached to by a user
/// with suitable privileges. <o:p></o:p></span></p>
/// <p>Debugging methods are provided
/// which allow the user to: <o:p></o:p></span></p>
/// <ul type=disc>
/// <li>Attach to the process and put it in break mode <o:p></o:p></span></li>
/// <li>Control execution (break, step, step into, step out, continue) <o:p></o:p></span></li>
/// <li>Set and clear breakpoints and <span class=SpellE>watchpoints</span>
///     <o:p></o:p></span></li>
/// <li>View current location and stack information <o:p></o:p></span></li>
/// <li>View and set variables, evaluate expressions, and execute COS
///     commands <o:p></o:p></span></li>
/// </ul>
/// <p>Commands may only be issued when the target is in break mode. Since the state of the target
/// is uncertain following any debugger command, the method <METHOD>IsStopped</METHOD> must be used to test if the process is in fact in break mode. After a process
/// has been attached, this method must be called, and return successfully,
/// following every debugger command, before another command may be issued. The
/// exceptions are <METHOD>Unattach</METHOD>(detach from a process and stop debugging), and <METHOD>Break</METHOD>
/// (break into a process which is executing under debugger control). <o:p></o:p></span></p>
/// <p><span style='font-family:Helvetica;color:black'>Location information is
/// automatically returned whenever the process breaks. The property
/// <PROPERTY>Location</PROPERTY> contains the raw location information. The methods
/// <METHOD>GetOffset</METHOD> and <METHOD>GetSource</METHOD>
/// may be used to obtain analysed location and source
/// data. <o:p></o:p></span></p>
/// <p><b><font size=+1>Terminals</font></b>
/// <p>Two terminal output windows may be started. One of the windows is started when
/// processes are started by the debugger,and is the principle device for the process. <o:p></o:p></span></p>
/// <p>Another window may be started after any process is attached, which is the debug device
/// for the process. All debugger output is displayed in this window. <o:p></o:p></span></p>
/// <p>Both of these windows are also available when debugging remote processes. In this case, the windows are
/// started on the local platform. <o:p></o:p></span></p>
/// <p><b><font size=+1>Starting a routine</font></b>
/// <p>The Debugger provides a stub which is jobbed to create a debug process. This stub awaits debugger commands
/// to open a terminal window, and execute the desired routine. <o:p></o:p></span></p>
/// <p>The method <METHOD>StartTarget</METHOD>, which takes a routine name as an argument, uses this stub to begin debugging a
/// routine. It jobs the stub to begin execution, starts the <span class=SpellE>Cterm</span>
/// windows, attaches to the process, and signals what routine is to be run. Upon
/// completion, the process is ready for debugging. Breakpoints may be set and the
/// routine executed. <o:p></o:p></span></p>
/// <p><p><b><font size=+1>Attaching a process</font></b>
/// <p>Any process may be attached for debugging. The method <METHOD>Attach</METHOD> takes a numeric process id as an argument.
/// Upon successful completion, the target is ready to be debugged. <o:p></o:p></span></p>
/// <p><p><b><font size=+1>Remote Debugging</font></b>
/// <p>Remote and local debugging are identical, except for the sequence of commands required
/// to open the Cterm windows. Since the Cterm windows are on the local platform, a separate %Debugger.System
/// instance must be used on the local and remote platforms. <o:p></o:p></span></p>
/// <p>To start a process, the user follows this sequence: <o:p></o:p></span></p>
/// <ul type=disc>
/// <li>(Remote platform) Start the target stub via <METHOD>StartTargetRemote</METHOD>
///     <o:p></o:p></span></li>
/// <li>(Local platform) Start the <span class=SpellE>cterm</span> via <METHOD>Cterm</METHOD>,
///     using the output port information returned from <METHOD>StartTargetRemote</METHOD>
///     <o:p></o:p></span></li>
/// <li>(Remote platform) Attach the target stub via <METHOD>DebugTarget</METHOD>
///     <o:p></o:p></span></li>
/// </ul>
///
/// <p>Remember that upon successful completion of any command, the target may not be in
/// break mode. The method <METHOD>IsStopped</METHOD> must be explicitly invoked, and return a success code,
/// before any new commands may be issued.
/// </body>
/// </html>
Class %Debugger.System Extends %Library.RegisteredObject [ System = 3 ]
{

/// Flag indicating whether we are Attached to a target.
Property Attached As %Boolean [ InitialExpression = 0 ];

/// Session ID of target process.  Target signals on this Event.
Property Sid As %String(TRUNCATE = 1);

/// Command ID of target process.  Target waits for commands on this Event
Property CmdId As %String;

/// Process ID of target process
Property Pid As %String(TRUNCATE = 1);

/// Job number of target process
Property Job As %Integer;

/// Current Location info for target process
Property Location As %String(TRUNCATE = 0);

/// Current Stack info for target process
Property Stack As %String(TRUNCATE = 0);

/// Flag indicating if target is stopped
Property Stopped As %Boolean [ InitialExpression = 0 ];

/// Event id of this debugger instance
Property DebId As %String(TRUNCATE = 1);

/// Device for i/o redirecttion
Property Dev As %String(TRUNCATE = 1);

/// Flag indicating we have attempted to open an i/o device
Property DevOpen As %Boolean [ InitialExpression = 0 ];

/// Kill target on disconnect flag
Property Killtarget As %Boolean [ InitialExpression = 0 ];

/// Result set for Variables
Property RsetVars As %ResultSet [ InitialExpression = 0 ];

Property trace As %Boolean [ InitialExpression = 0 ];

/// Set to non-zero if running under Atelier debugger<br>
/// -1 means no trace<br>
/// >0 is the Atelier trace node
Property atelierTrace As %Boolean [ InitialExpression = 0 ];

/// This property can be used to disable outputing of device data by setting the value to 0
Property OutputToDebugDevice [ InitialExpression = 1 ];

/// Attach to another process having process id of pid.
/// <p>Fails if already attached (use <method>Unattach</method> first),or
/// if pid is invalid.
/// <p>On successful completion, process is attached and a break issued.
/// The process will be in break mode upon completion of its current operation.
Method Attach(pid As %String = "") As %Integer
{
}

/// Send a BREAK to the target process.
/// <p>On successful completion, a break has been issued.
/// The process will be in break mode upon completion of its current operation.
Method Break() As %Integer
{
}

/// Return true if the target is in break mode.
Method IsStopped(timeout As %Integer = 1) As %Integer
{
}

/// Interrupt the target process
/// <p>The target process is sent a software interrupt.  This causes
/// the target to break.  The next line of code will be executed when
/// the target is resumed.
Method Interrupt() As %Integer
{
}

/// Write to the target process
Method Write(data As %String) As %Integer
{
}

/// Perform a debug command.
Method DBGCommand(cmd As %String, issys As %Integer = 0) As %Integer
{
}

/// Continue the current process
Method Go() As %Integer
{
}

/// Continue the current process without stepping on return
Method Resume() As %Integer
{
}

/// Continue the current process at tag
Method GoTo(tag As %String) As %Integer
{
}

Method Line() As %Integer
{
}

Method LineIn() As %Integer
{
}

Method LineOut() As %Integer
{
}

Method SetBreakpoint(routine As %String, offset As %Integer, condition As %String = "") As %Integer
{
}

Method DisableBreakpoint(routine As %String, offset As %Integer, counter As %Integer = 0) As %Integer
{
}

Method RemoveBreakpoint(routine As %String, offset As %Integer) As %Integer
{
}

Method ClearBreakpoints() As %Integer
{
}

Method SetWatchpoint(variable As %String, condition As %String = "") As %Integer
{
}

Method DisableWatchpoint(variable As %String, counter As %Integer = 0) As %Integer
{
}

Method RemoveWatchpoint(variable As %String) As %Integer
{
}

Method Step() As %Integer
{
}

Method StepIn() As %Integer
{
}

Method StepOut() As %Integer
{
}

/// Sets a variable to a value.
Method SetValue(variable As %String = "", value As %String = "") As %Integer
{
}

/// Gets the value of a variable
Method GetValue(Variable As %String = "", ByRef Value As %String, Lang As %Integer = 0) As %Integer
{
}

/// Evaluate and return the properties / values of variable which is an oref and any of its child objects, up to <b>maxdepth</b>
Method Atelierv5EvalOref(oref As %String, maxdepth As %Integer, ByRef result As %String) As %Status
{
}

/// Evaluate and return the property/value pairs of variable which is an oref
Method EvalOref(oref As %String = "", ByRef vararray As %Binary) As %Integer
{
}

/// Evaluate and return the value of expression
/// <var>expr</var> within the target process.
Method Eval(expr As %String = "", ByRef result As %String) As %Integer
{
}

/// Get Stack info for target
/// Show the call stack, state and variables using ^%STACK
/// lev,start,.vararray,.next
Method StackVars(lev As %Integer, start As %String, ByRef vararray As %Binary) As %Integer
{
}

Method %OnNew(initval As %RawString = "") As %Status [ Private ]
{
}

Method %OnClose() As %Status [ Private ]
{
}

/// Unattach from the current process, if any.
/// Assumes the target has been stopped
/// <p>Returns $$$OK if successful, error code if nothing to detach from
Method Unattach() As %Integer
{
}

/// Start a local debugging session on a new process.
/// Job the cterm debug stub
/// Start a cterm connected to the target
/// Run DebugTarget to run the process
/// <p>On exit from this routine, the target is in break mode waiting for a command
Method StartTarget(target As %String, pWriteOutput = 1) As %Integer
{
}

/// System stub used by the debugger application
/// <p>This class method is jobbed in order to start a target process.
/// <p>The stub waits on the input event for the debugger to pass the name
/// of the target routine to be executed.
/// <p>When signalled, the stub then executes target routine
ClassMethod DebugStub(pWriteOutput)
{
}

Method LocalIO(port As %Integer, address As %String = "127.0.0.1") As %Boolean
{
}

/// Log a trace if tracing enabled
Method Trace(pMsg As %String)
{
}

}
