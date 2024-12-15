/// Returns one row for each metadata string pushed onto the <i>Application Metadata Stack</i> (AMS)
/// that belongs to the <b>SQL</b> application (ApplicationID="%SQL" <i>[WHERE "%SQL"=$$$AMSApplicationIDSQL]</i>). </br></br>
/// The <method>GetStackInfo</method> method within the <class>%SYS.AppMetadataStack.SQL</class> class
/// returns the data ResultSet for this class/table.
Class INFORMATION.SCHEMA.CURRENTSTATEMENTS Extends (%Library.Persistent, %XML.Adaptor) [ ClassType = persistent, Final, Owner = {_PUBLIC}, SqlRowIdPrivate, SqlTableName = CURRENT_STATEMENTS, StorageStrategy = SQLStorage, System = 4 ]
{

Parameter READONLY = 1;

/// <p style="display: none;">MRP1317</p>
/// The first $LIST(...) element of the <i>Application Metadata Stack</i>'s (AMS) metadata
/// string, which is itself a $LIST(...) string that is comprised of two or more elements
/// that can be used to uniquely identify the metadata string of the application that
/// pushed this information onto the AMS
Property AppMetadataStackID As %List [ SqlColumnNumber = 2 ];

/// <p style="display: none;">MRP1310 [Major Refactoring]</p>
/// The first element of the <property>AppMetadataStackID</property> property, which identifies
/// the application that pushed this information onto the <i>Application Metadata Stack</i> (AMS)
Property ApplicationID As %String [ InitialExpression = {$$$AMSApplicationIDSQL}, Private, Required, SqlColumnNumber = 3, SqlFieldName = ApplicationID ];

/// The second element of the <property>AppMetadataStackID</property> property, which is a
/// unique SQL Statement Identifier that can be used to identify a SQL Statement that is
/// stored in the SQL Statement Index (SSI)
Property SQLStatementID As %Integer [ SqlColumnNumber = 4 ];

/// Identifies the instance on which this SQL Statement is running: <hostname>:<supersever port>
Property Server As %String [ Required, SqlColumnNumber = 5 ];

/// Identifies the IRIS process ($JOB) in which this SQL Statement is running
Property ProcessId As %String [ Required, SqlColumnNumber = 6, SqlFieldName = ProcessID ];

/// SQL StatementIndex hash of this SQL Statement, which is used as a pointer to
/// the internal definition stored in the SQL Statement Index (SSI)
Property StatementIndexHash As %String [ Required, SqlColumnNumber = 7 ];

/// $USERNAME of person who created and invoked this SQL Statement
Property UserName As %String [ Required, SqlColumnNumber = 8 ];

/// SQL Query Run Type of this SQL Statement: EmbeddedSQL | DynamicSQL | xDBCQuery | ...
Property QueryRunType As %String [ Required, SqlColumnNumber = 9 ];

/// SQL Query Statement Type # of this SQL Statement: 1 = SELECT | 2 = INSERT | 3 = UPDATE | 4 = DELETE | ... | 72 = CANCEL QUERY
Property QueryStmtType As %Integer [ Required, SqlColumnNumber = 10 ];

/// Current nesting level for Transaction Processing (TP)
Property TPNestingLevel As %Integer [ Required, SqlColumnNumber = 11, SqlFieldName = TP_NestingLevel ];

/// First 10 SQL Statement parameters (might be truncated)
Property Parameters As %List [ SqlColumnNumber = 12 ];

/// Namespace in which this SQL Statement was built/compiled into a Cached Query and invoked
Property NameSpace As %String [ Required, SqlColumnNumber = 13, SqlFieldName = Namespace ];

/// Name of the Cached Query class created for this SQL Statement
/// NOTE: For some Embedded SQL DDL Statements, this will be the name of the Class/Routine
///       in which the Embedded SQL DDL Statement is specified and code generated
Property CachedQuery As %String [ SqlColumnNumber = 14 ];

/// Name of the Routine/Class who called this SQL Statement
/// If this is the top-most SQL Statement, then this value will be the empty string ("")
Property CallerName As %String [ SqlColumnNumber = 15 ];

/// Order in which this SQL Statement is being executed, based on the <i>^||oddSQL.CURRENTSTATEMENTS("orderStmts")</i> $LIST(...)
Property StatementOrder As %Integer [ Required, SqlColumnNumber = 16 ];

/// Number of workers currently active on behalf of this SQL Statement
Property CurrentWorkerCount As %Integer [ SqlColumnNumber = 17 ];

/// Timestamp when this SQL Query started executing (in local timezone)
Property ExecutionStart As %TimeStamp [ Required, SqlColumnNumber = 18 ];

/// UTC timestamp when this SQL Query started executing
Property ExecutionStartUTC As %TimeStamp [ Required, SqlColumnNumber = 19 ];

/// Amount of time (in seconds) in which this SQL Query has been executing
Property ExecutionDuration As %Numeric(SCALE = 6) [ Required, SqlColumnNumber = 20 ];

/// Parent Type: Parallel, Sharded
Property ParentType As %String [ SqlColumnNumber = 21 ];

/// $LIST(...) of {StatementIndexHash} for all Children Queries
Property ChildStatements As %List [ SqlColumnNumber = 22 ];

/// SQL Query Status: Preparing, Executing (Current Default), Closed, Aborted - or more fine-grained
Property Status As %String [ Calculated, Required, SqlColumnNumber = 23, SqlComputeCode = { set {*}="Executing"}, SqlComputed ];

Relationship Parent As INFORMATION.SCHEMA.CURRENTSTATEMENTS [ Cardinality = one, Inverse = SubStatement ];

Relationship SubStatement As INFORMATION.SCHEMA.CURRENTSTATEMENTS [ Cardinality = many, Inverse = Parent ];

/// Get and return the SQL Statement Text based on the {NameSpace} & {StatementIndexHash} fields
/// NOTE: Users with "USE" permission on the %Development resource can get all SQL Statements
ClassMethod GetSQLStatement(ns As %String = "", hash As %String = "", Output tSC = "", normalize As %Boolean = 1, upper As %Boolean = 0) As %String [ SqlName = GetSQLStatement, SqlProc ]
{
}

}
