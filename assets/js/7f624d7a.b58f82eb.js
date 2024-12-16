"use strict";(self.webpackChunkdocs_intersystems=self.webpackChunkdocs_intersystems||[]).push([[85180],{38611:(e,s,t)=>{t.r(s),t.d(s,{contentTitle:()=>c,default:()=>l,frontMatter:()=>r,toc:()=>a});var n=t(74848),o=t(28453);const r={pagination_prev:null,pagination_next:null},c="SYS.WSMon.wsProcess",a=[{value:"Methods",id:"methods",level:2},{value:"ListExecute",id:"listexecute",level:3},{value:"ListFetch",id:"listfetch",level:3},{value:"ListClose",id:"listclose",level:3}];function i(e){const s={br:"br",code:"code",h1:"h1",h2:"h2",h3:"h3",header:"header",p:"p",pre:"pre",...(0,o.R)(),...e.components};return(0,n.jsxs)(n.Fragment,{children:[(0,n.jsx)(s.header,{children:(0,n.jsx)(s.h1,{id:"syswsmonwsprocess",children:"SYS.WSMon.wsProcess"})}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"Class SYS.WSMon.wsProcess Extends (SYS.WSMon.wsResource, %SYS.ProcessQuery) [ System = 4 ]\n"})}),"\n",(0,n.jsx)(s.p,{children:"Information about Processes in a InterSystems IRIS instance. The List() query is used by the SYS.WSMon.Service.EnumProcess() Web method, to provide a list and details for the most active processes in the instance. The list may be sorted by the recent activity of either CommandsExecuted (roughly analogous to CPU used) or by GlobalReferences (database activity)."}),"\n",(0,n.jsx)(s.h2,{id:"methods",children:"Methods"}),"\n",(0,n.jsx)(s.h3,{id:"listexecute",children:"ListExecute"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod ListExecute(ByRef qHandle As %Binary, Sort, Number) As %Status [ Internal ]\n"})}),"\n",(0,n.jsx)(s.p,{children:"Returns the top Processes as measured by the recent activity of either CommandsExecuted or GlobalReferences"}),"\n",(0,n.jsxs)(s.p,{children:["Parameters:",(0,n.jsx)(s.br,{}),'\nSort - sort by "COMMANDS" (default) or "GLOREFS"',(0,n.jsx)(s.br,{}),"\nNumber - number of processes to list. Default is 10 and max is 50"]}),"\n",(0,n.jsx)(s.p,{children:"Note that the evaluation of the actual 'top' process list is handled by the Application Monitor (%MONAPP) using the %Monitor.System.Dashboard2 class. This is 'on' by default and can be managed using the %MONAPPMGR utility. Also, the counts of CommandsExecuted and GlobalReferences returned are for the latest sample period and not the total for the life of the process."}),"\n",(0,n.jsx)(s.h3,{id:"listfetch",children:"ListFetch"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod ListFetch(ByRef qHandle As %Binary, ByRef Row As %List, ByRef AtEnd As %Integer = 0) As %Status [ Internal ]\n"})}),"\n",(0,n.jsx)(s.h3,{id:"listclose",children:"ListClose"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod ListClose(ByRef qHandle As %Binary) As %Status [ Internal ]\n"})})]})}function l(e={}){const{wrapper:s}={...(0,o.R)(),...e.components};return s?(0,n.jsx)(s,{...e,children:(0,n.jsx)(i,{...e})}):i(e)}},28453:(e,s,t)=>{t.d(s,{R:()=>c,x:()=>a});var n=t(96540);const o={},r=n.createContext(o);function c(e){const s=n.useContext(r);return n.useMemo((function(){return"function"==typeof e?e(s):{...s,...e}}),[s,e])}function a(e){let s;return s=e.disableParentContext?"function"==typeof e.components?e.components(o):e.components||o:c(e.components),n.createElement(r.Provider,{value:s},e.children)}}}]);