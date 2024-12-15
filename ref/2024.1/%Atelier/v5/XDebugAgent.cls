/// This class serves as a debug agent for debugging processes.
/// It receives client debugging commands, sends then to the debug target, gets responses, and sends them back to the client.
///
/// The implementation is based on the XDEBUG DBGP protocol used by the eclipse DLTK.
/// <br>
/// http://xdebug.org/docs-dbgp.php
///
Class %Atelier.v5.XDebugAgent Extends %CSP.WebSocket
{

/// Parameter for Localization
Parameter DOMAIN = "%XDEBUG";

/// Require development resource
Parameter SECURITYRESOURCE = "%Development";

Parameter NULLSTATE = 0;

Parameter EXITSTATE = 1;

Parameter STOP = 2;

Parameter IDLE = "OnIdle";

Parameter TIMEOUT = 0.1;

/// This is the CLASS context for variable display in the IDE
Parameter CLASS = 2;

/// This is the PUBLIC context for variable display in the IDE
Parameter PUBLIC = 1;

/// This is the PRIVATE context for variable display in the IDE
Parameter PRIVATE = 0;

/// The default value to use for the "max_depth" feature if it wasn't set by the IDE
Parameter DefaultMaxDepth As INTEGER = 2;

/// This holds the current command
Property Command As %String [ MultiDimensional ];

/// This holds the debug_target (passsed to us by set_feature)
Property DebugTarget As %String;

/// This holds the next state to switch to
Property NextState As %String [ InitialExpression = {..#NULLSTATE} ];

/// This holds the current state of the FSM, Initial state is "{..#NULLSTATE}"
/// Before the machine can run a valid state needs to be established
Property State As %String [ InitialExpression = {..#NULLSTATE}, Internal ];

/// This holds the debugger instance
Property Debug As %Debugger.System;

/// This holds the TRACE flag
Property Trace As %Boolean [ InitialExpression = {$Get(^IRIS.Temp.Atelier("debug"))>0} ];

/// This holds the TRACE global node for this session
Property TraceNode As %Integer;

/// This holds the device list for $System.Socket.Select
Property DeviceList As %List;

/// This holds the websocket device
Property WebSocketDevice As %String;

/// This holds the target OR PID
Property TargetOrPID As %String;

/// This holds the attached flag
Property Attached As %Boolean [ InitialExpression = 0 ];

/// This says we started via Attach instead of Launch
Property StartedAttach As %Boolean [ InitialExpression = 0 ];

/// This holds the Continuation command issued flag
Property ContinuationCmdIssued As %Boolean [ InitialExpression = 0 ];

/// This holds the current transaction identifier
Property TransactionId As %String [ MultiDimensional ];

/// SessionId if attached to a CSP process
Property CSPId As %String;

/// Breakpoints
Property BreakPoints As %String [ MultiDimensional ];

/// This holds the last 'continuation' command issued
/// Continuation commands are 'run','step_into','step_over','step_out'
/// 'stop' and 'detach'. We need to record this so that the appropriate
/// status message can be reported to the client when a breakpoint is hit
/// or the program ends.
Property LastContinuationCmd As %String;

/// This holds the mappings from server stack level to IDE stack level
Property StackLevelMappings As %Integer [ MultiDimensional ];

/// This holds the values of the features set by the IDE
Property Features As %String [ MultiDimensional ];

/// This holds the first run command flag
Property FirstRunCommandSeen As %Boolean [ InitialExpression = 0 ];

/// The WebSocket Server
Method Server() As %Status
{
}

/// This where we receive and dispatch commands and pump debuggee output
Method OnIdle() As %Status [ Internal, Private ]
{
}

/// Flush output before breaking the connection
Method FlushOutput()
{
}

/// Get InitMsg
Method GetInitMsg(Output pInitMsg) As %Status
{
}

/// Here we do state specific tidy up (will be called if an error has occurred)
Method TidyUp(pStatus) As %Status
{
}

/// Event handler for the <b>PreServer</b> event: this is invoked before
/// starting the WebSockets Server.
/// Changes to the <property>SharedConnection</property> flag must be made here.
Method OnPreServer() As %Status
{
}

/// Intialize the trace (if required)
Method InitTrace()
{
}

/// Log a trace if tracing enabled
Method Trace(pMsg As %String)
{
}

/// Parse XDebug command
///
/// Definition:-
///
/// cmd     :   cmdname [ arglist ];
/// cmdname :   lowercase STRING
/// arglist :   arg | [ arg arglist ];
/// arg     :   argid argval
/// argid   :   '-' CHAR
/// argval  :   STRING
///
/// Example:-
///
/// feature_get -i 6 -n language_supports_threads
///
/// The command string is parsed into this structure:-
///
/// var="feature_get"
/// var("-i")=6
/// var("-n")="language_supports_threads"
///
Method ParseCommand(pCmdString As %String, Output pParsed) As %Status
{
}

/// Map the command to the associated handler (assumes valid command)
/// Some commands are handled inline
Method MapCommandToHandler(pCmdString As %String) As %Status
{
}

/// Report an event by writing to the WebSocket
Method ReportEvent(pEvent As %String, pXmlData = "") As %Status
{
}

/// Utility method to interpolate values in a string
ClassMethod Interpolate(pString, pTerm, pValue) As %String [ CodeMode = expression ]
{
}

/// Utility method to attach to the target process
Method Attach() As %Status
{
}

/// Utility method to attach to a CSP process
Method AttachCSP() As %Status
{
}

/// Utility method to launch the target given the properties set by set_feature
Method Launch() As %Status
{
}

/// IDE Command handler for 'stop' command
Method stop()
{
}

/// IDE Command handler for 'detach' command
Method detach()
{
}

/// IDE Command handler for 'feature_get' command
Method "feature_get"() As %Status
{
}

/// IDE Command handler for 'feature_set' command
Method "feature_set"() As %Status
{
}

/// IDE Command handler for 'break' command
Method break() As %Status
{
}

/// IDE (pseudo) Command handler for 'watchpoint_set' command
/// breakpoint_set -m DebugMe -n 2 -r 0 -s enabled -t watch -f dbgp://|USER|User.Debug.cls -i 22 -- WA==
Method "watchpoint_set"() As %Status
{
}

/// IDE Command handler for 'breakpoint_set' command
/// breakpoint_set -m DebugMe -n 3 -r 0 -s enabled -t line -f dbgp://|USER|User.Debug.cls -i 10"
Method "breakpoint_set"() As %Status
{
}

/// breakpoint_get -d User.Debug.cls:DebugMe:3 -i 51"
Method "breakpoint_get"() As %Status
{
}

/// breakpoint_list
Method "breakpoint_list"() As %Status
{
}

/// breakpoint_remove
Method "breakpoint_remove"() As %Status
{
}

/// breakpoint_update
Method "breakpoint_update"() As %Status
{
}

/// IDE Command handler for 'context_names' command
Method "context_names"() As %Status
{
}

/// IDE Command handler for 'context_get' command
Method "context_get"() As %Status
{
}

/// IDE Command handler for 'eval' command
Method eval() As %Status
{
}

/// IDE Command handler for 'property_set' command
Method "property_set"() As %Status
{
}

/// IDE Command handler for 'property_get' command
Method "property_get"() As %Status
{
}

/// IDE Command handler for 'property_value' command
Method "property_value"() As %Status
{
}

/// IDE Command handler for 'run' command
Method run() As %Status
{
}

/// IDE Command handler for 'step_into' command
Method "step_into"() As %Status
{
}

/// IDE Command handler for 'step_over' command
Method "step_over"() As %Status
{
}

/// IDE Command handler for 'step_over' command
Method "step_out"() As %Status
{
}

Method stderr() As %Status
{
}

Method stdout() As %Status
{
}

/// IDE Command handler for 'stdin' command
Method stdin() As %Status
{
}

/// IDE Command handler for 'stack_get' command
Method "stack_get"() As %Status
{
}

/// Create an error response including error code and message to be displayed by IDE
Method CreateErrorResponse(pCmd As %String, pErrorCode As %Integer, pTransactionId As %Integer, pMsg As %String) As %String
{
}

/// Create an XML Element for a childless property.
Method CreateLeafPropertyElement(pName As %String, pFullName As %String, pValue As %String, pType As %String, pConstant As %String, pEncoding As %String) As %String [ Internal, Private ]
{
}

/// Create a property element for an object<p>
/// <b>NOTE:</b> This method does NOT close the XML element that it creates!
Method CreateOrefResponse(pName As %String, pFullName As %String, pClassName As %String) As %String [ Internal, Private ]
{
}

/// Format the data used to create the property element
Method FormatPropertyResponseData(ByRef pVarName As %String, ByRef pVarValue As %String, Output pType As %String, Output pEncoding As %String, Output pConstant As %Boolean) [ Internal, Private ]
{
}

/// Strip the parents' name from a property if applicable
Method GetShortVarName(pVarName As %String, pCurrentDepth As %Integer) As %String [ Internal, Private ]
{
}

/// Get the full name for a child property
Method GetFullVarName(pParentName As %String, pChildName As %String, pParentClass As %String) As %String [ Internal, Private ]
{
}

/// Create a property element for an object and its children
Method CreateOrefEvalResponse(pVarShortName As %String, pVarFullName As %String, pVarObj As %DynamicObject, Output pXML As %String, pCurrentDepth As %Integer = 0) As %Status [ Internal, Private ]
{
}

/// Given a variable name and a value, create a property for reporting the response to an eval command to the IDE
Method CreateEvalPropertyResponse(pVarName As %String, pVarValue As %String, Output pXML As %String, pCurrentDepth As %Integer = 0) As %Status
{
}

/// Given a variable name and a value, create a property for reporting to the IDE
/// If pGetChildren is set, also send the children of this variable. Used by property_get
Method CreatePropertyResponse(pVarName As %String, pVarValue As %String, Output pXML As %String, pGetChildren As %Boolean = 0, pCurrentDepth As %Integer = 0) As %Status
{
}

/// Get the properties for the CLASS context
Method GetClassProperties(Output pPropList As %String) As %Status
{
}

/// Given a context (Private,Public) and stack level, get the variables defined at that level
Method GetStackProperties(pContext As %Integer, pServerLevel As %Integer, Output pPropList As %String) As %Status
{
}

/// This method is given the debugger position (in the INT code) and returns a logical docname,label and offset
/// The client will have to perform addtional logic to find exactly where in the source document the location is
/// If pMapped is 0, then there is no source
ClassMethod GetClientPosFromDebugPos(pServerIntPos, Output pMapped, ByRef pNameSpace, Output pDocName, Output pLabel, Output pOffset)
{
}

/// Given a string that is the output of Quote(), check for control characters that were
/// left inside a quoted literal. If found, Quote that literal and insert it back into
/// the original string. This is done carefully so we don't end up with double-double quotes.
ClassMethod requote(value As %String) As %String
{
}

/// Copied from <CLASS>%Studio.Debugger</CLASS><p>
/// Return the current location of the debugger. This includes both the command and the argument
/// positions. Returns 0 if an error occurs.
Method GetOffset(ByRef RoutineName As %String, ByRef BeginCmdLine As %Integer, ByRef BeginCmdOffset As %Integer, ByRef EndCmdLine As %Integer, ByRef EndCmdOffset As %Integer, ByRef BeginArgLine As %Integer, ByRef BeginArgOffset As %Integer, ByRef EndArgLine As %Integer, ByRef EndArgOffset As %Integer, ByRef NameSpace As %String) As %Integer
{
}

/// Copied from <CLASS>%Studio.Debugger</CLASS><p>
/// Return the list of source files that the current break point maps to starting with the INT/BAS routine.
/// Each source file is separated by a space character.
/// The format of each source file data is:<p>
/// routineName,label,beginCmdLine,beginCmdOffset,endCmdLine,endCmdOffset,beginArgLine,beginArgOffset,endArgLine,endArgOffset,Namespace
Method MappedOffset(ByRef mapping As %String, ByRef namespace As %String, ByRef flag As %String) As %Status
{
}

}
