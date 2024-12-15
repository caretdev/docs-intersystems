/// Journaling history related API
Class %SYS.Journal.History Extends %RegisteredObject [ Abstract, System = 4 ]
{

ClassMethod GetHeader(jrnlogfd As %String, ByRef header As %String, Mirror As %Boolean = 0) As %Status [ Internal ]
{
}

ClassMethod Purge(DaysOld As %Integer = 100) As %Status [ Internal ]
{
}

ClassMethod Validate(HistoryLogFile As %String) As %Integer [ Internal ]
{
}

ClassMethod CreateLog(HistoryLogFile As %SysPath) As %Status [ Internal ]
{
}

ClassMethod UpdateLog(JournalFilePath As %SysPath) As %Status [ Internal ]
{
}

ClassMethod CloseLog() As %Status [ Internal ]
{
}

ClassMethod Build(LogFile As %SysPath, ByRef JrnFiles As %String) As %Status [ Internal ]
{
}

ClassMethod CopyLog(SourceLogFile As %SysPath, TargetLogFile As %SysPath) As %Status [ Internal ]
{
}

/// Load the HistoryLogFile entries into the JrnFileInfo array
ClassMethod LoadLog(HistoryLogFile As %String, ByRef JrnFileInfo As %SysPath, ByRef LogHeader As %String) As %Status [ Internal ]
{
}

/// Load the HistoryLogFile entries into the JrnFileInfo array
ClassMethod LoadLocalLog(ByRef JrnFileInfo As %SysPath, ByRef LogHeader As %String) As %Status [ Internal ]
{
}

}
