"use strict";(self.webpackChunkdocs_intersystems=self.webpackChunkdocs_intersystems||[]).push([[82160],{19230:(e,s,l)=>{l.r(s),l.d(s,{contentTitle:()=>i,default:()=>t,frontMatter:()=>c,toc:()=>a});var r=l(74848),n=l(28453);const c={pagination_prev:null,pagination_next:null},i="SYS.History.Performance",a=[{value:"Properties",id:"properties",level:2},{value:"GloRef",id:"gloref",level:3},{value:"GloRefRem",id:"glorefrem",level:3},{value:"GloUpdate",id:"gloupdate",level:3},{value:"GloUpdateRem",id:"gloupdaterem",level:3},{value:"PhysReads",id:"physreads",level:3},{value:"LogReads",id:"logreads",level:3},{value:"PhysWrites",id:"physwrites",level:3},{value:"RtnCallLocal",id:"rtncalllocal",level:3},{value:"RtnCallRemote",id:"rtncallremote",level:3},{value:"RtnCallMiss",id:"rtncallmiss",level:3},{value:"RtnLoad",id:"rtnload",level:3},{value:"RtnLoadRem",id:"rtnloadrem",level:3},{value:"JrnEntry",id:"jrnentry",level:3},{value:"JrnBlock",id:"jrnblock",level:3},{value:"WIJWrites",id:"wijwrites",level:3},{value:"ObjHit",id:"objhit",level:3},{value:"ObjMiss",id:"objmiss",level:3},{value:"ObjLoad",id:"objload",level:3},{value:"ObjNew",id:"objnew",level:3},{value:"ObjDel",id:"objdel",level:3},{value:"GloSeize",id:"gloseize",level:3},{value:"GloNSeize",id:"glonseize",level:3},{value:"GloASeize",id:"gloaseize",level:3},{value:"RtnSeize",id:"rtnseize",level:3},{value:"RtnASeize",id:"rtnaseize",level:3},{value:"ObjSeize",id:"objseize",level:3},{value:"ObjASeize",id:"objaseize",level:3},{value:"ECPConn",id:"ecpconn",level:3},{value:"ECPBlockAdd",id:"ecpblockadd",level:3},{value:"ECPBlockPurgeBuff",id:"ecpblockpurgebuff",level:3},{value:"ECPBlockPurgeSvr",id:"ecpblockpurgesvr",level:3},{value:"ECPByteSent",id:"ecpbytesent",level:3},{value:"ECPByteRcvd",id:"ecpbytercvd",level:3},{value:"Methods",id:"methods",level:2},{value:"PropList",id:"proplist",level:3},{value:"SetSummary",id:"setsummary",level:3}];function o(e){const s={a:"a",code:"code",h1:"h1",h2:"h2",h3:"h3",header:"header",p:"p",pre:"pre",...(0,n.R)(),...e.components};return(0,r.jsxs)(r.Fragment,{children:[(0,r.jsx)(s.header,{children:(0,r.jsx)(s.h1,{id:"syshistoryperformance",children:"SYS.History.Performance"})}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:"Class SYS.History.Performance Extends %SerialObject [ System = 4 ]\n"})}),"\n",(0,r.jsx)(s.p,{children:"A list of Performance metric properties for the PerfData interval collection class."}),"\n",(0,r.jsx)(s.p,{children:"These properties are all 'counter' types and the interval data is collected as deltas, which represent the change in the counter over the last interval. When this data is summarized into hourly and daily values, the data is normalized to per-second rates."}),"\n",(0,r.jsxs)(s.p,{children:["For details, see ",(0,r.jsx)(s.a,{href:"/csp/docbook/Doc.View.cls?FIND=CLASSES+SYS.History.Performance",children:"History Monitor"}),"."]}),"\n",(0,r.jsx)(s.h2,{id:"properties",children:"Properties"}),"\n",(0,r.jsx)(s.h3,{id:"gloref",children:"GloRef"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:"Property GloRef As %Numeric [ SqlColumnNumber = 3 ];\n"})}),"\n",(0,r.jsx)(s.p,{children:"Global references (local databases)"}),"\n",(0,r.jsx)(s.h3,{id:"glorefrem",children:"GloRefRem"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:"Property GloRefRem As %Numeric [ SqlColumnNumber = 4 ];\n"})}),"\n",(0,r.jsx)(s.p,{children:"Global references (remote databases)"}),"\n",(0,r.jsx)(s.h3,{id:"gloupdate",children:"GloUpdate"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:"Property GloUpdate As %Numeric [ SqlColumnNumber = 5 ];\n"})}),"\n",(0,r.jsx)(s.p,{children:"Global updates (local SET and KILL)"}),"\n",(0,r.jsx)(s.h3,{id:"gloupdaterem",children:"GloUpdateRem"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:"Property GloUpdateRem As %Numeric [ SqlColumnNumber = 6 ];\n"})}),"\n",(0,r.jsx)(s.p,{children:"Global updates (remote SET and KILL)"}),"\n",(0,r.jsx)(s.h3,{id:"physreads",children:"PhysReads"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:"Property PhysReads As %Numeric [ SqlColumnNumber = 7 ];\n"})}),"\n",(0,r.jsx)(s.p,{children:"Physical Database Reads (blocks from disk)"}),"\n",(0,r.jsx)(s.h3,{id:"logreads",children:"LogReads"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:"Property LogReads As %Numeric [ SqlColumnNumber = 8 ];\n"})}),"\n",(0,r.jsx)(s.p,{children:"Logical Database Reads (blocks in memory)"}),"\n",(0,r.jsx)(s.h3,{id:"physwrites",children:"PhysWrites"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:"Property PhysWrites As %Numeric [ SqlColumnNumber = 9 ];\n"})}),"\n",(0,r.jsx)(s.p,{children:"Physical Database Writes (blocks written to disk)"}),"\n",(0,r.jsx)(s.h3,{id:"rtncalllocal",children:"RtnCallLocal"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:"Property RtnCallLocal As %Numeric [ SqlColumnNumber = 10 ];\n"})}),"\n",(0,r.jsx)(s.p,{children:"Routine calls (local)"}),"\n",(0,r.jsx)(s.h3,{id:"rtncallremote",children:"RtnCallRemote"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:"Property RtnCallRemote As %Numeric [ SqlColumnNumber = 11 ];\n"})}),"\n",(0,r.jsx)(s.p,{children:"Routine calls (remote)"}),"\n",(0,r.jsx)(s.h3,{id:"rtncallmiss",children:"RtnCallMiss"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:"Property RtnCallMiss As %Numeric [ SqlColumnNumber = 12 ];\n"})}),"\n",(0,r.jsx)(s.p,{children:"Routines calls not found in memory"}),"\n",(0,r.jsx)(s.h3,{id:"rtnload",children:"RtnLoad"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:"Property RtnLoad As %Numeric [ SqlColumnNumber = 13 ];\n"})}),"\n",(0,r.jsx)(s.p,{children:"Routines loaded from disk (or saved to disk) locally"}),"\n",(0,r.jsx)(s.h3,{id:"rtnloadrem",children:"RtnLoadRem"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:"Property RtnLoadRem As %Numeric [ SqlColumnNumber = 14 ];\n"})}),"\n",(0,r.jsx)(s.p,{children:"Routines loaded from disk (or saved to disk) remotely"}),"\n",(0,r.jsx)(s.h3,{id:"jrnentry",children:"JrnEntry"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:"Property JrnEntry As %Numeric [ SqlColumnNumber = 15 ];\n"})}),"\n",(0,r.jsx)(s.p,{children:"Journal Entries, journal records created"}),"\n",(0,r.jsx)(s.h3,{id:"jrnblock",children:"JrnBlock"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:"Property JrnBlock As %Numeric [ SqlColumnNumber = 16 ];\n"})}),"\n",(0,r.jsx)(s.p,{children:"Journal Block Writes, journal blocks written to disk."}),"\n",(0,r.jsx)(s.h3,{id:"wijwrites",children:"WIJWrites"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:"Property WIJWrites As %Numeric [ SqlColumnNumber = 17 ];\n"})}),"\n",(0,r.jsx)(s.p,{children:"WIJ physical block writes"}),"\n",(0,r.jsx)(s.h3,{id:"objhit",children:"ObjHit"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:"Property ObjHit As %Numeric [ SqlColumnNumber = 18 ];\n"})}),"\n",(0,r.jsx)(s.p,{children:"Object references (found in process memory)"}),"\n",(0,r.jsx)(s.h3,{id:"objmiss",children:"ObjMiss"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:"Property ObjMiss As %Numeric [ SqlColumnNumber = 19 ];\n"})}),"\n",(0,r.jsx)(s.p,{children:"Object references (not in process memory)"}),"\n",(0,r.jsx)(s.h3,{id:"objload",children:"ObjLoad"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:"Property ObjLoad As %Numeric [ SqlColumnNumber = 20 ];\n"})}),"\n",(0,r.jsx)(s.p,{children:"Object loaded from disk (not in shared memory)"}),"\n",(0,r.jsx)(s.h3,{id:"objnew",children:"ObjNew"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:"Property ObjNew As %Numeric [ SqlColumnNumber = 21 ];\n"})}),"\n",(0,r.jsx)(s.p,{children:"Object initialized"}),"\n",(0,r.jsx)(s.h3,{id:"objdel",children:"ObjDel"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:"Property ObjDel As %Numeric [ SqlColumnNumber = 22 ];\n"})}),"\n",(0,r.jsx)(s.p,{children:"Object deleted"}),"\n",(0,r.jsx)(s.h3,{id:"gloseize",children:"GloSeize"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:"Property GloSeize As %Numeric;\n"})}),"\n",(0,r.jsx)(s.p,{children:"Global resource seize"}),"\n",(0,r.jsx)(s.h3,{id:"glonseize",children:"GloNSeize"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:"Property GloNSeize As %Numeric;\n"})}),"\n",(0,r.jsx)(s.p,{children:'Global resource "N" seize (spin failed)'}),"\n",(0,r.jsx)(s.h3,{id:"gloaseize",children:"GloASeize"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:"Property GloASeize As %Numeric;\n"})}),"\n",(0,r.jsx)(s.p,{children:'Global resource "A" seize (acquired by spinning)'}),"\n",(0,r.jsx)(s.h3,{id:"rtnseize",children:"RtnSeize"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:"Property RtnSeize As %Numeric;\n"})}),"\n",(0,r.jsx)(s.p,{children:"Routine resource seize"}),"\n",(0,r.jsx)(s.h3,{id:"rtnaseize",children:"RtnASeize"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:"Property RtnASeize As %Numeric;\n"})}),"\n",(0,r.jsx)(s.p,{children:'Routine resource "A" seize (acquired by spinning)'}),"\n",(0,r.jsx)(s.h3,{id:"objseize",children:"ObjSeize"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:"Property ObjSeize As %Numeric;\n"})}),"\n",(0,r.jsx)(s.p,{children:"Object resource seize"}),"\n",(0,r.jsx)(s.h3,{id:"objaseize",children:"ObjASeize"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:"Property ObjASeize As %Numeric;\n"})}),"\n",(0,r.jsx)(s.p,{children:'Object resource "A" seize (acquired by spinning)'}),"\n",(0,r.jsx)(s.h3,{id:"ecpconn",children:"ECPConn"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:"Property ECPConn As %Numeric [ Deprecated, InitialExpression = 0 ];\n"})}),"\n",(0,r.jsx)(s.p,{children:"ECP Data Server active client connections ** DEPRECATED ** This property is not a 'counter' like the rest of this class, and does not produce values suitable for per-second summaries. All values will now be zero."}),"\n",(0,r.jsx)(s.h3,{id:"ecpblockadd",children:"ECPBlockAdd"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:"Property ECPBlockAdd As %Numeric;\n"})}),"\n",(0,r.jsx)(s.p,{children:"ECP App Server database blocks added to cache"}),"\n",(0,r.jsx)(s.h3,{id:"ecpblockpurgebuff",children:"ECPBlockPurgeBuff"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:"Property ECPBlockPurgeBuff As %Numeric;\n"})}),"\n",(0,r.jsx)(s.p,{children:"ECP App Server database blocks purged by buffer allocation"}),"\n",(0,r.jsx)(s.h3,{id:"ecpblockpurgesvr",children:"ECPBlockPurgeSvr"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:"Property ECPBlockPurgeSvr As %Numeric;\n"})}),"\n",(0,r.jsx)(s.p,{children:"ECP App Server database blocks purged as requested by a Data Server"}),"\n",(0,r.jsx)(s.h3,{id:"ecpbytesent",children:"ECPByteSent"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:"Property ECPByteSent As %Numeric;\n"})}),"\n",(0,r.jsx)(s.p,{children:"ECP App Server bytes sent"}),"\n",(0,r.jsx)(s.h3,{id:"ecpbytercvd",children:"ECPByteRcvd"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:"Property ECPByteRcvd As %Numeric;\n"})}),"\n",(0,r.jsx)(s.p,{children:"ECP App Server bytes received"}),"\n",(0,r.jsx)(s.h2,{id:"methods",children:"Methods"}),"\n",(0,r.jsx)(s.h3,{id:"proplist",children:"PropList"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod PropList() As %String [ Internal ]\n"})}),"\n",(0,r.jsx)(s.p,{children:'Fetch a list of detail properties for this class These are the "counter" type properties for which deltas and totals can be calculated.'}),"\n",(0,r.jsx)(s.h3,{id:"setsummary",children:"SetSummary"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod SetSummary(ByRef Function As %String, Period As %String) As %Status\n"})}),"\n",(0,r.jsx)(s.p,{children:'Configure the summary methods for this class for either the Hourly or Daily summaries. This is a comma-delimited list of functions to use for the summary. The available functions are Average, Maximum (high-water mark), Minimum (lowest value), Standard Deviation, Median, and Total. These are abbreviated in the \'Function\' argument as "Avg", "Max", "Min", StDev", Med", and "Tot". If nothing is specified, the default is "Avg,Max,StDev". You may also specify the string "None" for a summary period to disable that summary.'}),"\n",(0,r.jsx)(s.p,{children:"A null 'Function' argument will return the current summary setting in the 'Function' variable."}),"\n",(0,r.jsx)(s.p,{children:'The \'Period\' argument can be either "Hourly" or "Daily".'})]})}function t(e={}){const{wrapper:s}={...(0,n.R)(),...e.components};return s?(0,r.jsx)(s,{...e,children:(0,r.jsx)(o,{...e})}):o(e)}},28453:(e,s,l)=>{l.d(s,{R:()=>i,x:()=>a});var r=l(96540);const n={},c=r.createContext(n);function i(e){const s=r.useContext(c);return r.useMemo((function(){return"function"==typeof e?e(s):{...s,...e}}),[s,e])}function a(e){let s;return s=e.disableParentContext?"function"==typeof e.components?e.components(n):e.components||n:i(e.components),r.createElement(c.Provider,{value:s},e.children)}}}]);