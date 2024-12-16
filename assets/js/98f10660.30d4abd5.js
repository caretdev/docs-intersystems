"use strict";(self.webpackChunkdocs_intersystems=self.webpackChunkdocs_intersystems||[]).push([[96959],{42875:(e,s,t)=>{t.r(s),t.d(s,{contentTitle:()=>l,default:()=>d,frontMatter:()=>n,toc:()=>r});var i=t(74848),a=t(28453);const n={pagination_prev:null,pagination_next:null},l="Backup.Task",r=[{value:"Parameters",id:"parameters",level:2},{value:"DOMAIN",id:"domain",level:3},{value:"Properties",id:"properties",level:2},{value:"Name",id:"name",level:3},{value:"Type",id:"type",level:3},{value:"LastModifiedTime",id:"lastmodifiedtime",level:3},{value:"LastRunTime",id:"lastruntime",level:3},{value:"LastRunStatus",id:"lastrunstatus",level:3},{value:"SwitchJournal",id:"switchjournal",level:3},{value:"Description",id:"description",level:3},{value:"Device",id:"device",level:3},{value:"DeviceIsTape",id:"deviceistape",level:3},{value:"LastFile",id:"lastfile",level:3},{value:"SystemTask",id:"systemtask",level:3},{value:"Methods",id:"methods",level:2},{value:"%LoadData",id:"loaddata",level:3},{value:"%SaveData",id:"savedata",level:3},{value:"%DeleteData",id:"deletedata",level:3},{value:"%OnNew",id:"onnew",level:3},{value:"DeviceGet",id:"deviceget",level:3},{value:"GetNormalizedDevice",id:"getnormalizeddevice",level:3},{value:"GetTimestamp",id:"gettimestamp",level:3},{value:"HistoryExecute",id:"historyexecute",level:3},{value:"HistoryClose",id:"historyclose",level:3},{value:"HistoryFetch",id:"historyfetch",level:3},{value:"ListExecute",id:"listexecute",level:3},{value:"ListFetch",id:"listfetch",level:3},{value:"ListClose",id:"listclose",level:3},{value:"ListLogFilesExecute",id:"listlogfilesexecute",level:3},{value:"ListLogFilesFetch",id:"listlogfilesfetch",level:3},{value:"ListLogFilesClose",id:"listlogfilesclose",level:3}];function c(e){const s={br:"br",code:"code",em:"em",h1:"h1",h2:"h2",h3:"h3",header:"header",li:"li",p:"p",pre:"pre",ul:"ul",...(0,a.R)(),...e.components};return(0,i.jsxs)(i.Fragment,{children:[(0,i.jsx)(s.header,{children:(0,i.jsx)(s.h1,{id:"backuptask",children:"Backup.Task"})}),"\n",(0,i.jsx)(s.pre,{children:(0,i.jsx)(s.code,{className:"language-objectscript-class",children:"Class Backup.Task Extends (%Persistent, %SYSTEM.Help) [ Final, Inheritance = right, StorageStrategy = BackupTaskStorage ]\n"})}),"\n",(0,i.jsx)(s.p,{children:"A backup task is a backup type and an output device with an optional description. There are a set of system defined tasks which cannot be changed."}),"\n",(0,i.jsx)(s.h2,{id:"parameters",children:"Parameters"}),"\n",(0,i.jsx)(s.h3,{id:"domain",children:"DOMAIN"}),"\n",(0,i.jsx)(s.pre,{children:(0,i.jsx)(s.code,{className:"language-objectscript-class",children:'Parameter DOMAIN = "%Utility";\n'})}),"\n",(0,i.jsx)(s.p,{children:"Default Localization Domain"}),"\n",(0,i.jsx)(s.h2,{id:"properties",children:"Properties"}),"\n",(0,i.jsx)(s.h3,{id:"name",children:"Name"}),"\n",(0,i.jsx)(s.pre,{children:(0,i.jsx)(s.code,{className:"language-objectscript-class",children:"Property Name As %String [ ReadOnly ];\n"})}),"\n",(0,i.jsx)(s.p,{children:"The name of this task."}),"\n",(0,i.jsx)(s.h3,{id:"type",children:"Type"}),"\n",(0,i.jsx)(s.pre,{children:(0,i.jsx)(s.code,{className:"language-objectscript-class",children:'Property Type As %String(DISPLAYLIST = "/Full/Incremental/Cumulative Incremental", VALUELIST = "/0/1/2");\n'})}),"\n",(0,i.jsx)(s.p,{children:"Type of backup which will be performed."}),"\n",(0,i.jsx)(s.h3,{id:"lastmodifiedtime",children:"LastModifiedTime"}),"\n",(0,i.jsx)(s.pre,{children:(0,i.jsx)(s.code,{className:"language-objectscript-class",children:"Property LastModifiedTime As %String [ ReadOnly ];\n"})}),"\n",(0,i.jsx)(s.p,{children:"The date and time this backup task was last modified."}),"\n",(0,i.jsx)(s.h3,{id:"lastruntime",children:"LastRunTime"}),"\n",(0,i.jsx)(s.pre,{children:(0,i.jsx)(s.code,{className:"language-objectscript-class",children:"Property LastRunTime As %String [ ReadOnly ];\n"})}),"\n",(0,i.jsx)(s.p,{children:"The date and time this backup task was last run."}),"\n",(0,i.jsx)(s.h3,{id:"lastrunstatus",children:"LastRunStatus"}),"\n",(0,i.jsx)(s.pre,{children:(0,i.jsx)(s.code,{className:"language-objectscript-class",children:"Property LastRunStatus As %String [ ReadOnly ];\n"})}),"\n",(0,i.jsx)(s.p,{children:'The status of this backup task\'s last run. It can be blank if the task has never been run, or else one of the following statuses: "Running", "Completed", or "Failed".'}),"\n",(0,i.jsx)(s.h3,{id:"switchjournal",children:"SwitchJournal"}),"\n",(0,i.jsx)(s.pre,{children:(0,i.jsx)(s.code,{className:"language-objectscript-class",children:"Property SwitchJournal As %Boolean;\n"})}),"\n",(0,i.jsx)(s.p,{children:"Indicates whether the journal file should be switched as part of running the backup."}),"\n",(0,i.jsx)(s.h3,{id:"description",children:"Description"}),"\n",(0,i.jsx)(s.pre,{children:(0,i.jsx)(s.code,{className:"language-objectscript-class",children:"Property Description As %String(MAXLEN = 256);\n"})}),"\n",(0,i.jsx)(s.p,{children:"User-specified description of this backup task. This is stored in the backup history."}),"\n",(0,i.jsx)(s.h3,{id:"device",children:"Device"}),"\n",(0,i.jsx)(s.pre,{children:(0,i.jsx)(s.code,{className:"language-objectscript-class",children:"Property Device As %SysPath;\n"})}),"\n",(0,i.jsxs)(s.p,{children:["User-specified output device for this backup task. This can be a tape device or a directory where the backup files are stored. If this is blank the default is the ",(0,i.jsx)(s.em,{children:"Backup"})," subdirectory under the directory which contains the IRISSYS database."]}),"\n",(0,i.jsx)(s.h3,{id:"deviceistape",children:"DeviceIsTape"}),"\n",(0,i.jsx)(s.pre,{children:(0,i.jsx)(s.code,{className:"language-objectscript-class",children:"Property DeviceIsTape As %Boolean;\n"})}),"\n",(0,i.jsx)(s.p,{children:"True if the output device is a tape."}),"\n",(0,i.jsx)(s.h3,{id:"lastfile",children:"LastFile"}),"\n",(0,i.jsx)(s.pre,{children:(0,i.jsx)(s.code,{className:"language-objectscript-class",children:"Property LastFile As %String(MAXLEN = 256) [ ReadOnly ];\n"})}),"\n",(0,i.jsx)(s.p,{children:"Date portion of the filename for the last run of this task. The full filename consists of this property plus the .cbk file extension."}),"\n",(0,i.jsxs)(s.p,{children:["Log files are located in the ",(0,i.jsx)(s.em,{children:"Backup"})," subdirectory under the directory that contains the IRISSYS database, and their filenames consist of the LastFile property plus the .log file extension."]}),"\n",(0,i.jsx)(s.h3,{id:"systemtask",children:"SystemTask"}),"\n",(0,i.jsx)(s.pre,{children:(0,i.jsx)(s.code,{className:"language-objectscript-class",children:"Property SystemTask As %Boolean [ ReadOnly ];\n"})}),"\n",(0,i.jsx)(s.p,{children:"Denotes that this is a system task. Certain tasks are defined by the system and cannot be modified."}),"\n",(0,i.jsx)(s.h2,{id:"methods",children:"Methods"}),"\n",(0,i.jsx)(s.h3,{id:"loaddata",children:"%LoadData"}),"\n",(0,i.jsx)(s.pre,{children:(0,i.jsx)(s.code,{className:"language-objectscript-class",children:"Method %LoadData(id As %String, flag As %Boolean) As %Status [ Private ]\n"})}),"\n",(0,i.jsx)(s.p,{children:"Overrides the default %LoadData method."}),"\n",(0,i.jsx)(s.h3,{id:"savedata",children:"%SaveData"}),"\n",(0,i.jsx)(s.pre,{children:(0,i.jsx)(s.code,{className:"language-objectscript-class",children:"Method %SaveData(id As %String) As %Status [ Private ]\n"})}),"\n",(0,i.jsx)(s.h3,{id:"deletedata",children:"%DeleteData"}),"\n",(0,i.jsx)(s.pre,{children:(0,i.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod %DeleteData(id As %String, concurrency As %Integer) As %Status [ Private ]\n"})}),"\n",(0,i.jsx)(s.p,{children:"This callback method is invoked by the %Delete method to remove the data when an instance is deleted."}),"\n",(0,i.jsx)(s.p,{children:"If this method returns an error then the object will not be created."}),"\n",(0,i.jsx)(s.h3,{id:"onnew",children:"%OnNew"}),"\n",(0,i.jsx)(s.pre,{children:(0,i.jsx)(s.code,{className:"language-objectscript-class",children:"Method %OnNew(newtask As %RawString) As %Status [ Private ]\n"})}),"\n",(0,i.jsx)(s.p,{children:"This callback method is invoked by the %New method to provide notification that a new instance of an object is being created."}),"\n",(0,i.jsx)(s.p,{children:"The name of the new task must be specified as the argument to the %New() method and is resitricted to alphanumeric characters."}),"\n",(0,i.jsx)(s.p,{children:"If this method returns an error then the object will not be created."}),"\n",(0,i.jsx)(s.h3,{id:"deviceget",children:"DeviceGet"}),"\n",(0,i.jsx)(s.pre,{children:(0,i.jsx)(s.code,{className:"language-objectscript-class",children:"Method DeviceGet() As %String [ Internal ]\n"})}),"\n",(0,i.jsx)(s.h3,{id:"getnormalizeddevice",children:"GetNormalizedDevice"}),"\n",(0,i.jsx)(s.pre,{children:(0,i.jsx)(s.code,{className:"language-objectscript-class",children:'ClassMethod GetNormalizedDevice(DevicePath As %String = "", DeviceIsTape As %Boolean = 0) As %String [ Internal ]\n'})}),"\n",(0,i.jsx)(s.h3,{id:"gettimestamp",children:"GetTimestamp"}),"\n",(0,i.jsx)(s.pre,{children:(0,i.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod GetTimestamp() As %String [ Internal ]\n"})}),"\n",(0,i.jsx)(s.h3,{id:"historyexecute",children:"HistoryExecute"}),"\n",(0,i.jsx)(s.pre,{children:(0,i.jsx)(s.code,{className:"language-objectscript-class",children:'ClassMethod HistoryExecute(ByRef qHandle As %Binary, DateTimeStart As %String = "", DateTimeEnd As %String = "") As %Status\n'})}),"\n",(0,i.jsx)(s.p,{children:"Provides a history of all backup operations that have been executed. The results are in reverse-chronological order."}),"\n",(0,i.jsx)(s.p,{children:"Input Parameters:"}),"\n",(0,i.jsxs)(s.ul,{children:["\n",(0,i.jsx)(s.li,{children:"DateTimeStart is the starting datetime in $H format for the backup history. If it is a null string then the starting time is the earliest in the recorded history."}),"\n",(0,i.jsx)(s.li,{children:"DateTimeEnd is the ending datetime in $H format for the backup history. If it is a null string then the ending time is the latest in the recorded history."}),"\n"]}),"\n",(0,i.jsx)(s.h3,{id:"historyclose",children:"HistoryClose"}),"\n",(0,i.jsx)(s.pre,{children:(0,i.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod HistoryClose(ByRef qHandle As %Binary) As %Status [ PlaceAfter = HistoryExecute ]\n"})}),"\n",(0,i.jsx)(s.h3,{id:"historyfetch",children:"HistoryFetch"}),"\n",(0,i.jsx)(s.pre,{children:(0,i.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod HistoryFetch(ByRef qHandle As %Binary, ByRef Row As %List, ByRef AtEnd As %Integer = 0) As %Status [ PlaceAfter = HistoryExecute ]\n"})}),"\n",(0,i.jsx)(s.h3,{id:"listexecute",children:"ListExecute"}),"\n",(0,i.jsx)(s.pre,{children:(0,i.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod ListExecute(ByRef qHandle As %Binary) As %Status [ Internal ]\n"})}),"\n",(0,i.jsxs)(s.p,{children:["Provides a list of all currently defined tasks.",(0,i.jsx)(s.br,{}),"\nThe four built-in tasks are always returned first, followed by any user-defined tasks."]}),"\n",(0,i.jsx)(s.p,{children:"LastFile only has a value if a log file exists from the last run of the backup."}),"\n",(0,i.jsx)(s.h3,{id:"listfetch",children:"ListFetch"}),"\n",(0,i.jsx)(s.pre,{children:(0,i.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod ListFetch(ByRef qHandle As %Binary, ByRef Row As %List, ByRef AtEnd As %Integer = 0) As %Status [ Internal ]\n"})}),"\n",(0,i.jsx)(s.h3,{id:"listclose",children:"ListClose"}),"\n",(0,i.jsx)(s.pre,{children:(0,i.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod ListClose(ByRef qHandle As %Binary) As %Status [ Internal, PlaceAfter = ListExecute ]\n"})}),"\n",(0,i.jsx)(s.h3,{id:"listlogfilesexecute",children:"ListLogFilesExecute"}),"\n",(0,i.jsx)(s.pre,{children:(0,i.jsx)(s.code,{className:"language-objectscript-class",children:'ClassMethod ListLogFilesExecute(ByRef qHandle As %Binary, task As %String = "") As %Status [ Internal ]\n'})}),"\n",(0,i.jsx)(s.p,{children:"Returns a list of log files that exist for a specified backup task. If no task is specified, returns a list of all log files for all backup tasks."}),"\n",(0,i.jsx)(s.h3,{id:"listlogfilesfetch",children:"ListLogFilesFetch"}),"\n",(0,i.jsx)(s.pre,{children:(0,i.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod ListLogFilesFetch(ByRef qHandle As %Binary, ByRef Row As %List, ByRef AtEnd As %Integer = 0) As %Status [ Internal ]\n"})}),"\n",(0,i.jsx)(s.h3,{id:"listlogfilesclose",children:"ListLogFilesClose"}),"\n",(0,i.jsx)(s.pre,{children:(0,i.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod ListLogFilesClose(ByRef qHandle As %Binary) As %Status [ Internal, PlaceAfter = ListLogFilesExecute ]\n"})})]})}function d(e={}){const{wrapper:s}={...(0,a.R)(),...e.components};return s?(0,i.jsx)(s,{...e,children:(0,i.jsx)(c,{...e})}):c(e)}},28453:(e,s,t)=>{t.d(s,{R:()=>l,x:()=>r});var i=t(96540);const a={},n=i.createContext(a);function l(e){const s=i.useContext(n);return i.useMemo((function(){return"function"==typeof e?e(s):{...s,...e}}),[s,e])}function r(e){let s;return s=e.disableParentContext?"function"==typeof e.components?e.components(a):e.components||a:l(e.components),i.createElement(n.Provider,{value:s},e.children)}}}]);