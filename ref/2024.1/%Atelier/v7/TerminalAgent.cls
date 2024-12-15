/// This class serves as an agent for terminal I/O.
Class %Atelier.v7.TerminalAgent Extends %CSP.WebSocket
{

/// Require development resource
Parameter SECURITYRESOURCE = "%Development";

/// The method name of "debug target" that we launch for the child process
Parameter DEBUGTARGET [ Internal ] = "ChildProcess";

/// Expression to enable external interrupts for the current process
Parameter ENABLEINTERRUPTEXPR [ Internal ] = "$SYSTEM.Util.SetInterruptEnable(1)";

Parameter TIMEOUT [ Internal ] = 0.02;

/// The terminal is waiting for the configuration message from the client
Parameter InitState [ Internal ] = 0;

/// The terminal is waiting for command input from the user
Parameter PromptState [ Internal ] = 1;

/// The terminal is waiting for READ input from the user
Parameter ReadState [ Internal ] = 2;

/// The terminal is executing user's input
Parameter ExecuteState [ Internal ] = 3;

/// This holds the TRACE flag
Property Trace As %Boolean [ InitialExpression = {$GET(^IRIS.Temp.Atelier("terminal")) > 0} ];

/// This holds the TRACE global node for this session
Property TraceNode As %Integer [ Internal ];

/// This holds the device list for $SYSTEM.Socket.Select
Property DeviceList As %List [ Internal ];

/// This holds the WebSocket device
Property WebSocketDevice As %String [ Internal ];

/// The state the the terminal is in
Property State As %String [ InitialExpression = {..#InitState}, Internal ];

/// This holds the debugger instance.
/// We use the debugger to control the child process.
Property Debug As %Debugger.System [ Internal ];

/// If true, enable &lt;EXTERNAL INTERRUPT&gt; before sending the prompt message
Property EnableInterruptBeforePrompt As %Boolean [ InitialExpression = 0, Internal ];

/// If true, ANSI escape codes will not be included in any text sent to the client
Property RawMode As %Boolean [ InitialExpression = 0, Internal ];

/// The last value of $KEY set by a child process READ.
Property ChildProcessDKey As %String [ Internal ];

/// The <CLASS>%SyntaxColor</CLASS> instance used to color prompt input
Property SyntaxColor As %SyntaxColor [ Internal ];

/// The value of <code>$PRINCIPAL</code> for the child process.
Property ChildProcessPrincipalDevice As %String [ Internal ];

/// Intialize the trace (if requested)
Method InitTrace() [ Internal, Private ]
{
}

/// Log a trace if tracing enabled
Method TraceMsg(pMsg As %String) [ Internal, Private ]
{
}

/// Create the terminal prompt string. This method is called in the child process.
ClassMethod TerminalPrompt(pRawMode As %Boolean = 0) As %String [ Internal ]
{
}

/// Read data from the WebSocket device and convert it to a %DynamicObject
Method ReadFromWebSocket(Output pUserMsg As %DynamicObject) As %Status [ Internal, Private ]
{
}

/// Read output from the child process
Method ReadFromDebugDev(Output pOutput As %String) As %Status [ Internal, Private ]
{
}

/// Send an &lt;EXTERNAL INTERRUPT&gt; to the child process
Method InterruptChildProcess() As %Status [ Internal, Private ]
{
}

/// Send the JSON message to the WebSocket
Method SendMessageToWebSocket(pMsg As %DynamicObject) As %Status [ Internal, Private ]
{
}

/// Send the terminal prompt message to the WebSocket
Method SendPromptToWebSocket() As %Status [ Internal, Private ]
{
}

/// Send the child process's output to the WebSocket
Method SendOutputToWebSocket(pOutput As %String) As %Status [ CodeMode = expression, Internal, Private ]
{
}

/// Send the read message to the WebSocket.
/// No text is needed since it should already have been sent.
Method SendReadToWebSocket() As %Status [ CodeMode = expression, Internal, Private ]
{
}

/// Sanitize user input in response to a prompt
Method SanitizePromptInput(pInput As %String) As %String [ CodeMode = expression, Internal, Private ]
{
}

/// Check if user input is valid INT syntax.
/// If not, return the error output that should be sent to the user.
Method SyntaxCheckInput(pInput As %String) As %String [ Internal, Private ]
{
}

/// Returns pInput with ANSI escape codes that color the text
Method SyntaxColorInput(pInput As %String, Output pOutput As %String) As %Status
{
}

/// Event handler for the <b>PreServer</b> event: this is invoked before
/// starting the WebSockets Server.
Method OnPreServer() As %Status
{
}

/// Event handler for the <b>PostServer</b> event: this is invoked after
/// closing the WebSockets Server.
Method OnPostServer() As %Status
{
}

/// The WebSocket Server.  Use the <Method>Read</Method> and <Method>Write</Method> methods
/// to receive data from, and send data to, the client.
/// Call the <Method>EndServer</Method> method to gracefully terminate the WebSocket Server.
Method Server() As %Status
{
}

/// Dummy method to use as the "debug target" in the child process.
ClassMethod ChildProcess() [ Internal ]
{
}

/// Helper method used for processing exceptions caused by user input
ClassMethod ExceptionHandler(pEx As %Exception.AbstractException, pRawMode As %Boolean = 0) As %String [ Internal ]
{
}

}
