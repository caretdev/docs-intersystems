Class %SQL.Diag.Result Extends %Library.Persistent [ Final, StorageStrategy = diagStorage, System = 4 ]
{

Parameter USEEXTENTSET = 1;

Parameter DEFAULTGLOBAL = "^IRIS.sql.diag.result";

Parameter SQLPUBLICSECURITY = "{""Result"":""S"",""add_diag_result"":""E"",""add_diag_message"":""E""}";

Property resultId As %Library.Integer [ Identity, SqlColumnNumber = 2 ];

Property user As %String [ SqlColumnNumber = 6 ];

Property processId As %String [ SqlColumnNumber = 5 ];

Property namespace As %String [ SqlColumnNumber = 4 ];

Property createTime As %PosixTime [ ReadOnly, SqlColumnNumber = 3, SqlComputeCode = { set {*}=##class(%PosixTime).CurrentUTCTimeStamp()}, SqlComputed, SqlComputeOnChange = %%INSERT ];

Property sqlcode As %Integer [ SqlColumnNumber = 7 ];

Property inputRecordCount As %Integer [ SqlColumnNumber = 8 ];

Property errorCount As %Integer [ SqlColumnNumber = 9 ];

Property maxErrorCount As %Integer [ SqlColumnNumber = 10 ];

Property status As %String(MAXLEN = 20) [ SqlColumnNumber = 11 ];

Property statement As %String(MAXLEN = 32768) [ SqlColumnNumber = 12 ];

ClassMethod addDiagResult(maxErrorCount As %Integer = 0) As %Integer [ SqlName = add_diag_result, SqlProc ]
{
}

///    SEVERITY_COMPLETED = 0;
///    SEVERITY_INFO = 1;
///    SEVERITY_WARNING = 2;
///    SEVERITY_ERROR = 3;
///    SEVERITY_ABORT = 4;
ClassMethod addDiagMessage(resultId As %Integer, actor As %String, sqlcode As %Integer, message As %String(MAXLEN=""), severity As %Integer) [ SqlName = add_diag_message, SqlProc ]
{
}

ClassMethod updateInputCount(resultId As %Integer, inputCount As %Integer)
{
}

ClassMethod updateStatus(resultId As %Integer, status As %String)
{
}

ClassMethod updateStatement(resultId As %Integer, ByRef statement As %String(MAXLEN=32768))
{
}

ClassMethod updateResult(resultId As %Integer, inputCount As %Integer, sqlcode As %Integer)
{
}

ClassMethod getLastResultId() As %SQL.Diag.Result [ SqlName = get_last_result_id, SqlProc ]
{
}

Method %ToJSON() As %String(MAXLEN="")
{
}

}
