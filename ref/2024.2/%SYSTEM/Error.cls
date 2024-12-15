/// %SYSTEM.Error is a generic error container used to return error information reported
/// from various sources. Errors can occur in several different ways. A %Status value can
/// be returned, an ObjectScript error can be trapped and reported as $ZERROR, an SQLCODE error
/// can be reported by an SQL statement, or an error number from an XSQL procedure can
/// be reported. All of these errors must be recognizable and be able to be reported in
/// various forms. xDBC expects an SQLCODE while other systems might want %Status values.
///
/// This class provides a mechanism for consistent reporting and detection.
Class %SYSTEM.Error Extends %RegisteredObject [ System = 4 ]
{

/// Create a new error given a %Status or an SQLCODE and %message value. Severity applies to
/// certain XSQL systems (TSQL only for now)
Method %OnNew(pStatus As %Status = "", pSQLCode As %String = "", pMessage As %String = "", pSeverity As %Integer = 0) As %Status
{
}

/// This callback method is invoked by the <METHOD>%Close</METHOD> method to
/// provide notification that the current object is being closed.
///
/// <P>The return value of this method is ignored.
Method %OnClose() As %Status [ Private, ProcedureBlock = 1, ServerOnly = 1 ]
{
}

/// The %Status code of this error. An error will ALWAYS have a %Status value
Property Status As %Status;

/// This is computed from the value of Status
Property messageId As %Integer [ SqlComputeCode = { set {*}=$Select({Status}="":0,1:$List($List($Extract({Status},3,$Length({Status}))))) }, SqlComputed, SqlComputeOnChange = Status ];

/// The error code - for CacheError (messageId = 5002) this is the $ZError code ($e($ze,1,$f($ze,1,">"))
/// 	for SQLError (messageId = 5540) this is the SQLCODE value. For most other messageId's, this is 0 (zero).
/// Code simply provides additional detail for a %Status error
Property Code As %String(MAXLEN = 255) [ InitialExpression = "0" ];

/// SQLCode of this error, may be null.
Property SQLCode As %String(MAXLEN = "");

Method SQLCodeSet(newvalue As %String) As %Status
{
}

Method SQLCodeGet() As %String
{
}

/// Additional free text information about the error, may be null
Property Message As %String(MAXLEN = "");

/// Severity is an indication as to the severity of the error being reported. The value, 0-25, not
/// only provides information, it is a hint to the error processor as to what action to take. For
/// TSQL this means returning control to the current batch or procedure at the point following the statement
/// reporting the error, exiting the current batch or procedure or terminating the connection.
/// TSQL defines severity of 10-19 as transferring to the CATCH block. InterSystems IRIS will exit the current
/// procedure if severity is > 19.
Property Severity As %Integer(MAXVAL = 25, MINVAL = 0);

/// findXRef - lookup a cross-referenced message in the requested domain
Method findXRef(messageDomain As %String) As %Integer [ CodeMode = expression ]
{
}

/// asException() - return a new instance of an exception
Method AsException() As %Exception.AbstractException
{
}

/// fromException() - instantiate a new %SYSTEM.Error object from an exception object.
ClassMethod FromException(pException As %Exception.AbstractException = "") As %SYSTEM.Error
{
}

/// fromSQLCode() - instantiate a new %SYSTEM.Error object from an SQLCODE and message.
ClassMethod FromSQLCode(pSQLCODE As %Integer = -400, pMessage As %String(MAXLEN="") = "") As %SYSTEM.Error
{
}

/// FromXSQL() - instantiate a new %SYSTEM.Error object from an error code that originates from	and XSQL procedure.
/// This is called from generated code for TSQL RAISERROR (v27) and Informix RAISE EXCEPTION (v25)
ClassMethod FromXSQL(pDomain As %String = "", pXSQLCODE As %Integer = 0, pMessage As %String(MAXLEN="") = "") As %SYSTEM.Error
{
}

Method getOdbcError(sqlcode, message)
{
}

}
