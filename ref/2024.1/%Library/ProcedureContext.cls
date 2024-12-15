/// Stored procedure context
Class %Library.ProcedureContext Extends %Library.IProcedureContext [ System = 2 ]
{

/// %LTT is an array of temporary table storage indexes subscripted by temp table name.
Property %LTT As %RawString [ Internal, MultiDimensional ];

/// PTT is an array of private temporary table orefs subscripted by temp table name.
/// Private Temporary Table to OREF index.
Property PTT As %RawString [ Internal, MultiDimensional ];

/// TTNI is an array of private temporary table names subscripted by UPPERCASE source language temporary tablename. This property is used to resolve a source language table reference to a private temporary table name.
/// TTNI = temporary table name index
Property TTNI As %RawString [ Internal, MultiDimensional ];

/// Same list as TTNI for private temporary tables in a sharded environment where we use a real table and not a LTT.  This list is not copied into other contexts, but only set in the main context where a PTT is created
/// This array allows us to clean up (delete) the IRIS_Temp.LTT# tables in %OnClose()
Property LTTCleanup As %RawString [ Internal, MultiDimensional ];

/// This array allows us to clean up (delete) globals from temp files we want cleaned up in %OnClose()
/// Only globals that begin with ^IRIS.Temp are deleted
Property TempGlobalCleanup As %RawString [ Internal, MultiDimensional ];

/// Results is a MD-style collection of result objects. This repository is
/// private and not meant for direct access. It is exposed through the interface.
/// A result can be added by calling AddResultSet or AddContext. The %CurrentResult
/// property is set to the result currently available to the client. The next result
/// becomes the current result by calling %NextResult().
Property Results As %RawString [ Internal, MultiDimensional, Private ];

/// cursors is a multidimensional array of cursor objects, subscripted by cursor name (case sensitive)
/// The value of the cursor is the cursor object reference (oref).
Property cursors As %String(MAXLEN = "") [ Internal, MultiDimensional ];

Property context As %RawString [ Private ];

Property static As %Boolean [ InitialExpression = 0 ];

/// AddPrivateTable()
/// 		This method will register a temporary table object. Only registered table objects are usable by dSQL.
/// 		The TTNI property is the <source_language_tablename> to <actual_tablename> index and is not set up here
/// 		since the actual table (referenced by pTable) has no clue as to the source language table name. That must
/// 		be done by the source language.
Method AddPrivateTable(pTable As %XSQL.DS.TempTable)
{
}

/// RemovePrivateTable() will remove the private table name from the current context object or the process context
/// object. The storage offset information remains to that any existing result sets will still be valid. However,
/// If another instance of a private table with the same name is created any result sets against the prior private
/// table may become invalid.
Method RemovePrivateTable(pTableName As %String(MAXLEN=""))
{
}

/// ResolveTableName will locate a temporary table registered in either the current object (usually equates to
/// %sqlcontext) or in the process context object (%processcontext). The temporary table name passed into this
/// method is the host language name such as #my_temp in TSQL or a normal temporary table name in Informix. This
/// name is the one bound to the actual name in the TTNI (temporary table name index) by the host language procedure.
/// If the table name is not found in TTNI, either local(current object) or global (%processcontext) then the name
/// submitted is returned an no context is returned in the byref pContext argument.
Method ResolveTableName(pTableName As %String(MAXLEN=""), ByRef pContext As %Library.ProcedureContext = "", pDDLFlag As %Integer = 0) As %String
{
}

Method Reset() As %Status
{
}

/// AddResultSet() - add a new result object to the context object. Results are
/// accessible by callers of the procedure through the %NextResult/%CurrentResult
/// interface.
Method AddResultSet(rs As %Library.IResultSet)
{
}

/// AddContext() is for nesting procedure context objects. If one procedure invokes another procedure and the results
/// of calling the nested procedure are to be returned to the caller of the outer procedure then simply invoke
/// AddContext on the context object of the outer procedure, passing the context object of the inner procedure as
/// an argument, <var>pContext</var>. If the <var>propagateerror</var> argument is true then any error encountered by the nested procedure
/// will be reported as an error to the caller of the outer procedure.
Method AddContext(pContext As %Library.IProcedureContext, propagateerror As %Boolean = 1) As %Library.Status
{
}

/// Used internally only, do not call directly.
Method Prepare(sqlquery As %String(MAXLEN=""), args...) As %Library.IResultSet [ Internal ]
{
}

/// Used internally only, do not call directly.
Method NewResultSet(rs As %Library.IResultSet, error As %SYSTEM.Error) [ Internal ]
{
}

/// Used internally only, do not call directly.
Method ReplaceResultSet(pResultSet As %Library.IResultSet = "") [ Internal ]
{
}

/// Called to return the next resultset object.
/// This also removes the reference to the existing object so it can cleanup and close itself
Method NextResult() As %RegisteredObject [ CodeMode = expression ]
{
}

/// Called to return the next resultset object.
/// This also removes the reference to the existing object so it can cleanup and close itself
Method %NextResult() As %RegisteredObject
{
}

/// Close the current resultset object, used to allow the cleanup code to run and the cursor to close
Method CloseCurrentResult() As %Status
{
}

/// DumpResults()
/// This method writes all of the results to the current device. The <var>pDelimiter</var> parameter
/// is passed to the result set's %Print() method.
Method DumpResults(pDelimiter As %String = " ")
{
}

/// This callback method is invoked by the <METHOD>%Close</METHOD> method to
/// provide notification that the current object is being closed.
///
/// <P>The return value of this method is ignored.
Method %OnClose() As %Status [ Private, ServerOnly = 1 ]
{
}

}
