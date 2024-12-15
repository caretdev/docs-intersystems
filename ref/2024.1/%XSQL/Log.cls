Class %XSQL.Log Extends %Library.RegisteredObject [ System = 2 ]
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

/// ActivateLog (also called as a procedure - CALL InSync_SYS.activate_log()) will set the trace switch
/// to begin logging. Messages logged using $$$TRACE macros will be written to the log file.
ClassMethod ActivateLog() As %Integer [ SqlName = activate_log, SqlProc ]
{
}

/// DeactivateLog (also callable as a procedure - CALL InSync_SYS.deactivate_log()) will turn of the trace
/// switch so that $$$TRACE macros will not longer be written to the log file. The log file is also closed.
ClassMethod DeactivateLog() As %Integer [ SqlName = deactivate_log, SqlProc ]
{
}

/// <P> Report an error from a %SYSTEM.Error object
/// <P>
/// <UL>
///  <LI><P> pError	 - an instance of %SYSTEM.Error
/// </UL>
Method logError(pError As %SYSTEM.Error)
{
}

Method logException(pException As %Exception.AbstractException, pPrefix As %String = {$Char(9,9)})
{
}

/// <P> Report a named value
/// <P>
/// <UL>
///  <LI><P> pName	 - the name of the value, for example, 'pFormal1' as the name of a formal argument
///  <LI><P> pValue	 - the value
/// </UL>
Method logValue(pName As %String(MAXLEN="") = "", pValue As %String(MAXLEN="") = "")
{
}

/// <P> Report a function and its return value.
/// <P>
/// <UL>
///  <LI><P> pName	 - the name of the value, for example, 'pFormal1' as the name of a formal argument
///  <LI><P> pValue	 - the value
/// </UL>
Method logFunction(pName As %String(MAXLEN="") = "", pValue As %String(MAXLEN="") = "")
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
Method logStatus(StatusCode As %Status, Message As %String, ByRef Outcome) As %Integer
{
}

Method logHeader() As %Status
{
}

/// Log the contents of a %SQL.StatementResult object
Method logStatementResult(pResult As %SQL.StatementResult) As %Status
{
}

/// Log SQL statement source
Method logStatementSource(pBatchNumber As %Library.Integer, ByRef pSource As %Library.String(MAXLEN=""), pLinesBefore As %Integer = 0, pLinesAfter As %Integer = 1) As %Status
{
}

Method logResults(context As %Library.ProcedureContext) As %Status
{
}

Method logResultSet(pContext As %Library.ProcedureContext, pResultSet As %Library.IResultSet) As %Status
{
}

Method logEnterProcedure(pProcedureName As %Library.String, ByRef pArguments As %Library.String) As %Status
{
}

Method logEmbeddedSQL(pStatement As %Library.String, pSQLCODE As %Library.Integer, pMsg As %Library.String, pROWCOUNT As %Library.Integer, pTime As %Library.Numeric, ByRef pArguments As %Library.String) As %Status
{
}

/// <P>Log an SQLCODE and %msg value</P>
/// <P>
/// <UL>
/// <LI><P>pSQLCODE	- the SQLCODE value</P>
/// 	<LI><P>pMessage	- the %msg value</P>
/// <LI><P>pPrefix	- the prefix to use when writing the log content, defaults to two tab characters.</P>
/// </UL>
/// </P>
Method logSQLCODE(pSQLCODE As %Library.Integer = 0, pMessage As %String(MAXLEN="") = "", pPrefix As %String = {$Char(9,9)}) As %Status
{
}

ClassMethod prepareLog()
{
}

ClassMethod startLog(logFile As %RawString = "", initialize As %Boolean = 0) As %Status
{
}

ClassMethod stopLog() As %Status
{
}

ClassMethod traceMessage(message As %String(MAXLEN=""), linesBefore As %Integer = 0, linesAfter As %Integer = 1) As %Status
{
}

ClassMethod traceDeferredStatement(statementType, ByRef sql As %String(MAXLEN="") = "", ByRef %args As %String(MAXLEN="") = "") As %Status
{
}

ClassMethod traceContext(context As %Library.ProcedureContext) As %Status
{
}

/// <P> Report an exception from a trace
/// <P>
/// <UL>
///  <LI><P> pException - pass as an exception oref
/// </UL>
ClassMethod traceException(pException As %Exception.AbstractException, pPrefix As %Library.String = {$Char(9)}) [ ProcedureBlock = 1 ]
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

/// <P> Report a named value
/// <P>
/// <UL>
///  <LI><P> pName	 - the name of the value, for example, 'pFormal1' as the name of a formal argument
///  <LI><P> pValue	 - the value
/// </UL>
ClassMethod traceValue(pName As %String(MAXLEN="") = "", pValue As %String(MAXLEN="") = "")
{
}

/// <P> Report a function and its return value.
/// <P>
/// <UL>
///  <LI><P> pName	 - the name of the function method
///  <LI><P> pValue	 - the return value
/// </UL>
ClassMethod traceFunction(pName As %String(MAXLEN="") = "", pValue As %String(MAXLEN="") = "")
{
}

ClassMethod traceResult(pContext As %Library.ProcedureContext) As %Status
{
}

ClassMethod traceResultSet(pContext As %Library.ProcedureContext, pResultSet As %Library.IResultSet) As %Status
{
}

/// <P> Report a execution of embedded/deferred SQL, its arguments, and status.
/// <P>
/// <UL>
///  <LI><P> pStatement	 - the text of the SQL Statement executed
///  <LI><P> pArguments	 - the Arguments and their values
///  <LI><P> pSQLCODE	 - the resulting SQLCODE
///  <LI><P> pMsg	 - the resuting %msg (if any)
///  <LI><P> pROWCOUNT	 - the resulting %ROWCOUNT (if any)
///  <LI><P> pTime	 - the execution time (if any)
/// </UL>
ClassMethod traceEmbeddedSQL(pStatement As %Library.String, pSQLCODE As %Library.Integer, pMsg As %Library.String, pROWCOUNT As %Library.Integer, pTime As %Library.Numeric, pArguments... As %Library.String) As %Status
{
}

/// <P>Log an SQLCODE and %msg value</P>
/// <P>
/// <UL>
/// <LI><P>pSQLCODE	- the SQLCODE value</P>
/// 	<LI><P>pMessage	- the %msg value</P>
/// <LI><P>pPrefix	- the prefix to use when writing the log content, defaults to two tab characters.</P>
/// </UL>
/// </P>
ClassMethod traceSQLCODE(pSQLCODE As %Library.Integer = 0, pMessage As %String(MAXLEN="") = "", pPrefix As %String = {$Char(9,9)}) As %Status
{
}

ClassMethod traceEnterProcedure(pProcedureName As %String, pArguments... As %Library.String) As %Status
{
}

ClassMethod traceEnterFunction(pProcedureName As %String, pArguments... As %Library.String) As %Status
{
}

ClassMethod traceExitProcedure() As %Status
{
}

}
