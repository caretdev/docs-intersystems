/// Logging interface for the %Installer
Class %Installer.AbstractLogger Extends %RegisteredObject [ ServerOnly = 1, System = 3 ]
{

/// Flag to determine if WRITE's should be captured
Property CaptureIO As %Boolean [ InitialExpression = 0, Internal, Private ];

/// Counter of begin/end logging calls (to allow for nested installers)
Property LogDepth As %Integer [ InitialExpression = 0, Internal, Private ];

/// Prior redirect state $lb(redirec,mnemonic routine)
Property CurrentState As %String(MAXLEN = "") [ Internal, Private ];

/// Current line of output
Property CurrentLine As %String(MAXLEN = 32000) [ Internal, Private ];

/// Called to indicate that logging is going to start
Method BeginLogging() As %Status
{
}

/// Called to indicate when a manifest is done logging.
Method EndLogging() As %Status
{
}

/// Log a message to the install log
Method LogEntry(pLevel As %Integer, pTopic As %String, ByRef pArgs)
{
}

/// Initialize this logger
Method %OnNew(pCaptureIO As %Boolean = 0) As %Status [ Internal, ProcedureBlock = 1, ServerOnly = 1 ]
{
}

/// Cleanup when this logger instance is closed.
Method %OnClose() As %Status [ Internal, ProcedureBlock = 1, ServerOnly = 1 ]
{
}

/// Enable I/O capture
Method enableIOCapture() As %Status [ Internal, Private, ProcedureBlock = 0 ]
{
}

/// Disable I/O capture
Method disableIOCapture() As %Status [ Internal, Private, ProcedureBlock = 0 ]
{
}

/// Flush captured I/O to the log
Method flushIO(pLimit As %Integer = 0) [ Internal, ProcedureBlock = 0 ]
{
}

}
