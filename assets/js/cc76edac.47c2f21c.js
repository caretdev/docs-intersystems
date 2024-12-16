"use strict";(self.webpackChunkdocs_intersystems=self.webpackChunkdocs_intersystems||[]).push([[10609],{44100:(e,s,a)=>{a.r(s),a.d(s,{contentTitle:()=>n,default:()=>i,frontMatter:()=>r,toc:()=>c});var l=a(74848),t=a(28453);const r={pagination_prev:null,pagination_next:null},n="SYS.Stats.Global",c=[{value:"Properties",id:"properties",level:2},{value:"RefLocal",id:"reflocal",level:3},{value:"RefUpdateLocal",id:"refupdatelocal",level:3},{value:"RefPrivate",id:"refprivate",level:3},{value:"RefUpdatePrivate",id:"refupdateprivate",level:3},{value:"RefRemote",id:"refremote",level:3},{value:"RefUpdateRemote",id:"refupdateremote",level:3},{value:"LogicalBlocks",id:"logicalblocks",level:3},{value:"PhysBlockReads",id:"physblockreads",level:3},{value:"PhysBlockWrites",id:"physblockwrites",level:3},{value:"WIJWrites",id:"wijwrites",level:3},{value:"ThrottleCnt",id:"throttlecnt",level:3},{value:"ThrottleCur",id:"throttlecur",level:3},{value:"ThrottleMax",id:"throttlemax",level:3},{value:"UpdateCnt",id:"updatecnt",level:3},{value:"UpdateLock",id:"updatelock",level:3},{value:"JrnEntries",id:"jrnentries",level:3},{value:"JrnBlocks",id:"jrnblocks",level:3},{value:"WDWake",id:"wdwake",level:3},{value:"WDQueueSize",id:"wdqueuesize",level:3},{value:"Methods",id:"methods",level:2},{value:"Sample",id:"sample",level:3},{value:"ByDatabaseExecute",id:"bydatabaseexecute",level:3},{value:"ByDatabaseClose",id:"bydatabaseclose",level:3},{value:"ByDatabaseFetch",id:"bydatabasefetch",level:3}];function o(e){const s={code:"code",h1:"h1",h2:"h2",h3:"h3",header:"header",p:"p",pre:"pre",...(0,t.R)(),...e.components};return(0,l.jsxs)(l.Fragment,{children:[(0,l.jsx)(s.header,{children:(0,l.jsx)(s.h1,{id:"sysstatsglobal",children:"SYS.Stats.Global"})}),"\n",(0,l.jsx)(s.pre,{children:(0,l.jsx)(s.code,{className:"language-objectscript-class",children:"Class SYS.Stats.Global Extends SYS.WSMon.wsResource [ System = 4 ]\n"})}),"\n",(0,l.jsx)(s.p,{children:"This class represents system metrics captured for globals. Each property is a different metric. A class may be instantiated by calling the class method 'Sample', and then the current value of each property can be accessed."}),"\n",(0,l.jsxs)(s.p,{children:["For example: ",(0,l.jsx)(s.code,{children:"s ref=##class(SYS.Stats.Global).Sample() w ref.RefLocal ; display number of local global references"})," System stats for Global activity"]}),"\n",(0,l.jsx)(s.h2,{id:"properties",children:"Properties"}),"\n",(0,l.jsx)(s.h3,{id:"reflocal",children:"RefLocal"}),"\n",(0,l.jsx)(s.pre,{children:(0,l.jsx)(s.code,{className:"language-objectscript-class",children:"Property RefLocal As %Integer;\n"})}),"\n",(0,l.jsx)(s.p,{children:"Local global references. The count of all global accesses to a local database."}),"\n",(0,l.jsx)(s.h3,{id:"refupdatelocal",children:"RefUpdateLocal"}),"\n",(0,l.jsx)(s.pre,{children:(0,l.jsx)(s.code,{className:"language-objectscript-class",children:"Property RefUpdateLocal As %Integer;\n"})}),"\n",(0,l.jsx)(s.p,{children:"Local global update references. The count of local global references that are Sets, Kills, or $Increments."}),"\n",(0,l.jsx)(s.h3,{id:"refprivate",children:"RefPrivate"}),"\n",(0,l.jsx)(s.pre,{children:(0,l.jsx)(s.code,{className:"language-objectscript-class",children:"Property RefPrivate As %Integer;\n"})}),"\n",(0,l.jsx)(s.p,{children:"Private global references. The count of all process private global accesses."}),"\n",(0,l.jsx)(s.h3,{id:"refupdateprivate",children:"RefUpdatePrivate"}),"\n",(0,l.jsx)(s.pre,{children:(0,l.jsx)(s.code,{className:"language-objectscript-class",children:"Property RefUpdatePrivate As %Integer;\n"})}),"\n",(0,l.jsx)(s.p,{children:"Private global update references. The count of private global references that are Sets, Kills, or $Increments."}),"\n",(0,l.jsx)(s.h3,{id:"refremote",children:"RefRemote"}),"\n",(0,l.jsx)(s.pre,{children:(0,l.jsx)(s.code,{className:"language-objectscript-class",children:"Property RefRemote As %Integer;\n"})}),"\n",(0,l.jsx)(s.p,{children:"Remote global references. The count of all global accesses to a remote database.."}),"\n",(0,l.jsx)(s.h3,{id:"refupdateremote",children:"RefUpdateRemote"}),"\n",(0,l.jsx)(s.pre,{children:(0,l.jsx)(s.code,{className:"language-objectscript-class",children:"Property RefUpdateRemote As %Integer;\n"})}),"\n",(0,l.jsx)(s.p,{children:"Remote global update references. The count of remote global references that are Sets, Kills, or $Increments."}),"\n",(0,l.jsx)(s.h3,{id:"logicalblocks",children:"LogicalBlocks"}),"\n",(0,l.jsx)(s.pre,{children:(0,l.jsx)(s.code,{className:"language-objectscript-class",children:"Property LogicalBlocks As %Integer;\n"})}),"\n",(0,l.jsx)(s.p,{children:"Logical block requests. The number of database blocks read by the global database code."}),"\n",(0,l.jsx)(s.h3,{id:"physblockreads",children:"PhysBlockReads"}),"\n",(0,l.jsx)(s.pre,{children:(0,l.jsx)(s.code,{className:"language-objectscript-class",children:"Property PhysBlockReads As %Integer;\n"})}),"\n",(0,l.jsx)(s.p,{children:"Physical block reads. The number of physical database blocks read from disk."}),"\n",(0,l.jsx)(s.h3,{id:"physblockwrites",children:"PhysBlockWrites"}),"\n",(0,l.jsx)(s.pre,{children:(0,l.jsx)(s.code,{className:"language-objectscript-class",children:"Property PhysBlockWrites As %Integer;\n"})}),"\n",(0,l.jsx)(s.p,{children:"Physical block writes. The number of physical database blocks written to disk."}),"\n",(0,l.jsx)(s.h3,{id:"wijwrites",children:"WIJWrites"}),"\n",(0,l.jsx)(s.pre,{children:(0,l.jsx)(s.code,{className:"language-objectscript-class",children:"Property WIJWrites As %Integer;\n"})}),"\n",(0,l.jsx)(s.p,{children:"Physical writes to the write image journal"}),"\n",(0,l.jsx)(s.h3,{id:"throttlecnt",children:"ThrottleCnt"}),"\n",(0,l.jsx)(s.pre,{children:(0,l.jsx)(s.code,{className:"language-objectscript-class",children:"Property ThrottleCnt As %Integer;\n"})}),"\n",(0,l.jsx)(s.p,{children:"Global Throttle Count. The number of jobs required to wait for the throttle on this configuration."}),"\n",(0,l.jsx)(s.h3,{id:"throttlecur",children:"ThrottleCur"}),"\n",(0,l.jsx)(s.pre,{children:(0,l.jsx)(s.code,{className:"language-objectscript-class",children:"Property ThrottleCur As %Integer;\n"})}),"\n",(0,l.jsx)(s.p,{children:"Global Throttle Current. The number of jobs currently counted as 'in global' for this configuration."}),"\n",(0,l.jsx)(s.h3,{id:"throttlemax",children:"ThrottleMax"}),"\n",(0,l.jsx)(s.pre,{children:(0,l.jsx)(s.code,{className:"language-objectscript-class",children:"Property ThrottleMax As %Integer;\n"})}),"\n",(0,l.jsx)(s.p,{children:"Global Throttle Maximum. The maximum number of jobs to allow 'in global' on this configuration."}),"\n",(0,l.jsx)(s.h3,{id:"updatecnt",children:"UpdateCnt"}),"\n",(0,l.jsx)(s.pre,{children:(0,l.jsx)(s.code,{className:"language-objectscript-class",children:"Property UpdateCnt As %Integer;\n"})}),"\n",(0,l.jsx)(s.p,{children:"Global Update Count. The number of users currently doing global updates (ijucnt) in this configuration."}),"\n",(0,l.jsx)(s.h3,{id:"updatelock",children:"UpdateLock"}),"\n",(0,l.jsx)(s.pre,{children:(0,l.jsx)(s.code,{className:"language-objectscript-class",children:"Property UpdateLock As %Boolean;\n"})}),"\n",(0,l.jsx)(s.p,{children:"Global Update Lock. An indicator that the Write Demon has suspended global updates (1/0) in this configuration."}),"\n",(0,l.jsx)(s.h3,{id:"jrnentries",children:"JrnEntries"}),"\n",(0,l.jsx)(s.pre,{children:(0,l.jsx)(s.code,{className:"language-objectscript-class",children:"Property JrnEntries As %Integer;\n"})}),"\n",(0,l.jsx)(s.p,{children:"Journal Entries. Number of journal records created, one for each database modification (Set , Kill, etc.) or transaction event (TStart, TCommit) or other event that is saved to the journal."}),"\n",(0,l.jsx)(s.h3,{id:"jrnblocks",children:"JrnBlocks"}),"\n",(0,l.jsx)(s.pre,{children:(0,l.jsx)(s.code,{className:"language-objectscript-class",children:"Property JrnBlocks As %Integer;\n"})}),"\n",(0,l.jsx)(s.p,{children:"Journal Block Writes. Number of 64-KB journal blocks written to the journal file."}),"\n",(0,l.jsx)(s.h3,{id:"wdwake",children:"WDWake"}),"\n",(0,l.jsx)(s.pre,{children:(0,l.jsx)(s.code,{className:"language-objectscript-class",children:"Property WDWake As %Integer;\n"})}),"\n",(0,l.jsx)(s.p,{children:"Indicates whether the system Write Daemon is running ('1') or not ('0')"}),"\n",(0,l.jsx)(s.h3,{id:"wdqueuesize",children:"WDQueueSize"}),"\n",(0,l.jsx)(s.pre,{children:(0,l.jsx)(s.code,{className:"language-objectscript-class",children:"Property WDQueueSize As %Integer;\n"})}),"\n",(0,l.jsx)(s.p,{children:"The number of blocks waiting to be written by the Write Daemon"}),"\n",(0,l.jsx)(s.h2,{id:"methods",children:"Methods"}),"\n",(0,l.jsx)(s.h3,{id:"sample",children:"Sample"}),"\n",(0,l.jsx)(s.pre,{children:(0,l.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod Sample() As SYS.Stats.Global\n"})}),"\n",(0,l.jsx)(s.p,{children:"Instantiate the class and fill in current values for all properties."}),"\n",(0,l.jsx)(s.h3,{id:"bydatabaseexecute",children:"ByDatabaseExecute"}),"\n",(0,l.jsx)(s.pre,{children:(0,l.jsx)(s.code,{className:"language-objectscript-class",children:'ClassMethod ByDatabaseExecute(ByRef qHandle As %Binary, Names As %List = "") As %Status [ Internal ]\n'})}),"\n",(0,l.jsx)(s.p,{children:"Fetch PhysBlockReads and PhysBlockWrites collected for each database."}),"\n",(0,l.jsx)(s.p,{children:"You may pass a $LIST of databases (directories) in 'Names' to select specific databases."}),"\n",(0,l.jsx)(s.h3,{id:"bydatabaseclose",children:"ByDatabaseClose"}),"\n",(0,l.jsx)(s.pre,{children:(0,l.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod ByDatabaseClose(ByRef qHandle As %Binary) As %Status [ Internal, PlaceAfter = ByDatabaseExecute ]\n"})}),"\n",(0,l.jsx)(s.h3,{id:"bydatabasefetch",children:"ByDatabaseFetch"}),"\n",(0,l.jsx)(s.pre,{children:(0,l.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod ByDatabaseFetch(ByRef qHandle As %Binary, ByRef Row As %List, ByRef AtEnd As %Integer = 0) As %Status [ Internal, PlaceAfter = ByDatabaseExecute ]\n"})})]})}function i(e={}){const{wrapper:s}={...(0,t.R)(),...e.components};return s?(0,l.jsx)(s,{...e,children:(0,l.jsx)(o,{...e})}):o(e)}},28453:(e,s,a)=>{a.d(s,{R:()=>n,x:()=>c});var l=a(96540);const t={},r=l.createContext(t);function n(e){const s=l.useContext(r);return l.useMemo((function(){return"function"==typeof e?e(s):{...s,...e}}),[s,e])}function c(e){let s;return s=e.disableParentContext?"function"==typeof e.components?e.components(t):e.components||t:n(e.components),l.createElement(r.Provider,{value:s},e.children)}}}]);