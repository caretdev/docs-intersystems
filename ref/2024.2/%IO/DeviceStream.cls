Class %IO.DeviceStream Extends (%IO.I.CharacterStream, %IO.I.TranslationDevice) [ Inheritance = right, System = 2 ]
{

Property %Attached As %Boolean [ Private, ReadOnly, Transient ];

Property %CurrLineTerminator As %String [ Private, ReadOnly, Transient ];

Method DefaultFlushOnWriteGet() [ CodeMode = expression ]
{
}

/// Attach the current $IO device to an instance of this class
ClassMethod AttachNew(pDevice As %String = {$IO}, Output pSC As %Status) As %IO.DeviceStream
{
}

/// Attach to the named open Device or to the current Device by default
Method Attach(pDevice As %String = {$IO}, Output pSC As %Status)
{
}

Method CharEncodingSet(pCharEncoding As %String) As %Status
{
}

Method TranslationTableSet(pTable As %String) As %Status
{
}

Method initDeviceTranslationTable(Output pSC As %Status) [ Private ]
{
}

Method Close(Output pSC As %Status) As %Boolean
{
}

Method %OnClose() As %Status [ Private ]
{
}

Method Write(pData As %String = "", pFlush As %Boolean = {..DefaultFlushOnWrite}, Output pSC As %Status)
{
}

Method Flush(Output pSC As %Status)
{
}

Method Read(pMaxReadLen As %Integer, ByRef pTimeout As %Numeric = -1, Output pSC As %Status) As %String
{
}

Method ReadLine(pMaxReadLen As %Integer, ByRef pTimeout As %Numeric = -1, Output pSC As %Status, ByRef pLineTerminator As %String = {..LineTerminator}) As %String
{
}

ClassMethod isReadError(pZE As %String) As %Boolean [ CodeMode = expression, Private ]
{
}

ClassMethod isWriteError(pZE As %String) As %Boolean [ CodeMode = expression, Private ]
{
}

}
