Class %CSP.Portal.SourceControl.IO Extends %RegisteredObject [ System = 4 ]
{

/// Capture mode indicating how the data should be stored.
Property Mode As %Integer(DISPLAYLIST = ",stream,array", VALUELIST = ",1,2");

/// Flag indicating whether newline translation should be used.
Property NewLineTranslation As %String(VALUELIST = ",,JS,HTML");

/// Flag to indicate whether a capture is underway.
Property InCapture As %Boolean [ InitialExpression = 0 ];

/// The name of the device from which data is being captured.
/// Note that this device will be used, and thus become the current device,
/// when redirection is started.
Property Device As %String;

/// Location for data storage
Property Data [ MultiDimensional, Private ];

/// Ensure that <property>Data</property> is correctly initialized
/// whenever <property>Mode</property> is changed.
Method ModeSet(pMode) As %Status
{
}

Method InitData(pMode As %Integer = 1, pForce As %Boolean = 0, pStream As %Stream.Object = "") As %Status [ Private ]
{
}

/// Initialize the class based on a capture mode specified by <var>pMode</var> and
/// a currently open device specified by <var>pDevice</var>. Note that the default mode
/// is 1 (i.e. "stream") and the default device is the current device (i.e. $IO)
Method %OnNew(pMode As %Integer = 1, pStream As %Stream.Object = "", pDevice As %String = {$IO}, pNewLineTranslation As %String = "") As %Status [ Private, ProcedureBlock = 1, ServerOnly = 1 ]
{
}

/// Initialize redirection and return the current <class>%CSP.Portal.SourceControl.IO</class>
/// instance in <var>pInstance</var>. <var>pMode</var> can take one of
/// two values, either "stream" or "array". <var>pDevice</var> defines the device which
/// should be used as the source for the data - note that the device must already be
/// open for the redirection to work.
ClassMethod Redirect(Output pInstance As %CSP.Portal.SourceControl.IO, pMode As %String = "stream", pStream As %Stream.Object = "", pDevice As %String = {$IO}, pNewLineTranslation As %String = "") As %Status
{
}

/// Start the redirection using the current settings.
Method StartRedirect() As %Status [ ProcedureBlock = 0 ]
{
}

/// Stop the IO redirection, correct the state of <property>InCapture</property>
/// and clean up the %ISCIO variable
Method StopRedirect() As %Status
{
}

/// Capture the data based on the current value of <property>Mode</property>.
Method WriteData(data As %String) As %Status
{
}

Method ClearData(pReplacementStream As %Stream.Object = "") As %Status
{
}

/// Get the data captured during the redirection.
/// <var>pData</var> will be a stream object if stream mode was specified,
Method GetData(Output pData) As %Status
{
}

/// Ensure that redirection is stopped when the object goes out of scope.
Method %OnClose() As %Status [ Private, ProcedureBlock = 1, ServerOnly = 1 ]
{
}

}
