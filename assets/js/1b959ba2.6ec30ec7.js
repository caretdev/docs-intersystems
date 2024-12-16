"use strict";(self.webpackChunkdocs_intersystems=self.webpackChunkdocs_intersystems||[]).push([[10296],{14425:(e,t,n)=>{n.r(t),n.d(t,{contentTitle:()=>i,default:()=>o,frontMatter:()=>a,toc:()=>c});var s=n(74848),r=n(28453);const a={pagination_prev:null,pagination_next:null},i="%Debugger.System",c=[{value:"Properties",id:"properties",level:2},{value:"Attached",id:"attached",level:3},{value:"Sid",id:"sid",level:3},{value:"CmdId",id:"cmdid",level:3},{value:"Pid",id:"pid",level:3},{value:"Job",id:"job",level:3},{value:"Location",id:"location",level:3},{value:"Stack",id:"stack",level:3},{value:"Stopped",id:"stopped",level:3},{value:"DebId",id:"debid",level:3},{value:"Dev",id:"dev",level:3},{value:"DevOpen",id:"devopen",level:3},{value:"Killtarget",id:"killtarget",level:3},{value:"RsetVars",id:"rsetvars",level:3},{value:"trace",id:"trace",level:3},{value:"atelierTrace",id:"ateliertrace",level:3},{value:"OutputToDebugDevice",id:"outputtodebugdevice",level:3},{value:"Methods",id:"methods",level:2},{value:"Attach",id:"attach",level:3},{value:"Break",id:"break",level:3},{value:"IsStopped",id:"isstopped",level:3},{value:"Interrupt",id:"interrupt",level:3},{value:"Write",id:"write",level:3},{value:"DBGCommand",id:"dbgcommand",level:3},{value:"Go",id:"go",level:3},{value:"Resume",id:"resume",level:3},{value:"GoTo",id:"goto",level:3},{value:"Line",id:"line",level:3},{value:"LineIn",id:"linein",level:3},{value:"LineOut",id:"lineout",level:3},{value:"SetBreakpoint",id:"setbreakpoint",level:3},{value:"DisableBreakpoint",id:"disablebreakpoint",level:3},{value:"RemoveBreakpoint",id:"removebreakpoint",level:3},{value:"ClearBreakpoints",id:"clearbreakpoints",level:3},{value:"SetWatchpoint",id:"setwatchpoint",level:3},{value:"DisableWatchpoint",id:"disablewatchpoint",level:3},{value:"RemoveWatchpoint",id:"removewatchpoint",level:3},{value:"Step",id:"step",level:3},{value:"StepIn",id:"stepin",level:3},{value:"StepOut",id:"stepout",level:3},{value:"SetValue",id:"setvalue",level:3},{value:"GetValue",id:"getvalue",level:3},{value:"Atelierv5EvalOref",id:"atelierv5evaloref",level:3},{value:"EvalOref",id:"evaloref",level:3},{value:"Eval",id:"eval",level:3},{value:"StackVars",id:"stackvars",level:3},{value:"%OnNew",id:"onnew",level:3},{value:"%OnClose",id:"onclose",level:3},{value:"Unattach",id:"unattach",level:3},{value:"StartTarget",id:"starttarget",level:3},{value:"DebugStub",id:"debugstub",level:3},{value:"LocalIO",id:"localio",level:3},{value:"Trace",id:"trace-1",level:3}];function l(e){const t={br:"br",code:"code",h1:"h1",h2:"h2",h3:"h3",header:"header",li:"li",p:"p",pre:"pre",strong:"strong",ul:"ul",...(0,r.R)(),...e.components};return(0,s.jsxs)(s.Fragment,{children:[(0,s.jsx)(t.header,{children:(0,s.jsx)(t.h1,{id:"debuggersystem",children:"%Debugger.System"})}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:"Class %Debugger.System Extends %Library.RegisteredObject [ System = 3 ]\n"})}),"\n",(0,s.jsx)(t.p,{children:"This class is used internally by InterSystems. You should not make direct use of it within your applications. There is no guarantee made about either the behavior or future operation of this class."}),"\n",(0,s.jsx)(t.p,{children:(0,s.jsx)(t.strong,{children:"System Debugging in InterSystems IRIS"})}),"\n",(0,s.jsx)(t.p,{children:(0,s.jsx)(t.strong,{children:"Overview"})}),"\n",(0,s.jsx)(t.p,{children:"The system debugger allows external debugging of processes via a set of debugging commands provided by the class %Debugger.System. The debugger may be used to attach to processes running ObjectScript routines, or to start routines for debugging. In either case, the user must:"}),"\n",(0,s.jsxs)(t.ul,{children:["\n",(0,s.jsx)(t.li,{children:"Start a target process, specifying what routine it is to execute (optional)"}),"\n",(0,s.jsx)(t.li,{children:"Attach to the target process"}),"\n",(0,s.jsx)(t.li,{children:"Issue commands to the target process to control its execution"}),"\n"]}),"\n",(0,s.jsx)(t.p,{children:"Any process executing routines may be attached to by a user with suitable privileges."}),"\n",(0,s.jsx)(t.p,{children:"Debugging methods are provided which allow the user to:"}),"\n",(0,s.jsxs)(t.ul,{children:["\n",(0,s.jsx)(t.li,{children:"Attach to the process and put it in break mode"}),"\n",(0,s.jsx)(t.li,{children:"Control execution (break, step, step into, step out, continue)"}),"\n",(0,s.jsx)(t.li,{children:"Set and clear breakpoints and watchpoints"}),"\n",(0,s.jsx)(t.li,{children:"View current location and stack information"}),"\n",(0,s.jsx)(t.li,{children:"View and set variables, evaluate expressions, and execute COS commands"}),"\n"]}),"\n",(0,s.jsx)(t.p,{children:"Commands may only be issued when the target is in break mode. Since the state of the target is uncertain following any debugger command, the method IsStopped must be used to test if the process is in fact in break mode. After a process has been attached, this method must be called, and return successfully, following every debugger command, before another command may be issued. The exceptions are Unattach(detach from a process and stop debugging), and Break (break into a process which is executing under debugger control)."}),"\n",(0,s.jsx)(t.p,{children:"Location information is automatically returned whenever the process breaks. The property Location contains the raw location information. The methods GetOffset and GetSource may be used to obtain analysed location and source data."}),"\n",(0,s.jsx)(t.p,{children:(0,s.jsx)(t.strong,{children:"Terminals"})}),"\n",(0,s.jsx)(t.p,{children:"Two terminal output windows may be started. One of the windows is started when processes are started by the debugger,and is the principle device for the process."}),"\n",(0,s.jsx)(t.p,{children:"Another window may be started after any process is attached, which is the debug device for the process. All debugger output is displayed in this window."}),"\n",(0,s.jsx)(t.p,{children:"Both of these windows are also available when debugging remote processes. In this case, the windows are started on the local platform."}),"\n",(0,s.jsx)(t.p,{children:(0,s.jsx)(t.strong,{children:"Starting a routine"})}),"\n",(0,s.jsx)(t.p,{children:"The Debugger provides a stub which is jobbed to create a debug process. This stub awaits debugger commands to open a terminal window, and execute the desired routine."}),"\n",(0,s.jsx)(t.p,{children:"The method StartTarget, which takes a routine name as an argument, uses this stub to begin debugging a routine. It jobs the stub to begin execution, starts the Cterm windows, attaches to the process, and signals what routine is to be run. Upon completion, the process is ready for debugging. Breakpoints may be set and the routine executed."}),"\n",(0,s.jsx)(t.p,{children:(0,s.jsx)(t.strong,{children:"Attaching a process"})}),"\n",(0,s.jsx)(t.p,{children:"Any process may be attached for debugging. The method Attach takes a numeric process id as an argument. Upon successful completion, the target is ready to be debugged."}),"\n",(0,s.jsx)(t.p,{children:(0,s.jsx)(t.strong,{children:"Remote Debugging"})}),"\n",(0,s.jsx)(t.p,{children:"Remote and local debugging are identical, except for the sequence of commands required to open the Cterm windows. Since the Cterm windows are on the local platform, a separate %Debugger.System instance must be used on the local and remote platforms."}),"\n",(0,s.jsx)(t.p,{children:"To start a process, the user follows this sequence:"}),"\n",(0,s.jsxs)(t.ul,{children:["\n",(0,s.jsx)(t.li,{children:"(Remote platform) Start the target stub via StartTargetRemote"}),"\n",(0,s.jsx)(t.li,{children:"(Local platform) Start the cterm via Cterm, using the output port information returned from StartTargetRemote"}),"\n",(0,s.jsx)(t.li,{children:"(Remote platform) Attach the target stub via DebugTarget"}),"\n"]}),"\n",(0,s.jsx)(t.p,{children:"Remember that upon successful completion of any command, the target may not be in break mode. The method IsStopped must be explicitly invoked, and return a success code, before any new commands may be issued."}),"\n",(0,s.jsx)(t.h2,{id:"properties",children:"Properties"}),"\n",(0,s.jsx)(t.h3,{id:"attached",children:"Attached"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:"Property Attached As %Boolean [ InitialExpression = 0 ];\n"})}),"\n",(0,s.jsx)(t.p,{children:"Flag indicating whether we are Attached to a target."}),"\n",(0,s.jsx)(t.h3,{id:"sid",children:"Sid"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:"Property Sid As %String(TRUNCATE = 1);\n"})}),"\n",(0,s.jsx)(t.p,{children:"Session ID of target process. Target signals on this Event."}),"\n",(0,s.jsx)(t.h3,{id:"cmdid",children:"CmdId"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:"Property CmdId As %String;\n"})}),"\n",(0,s.jsx)(t.p,{children:"Command ID of target process. Target waits for commands on this Event"}),"\n",(0,s.jsx)(t.h3,{id:"pid",children:"Pid"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:"Property Pid As %String(TRUNCATE = 1);\n"})}),"\n",(0,s.jsx)(t.p,{children:"Process ID of target process"}),"\n",(0,s.jsx)(t.h3,{id:"job",children:"Job"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:"Property Job As %Integer;\n"})}),"\n",(0,s.jsx)(t.p,{children:"Job number of target process"}),"\n",(0,s.jsx)(t.h3,{id:"location",children:"Location"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:"Property Location As %String(TRUNCATE = 0);\n"})}),"\n",(0,s.jsx)(t.p,{children:"Current Location info for target process"}),"\n",(0,s.jsx)(t.h3,{id:"stack",children:"Stack"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:"Property Stack As %String(TRUNCATE = 0);\n"})}),"\n",(0,s.jsx)(t.p,{children:"Current Stack info for target process"}),"\n",(0,s.jsx)(t.h3,{id:"stopped",children:"Stopped"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:"Property Stopped As %Boolean [ InitialExpression = 0 ];\n"})}),"\n",(0,s.jsx)(t.p,{children:"Flag indicating if target is stopped"}),"\n",(0,s.jsx)(t.h3,{id:"debid",children:"DebId"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:"Property DebId As %String(TRUNCATE = 1);\n"})}),"\n",(0,s.jsx)(t.p,{children:"Event id of this debugger instance"}),"\n",(0,s.jsx)(t.h3,{id:"dev",children:"Dev"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:"Property Dev As %String(TRUNCATE = 1);\n"})}),"\n",(0,s.jsx)(t.p,{children:"Device for i/o redirecttion"}),"\n",(0,s.jsx)(t.h3,{id:"devopen",children:"DevOpen"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:"Property DevOpen As %Boolean [ InitialExpression = 0 ];\n"})}),"\n",(0,s.jsx)(t.p,{children:"Flag indicating we have attempted to open an i/o device"}),"\n",(0,s.jsx)(t.h3,{id:"killtarget",children:"Killtarget"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:"Property Killtarget As %Boolean [ InitialExpression = 0 ];\n"})}),"\n",(0,s.jsx)(t.p,{children:"Kill target on disconnect flag"}),"\n",(0,s.jsx)(t.h3,{id:"rsetvars",children:"RsetVars"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:"Property RsetVars As %ResultSet [ InitialExpression = 0 ];\n"})}),"\n",(0,s.jsx)(t.p,{children:"Result set for Variables"}),"\n",(0,s.jsx)(t.h3,{id:"trace",children:"trace"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:"Property trace As %Boolean [ InitialExpression = 0 ];\n"})}),"\n",(0,s.jsx)(t.h3,{id:"ateliertrace",children:"atelierTrace"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:"Property atelierTrace As %Boolean [ InitialExpression = 0 ];\n"})}),"\n",(0,s.jsxs)(t.p,{children:["Set to non-zero if running under Atelier debugger",(0,s.jsx)(t.br,{}),"\n-1 means no trace",(0,s.jsx)(t.br,{}),"\n>0 is the Atelier trace node"]}),"\n",(0,s.jsx)(t.h3,{id:"outputtodebugdevice",children:"OutputToDebugDevice"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:"Property OutputToDebugDevice [ InitialExpression = 1 ];\n"})}),"\n",(0,s.jsx)(t.p,{children:"This property can be used to disable outputing of device data by setting the value to 0"}),"\n",(0,s.jsx)(t.h2,{id:"methods",children:"Methods"}),"\n",(0,s.jsx)(t.h3,{id:"attach",children:"Attach"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:'Method Attach(pid As %String = "") As %Integer\n'})}),"\n",(0,s.jsx)(t.p,{children:"Attach to another process having process id of pid."}),"\n",(0,s.jsx)(t.p,{children:"Fails if already attached (use Unattach first),or if pid is invalid."}),"\n",(0,s.jsx)(t.p,{children:"On successful completion, process is attached and a break issued. The process will be in break mode upon completion of its current operation."}),"\n",(0,s.jsx)(t.h3,{id:"break",children:"Break"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:"Method Break() As %Integer\n"})}),"\n",(0,s.jsx)(t.p,{children:"Send a BREAK to the target process."}),"\n",(0,s.jsx)(t.p,{children:"On successful completion, a break has been issued. The process will be in break mode upon completion of its current operation."}),"\n",(0,s.jsx)(t.h3,{id:"isstopped",children:"IsStopped"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:"Method IsStopped(timeout As %Integer = 1) As %Integer\n"})}),"\n",(0,s.jsx)(t.p,{children:"Return true if the target is in break mode."}),"\n",(0,s.jsx)(t.h3,{id:"interrupt",children:"Interrupt"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:"Method Interrupt() As %Integer\n"})}),"\n",(0,s.jsx)(t.p,{children:"Interrupt the target process"}),"\n",(0,s.jsx)(t.p,{children:"The target process is sent a software interrupt. This causes the target to break. The next line of code will be executed when the target is resumed."}),"\n",(0,s.jsx)(t.h3,{id:"write",children:"Write"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:"Method Write(data As %String) As %Integer\n"})}),"\n",(0,s.jsx)(t.p,{children:"Write to the target process"}),"\n",(0,s.jsx)(t.h3,{id:"dbgcommand",children:"DBGCommand"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:"Method DBGCommand(cmd As %String, issys As %Integer = 0) As %Integer\n"})}),"\n",(0,s.jsx)(t.p,{children:"Perform a debug command."}),"\n",(0,s.jsx)(t.h3,{id:"go",children:"Go"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:"Method Go() As %Integer\n"})}),"\n",(0,s.jsx)(t.p,{children:"Continue the current process"}),"\n",(0,s.jsx)(t.h3,{id:"resume",children:"Resume"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:"Method Resume() As %Integer\n"})}),"\n",(0,s.jsx)(t.p,{children:"Continue the current process without stepping on return"}),"\n",(0,s.jsx)(t.h3,{id:"goto",children:"GoTo"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:"Method GoTo(tag As %String) As %Integer\n"})}),"\n",(0,s.jsx)(t.p,{children:"Continue the current process at tag"}),"\n",(0,s.jsx)(t.h3,{id:"line",children:"Line"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:"Method Line() As %Integer\n"})}),"\n",(0,s.jsx)(t.h3,{id:"linein",children:"LineIn"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:"Method LineIn() As %Integer\n"})}),"\n",(0,s.jsx)(t.h3,{id:"lineout",children:"LineOut"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:"Method LineOut() As %Integer\n"})}),"\n",(0,s.jsx)(t.h3,{id:"setbreakpoint",children:"SetBreakpoint"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:'Method SetBreakpoint(routine As %String, offset As %Integer, condition As %String = "") As %Integer\n'})}),"\n",(0,s.jsx)(t.h3,{id:"disablebreakpoint",children:"DisableBreakpoint"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:"Method DisableBreakpoint(routine As %String, offset As %Integer, counter As %Integer = 0) As %Integer\n"})}),"\n",(0,s.jsx)(t.h3,{id:"removebreakpoint",children:"RemoveBreakpoint"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:"Method RemoveBreakpoint(routine As %String, offset As %Integer) As %Integer\n"})}),"\n",(0,s.jsx)(t.h3,{id:"clearbreakpoints",children:"ClearBreakpoints"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:"Method ClearBreakpoints() As %Integer\n"})}),"\n",(0,s.jsx)(t.h3,{id:"setwatchpoint",children:"SetWatchpoint"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:'Method SetWatchpoint(variable As %String, condition As %String = "") As %Integer\n'})}),"\n",(0,s.jsx)(t.h3,{id:"disablewatchpoint",children:"DisableWatchpoint"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:"Method DisableWatchpoint(variable As %String, counter As %Integer = 0) As %Integer\n"})}),"\n",(0,s.jsx)(t.h3,{id:"removewatchpoint",children:"RemoveWatchpoint"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:"Method RemoveWatchpoint(variable As %String) As %Integer\n"})}),"\n",(0,s.jsx)(t.h3,{id:"step",children:"Step"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:"Method Step() As %Integer\n"})}),"\n",(0,s.jsx)(t.h3,{id:"stepin",children:"StepIn"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:"Method StepIn() As %Integer\n"})}),"\n",(0,s.jsx)(t.h3,{id:"stepout",children:"StepOut"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:"Method StepOut() As %Integer\n"})}),"\n",(0,s.jsx)(t.h3,{id:"setvalue",children:"SetValue"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:'Method SetValue(variable As %String = "", value As %String = "") As %Integer\n'})}),"\n",(0,s.jsx)(t.p,{children:"Sets a variable to a value."}),"\n",(0,s.jsx)(t.h3,{id:"getvalue",children:"GetValue"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:'Method GetValue(Variable As %String = "", ByRef Value As %String, Lang As %Integer = 0) As %Integer\n'})}),"\n",(0,s.jsx)(t.p,{children:"Gets the value of a variable"}),"\n",(0,s.jsx)(t.h3,{id:"atelierv5evaloref",children:"Atelierv5EvalOref"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:"Method Atelierv5EvalOref(oref As %String, maxdepth As %Integer, ByRef result As %String) As %Status\n"})}),"\n",(0,s.jsxs)(t.p,{children:["Evaluate and return the properties / values of variable which is an oref and any of its child objects, up to ",(0,s.jsx)(t.strong,{children:"maxdepth"})]}),"\n",(0,s.jsx)(t.h3,{id:"evaloref",children:"EvalOref"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:'Method EvalOref(oref As %String = "", ByRef vararray As %Binary) As %Integer\n'})}),"\n",(0,s.jsx)(t.p,{children:"Evaluate and return the property/value pairs of variable which is an oref"}),"\n",(0,s.jsx)(t.h3,{id:"eval",children:"Eval"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:'Method Eval(expr As %String = "", ByRef result As %String) As %Integer\n'})}),"\n",(0,s.jsx)(t.p,{children:"Evaluate and return the value of expression expr within the target process."}),"\n",(0,s.jsx)(t.h3,{id:"stackvars",children:"StackVars"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:"Method StackVars(lev As %Integer, start As %String, ByRef vararray As %Binary) As %Integer\n"})}),"\n",(0,s.jsx)(t.p,{children:"Get Stack info for target Show the call stack, state and variables using ^%STACK lev,start,.vararray,.next"}),"\n",(0,s.jsx)(t.h3,{id:"onnew",children:"%OnNew"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:'Method %OnNew(initval As %RawString = "") As %Status [ Private ]\n'})}),"\n",(0,s.jsx)(t.h3,{id:"onclose",children:"%OnClose"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:"Method %OnClose() As %Status [ Private ]\n"})}),"\n",(0,s.jsx)(t.h3,{id:"unattach",children:"Unattach"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:"Method Unattach() As %Integer\n"})}),"\n",(0,s.jsx)(t.p,{children:"Unattach from the current process, if any. Assumes the target has been stopped"}),"\n",(0,s.jsx)(t.p,{children:"Returns $$$OK if successful, error code if nothing to detach from"}),"\n",(0,s.jsx)(t.h3,{id:"starttarget",children:"StartTarget"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:"Method StartTarget(target As %String, pWriteOutput = 1) As %Integer\n"})}),"\n",(0,s.jsx)(t.p,{children:"Start a local debugging session on a new process. Job the cterm debug stub Start a cterm connected to the target Run DebugTarget to run the process"}),"\n",(0,s.jsx)(t.p,{children:"On exit from this routine, the target is in break mode waiting for a command"}),"\n",(0,s.jsx)(t.h3,{id:"debugstub",children:"DebugStub"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod DebugStub(pWriteOutput)\n"})}),"\n",(0,s.jsx)(t.p,{children:"System stub used by the debugger application"}),"\n",(0,s.jsx)(t.p,{children:"This class method is jobbed in order to start a target process."}),"\n",(0,s.jsx)(t.p,{children:"The stub waits on the input event for the debugger to pass the name of the target routine to be executed."}),"\n",(0,s.jsx)(t.p,{children:"When signalled, the stub then executes target routine"}),"\n",(0,s.jsx)(t.h3,{id:"localio",children:"LocalIO"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:'Method LocalIO(port As %Integer, address As %String = "127.0.0.1") As %Boolean\n'})}),"\n",(0,s.jsx)(t.h3,{id:"trace-1",children:"Trace"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:"Method Trace(pMsg As %String)\n"})}),"\n",(0,s.jsx)(t.p,{children:"Log a trace if tracing enabled"})]})}function o(e={}){const{wrapper:t}={...(0,r.R)(),...e.components};return t?(0,s.jsx)(t,{...e,children:(0,s.jsx)(l,{...e})}):l(e)}},28453:(e,t,n)=>{n.d(t,{R:()=>i,x:()=>c});var s=n(96540);const r={},a=s.createContext(r);function i(e){const t=s.useContext(a);return s.useMemo((function(){return"function"==typeof e?e(t):{...t,...e}}),[t,e])}function c(e){let t;return t=e.disableParentContext?"function"==typeof e.components?e.components(r):e.components||r:i(e.components),s.createElement(a.Provider,{value:t},e.children)}}}]);