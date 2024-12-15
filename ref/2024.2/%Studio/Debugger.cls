/// This class is used internally by InterSystems IRIS. You should not make direct use of it within your applications. There is no guarantee made about either the behavior or future operation of this class.<p>
/// Studio debugging interface.
Class %Studio.Debugger Extends %Library.RegisteredObject [ System = 3 ]
{

/// SessionId if attached to CSP process
Property CSPId As %String;

/// System Debugger object
Property Debug As %Debugger.System;

/// Last error
Property LastError As %Integer;

/// Current breakpoint information for target process
Property Breakpoints As %String;

/// Current watchpoint information for target process
Property Watchpoints As %String;

/// I/O redirection flag
Property IO As %Boolean;

/// Project
Property Project As Project;

Property trace As %Boolean [ InitialExpression = 0 ];

/// Job off a routine that executes <var>tag</var>.
/// If breakpoints are specified, the target will halt at the first breakpoint.
Method StartTarget(tag As %String, StartOption As %Boolean = 0, project As Project = "") As %Status
{
}

Method TranslateMvb(ByRef tag As %String) As %Boolean [ Private ]
{
}

/// Attach to another process having process id of pid.
/// <p>Fails if already attached (use <method>Unattach</method> first),or
/// if pid is invalid.
/// <p>On successful completion, process is attached and a break issued.
/// The process will be in break mode upon completion of its current operation.
Method Attach(pid As %String = "", project As Project = "") As %Status
{
}

Method %OnNew(initval As %RawString = "") As %Status [ Private ]
{
}

/// Send a BREAK to the target process.
/// <p>A successful return indicates the target will be in break mode
/// on completion of the current command.
/// <p>Issue IsStopped to determine if target is in break mode.
Method Break() As %Boolean
{
}

/// Returns 1 if the target is stopped in break mode.
/// 0 indicates target is still running.
/// 2 indicates target has exited debugger or fatal error.
Method IsStopped() As %Integer
{
}

/// Write to target process
Method WriteTarget(data As %String) As %Boolean
{
}

/// Interrupt the target process.  The current command will be interrupted.
/// Execution will proceed with the next command.
Method Interrupt() As %Boolean
{
}

/// Perform a debug command.
Method DBGCommand(cmd As %String, IsSys As %Integer = 0) As %Boolean
{
}

/// Evaluate and return the value of expression
/// <var>expr</var> within the target process.
Method Eval(expr As %String = "") As %String
{
}

/// Sets a variable to a value.
Method SetValue(variable As %String = "", value As %String = "") As %Boolean
{
}

/// Gets the value of a variable.
Method GetValue(variable As %String = "", ByRef value As %String) As %Boolean
{
}

/// Gets the simple stack information sent from the target.
Method GetStack() As %String
{
}

/// Requests stack variable info.
Method GetStackId() As %String
{
}

/// Return the current location of the debugger. This includes both the command and the argument
/// positions.
Method GetOffset(ByRef RoutineName As %String, ByRef BeginCmdLine As %Integer, ByRef BeginCmdOffset As %Integer, ByRef EndCmdLine As %Integer, ByRef EndCmdOffset As %Integer, ByRef BeginArgLine As %Integer, ByRef BeginArgOffset As %Integer, ByRef EndArgLine As %Integer, ByRef EndArgOffset As %Integer, ByRef NameSpace As %String) As %Integer
{
}

/// Return the routine source at the current location
Method GetSource() As %String
{
}

Method %OnClose() As %Status [ Private, ProcedureBlock = 1 ]
{
}

/// Check if routine is mapped to current namespace
/// <p>Returns 1 if successful, 0 if not mapped to current
Method RoutineMap(current As %String, routine As %String, rouns As %String) As %Boolean
{
}

/// Continue the current process
Method Go() As %Boolean
{
}

/// Continue the current process
Method GoTo(tag As %String) As %Boolean
{
}

Method Line() As %Boolean
{
}

Method LineIn() As %Boolean
{
}

Method LineOut() As %Boolean
{
}

Method SetBreakpoint(routine As %String, offset As %Integer, condition As %String = "", label As %String = "") As %Boolean
{
}

Method DisableBreakpoint(routine As %String, offset As %Integer, condition As %String = "", counter As %Integer, label As %String = "") As %Boolean
{
}

Method RemoveBreakpoint(routine As %String, offset As %Integer, label As %String = "") As %Boolean
{
}

Method ClearBreakpoints() As %Boolean
{
}

Method SetWatchpoint(variable As %String, condition As %String = "") As %Boolean
{
}

Method DisableWatchpoint(variable As %String, counter As %Integer) As %Boolean
{
}

Method RemoveWatchpoint(variable As %String) As %Boolean
{
}

/// Set all break points defined in project.
/// <p>Return 0 if project=NULL, else
/// return status code from SetBreakpoint
Method SetBreakpointsFromProject(project As Project) As %Boolean
{
}

Method Step() As %Boolean
{
}

Method StepIn() As %Boolean
{
}

Method StepOut() As %Boolean
{
}

/// Unattach from the current process, if any.
/// <p>Returns $$$OK if successful, $$$ERROR if nothing to detach from
Method Unattach(kill As %Boolean) As %Status
{
}

/// To attach to a CSP process, first call this method which will return you a unique
/// ID number. Then display the CSP page but add an extra parameter of 'CSPDEBUG=&lt;ID&gt;'
/// for example 'http://localhost/csp/samples/loop.csp?CSPDEBUG=123456'. Then call the
/// <method>AttachToCSP</method> method which will attach to the process that is
/// running this CSP page.
Method GetCSPAttachID() As %Integer
{
}

/// Attach to a CSP process, first you must call the <method>GetCSPAttachID</method>
/// to obtain the ID to pass to this method.
Method AttachToCSP(id As %Integer, project As Project = "") As %Status
{
}

ClassMethod ProcessListExecute(ByRef QHandle As %Binary) As %Status
{
}

ClassMethod ProcessListClose(QHandle As %Binary) As %Status
{
}

ClassMethod ProcessListFetch(ByRef QHandle As %Binary, ByRef Row As %List, ByRef AtEnd As %Integer = 0) As %Status
{
}

/// Gather information about a process
ClassMethod GetInfo(Job As %Integer, Pid As %Integer) As %String
{
}

/// Given a document <var>name</var>, <var>label</var> and <var>line</var> offset it returns the name and line corresponding to this in the INT code
/// <var>returntype</var> values are<ul>
/// <li>0 - Ok</li>
/// <li>1 - Line given is not mapped so returning the next mapped line as breakpoint instead</li>
/// <li>2 - No mapping found at all, nothing returned</li></ul>
/// For example if you wish to find out which line is generated from class 'User.Test' in method 'MyMethod' at offset '+3' you
/// call:
/// <example>Set sc=##class(%Studio.Debugger).INTLine("User.Test.CLS","MyMethod",3,.intname,.intline,.returntype)</example>
/// <var>type</var> is one of 'CLS' or 'MAC' currently.
ClassMethod INTLine(name As %String, label As %String, line As %Integer, ByRef intname As %String, ByRef intline As %String, ByRef returntype As %Integer, pNameSpace As %String = {$namespace}) As %Status
{
}

/// Given INT routine name and line number and offset in this line return an array of source lines
/// that map to this INT line. The format of this return array is:<p>
/// map(type,StartEnd)=$listbuild(sourceName,sourceLabel,sourceLine,Offset,Namespace)<p>
/// Where StartEnd is 1 for the start of the map and 2 for the end, sourceName is the name of the
/// source file, sourceLabel is the method/label name, sourceLine is the number of lines from
/// this label to the location, Offset is the offset on the line, Namespace is the location
/// of the source file.
ClassMethod SourceLine(intName As %String, startLine As %Integer, startPos As %Integer, endLine As %Integer, endPos As %Integer, Namespace As %String, ByRef map As %String) As %Status
{
}

ClassMethod addMap(name, intmvikey, type, line, pos, map, loc, Namespace) [ Private ]
{
}

/// Return the list of source files that the current break point maps to starting with the INT/BAS routine.
/// Each source file is separated by a space character.
/// The format of each source file data is:<p>
/// routineName,label,beginCmdLine,beginCmdOffset,endCmdLine,endCmdOffset,beginArgLine,beginArgOffset,endArgLine,endArgOffset,Namespace
Method MappedOffset(ByRef mapping As %String, ByRef namespace As %String, ByRef flag As %String) As %Status
{
}

/// Return the list of source files that the position passed in maps to.
/// Each source file is separated by a space character.
/// The format of each source file data is:<p>
/// routineName,label,beginCmdLine,beginCmdOffset,endCmdLine,endCmdOffset,beginArgLine,beginArgOffset,endArgLine,endArgOffset,Namespace
ClassMethod MappedFromPos(routineName As %String, beginCmdLine As %Integer, beginCmdOffset As %Integer, endCmdLine As %Integer, endCmdOffset As %Integer, beginArgLine As %Integer, beginArgOffset As %Integer, endArgLine As %Integer, endArgOffset As %Integer, namespace As %String, ByRef mapping As %String, ByRef flag As %String) As %Status
{
}

/// Return the list of source files that the routine and line map to.
/// The format of each source file data is:<p>
/// routineName.routineType,label,line,namespace
ClassMethod MappedFromLine(rtn As %String, line As %Integer, namespace As %String, ByRef mapping As %String) As %Status
{
}

/// error routine
Method Error(err As %String) As %Integer [ Private ]
{
}

/// return process id of attached target
Method Pid() As %String
{
}

/// Get the values of the specified $c(1)-separated list of variables.
ClassMethod WatchListExecute(ByRef qHandle As %Binary, deb As %Integer, Watch As %String(MAXLEN=1024)) As %Status
{
}

ClassMethod WatchListClose(ByRef qHandle As %Binary) As %Status [ PlaceAfter = WatchListExecute ]
{
}

ClassMethod WatchListFetch(ByRef qHandle As %Binary, ByRef Row As %List, ByRef AtEnd As %Integer = 0) As %Status [ PlaceAfter = WatchListExecute ]
{
}

/// Get the properties of the specified variable whose value is an oref.
/// %Studio.General::DumpObjectExecute implements logic to dump object
/// and collect properties in qHandle array. WatchList query from %Studio.Debugger to deliver array to client.
ClassMethod WatchListOrefExecute(ByRef qHandle As %Binary, deb As %Integer, Watch As %String(MAXLEN=256)) As %Status
{
}

ClassMethod WatchListOrefClose(ByRef qHandle As %Binary) As %Status [ PlaceAfter = WatchListExecute ]
{
}

ClassMethod WatchListOrefFetch(ByRef qHandle As %Binary, ByRef Row As %List, ByRef AtEnd As %Integer = 0) As %Status [ PlaceAfter = WatchListExecute ]
{
}

Method ViewAsBinary(variableName As %String) As %String
{
}

}
