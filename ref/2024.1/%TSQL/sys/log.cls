Class %TSQL.sys.log Extends %Library.RegisteredObject [ System = 2 ]
{

Property logFile As %String;

/// This callback method is invoked by the <METHOD>%New</METHOD> method to
/// provide notification that a new instance of an object is being created.
///
/// <P>If this method returns an error then the object will not be created.
/// <p>It is passed the arguments provided in the %New call.
/// When customizing this method, override the arguments with whatever variables and types you expect to receive from %New().
/// For example, if you're going to call %New, passing 2 arguments, %OnNew's signature could be:
/// <p>Method %OnNew(dob as %Date = "", name as %Name = "") as %Status
Method %OnNew(logFile As %RawString = "", initialize As %Boolean = 0) As %Status [ Private, ProcedureBlock = 1, ServerOnly = 1 ]
{
}

Method %OnClose() As %Status [ Private ]
{
}

/// write() - write a message to the current log file
Method write(message As %String(MAXLEN=""), linesBefore As %Integer = 0, linesAfter As %Integer = 1) As %Status
{
}

/// <P> Report an error from a %SYSTEM.Error object
/// <P>
/// <UL>
///  <LI><P> error	 - an instance of %SYSTEM.Error
/// </UL>
Method logError(error As %SYSTEM.Error)
{
}

/// <P> Copy the contents of a stream to the log
/// <P>
/// <UL>
///  <LI><P> stream - stream to copy to the file.
/// </UL>
Method logStream(stream As %Stream.Object, pNumbered As %Integer = 0)
{
}

/// <P> Report a status message from a trace
/// <P>
/// <UL>
///  <LI><P> sc - pass as status code
///  <LI><P> message - pass a message to be written both to the current device and to the log (or "") (optional)
///  <LI><P> outcome - pass an array of stats (optional)
/// </UL>
Method logStatus(StatusCode As %Status, Message As %String, ByRef Outcome)
{
}

Method logHeader() As %Status
{
}

Method logResults(context As %Library.ProcedureContext, displyRowCount As %Boolean = 0, timeStart As %String = "", startgloref As %String = "", rowcount As %BigInt = "", dumpresults As %Boolean = 1) As %Status
{
}

ClassMethod startLog(logFile As %RawString = "", initialize As %Boolean = 0) As %Status
{
}

ClassMethod stopLog() As %Status
{
}

ClassMethod traceMessage(message As %String(MAXLEN="")) As %Status
{
}

ClassMethod traceDeferredStatement(statementType, sql) As %Status
{
}

ClassMethod traceEmbeddedStatement(statementType, sql) As %Status
{
}

ClassMethod traceContext(context As %Library.ProcedureContext) As %Status
{
}

/// <P> Report a status message from a trace
/// <P>
/// <UL>
///  <LI><P> sc - pass as status code
///  <LI><P> message - pass a message to be written both to the current device and to the log (or "") (optional)
///  <LI><P> outcome - pass an array of stats (optional)
/// </UL>
ClassMethod traceStatus(StatusCode As %Status, Message As %String, ByRef Outcome)
{
}

/// <P> Report an error from a %SYSTEM.Error object
/// <P>
/// <UL>
///  <LI><P> error	 - an instance of %SYSTEM.Error
/// </UL>
ClassMethod traceError(pError As %SYSTEM.Error) As %Status
{
}

ClassMethod traceResult(pContext As %Library.ProcedureContext, displyRowCount As %Boolean = 0, timeStart As %String = "", startgloref As %String = "", rowcount As %BigInt = "", dumpresults As %Boolean = 1) As %Status
{
}

}
