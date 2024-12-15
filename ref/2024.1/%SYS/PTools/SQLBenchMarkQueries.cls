/// <style type="text/css">
///    DEP { color: red; font-weight: bold; }
///    BC { color: green; font-weight: bold; }
///    PROP { display: block; white-space: pre; font-size: 16px; font-family: monospace; }
///    STUB { color: DarkGoldenRod ; }
///    IMP { color: red; font-style: italic; }
///    .dep-head { color: red; white-space: pre; font-family:  'Courier New'; }
///    .section-head { color: blue; white-space: pre; font-family:  'Courier New'; }
///    .info-head { white-space: pre; font-family: 'Courier New'; }
/// </style>
/// <p>This Class gets populated from the <method>%SYS.PTools.SQLStats.startSQLStats()</method> method when gathering stats is turned on.
///    There is more info on how to run Stats in <class>%SYS.PTools.SQLStats</class>.
///
/// <p>The class contains the SQLText, the Job Number, the Time Stamp from when the query was run, the SQLIndexHash, which is a unique ID for the SQL Statement Index, and the Parameters that were used.
///
/// <p>The Method <method>Run</method> will loop over all the saved queries and execute them one after the other.
///
/// <p>Because ^%SYS.PTools.BenchMarkResults stores data in the "IRISLOCALDATA" database you need to have %All to execute the Run() method.
Class %SYS.PTools.SQLBenchMarkQueries Extends %Persistent [ System = 4 ]
{

Property QueryText As %String(MAXLEN = 15000);

Property NameSpace As %String;

Property PValues As array Of %String(MAXLEN = 2000);

Property RunTime As %TimeStamp;

Property JobNumber As %String;

/// Internal unique statement hash used as the ID for the SQL Statement Index (DPV4651):
///    ^rINDEXSQL("sqlidx",1,{SQLIndexHash},...)
///    ^rINDEXSQL("sqlidx",2,{rtn},{SQLIndexHash})
///    ^rINDEXSQL("sqlidx",3,{table},{SQLIndexHash})
/// For additional details, refer to the following: http://twiki.iscinternal.com/twiki/bin/view/ISC/SQL20Statement20Indexing
/// Also, refer to the following methods in the <rtn>%SYS.SQLSRVR.MAC<rtn> routine:
///    - SaveSQLIndex(...)			- UnfreezePlan(...)		- FreezePlanSchema(...)		- CleanSQLIndex(...)
///    - SaveSQLIndexImport(...)	- FreezePlan(...)		- FreezePlanRelation(...)	- ...
///    - UpdateSQLIndex(...) 		- FreezePlanAll(...)	- DeleteSQLIndex(...)
///
Property SQLIndexHash As %String(MAXLEN = 32);

/// <p>This is a simple example of what can be done with the data stored in this table.
/// <p>This methods take 2 parameters:
/// <ul>
/// <li>NameSpace - the NameSpace where you want to run the Benchmark</li>
/// <li>Display   - 1 or 0 to control output to the screen</li>
/// </ul>
/// <p>This method will loop over the queries that are stored in this classes
/// and execute them as Dynamic SQL statements
/// SQLStats is turned off for this run and the state is returned when the code finishes
/// The code will display and save data for fetching the first row and for fetching all the rows
/// The data saved will be:  Global Refs, Lines of Code, Rows Returned, and Total Time.
/// All the results are stored in the <class>%SYS.SQLBenchMarkResults</class> class.
ClassMethod Run(NameSpace As %String, Display As %Integer = 1) As %Status
{
}

ClassMethod Parse(sql) As %String
{
}

/// <p class="info-head">
/// <DEP> -- DEPRECATED --- DEPRECATED --- DEPRECATED --- DEPRECATED --- DEPRECATED -- </DEP>
///
/// Method:       clearSQLBenchMarkQry [SQL: PT_clearSQLBenchMarkQry]
/// Replaced BY:  N/A
/// Status:       New Functionality
/// Purpose:      Delete all of the data stored in the '%SYS.PTools.SQLBenchMarkQueries'
///               class, based on the specified parameters...
///
/// Invocation:   This method can be invoked in the following ways:
///                  ObjectScript: ##class(%SYS.PTools.SQLBenchMarkQueries).clearSQLBenchMarkQry(...)
///                           SQL: CALL %SYS_PTools.PT_clearSQLBenchMarkQry(...)
///                                SELECT %SYS_PTools.PT_clearSQLBenchMarkQry(...)
///
///       NOTE:      This 'SqlProc' method can be invoked with either the
///                  CALL-interface or the SELECT-interface.  Both interfaces
///                  execute the method: the CALL-interface does not return
///                  any resulting value, while the SELECT-interface does.
///
/// Examples:     The following examples shows the use of this method:
///
///    #1         Delete all of the data stored in the '%SYS.PTools.SQLBenchMarkQueries'
///               class in the 'SAMPLES' namespace:
///
///               set stats=##class(%SYS.PTools.SQLBenchMarkQueries).clearSQLBenchMarkQry("SAMPLES")
///
/// Data Storage: ^%sqlcq($NAMESPACE,"PTools","Bench","Queries","{D|I|C|S}")
///
/// Parameters:
///   ns          - The namespace in which to clear SQL Statistics
///                 If none provided, use the current namespaces where SQL Stats collected
///                    [DEFAULT: Current Namespace]
///   rtn         - The routine for which to clear SQL Statistics
///                 If none provided, clear all routines in the given 'ns'
///                    [OPTIONAL]
///   ph3         - Placeholder Parameter for future extensibility
///   clearAll    - 0 = Perform a normal clear, but leave the 'INFO' rows
///                 1 = Clear everything including the 'INFO' rows
///                    [DEFAULT: 0]
///   clearErrs   - 0 = Don't delete the 'PTools' Application Errors
///                 1 = Delete all of the 'PTools' Application Errors
///                    [DEFAULT: 0]
///   returnType  - 0 = Return a %Status code of either $$$OK or $$$ERROR()
///                 1 = Return the number of Stats rows deleted from the
///                     following class: %SYS.PTools.SQLBenchMarkQueries
///                    [DEFAULT: 0]
///   ptInfo      - A Pass By Reference information array that returns
///                 detailed information to the user in the following format:
///                    ptInfo(category,variable)=value OR $LB(val1,...,valn)
///                 Where category = { "cnt" | "curr" | "term" | ... }
///                       variable = A var corresponding to the given 'category'
///
///                 Example:
///                    ptInfo("cnt","clearSQLBenchMarkQry")=The number of rows deleted
///                                                         via this method [Routine Method]
///
/// RETURN Value: Based on the value of the 'returnType' parameter, return one of
///               the following:
///           0:  Return a %Status code of either $$$OK or $$$ERROR()
///
///           1:  Return the number of Stats rows deleted from the following class;
///               Otherwise, return an error message if an error occurred:
///                  %SYS.PTools.SQLBenchMarkQueries
/// </p>
ClassMethod clearSQLBenchMarkQry(ns As %String = "", rtn As %String = "", ph3 As %Integer = 0, clearErrs As %Integer = 0, returnType As %Integer = 0, ByRef ptInfo As %RawString) As %Status [ Deprecated, SqlName = PT_clearSQLBenchMarkQry, SqlProc ]
{
}

/// This method is called to remove SQL Benchmark Stats data from the following
/// two classes:
///    - <class>%SYS.PTools.SQLBenchMarkQueries</class>
///    - <class>%SYS.PTools.SQLBenchMarkResults</class>
///
/// Backward-compatible Entry Point:
///    NOTE: For additional details, see the following methods in their respective
///          aforementioned classes:
///             - <method>clearSQLBenchMarkQry</method>
///             - <method>clearSQLBenchMarkRslt</method>
ClassMethod Purge(ns As %String = "", rtn As %String = "", ph3 As %Integer = 0, clearErrs As %Integer = 0, returnType As %Integer = 0, ByRef ptInfo As %RawString) As %Status [ SqlName = PurgeBench, SqlProc ]
{
}

/// Perform the OnDelete Trigger operations for this class...
ClassMethod TriggerOnDelete(timing)
{
}

Trigger OnDelete [ Event = DELETE, Time = AFTER ]
{
}

}
