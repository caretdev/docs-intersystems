"use strict";(self.webpackChunkdocs_intersystems=self.webpackChunkdocs_intersystems||[]).push([[79194],{9626:(e,s,r)=>{r.r(s),r.d(s,{contentTitle:()=>i,default:()=>c,frontMatter:()=>a,toc:()=>l});var t=r(74848),n=r(28453);const a={pagination_prev:null,pagination_next:null},i="%SYS.Task.History",l=[{value:"Parameters",id:"parameters",level:2},{value:"DOMAIN",id:"domain",level:3},{value:"Properties",id:"properties",level:2},{value:"LogDate",id:"logdate",level:3},{value:"LogTime",id:"logtime",level:3},{value:"Status",id:"status",level:3},{value:"ExecuteCode",id:"executecode",level:3},{value:"LastStarted",id:"laststarted",level:3},{value:"LastFinished",id:"lastfinished",level:3},{value:"Name",id:"name",level:3},{value:"Number",id:"number",level:3},{value:"NameSpace",id:"namespace",level:3},{value:"ER",id:"er",level:3},{value:"Error",id:"error",level:3},{value:"RunningJobNumber",id:"runningjobnumber",level:3},{value:"Task",id:"task",level:3},{value:"DisplayStarted",id:"displaystarted",level:3},{value:"DisplayFinished",id:"displayfinished",level:3},{value:"DisplayStatus",id:"displaystatus",level:3},{value:"DisplayErrorDate",id:"displayerrordate",level:3},{value:"DisplayErrorNumber",id:"displayerrornumber",level:3},{value:"DisplayLogDate",id:"displaylogdate",level:3},{value:"Username",id:"username",level:3},{value:"Methods",id:"methods",level:2},{value:"%OnBeforeSave",id:"onbeforesave",level:3},{value:"PurgeHistory",id:"purgehistory",level:3},{value:"FormatTaskHistory",id:"formattaskhistory",level:3},{value:"WriteLog",id:"writelog",level:3},{value:"DescendingTaskHistoryFilterExecute",id:"descendingtaskhistoryfilterexecute",level:3},{value:"DescendingTaskHistoryFilterFetch",id:"descendingtaskhistoryfilterfetch",level:3},{value:"DescendingTaskHistoryFilterClose",id:"descendingtaskhistoryfilterclose",level:3}];function d(e){const s={br:"br",code:"code",h1:"h1",h2:"h2",h3:"h3",header:"header",p:"p",pre:"pre",...(0,n.R)(),...e.components};return(0,t.jsxs)(t.Fragment,{children:[(0,t.jsx)(s.header,{children:(0,t.jsx)(s.h1,{id:"systaskhistory",children:"%SYS.Task.History"})}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"Class %SYS.Task.History Extends %Persistent [ System = 4 ]\n"})}),"\n",(0,t.jsx)(s.p,{children:"Used to track events in the TASKMGR environment When jobs are completed Deletion of tasks Updates to Configuration data Starting of the TASKMGR Suspending/Resuming Tasks or TASKMGR"}),"\n",(0,t.jsx)(s.h2,{id:"parameters",children:"Parameters"}),"\n",(0,t.jsx)(s.h3,{id:"domain",children:"DOMAIN"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:'Parameter DOMAIN = "%Utility";\n'})}),"\n",(0,t.jsx)(s.h2,{id:"properties",children:"Properties"}),"\n",(0,t.jsx)(s.h3,{id:"logdate",children:"LogDate"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"Property LogDate As %Date;\n"})}),"\n",(0,t.jsx)(s.p,{children:"Date the log entry is made"}),"\n",(0,t.jsx)(s.h3,{id:"logtime",children:"LogTime"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"Property LogTime As %Time;\n"})}),"\n",(0,t.jsx)(s.p,{children:"Time the log entry is made"}),"\n",(0,t.jsx)(s.h3,{id:"status",children:"Status"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"Property Status As %RawString [ InitialExpression = 0 ];\n"})}),"\n",(0,t.jsx)(s.p,{children:"Value of Status if ExecuteCode is Set Status="}),"\n",(0,t.jsx)(s.h3,{id:"executecode",children:"ExecuteCode"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"Property ExecuteCode As %String(MAXLEN = 32000);\n"})}),"\n",(0,t.jsx)(s.p,{children:"Code That was run"}),"\n",(0,t.jsx)(s.h3,{id:"laststarted",children:"LastStarted"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"Property LastStarted As %String [ InitialExpression = 0 ];\n"})}),"\n",(0,t.jsxs)(s.p,{children:["$h Value of when the task was last started",(0,t.jsx)(s.br,{}),"\n0 - Never started"]}),"\n",(0,t.jsx)(s.h3,{id:"lastfinished",children:"LastFinished"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"Property LastFinished As %String [ InitialExpression = 0 ];\n"})}),"\n",(0,t.jsxs)(s.p,{children:["$h Value of when the task was last finished",(0,t.jsx)(s.br,{}),"\n0 - Never finished"]}),"\n",(0,t.jsx)(s.h3,{id:"name",children:"Name"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"Property Name As %String(MAXLEN = 32000);\n"})}),"\n",(0,t.jsx)(s.p,{children:"Name of the task. Must be 16 characters or less, first character must be a letter."}),"\n",(0,t.jsx)(s.h3,{id:"number",children:"Number"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"Property Number As %Integer [ InitialExpression = 0, Internal ];\n"})}),"\n",(0,t.jsx)(s.p,{children:"Calculated by the system"}),"\n",(0,t.jsx)(s.h3,{id:"namespace",children:"NameSpace"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:'Property NameSpace As %String(MAXLEN = 64) [ InitialExpression = "%SYS" ];\n'})}),"\n",(0,t.jsx)(s.p,{children:"Namespace the task ran in"}),"\n",(0,t.jsx)(s.h3,{id:"er",children:"ER"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"Property ER As %String(MAXLEN = 20);\n"})}),"\n",(0,t.jsx)(s.p,{children:"$lb(date,index) in %ER global on error"}),"\n",(0,t.jsx)(s.h3,{id:"error",children:"Error"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"Property Error As %String(MAXLEN = 1024);\n"})}),"\n",(0,t.jsx)(s.p,{children:'Untrapped error from User task, or "Success"'}),"\n",(0,t.jsx)(s.h3,{id:"runningjobnumber",children:"RunningJobNumber"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"Property RunningJobNumber As %String;\n"})}),"\n",(0,t.jsx)(s.p,{children:"$J value of the job which ran the task"}),"\n",(0,t.jsx)(s.h3,{id:"task",children:"Task"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"Property Task As %SYS.Task;\n"})}),"\n",(0,t.jsx)(s.p,{children:"ID of Task"}),"\n",(0,t.jsx)(s.h3,{id:"displaystarted",children:"DisplayStarted"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:'Property DisplayStarted As %String [ SqlComputeCode = { Set {DisplayStarted}=$s({LastStarted}=0:"",1:$zdatetime({LastStarted},3,2))}, SqlComputed, Transient ];\n'})}),"\n",(0,t.jsx)(s.h3,{id:"displayfinished",children:"DisplayFinished"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:'Property DisplayFinished As %String [ SqlComputeCode = { Set {DisplayFinished}=$s({LastFinished}=0:"",1:$zdatetime({LastFinished},3,2))}, SqlComputed, Transient ];\n'})}),"\n",(0,t.jsx)(s.h3,{id:"displaystatus",children:"DisplayStatus"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:'Property DisplayStatus As %String(MAXLEN = 1024) [ SqlComputeCode = {\tSet {DisplayStatus}=$s({Status}=1:1,{Status}=0:"",1:$system.Status.GetErrorText({Status}))}, SqlComputed, Transient ];\n'})}),"\n",(0,t.jsx)(s.h3,{id:"displayerrordate",children:"DisplayErrorDate"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:'Property DisplayErrorDate As %Date [ SqlComputeCode = { Set {DisplayErrorDate}=$s({ER}="":"",1:$lg({ER}))}, SqlComputed, Transient ];\n'})}),"\n",(0,t.jsx)(s.h3,{id:"displayerrornumber",children:"DisplayErrorNumber"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:'Property DisplayErrorNumber As %String [ SqlComputeCode = {\tSet {DisplayErrorNumber}=$s({ER}="":"",1:$lg({ER},2))}, SqlComputed, Transient ];\n'})}),"\n",(0,t.jsx)(s.h3,{id:"displaylogdate",children:"DisplayLogDate"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:'Property DisplayLogDate As %String(MAXLEN = 255) [ SqlComputeCode = { Set {DisplayLogDate}=$s({LogDate}=0:"",1:$zdate({LogDate},3))}, SqlComputed, Transient ];\n'})}),"\n",(0,t.jsx)(s.h3,{id:"username",children:"Username"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"Property Username As %Library.Username;\n"})}),"\n",(0,t.jsx)(s.h2,{id:"methods",children:"Methods"}),"\n",(0,t.jsx)(s.h3,{id:"onbeforesave",children:"%OnBeforeSave"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"Method %OnBeforeSave(Insert As %Library.Boolean) As %Status\n"})}),"\n",(0,t.jsx)(s.h3,{id:"purgehistory",children:"PurgeHistory"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod PurgeHistory(days As %Integer) As %Status\n"})}),"\n",(0,t.jsx)(s.p,{children:"Purge Task History. This method purges the task history. It will retain Task history for the number of days set by the $SYS.Task.HistoryPurgeSet class method."}),"\n",(0,t.jsx)(s.h3,{id:"formattaskhistory",children:"FormatTaskHistory"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod FormatTaskHistory(LastStarted As %String, Completed As %String, Name As %String, Status As %String, Result As %String) As %String\n"})}),"\n",(0,t.jsx)(s.p,{children:"Formats a line for the TaskHistory query."}),"\n",(0,t.jsx)(s.h3,{id:"writelog",children:"WriteLog"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:'ClassMethod WriteLog(Status As %Integer, Error As %String, LastStarted As %String, LastFinished As %String, Name As %String, Number As %String, NameSpace As %String, ExecuteCode As %String = "", ER As %String = "", Task As %Integer = "", PID As %String) As %Status [ Internal ]\n'})}),"\n",(0,t.jsx)(s.p,{children:"Write an entry to the history log based on the passed values"}),"\n",(0,t.jsx)(s.h3,{id:"descendingtaskhistoryfilterexecute",children:"DescendingTaskHistoryFilterExecute"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:'ClassMethod DescendingTaskHistoryFilterExecute(ByRef qHandle As %Binary, Filter As %String = "", UserOnly As %Boolean = 0) As %Status [ Internal ]\n'})}),"\n",(0,t.jsxs)(s.p,{children:["Returns a Task's history.",(0,t.jsx)(s.br,{}),"\nThis query loops through the task history and returns information concerning when the task was run Returns all Task history in descending order. Returns all non-system Task history in descending order."]}),"\n",(0,t.jsx)(s.h3,{id:"descendingtaskhistoryfilterfetch",children:"DescendingTaskHistoryFilterFetch"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod DescendingTaskHistoryFilterFetch(ByRef qHandle As %Binary, ByRef Row As %List, ByRef AtEnd As %Integer = 0) As %Status [ Internal, PlaceAfter = DescendingTaskHistoryFilterExecute ]\n"})}),"\n",(0,t.jsx)(s.h3,{id:"descendingtaskhistoryfilterclose",children:"DescendingTaskHistoryFilterClose"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod DescendingTaskHistoryFilterClose(ByRef qHandle As %Binary) As %Status [ Internal, PlaceAfter = DescendingTaskHistoryFilterExecute ]\n"})})]})}function c(e={}){const{wrapper:s}={...(0,n.R)(),...e.components};return s?(0,t.jsx)(s,{...e,children:(0,t.jsx)(d,{...e})}):d(e)}},28453:(e,s,r)=>{r.d(s,{R:()=>i,x:()=>l});var t=r(96540);const n={},a=t.createContext(n);function i(e){const s=t.useContext(a);return t.useMemo((function(){return"function"==typeof e?e(s):{...s,...e}}),[s,e])}function l(e){let s;return s=e.disableParentContext?"function"==typeof e.components?e.components(n):e.components||n:i(e.components),t.createElement(a.Provider,{value:s},e.children)}}}]);