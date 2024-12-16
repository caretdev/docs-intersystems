"use strict";(self.webpackChunkdocs_intersystems=self.webpackChunkdocs_intersystems||[]).push([[92597],{92318:(e,s,a)=>{a.r(s),a.d(s,{contentTitle:()=>c,default:()=>o,frontMatter:()=>n,toc:()=>l});var r=a(74848),t=a(28453);const n={pagination_prev:null,pagination_next:null},c="%SYS.Task.Init",l=[{value:"Parameters",id:"parameters",level:2},{value:"DOMAIN",id:"domain",level:3},{value:"Methods",id:"methods",level:2},{value:"ToV31",id:"tov31",level:3},{value:"ToV30",id:"tov30",level:3},{value:"ToV29",id:"tov29",level:3},{value:"ToV28",id:"tov28",level:3},{value:"ToV27",id:"tov27",level:3},{value:"ToV26",id:"tov26",level:3},{value:"ToV25",id:"tov25",level:3},{value:"ToV24",id:"tov24",level:3},{value:"ToV23",id:"tov23",level:3},{value:"ToV22",id:"tov22",level:3},{value:"ToV21",id:"tov21",level:3},{value:"ToV20",id:"tov20",level:3},{value:"CreateSwitchJournal",id:"createswitchjournal",level:3},{value:"CreateSecurityScan",id:"createsecurityscan",level:3},{value:"CreateCleanSourceJournal",id:"createcleansourcejournal",level:3},{value:"CreatePurgeJournal",id:"createpurgejournal",level:3},{value:"CreatePurgeBackupLog",id:"createpurgebackuplog",level:3},{value:"CreatePurgeZENReports",id:"createpurgezenreports",level:3},{value:"CreatePurgeAudit",id:"createpurgeaudit",level:3},{value:"CreatePurgeTaskHistory",id:"createpurgetaskhistory",level:3},{value:"CreateFreeSpaceTask",id:"createfreespacetask",level:3},{value:"CreateIntegrityCheck",id:"createintegritycheck",level:3},{value:"CreateDiagnosticReport",id:"creatediagnosticreport",level:3},{value:"CreateInventoryScan",id:"createinventoryscan",level:3},{value:"CreatePurgeErrorsAndLogs",id:"createpurgeerrorsandlogs",level:3},{value:"CreateCheckLogging",id:"createchecklogging",level:3},{value:"CreateFeatureTracker",id:"createfeaturetracker",level:3},{value:"CreatePurgeInteropUsageMetrics",id:"createpurgeinteropusagemetrics",level:3},{value:"ScheduleInventoryScan",id:"scheduleinventoryscan",level:3},{value:"InitializeSystemTasks",id:"initializesystemtasks",level:3},{value:"SetHighValue",id:"sethighvalue",level:3}];function i(e){const s={code:"code",h1:"h1",h2:"h2",h3:"h3",header:"header",p:"p",pre:"pre",...(0,t.R)(),...e.components};return(0,r.jsxs)(r.Fragment,{children:[(0,r.jsx)(s.header,{children:(0,r.jsx)(s.h1,{id:"systaskinit",children:"%SYS.Task.Init"})}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:"Class %SYS.Task.Init Extends %RegisteredObject [ System = 4 ]\n"})}),"\n",(0,r.jsx)(s.p,{children:"Used to initialize system values on new installs and to convert the task manager from previous versions."}),"\n",(0,r.jsx)(s.h2,{id:"parameters",children:"Parameters"}),"\n",(0,r.jsx)(s.h3,{id:"domain",children:"DOMAIN"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:'Parameter DOMAIN = "%Utility";\n'})}),"\n",(0,r.jsx)(s.h2,{id:"methods",children:"Methods"}),"\n",(0,r.jsx)(s.h3,{id:"tov31",children:"ToV31"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod ToV31() As %Status\n"})}),"\n",(0,r.jsx)(s.p,{children:"ToV31 add PurgeInteropUsage task"}),"\n",(0,r.jsx)(s.h3,{id:"tov30",children:"ToV30"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod ToV30() As %Status\n"})}),"\n",(0,r.jsx)(s.p,{children:"ToV30 remove redundent tasks"}),"\n",(0,r.jsx)(s.h3,{id:"tov29",children:"ToV29"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod ToV29() As %Status\n"})}),"\n",(0,r.jsx)(s.p,{children:"ToV29 decode Diagnostic Report email password"}),"\n",(0,r.jsx)(s.h3,{id:"tov28",children:"ToV28"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod ToV28() As %Status\n"})}),"\n",(0,r.jsx)(s.p,{children:"ToV28 fix PurgeBackupLog"}),"\n",(0,r.jsx)(s.h3,{id:"tov27",children:"ToV27"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod ToV27() As %Status\n"})}),"\n",(0,r.jsx)(s.p,{children:"ToV27 modify default MirrorStatus"}),"\n",(0,r.jsx)(s.h3,{id:"tov26",children:"ToV26"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod ToV26() As %Status\n"})}),"\n",(0,r.jsx)(s.p,{children:"ToV26 Add PurgeErrorsAndLogs"}),"\n",(0,r.jsx)(s.h3,{id:"tov25",children:"ToV25"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod ToV25() As %Status\n"})}),"\n",(0,r.jsx)(s.p,{children:"ToV25 fix filing of PurgeAudit, PurgeJournal"}),"\n",(0,r.jsx)(s.h3,{id:"tov24",children:"ToV24"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod ToV24() As %Status\n"})}),"\n",(0,r.jsx)(s.p,{children:"ToV24 added the Purge Audit task"}),"\n",(0,r.jsx)(s.h3,{id:"tov23",children:"ToV23"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod ToV23() As %Status\n"})}),"\n",(0,r.jsx)(s.p,{children:"ToV23 added the SendButtons task"}),"\n",(0,r.jsx)(s.h3,{id:"tov22",children:"ToV22"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod ToV22() As %Status\n"})}),"\n",(0,r.jsx)(s.p,{children:"ToV22 added the SecurityScan task"}),"\n",(0,r.jsx)(s.h3,{id:"tov21",children:"ToV21"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod ToV21() As %Status\n"})}),"\n",(0,r.jsx)(s.p,{children:"converts tasks from V2.0 to V2.1"}),"\n",(0,r.jsx)(s.h3,{id:"tov20",children:"ToV20"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod ToV20() As %Status\n"})}),"\n",(0,r.jsx)(s.p,{children:"converts tasks from V1.4 to V2.0"}),"\n",(0,r.jsx)(s.h3,{id:"createswitchjournal",children:"CreateSwitchJournal"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod CreateSwitchJournal() As %Status\n"})}),"\n",(0,r.jsx)(s.h3,{id:"createsecurityscan",children:"CreateSecurityScan"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod CreateSecurityScan() As %Status\n"})}),"\n",(0,r.jsx)(s.h3,{id:"createcleansourcejournal",children:"CreateCleanSourceJournal"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod CreateCleanSourceJournal() As %Status\n"})}),"\n",(0,r.jsx)(s.h3,{id:"createpurgejournal",children:"CreatePurgeJournal"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod CreatePurgeJournal() As %Status\n"})}),"\n",(0,r.jsx)(s.h3,{id:"createpurgebackuplog",children:"CreatePurgeBackupLog"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod CreatePurgeBackupLog() As %Status\n"})}),"\n",(0,r.jsx)(s.h3,{id:"createpurgezenreports",children:"CreatePurgeZENReports"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod CreatePurgeZENReports() As %Status\n"})}),"\n",(0,r.jsx)(s.h3,{id:"createpurgeaudit",children:"CreatePurgeAudit"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod CreatePurgeAudit() As %Status\n"})}),"\n",(0,r.jsx)(s.h3,{id:"createpurgetaskhistory",children:"CreatePurgeTaskHistory"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod CreatePurgeTaskHistory() As %Status\n"})}),"\n",(0,r.jsx)(s.h3,{id:"createfreespacetask",children:"CreateFreeSpaceTask"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod CreateFreeSpaceTask() As %Status\n"})}),"\n",(0,r.jsx)(s.h3,{id:"createintegritycheck",children:"CreateIntegrityCheck"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod CreateIntegrityCheck() As %Status\n"})}),"\n",(0,r.jsx)(s.h3,{id:"creatediagnosticreport",children:"CreateDiagnosticReport"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod CreateDiagnosticReport() As %Status\n"})}),"\n",(0,r.jsx)(s.h3,{id:"createinventoryscan",children:"CreateInventoryScan"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod CreateInventoryScan() As %Status\n"})}),"\n",(0,r.jsx)(s.h3,{id:"createpurgeerrorsandlogs",children:"CreatePurgeErrorsAndLogs"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod CreatePurgeErrorsAndLogs() As %Status\n"})}),"\n",(0,r.jsx)(s.h3,{id:"createchecklogging",children:"CreateCheckLogging"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod CreateCheckLogging() As %Status\n"})}),"\n",(0,r.jsx)(s.h3,{id:"createfeaturetracker",children:"CreateFeatureTracker"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod CreateFeatureTracker() As %Status\n"})}),"\n",(0,r.jsx)(s.h3,{id:"createpurgeinteropusagemetrics",children:"CreatePurgeInteropUsageMetrics"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod CreatePurgeInteropUsageMetrics() As %Status\n"})}),"\n",(0,r.jsx)(s.h3,{id:"scheduleinventoryscan",children:"ScheduleInventoryScan"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod ScheduleInventoryScan() As %Status\n"})}),"\n",(0,r.jsx)(s.h3,{id:"initializesystemtasks",children:"InitializeSystemTasks"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod InitializeSystemTasks() As %Status\n"})}),"\n",(0,r.jsx)(s.h3,{id:"sethighvalue",children:"SetHighValue"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod SetHighValue() As %Status\n"})})]})}function o(e={}){const{wrapper:s}={...(0,t.R)(),...e.components};return s?(0,r.jsx)(s,{...e,children:(0,r.jsx)(i,{...e})}):i(e)}},28453:(e,s,a)=>{a.d(s,{R:()=>c,x:()=>l});var r=a(96540);const t={},n=r.createContext(t);function c(e){const s=r.useContext(n);return r.useMemo((function(){return"function"==typeof e?e(s):{...s,...e}}),[s,e])}function l(e){let s;return s=e.disableParentContext?"function"==typeof e.components?e.components(t):e.components||t:c(e.components),r.createElement(n.Provider,{value:s},e.children)}}}]);