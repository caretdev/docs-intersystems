/// 	Used to track events in the TASKMGR environment
/// When jobs are completed
/// Deletion of tasks
/// Updates to Configuration data
/// Starting of the TASKMGR
/// Suspending/Resuming Tasks or TASKMGR
Class %SYS.Task.History Extends %Persistent [ System = 4 ]
{

Parameter DOMAIN = "%Utility";

/// Date the log entry is made
Property LogDate As %Date;

/// Time the log entry is made
Property LogTime As %Time;

/// Value of Status if ExecuteCode is Set Status=<br>
Property Status As %RawString [ InitialExpression = 0 ];

/// Code That was run
Property ExecuteCode As %String(MAXLEN = 32000);

/// $h Value of when the task was last started<br>
/// 0 - Never started
Property LastStarted As %String [ InitialExpression = 0 ];

/// $h Value of when the task was last finished<br>
/// 0 - Never finished
Property LastFinished As %String [ InitialExpression = 0 ];

/// Name of the task. Must be 16 characters or less, first character
/// must be a letter.
Property Name As %String(MAXLEN = 32000);

/// Calculated by the system
Property Number As %Integer [ InitialExpression = 0, Internal ];

/// Namespace the task ran in
Property NameSpace As %String(MAXLEN = 64) [ InitialExpression = "%SYS" ];

/// $lb(date,index) in %ER global on error
Property ER As %String(MAXLEN = 20);

/// Untrapped error from User task, or "Success"
Property Error As %String(MAXLEN = 1024);

/// $J value of the job which ran the task
Property RunningJobNumber As %String;

/// ID of Task
Property Task As %SYS.Task;

Property DisplayStarted As %String [ SqlComputeCode = { Set {DisplayStarted}=$s({LastStarted}=0:"",1:$zdatetime({LastStarted},3,2))}, SqlComputed, Transient ];

Property DisplayFinished As %String [ SqlComputeCode = { Set {DisplayFinished}=$s({LastFinished}=0:"",1:$zdatetime({LastFinished},3,2))}, SqlComputed, Transient ];

Property DisplayStatus As %String(MAXLEN = 1024) [ SqlComputeCode = {	Set {DisplayStatus}=$s({Status}=1:1,{Status}=0:"",1:$system.Status.GetErrorText({Status}))}, SqlComputed, Transient ];

Property DisplayErrorDate As %Date [ SqlComputeCode = { Set {DisplayErrorDate}=$s({ER}="":"",1:$lg({ER}))}, SqlComputed, Transient ];

Property DisplayErrorNumber As %String [ SqlComputeCode = {	Set {DisplayErrorNumber}=$s({ER}="":"",1:$lg({ER},2))}, SqlComputed, Transient ];

Property DisplayLogDate As %String(MAXLEN = 255) [ SqlComputeCode = { Set {DisplayLogDate}=$s({LogDate}=0:"",1:$zdate({LogDate},3))}, SqlComputed, Transient ];

Property Username As %Library.Username;

Method %OnBeforeSave(Insert As %Library.Boolean) As %Status
{
}

/// Purge Task History.
/// This method purges the task history. It will retain
/// Task history for the number of days set by the
/// $SYS.Task.HistoryPurgeSet class method.
ClassMethod PurgeHistory(days As %Integer) As %Status
{
}

/// Formats a line for the TaskHistory query.
ClassMethod FormatTaskHistory(LastStarted As %String, Completed As %String, Name As %String, Status As %String, Result As %String) As %String
{
}

/// Write an entry to the history log based on the passed values
ClassMethod WriteLog(Status As %Integer, Error As %String, LastStarted As %String, LastFinished As %String, Name As %String, Number As %String, NameSpace As %String, ExecuteCode As %String = "", ER As %String = "", Task As %Integer = "", PID As %String) As %Status [ Internal ]
{
}

/// Returns a Task's history.
/// <br>This query loops through the task history and returns information
/// concerning when the task was run
/// Returns all Task history in descending order.
/// Returns all non-system Task history in descending order.
ClassMethod DescendingTaskHistoryFilterExecute(ByRef qHandle As %Binary, Filter As %String = "", UserOnly As %Boolean = 0) As %Status [ Internal ]
{
}

ClassMethod DescendingTaskHistoryFilterFetch(ByRef qHandle As %Binary, ByRef Row As %List, ByRef AtEnd As %Integer = 0) As %Status [ Internal, PlaceAfter = DescendingTaskHistoryFilterExecute ]
{
}

ClassMethod DescendingTaskHistoryFilterClose(ByRef qHandle As %Binary) As %Status [ Internal, PlaceAfter = DescendingTaskHistoryFilterExecute ]
{
}

}
