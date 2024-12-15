///  Utility class that provides an API for managing
///  DeepSee tasks.<br/>
///  This is an internal utility used by DeepSee.
Class %DeepSee.WorkMgr Extends %RegisteredObject [ System = 3 ]
{

///  Name of system used to talk to agents.
Parameter EVENTNAME = "^DeepSee.Tasks.";

///  Timeout value (seconds) for events.
///  If no events are received, then the agent will shut itself down.
Parameter TIMEOUT = 0;

/// Turn on logging for the DeepSee background agents. These will be reset during a call to <method>%KillLog</method>.
ClassMethod %SetLoggingOptions(pUseArchive = 0, pLogSize = 100, pLogAll = 0)
{
}

///  Reset the WorkMgr.<br/>
///  This stops all running agents, clears out all tasks, and clears the logs.
ClassMethod %Reset() As %Status
{
}

///  WorkQ agents will be made available as needed. This test always returns True
ClassMethod %IsActive() As %Boolean
{
}

///  Wrapper for the WorkMgr:Sync() that parallels the original %DeepSee.TaskMaster version.
/// The caller may optionally supply an object reference to a <var>pWorkMgr</var> for custom use.
ClassMethod %WaitForTaskGroup(ByRef pTaskGroup As %String = "", Output pCompleted As %Boolean, pTimeOut As %Integer = 0, ByRef pWorkMgr As %SYSTEM.WorkMgr = {$$$NULLOREF}, Output pMaxTaskGroupWorkers As %Integer, Output pMaxWorkersOverallSoFar As %Integer) As %Status
{
}

/// Create a unique idenitfier for a task group.
/// The caller may optionally request an object reference with <var>pRequestWorkMgr</var>=1 which
/// will be returned via <var>pWorkMgr</var> for customized use.
ClassMethod %CreateTaskGroup(Output pTaskGroup As %String, pWait As %Boolean = 0, pName As %String = "", pRequestWorkMgr = 0, Output pWorkMgr = {$$$NULLOREF}) As %Status
{
}

/// Close down all work being done by this task group
ClassMethod %DestroyTaskGroup(pTaskGroup As %String = "", pPurgeTasks As %Boolean = 1) As %Status
{
}

///  - NOT IMPLEMENTED -
/// This is handled by the WorkQMgr as part of task queueing operations
ClassMethod %CreateAgents(pNumAgents As %Integer = "") As %Status
{
}

/// Look up a token to reattach to a given WorkMgr queue.
/// After successfully serializing a WorkMgr instance, through either attachment to a pre-existing queue or initialization of a new queue,
/// the storage location for the provided <var>pQueueName</var> is marked with the null string to provide an indication the queue is
/// currently open and working.
ClassMethod %AttachToQueue(pQueueName As %String = "", Output pStatus As %Status = {$$$OK}) As %SYSTEM.WorkMgr
{
}

/// Detach from a given WorkMgr queue and store the current token needed to reattach.
/// If the storage location has been deleted before detaching from the queue (eg: by a cancellation operation),
/// then the token is discarded.
ClassMethod %DetachFromQueue(pQueueName As %String = "", ByRef pWorkMgr As %SYSTEM.WorkMgr = {$$$NULLOREF}) As %Status
{
}

/// Find all open WorkQ manager instances and shut them down
ClassMethod %KillAgents(pPurgeTasks As %Boolean = 0) As %Status
{
}

/// This performs the actual cleanup work to remove all tasks assigned to a particular logical work group.
ClassMethod %KillTasksForGroup(pTaskGroup As %String) As %Status
{
}

///  This is called from the foreground to
///  add a task to the queue of background tasks.<br/>
///  <var>pTaskGroup</var> must be defined in order to properly assign individual tasks
///  to a particular work queue.
///  The caller may optionally supply an object reference to a <var>pWorkMgr</var> to add
///  the task to that custom work queue.
ClassMethod %QueueTask(pTaskGroup As %String = "", pTaskType As %String, pCubeName As %String, pQueryKey As %String = "", pData As %String = "", pData2 As %String = "", pData3 As %String = "", pSQLParams As %String = "", pSuppressArchive As %Boolean = 0, ByRef pWorkMgr As %SYSTEM.WorkMgr = {$$$NULLOREF}) As %Status
{
}

///  - NOT IMPLEMENTED -
/// This is handled by the WorkQMgr.
ClassMethod %StartAgent(pAgentId As %String, pPriority As %String) [ Internal ]
{
}

/// This is called in %ExecuteTask to mark the task "active" in the process logging.
ClassMethod %DequeueTask(pTaskGroup As %String, pParameters As %List, pSuppressArchive As %Boolean = 0) As %Status
{
}

/// This is called as the callback to %ExecuteTask which cleans up the management global. This
/// method will also close out the WorkQ if the group was created with pWait = 0.
ClassMethod %CloseTask(pTaskGroup As %String, pParameters As %List) As %Status
{
}

/// This is run by the worker and will do the actual work of processing tasks via the work queue manager
ClassMethod %ExecuteTask(pTaskGroup As %String, pParameters As %List, pSettings As %String = "") As %Status
{
}

///  Log a message to the agent log.
ClassMethod %Log(pMsg As %String)
{
}

///  Print contents of the (global-based) agent log to the console.
ClassMethod %PrintLog()
{
}

///  Print current task groups to the console.
ClassMethod %PrintTaskGroups()
{
}

///  Print list of active tasks out to the console.
ClassMethod %PrintActiveTasks()
{
}

/// Print list of pending (queued) tasks out to the console.
ClassMethod %PrintPendingTasks()
{
}

///  Kill the agent log.
ClassMethod %KillLog(pMsg As %String) As %Status
{
}

///  Diagnostic method.
ClassMethod %RunArchivedTask(pTaskId As %Integer, pVerbose As %Boolean = 1) As %Status [ Internal ]
{
}

/// Diagnostic method to dispatch an archived task to a DeepSee background agent. Several tasks can be grouped into a single
/// batch of archived tasks by supplying a <var>pTaskGroup</var>. If <var>pSuppressArchive</var> = 1, the re-execution of an
/// archived task will not get archived.
ClassMethod %QueueArchivedTask(pTaskId As %Integer, pTaskGroup As %String = "", pVerbose As %Boolean = 1, pSuppressArchive As %Boolean = 1) As %Status [ Internal ]
{
}

/// This is a diagnostic utility which will run a group of tasks from the task archive. Siunce the task archive is a ring buffer,
/// <var>pTaskEndId</var> may be set to 0 to indicate that the method should run to the end of the log. By default the method will
/// re-queue the entire task archive beginning at position #1 for processing by DeepSee background agents. When using background
/// processing, if <var>pSuppressArchive</var> = 1, then the re-execution of an archived task will not get archived.
/// <br>
/// The method can be switched to execute each task sequentially in the foreground by setting <var>pAsync</var>=0.
ClassMethod %RunArchivedTaskGroup(pTaskStartId As %Integer = 1, pTaskEndId As %String = 0, pAsync As %Boolean = 1, pSuppressArchive As %Boolean = 1, pWaitTimeout As %Integer = 30, pVerbose As %Boolean = 1) As %Status [ Internal ]
{
}

///  - NOT IMPLEMENTED -
/// There is no longer direct management of agents by this class.
ClassMethod %CountLiveAgents(pPriority = "H", Output pStatus, pCleanDeadAgents = 0) As %Integer [ Internal ]
{
}

///  - NOT IMPLEMENTED -
/// Agents are always available and created as needed. There is no need to test anymore.
ClassMethod %AgentsAvailable(pPriority = "H", Output pStatus) As %Integer
{
}

///  Perform simple test of DeepSee WorkMgr.
///  This will kill any pending task.
ClassMethod %Test(pTaskCount = 25, pTimeOut = 0, pClean = 1) As %Status
{
}

/// Create a new %SYSTEM.WorkMgr instance for use managing this DeepSee task queue.
ClassMethod %InitializeWorkMgr(pQueueName, Output pStatus) As %SYSTEM.WorkMgr
{
}

/// Setup procedure to be run by each %SYSTEM.WorkMgr process as it picks up work from
/// a %DeepSee.WorkMgr queue. All environmental setup should occur here. This will execute
/// the user defined setup code if the call is defined in the ^DeepSee.InitCode global.<br>
/// The <var>pCallingContext</var> is an array to be used as a container for any relevant
/// context established in the calling environment (for example %session information) that
/// needs to be present in the background.
ClassMethod %SetupQueueContext(ByRef pCallingContext) As %Status [ Internal ]
{
}

/// Tear-down procedure to be run by each %SYSTEM.WorkMgr worker process as it completes all work and
/// detaches from a %DeepSee.WorkMgr-managed queue. All environmental tear down should occur here. This will execute
/// the user defined tear-down code if the call is defined in the ^DeepSee.CloseCode global.<br>
/// The tear-down will receive the same <var>pCallingContext</var> array as was passed to
/// <method>%SetupQueueContext</method>.
ClassMethod %TearDownQueueContext(ByRef pCallingContext) As %Status [ Internal ]
{
}

/// This is the worker method that will be executed as cleanup upon final close of the %SYSTEM.WorkMgr queue. At the
/// time this executes there is no further need for any of the indices and metrics filed under the group label that was generated with
/// the original %SYSTEM.WorkMgr, and on exit there should be no trace of the queueID label in the operational globals.
ClassMethod %CleanupQueueContext(ByRef pCallingContext) As %Status [ Internal ]
{
}

}
