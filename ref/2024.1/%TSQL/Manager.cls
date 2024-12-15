/// <p><b>%TSQL.Manager is deprecated</b>. Use $system.SQL.TSQL(), $system.SQL.Shell() with dialect set to either Sybase or MSSQL, or
/// $system.SQL.DDLImport() instead. The simplest method for importing a file containing T/SQL statements is to use the SQL
/// Shell with the dialect set to Sybase or MSSQL. $system.SQL.TSQL() is a simple shortcut to launch the SQL shell using the
/// default dialect as defined in the system configuration. In the SQL Shell simply execute the RUN command with the name of
/// the file to be executed. This will initiate a dialog to set various RUN options and then the statements in the file will be
/// executed.
/// </p>
/// <p>%TSQL.Manager implements several utility methods for importing and executing files/streams containing TSQL statements. </p>
Class %TSQL.Manager [ Abstract, Deprecated, System = 4 ]
{

/// Import a file of TSQL statement batches. This should be called 'Load' but for PPCF we need to maintain the 'load' method interface and 'Load' is a name conflict.
/// 	Parameters:
///
/// 	pDialect	- The dialect of TSQL contained in the input file. Values are MSSQL or Sybase, Sybase is the default;
/// 	pInputFile	- The name of the TSQL source file;
/// pLogFile	- The name of the log file. Input source statements and the result of execution are logged;
/// pRunMode	- The SQL Statement runtime mode;
/// 					0 - Logical (default)
/// 					1 - ODBC
/// 					2 - Display
/// pErrorPause	- The number of seconds to pause after encountering an error. Not all errors will pause. Default is 5 seconds. Specifying 0 will disable all pauses.
/// pQSpec		- Runtime options and flags. The only option relevant to TSQL import is 'displaylog'. If it is false, no logging will be done.
ClassMethod Import(pDialect As %String, pInputFile As %RawString = "", pLogFile As %RawString = "", pRunMode As %Integer, pErrorPause As %Integer, ByRef pQSpec As %RawString) As %Status
{
}

/// load()
///
/// 		This method loads and executes TSQL statements from a file. Execution of individuals batches
/// 		of statements is triggered when a "GO" statement is processed.
/// arguments:
///
/// 		DDLMode		- The dialect of the source statements. Supported dialects are Sybase and MSSQL
/// 		scriptFile	- the file containing SQL statements to be executed;
/// 		logFile		- the file to log executed statements and results;
/// 		runtimeMode	- the mode in which SQL statements are to be executed. "" means use the default, 0 is logical, 1 is ODBC and 2 is DISPLAY
/// 		qspec		- option flags and qualifiers
ClassMethod load(DDLMode As %RawString = "Sybase", scriptFile As %RawString, logFile As %RawString = "", runtimeMode As %Integer, ByRef qspec As %RawString) As %Status
{
}

/// interactive()
///
/// 		DDLMode		- The dialect of the source statements. Supported dialects are Sybase and MSSQL
/// 		logFile 	- the name of a file to send log output to
/// 		runtimeMode	- the mode in which SQL statements are to be executed. "" means use the default, 0 is logical, 1 is ODBC and 2 is DISPLAY
/// 		qspec		- flags and options. If displayLog is true then all output is routed to logFile.
///
/// 	This method reads source from the principle device. Execution of individual batches of statements
/// 	is triggered when a "GO" statement is processed. CREATE PROCEDURE|FUNCTION|TRIGGER will also trigger execution of previously entered lines.
ClassMethod interactive(DDLMode As %RawString = "Sybase", logFile As %RawString = "", runtimeMode As %Integer, ByRef qspec As %RawString) As %Status
{
}

ClassMethod readInteractive(ByRef cachedLine As %String(MAXLEN="") = "", ByRef exitShell As %Integer = 0) As %Stream.Object
{
}

}
