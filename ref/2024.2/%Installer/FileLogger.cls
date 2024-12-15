/// Implements a file based logger for %Installer.
Class %Installer.FileLogger Extends %Installer.AbstractLogger [ System = 3 ]
{

/// IO Device to write to
Property Device As %String(MAXLEN = "");

Method %OnNew(pCaptureIO As %Boolean, pFilename As %String, pMode As %String = "WNS") As %Status [ Internal, ProcedureBlock = 1, ServerOnly = 1 ]
{
}

Method %OnClose() As %Status [ Internal, ProcedureBlock = 1, ServerOnly = 1 ]
{
}

/// Log a message to the install log
Method LogEntry(pLevel As %Integer, pTopic As %String, ByRef pArgs)
{
}

}
