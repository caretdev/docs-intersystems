"use strict";(self.webpackChunkdocs_intersystems=self.webpackChunkdocs_intersystems||[]).push([[26476],{71179:(e,s,t)=>{t.r(s),t.d(s,{contentTitle:()=>l,default:()=>c,frontMatter:()=>r,toc:()=>i});var a=t(74848),n=t(28453);const r={pagination_prev:null,pagination_next:null},l="%DeepSee.WorkMgr",i=[{value:"Parameters",id:"parameters",level:2},{value:"EVENTNAME",id:"eventname",level:3},{value:"TIMEOUT",id:"timeout",level:3},{value:"Methods",id:"methods",level:2},{value:"%SetLoggingOptions",id:"setloggingoptions",level:3},{value:"%Reset",id:"reset",level:3},{value:"%IsActive",id:"isactive",level:3},{value:"%WaitForTaskGroup",id:"waitfortaskgroup",level:3},{value:"%CreateTaskGroup",id:"createtaskgroup",level:3},{value:"%DestroyTaskGroup",id:"destroytaskgroup",level:3},{value:"%CreateAgents",id:"createagents",level:3},{value:"%AttachToQueue",id:"attachtoqueue",level:3},{value:"%DetachFromQueue",id:"detachfromqueue",level:3},{value:"%KillAgents",id:"killagents",level:3},{value:"%KillTasksForGroup",id:"killtasksforgroup",level:3},{value:"%QueueTask",id:"queuetask",level:3},{value:"%StartAgent",id:"startagent",level:3},{value:"%DequeueTask",id:"dequeuetask",level:3},{value:"%CloseTask",id:"closetask",level:3},{value:"%ExecuteTask",id:"executetask",level:3},{value:"%Log",id:"log",level:3},{value:"%PrintLog",id:"printlog",level:3},{value:"%PrintTaskGroups",id:"printtaskgroups",level:3},{value:"%PrintActiveTasks",id:"printactivetasks",level:3},{value:"%PrintPendingTasks",id:"printpendingtasks",level:3},{value:"%KillLog",id:"killlog",level:3},{value:"%RunArchivedTask",id:"runarchivedtask",level:3},{value:"%QueueArchivedTask",id:"queuearchivedtask",level:3},{value:"%RunArchivedTaskGroup",id:"runarchivedtaskgroup",level:3},{value:"%CountLiveAgents",id:"countliveagents",level:3},{value:"%AgentsAvailable",id:"agentsavailable",level:3},{value:"%Test",id:"test",level:3},{value:"%InitializeWorkMgr",id:"initializeworkmgr",level:3},{value:"%SetupQueueContext",id:"setupqueuecontext",level:3},{value:"%TearDownQueueContext",id:"teardownqueuecontext",level:3},{value:"%CleanupQueueContext",id:"cleanupqueuecontext",level:3}];function o(e){const s={br:"br",code:"code",h1:"h1",h2:"h2",h3:"h3",header:"header",p:"p",pre:"pre",...(0,n.R)(),...e.components};return(0,a.jsxs)(a.Fragment,{children:[(0,a.jsx)(s.header,{children:(0,a.jsx)(s.h1,{id:"deepseeworkmgr",children:"%DeepSee.WorkMgr"})}),"\n",(0,a.jsx)(s.pre,{children:(0,a.jsx)(s.code,{className:"language-objectscript-class",children:"Class %DeepSee.WorkMgr Extends %RegisteredObject [ System = 3 ]\n"})}),"\n",(0,a.jsxs)(s.p,{children:["Utility class that provides an API for managing DeepSee tasks.",(0,a.jsx)(s.br,{}),"\nThis is an internal utility used by DeepSee."]}),"\n",(0,a.jsx)(s.h2,{id:"parameters",children:"Parameters"}),"\n",(0,a.jsx)(s.h3,{id:"eventname",children:"EVENTNAME"}),"\n",(0,a.jsx)(s.pre,{children:(0,a.jsx)(s.code,{className:"language-objectscript-class",children:'Parameter EVENTNAME = "^DeepSee.Tasks.";\n'})}),"\n",(0,a.jsx)(s.p,{children:"Name of system used to talk to agents."}),"\n",(0,a.jsx)(s.h3,{id:"timeout",children:"TIMEOUT"}),"\n",(0,a.jsx)(s.pre,{children:(0,a.jsx)(s.code,{className:"language-objectscript-class",children:"Parameter TIMEOUT = 0;\n"})}),"\n",(0,a.jsx)(s.p,{children:"Timeout value (seconds) for events. If no events are received, then the agent will shut itself down."}),"\n",(0,a.jsx)(s.h2,{id:"methods",children:"Methods"}),"\n",(0,a.jsx)(s.h3,{id:"setloggingoptions",children:"%SetLoggingOptions"}),"\n",(0,a.jsx)(s.pre,{children:(0,a.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod %SetLoggingOptions(pUseArchive = 0, pLogSize = 100, pLogAll = 0)\n"})}),"\n",(0,a.jsx)(s.p,{children:"Turn on logging for the DeepSee background agents. These will be reset during a call to %KillLog."}),"\n",(0,a.jsx)(s.h3,{id:"reset",children:"%Reset"}),"\n",(0,a.jsx)(s.pre,{children:(0,a.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod %Reset() As %Status\n"})}),"\n",(0,a.jsxs)(s.p,{children:["Reset the WorkMgr.",(0,a.jsx)(s.br,{}),"\nThis stops all running agents, clears out all tasks, and clears the logs."]}),"\n",(0,a.jsx)(s.h3,{id:"isactive",children:"%IsActive"}),"\n",(0,a.jsx)(s.pre,{children:(0,a.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod %IsActive() As %Boolean\n"})}),"\n",(0,a.jsx)(s.p,{children:"WorkQ agents will be made available as needed. This test always returns True"}),"\n",(0,a.jsx)(s.h3,{id:"waitfortaskgroup",children:"%WaitForTaskGroup"}),"\n",(0,a.jsx)(s.pre,{children:(0,a.jsx)(s.code,{className:"language-objectscript-class",children:'ClassMethod %WaitForTaskGroup(ByRef pTaskGroup As %String = "", Output pCompleted As %Boolean, pTimeOut As %Integer = 0, ByRef pWorkMgr As %SYSTEM.WorkMgr = {$$$NULLOREF}, Output pMaxTaskGroupWorkers As %Integer, Output pMaxWorkersOverallSoFar As %Integer) As %Status\n'})}),"\n",(0,a.jsx)(s.p,{children:"Wrapper for the WorkMgr:Sync() that parallels the original %DeepSee.TaskMaster version. The caller may optionally supply an object reference to a pWorkMgr for custom use."}),"\n",(0,a.jsx)(s.h3,{id:"createtaskgroup",children:"%CreateTaskGroup"}),"\n",(0,a.jsx)(s.pre,{children:(0,a.jsx)(s.code,{className:"language-objectscript-class",children:'ClassMethod %CreateTaskGroup(Output pTaskGroup As %String, pWait As %Boolean = 0, pName As %String = "", pRequestWorkMgr = 0, Output pWorkMgr = {$$$NULLOREF}) As %Status\n'})}),"\n",(0,a.jsx)(s.p,{children:"Create a unique idenitfier for a task group. The caller may optionally request an object reference with pRequestWorkMgr=1 which will be returned via pWorkMgr for customized use."}),"\n",(0,a.jsx)(s.h3,{id:"destroytaskgroup",children:"%DestroyTaskGroup"}),"\n",(0,a.jsx)(s.pre,{children:(0,a.jsx)(s.code,{className:"language-objectscript-class",children:'ClassMethod %DestroyTaskGroup(pTaskGroup As %String = "", pPurgeTasks As %Boolean = 1) As %Status\n'})}),"\n",(0,a.jsx)(s.p,{children:"Close down all work being done by this task group"}),"\n",(0,a.jsx)(s.h3,{id:"createagents",children:"%CreateAgents"}),"\n",(0,a.jsx)(s.pre,{children:(0,a.jsx)(s.code,{className:"language-objectscript-class",children:'ClassMethod %CreateAgents(pNumAgents As %Integer = "") As %Status\n'})}),"\n",(0,a.jsx)(s.p,{children:"- NOT IMPLEMENTED - This is handled by the WorkQMgr as part of task queueing operations"}),"\n",(0,a.jsx)(s.h3,{id:"attachtoqueue",children:"%AttachToQueue"}),"\n",(0,a.jsx)(s.pre,{children:(0,a.jsx)(s.code,{className:"language-objectscript-class",children:'ClassMethod %AttachToQueue(pQueueName As %String = "", Output pStatus As %Status = {$$$OK}) As %SYSTEM.WorkMgr\n'})}),"\n",(0,a.jsx)(s.p,{children:"Look up a token to reattach to a given WorkMgr queue. After successfully serializing a WorkMgr instance, through either attachment to a pre-existing queue or initialization of a new queue, the storage location for the provided pQueueName is marked with the null string to provide an indication the queue is currently open and working."}),"\n",(0,a.jsx)(s.h3,{id:"detachfromqueue",children:"%DetachFromQueue"}),"\n",(0,a.jsx)(s.pre,{children:(0,a.jsx)(s.code,{className:"language-objectscript-class",children:'ClassMethod %DetachFromQueue(pQueueName As %String = "", ByRef pWorkMgr As %SYSTEM.WorkMgr = {$$$NULLOREF}) As %Status\n'})}),"\n",(0,a.jsx)(s.p,{children:"Detach from a given WorkMgr queue and store the current token needed to reattach. If the storage location has been deleted before detaching from the queue (eg: by a cancellation operation), then the token is discarded."}),"\n",(0,a.jsx)(s.h3,{id:"killagents",children:"%KillAgents"}),"\n",(0,a.jsx)(s.pre,{children:(0,a.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod %KillAgents(pPurgeTasks As %Boolean = 0) As %Status\n"})}),"\n",(0,a.jsx)(s.p,{children:"Find all open WorkQ manager instances and shut them down"}),"\n",(0,a.jsx)(s.h3,{id:"killtasksforgroup",children:"%KillTasksForGroup"}),"\n",(0,a.jsx)(s.pre,{children:(0,a.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod %KillTasksForGroup(pTaskGroup As %String) As %Status\n"})}),"\n",(0,a.jsx)(s.p,{children:"This performs the actual cleanup work to remove all tasks assigned to a particular logical work group."}),"\n",(0,a.jsx)(s.h3,{id:"queuetask",children:"%QueueTask"}),"\n",(0,a.jsx)(s.pre,{children:(0,a.jsx)(s.code,{className:"language-objectscript-class",children:'ClassMethod %QueueTask(pTaskGroup As %String = "", pTaskType As %String, pCubeName As %String, pQueryKey As %String = "", pData As %String = "", pData2 As %String = "", pData3 As %String = "", pSQLParams As %String = "", pSuppressArchive As %Boolean = 0, ByRef pWorkMgr As %SYSTEM.WorkMgr = {$$$NULLOREF}) As %Status\n'})}),"\n",(0,a.jsxs)(s.p,{children:["This is called from the foreground to add a task to the queue of background tasks.",(0,a.jsx)(s.br,{}),"\npTaskGroup must be defined in order to properly assign individual tasks to a particular work queue. The caller may optionally supply an object reference to a pWorkMgr to add the task to that custom work queue."]}),"\n",(0,a.jsx)(s.h3,{id:"startagent",children:"%StartAgent"}),"\n",(0,a.jsx)(s.pre,{children:(0,a.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod %StartAgent(pAgentId As %String, pPriority As %String) [ Internal ]\n"})}),"\n",(0,a.jsx)(s.p,{children:"- NOT IMPLEMENTED - This is handled by the WorkQMgr."}),"\n",(0,a.jsx)(s.h3,{id:"dequeuetask",children:"%DequeueTask"}),"\n",(0,a.jsx)(s.pre,{children:(0,a.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod %DequeueTask(pTaskGroup As %String, pParameters As %List, pSuppressArchive As %Boolean = 0) As %Status\n"})}),"\n",(0,a.jsx)(s.p,{children:'This is called in %ExecuteTask to mark the task "active" in the process logging.'}),"\n",(0,a.jsx)(s.h3,{id:"closetask",children:"%CloseTask"}),"\n",(0,a.jsx)(s.pre,{children:(0,a.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod %CloseTask(pTaskGroup As %String, pParameters As %List) As %Status\n"})}),"\n",(0,a.jsx)(s.p,{children:"This is called as the callback to %ExecuteTask which cleans up the management global. This method will also close out the WorkQ if the group was created with pWait = 0."}),"\n",(0,a.jsx)(s.h3,{id:"executetask",children:"%ExecuteTask"}),"\n",(0,a.jsx)(s.pre,{children:(0,a.jsx)(s.code,{className:"language-objectscript-class",children:'ClassMethod %ExecuteTask(pTaskGroup As %String, pParameters As %List, pSettings As %String = "") As %Status\n'})}),"\n",(0,a.jsx)(s.p,{children:"This is run by the worker and will do the actual work of processing tasks via the work queue manager"}),"\n",(0,a.jsx)(s.h3,{id:"log",children:"%Log"}),"\n",(0,a.jsx)(s.pre,{children:(0,a.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod %Log(pMsg As %String)\n"})}),"\n",(0,a.jsx)(s.p,{children:"Log a message to the agent log."}),"\n",(0,a.jsx)(s.h3,{id:"printlog",children:"%PrintLog"}),"\n",(0,a.jsx)(s.pre,{children:(0,a.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod %PrintLog()\n"})}),"\n",(0,a.jsx)(s.p,{children:"Print contents of the (global-based) agent log to the console."}),"\n",(0,a.jsx)(s.h3,{id:"printtaskgroups",children:"%PrintTaskGroups"}),"\n",(0,a.jsx)(s.pre,{children:(0,a.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod %PrintTaskGroups()\n"})}),"\n",(0,a.jsx)(s.p,{children:"Print current task groups to the console."}),"\n",(0,a.jsx)(s.h3,{id:"printactivetasks",children:"%PrintActiveTasks"}),"\n",(0,a.jsx)(s.pre,{children:(0,a.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod %PrintActiveTasks()\n"})}),"\n",(0,a.jsx)(s.p,{children:"Print list of active tasks out to the console."}),"\n",(0,a.jsx)(s.h3,{id:"printpendingtasks",children:"%PrintPendingTasks"}),"\n",(0,a.jsx)(s.pre,{children:(0,a.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod %PrintPendingTasks()\n"})}),"\n",(0,a.jsx)(s.p,{children:"Print list of pending (queued) tasks out to the console."}),"\n",(0,a.jsx)(s.h3,{id:"killlog",children:"%KillLog"}),"\n",(0,a.jsx)(s.pre,{children:(0,a.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod %KillLog(pMsg As %String) As %Status\n"})}),"\n",(0,a.jsx)(s.p,{children:"Kill the agent log."}),"\n",(0,a.jsx)(s.h3,{id:"runarchivedtask",children:"%RunArchivedTask"}),"\n",(0,a.jsx)(s.pre,{children:(0,a.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod %RunArchivedTask(pTaskId As %Integer, pVerbose As %Boolean = 1) As %Status [ Internal ]\n"})}),"\n",(0,a.jsx)(s.p,{children:"Diagnostic method."}),"\n",(0,a.jsx)(s.h3,{id:"queuearchivedtask",children:"%QueueArchivedTask"}),"\n",(0,a.jsx)(s.pre,{children:(0,a.jsx)(s.code,{className:"language-objectscript-class",children:'ClassMethod %QueueArchivedTask(pTaskId As %Integer, pTaskGroup As %String = "", pVerbose As %Boolean = 1, pSuppressArchive As %Boolean = 1) As %Status [ Internal ]\n'})}),"\n",(0,a.jsx)(s.p,{children:"Diagnostic method to dispatch an archived task to a DeepSee background agent. Several tasks can be grouped into a single batch of archived tasks by supplying a pTaskGroup. If pSuppressArchive = 1, the re-execution of an archived task will not get archived."}),"\n",(0,a.jsx)(s.h3,{id:"runarchivedtaskgroup",children:"%RunArchivedTaskGroup"}),"\n",(0,a.jsx)(s.pre,{children:(0,a.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod %RunArchivedTaskGroup(pTaskStartId As %Integer = 1, pTaskEndId As %String = 0, pAsync As %Boolean = 1, pSuppressArchive As %Boolean = 1, pWaitTimeout As %Integer = 30, pVerbose As %Boolean = 1) As %Status [ Internal ]\n"})}),"\n",(0,a.jsxs)(s.p,{children:["This is a diagnostic utility which will run a group of tasks from the task archive. Siunce the task archive is a ring buffer, pTaskEndId may be set to 0 to indicate that the method should run to the end of the log. By default the method will re-queue the entire task archive beginning at position #1 for processing by DeepSee background agents. When using background processing, if pSuppressArchive = 1, then the re-execution of an archived task will not get archived.",(0,a.jsx)(s.br,{}),"\nThe method can be switched to execute each task sequentially in the foreground by setting pAsync=0."]}),"\n",(0,a.jsx)(s.h3,{id:"countliveagents",children:"%CountLiveAgents"}),"\n",(0,a.jsx)(s.pre,{children:(0,a.jsx)(s.code,{className:"language-objectscript-class",children:'ClassMethod %CountLiveAgents(pPriority = "H", Output pStatus, pCleanDeadAgents = 0) As %Integer [ Internal ]\n'})}),"\n",(0,a.jsx)(s.p,{children:"- NOT IMPLEMENTED - There is no longer direct management of agents by this class."}),"\n",(0,a.jsx)(s.h3,{id:"agentsavailable",children:"%AgentsAvailable"}),"\n",(0,a.jsx)(s.pre,{children:(0,a.jsx)(s.code,{className:"language-objectscript-class",children:'ClassMethod %AgentsAvailable(pPriority = "H", Output pStatus) As %Integer\n'})}),"\n",(0,a.jsx)(s.p,{children:"- NOT IMPLEMENTED - Agents are always available and created as needed. There is no need to test anymore."}),"\n",(0,a.jsx)(s.h3,{id:"test",children:"%Test"}),"\n",(0,a.jsx)(s.pre,{children:(0,a.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod %Test(pTaskCount = 25, pTimeOut = 0, pClean = 1) As %Status\n"})}),"\n",(0,a.jsx)(s.p,{children:"Perform simple test of DeepSee WorkMgr. This will kill any pending task."}),"\n",(0,a.jsx)(s.h3,{id:"initializeworkmgr",children:"%InitializeWorkMgr"}),"\n",(0,a.jsx)(s.pre,{children:(0,a.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod %InitializeWorkMgr(pQueueName, Output pStatus) As %SYSTEM.WorkMgr\n"})}),"\n",(0,a.jsx)(s.p,{children:"Create a new %SYSTEM.WorkMgr instance for use managing this DeepSee task queue."}),"\n",(0,a.jsx)(s.h3,{id:"setupqueuecontext",children:"%SetupQueueContext"}),"\n",(0,a.jsx)(s.pre,{children:(0,a.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod %SetupQueueContext(ByRef pCallingContext) As %Status [ Internal ]\n"})}),"\n",(0,a.jsxs)(s.p,{children:["Setup procedure to be run by each %SYSTEM.WorkMgr process as it picks up work from a %DeepSee.WorkMgr queue. All environmental setup should occur here. This will execute the user defined setup code if the call is defined in the ^DeepSee.InitCode global.",(0,a.jsx)(s.br,{}),"\nThe pCallingContext is an array to be used as a container for any relevant context established in the calling environment (for example %session information) that needs to be present in the background."]}),"\n",(0,a.jsx)(s.h3,{id:"teardownqueuecontext",children:"%TearDownQueueContext"}),"\n",(0,a.jsx)(s.pre,{children:(0,a.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod %TearDownQueueContext(ByRef pCallingContext) As %Status [ Internal ]\n"})}),"\n",(0,a.jsxs)(s.p,{children:["Tear-down procedure to be run by each %SYSTEM.WorkMgr worker process as it completes all work and detaches from a %DeepSee.WorkMgr-managed queue. All environmental tear down should occur here. This will execute the user defined tear-down code if the call is defined in the ^DeepSee.CloseCode global.",(0,a.jsx)(s.br,{}),"\nThe tear-down will receive the same pCallingContext array as was passed to %SetupQueueContext."]}),"\n",(0,a.jsx)(s.h3,{id:"cleanupqueuecontext",children:"%CleanupQueueContext"}),"\n",(0,a.jsx)(s.pre,{children:(0,a.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod %CleanupQueueContext(ByRef pCallingContext) As %Status [ Internal ]\n"})}),"\n",(0,a.jsx)(s.p,{children:"This is the worker method that will be executed as cleanup upon final close of the %SYSTEM.WorkMgr queue. At the time this executes there is no further need for any of the indices and metrics filed under the group label that was generated with the original %SYSTEM.WorkMgr, and on exit there should be no trace of the queueID label in the operational globals."})]})}function c(e={}){const{wrapper:s}={...(0,n.R)(),...e.components};return s?(0,a.jsx)(s,{...e,children:(0,a.jsx)(o,{...e})}):o(e)}},28453:(e,s,t)=>{t.d(s,{R:()=>l,x:()=>i});var a=t(96540);const n={},r=a.createContext(n);function l(e){const s=a.useContext(r);return a.useMemo((function(){return"function"==typeof e?e(s):{...s,...e}}),[s,e])}function i(e){let s;return s=e.disableParentContext?"function"==typeof e.components?e.components(n):e.components||n:l(e.components),a.createElement(r.Provider,{value:s},e.children)}}}]);